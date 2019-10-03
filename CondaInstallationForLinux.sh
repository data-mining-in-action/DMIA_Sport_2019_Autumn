sed -i '1s/^/force_color_prompt=yes\n/' .bashrc
source ~/.bashrc

curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh -b

echo 'PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
conda create -n py36 python=3.6
source activate py36
conda install -y pip numpy scipy scikit-learn matplotlib numba pandas ipython scikit-image jupyter cython joblib h5py tqdm seaborn lightgbm tensorflow keras
conda install -c conda-forge xgboost
pip install ipykernel
ipython kernel install --user --name=py36
