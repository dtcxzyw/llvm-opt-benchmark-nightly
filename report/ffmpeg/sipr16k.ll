Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sipr16k?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AMRFixed = type { i32, [10 x i32], [10 x float], i32, i32, float }

@gain_pitch_cb_16k = internal unnamed_addr constant [16 x float] [float 0.000000e+00, float 2.000000e-01, float 4.000000e-01, float 5.000000e-01, float 6.000000e-01, float f0x3F333333, float 7.500000e-01, float 8.000000e-01, float 8.500000e-01, float f0x3F666666, float f0x3F733333, float 1.000000e+00, float 1.050000e+00, float 1.100000e+00, float 1.150000e+00, float 1.200000e+00], align 16
@ff_fc_4pulses_8bits_tracks_13 = external constant [16 x i8], align 16
@gain_cb_16k = internal unnamed_addr constant [32 x float] [float 7.499000e-02, float 1.059300e-01, float 1.412500e-01, float 1.883600e-01, float 2.371400e-01, float 2.818400e-01, float 3.273400e-01, float 3.758400e-01, float 4.217000e-01, float 4.731500e-01, float 5.308800e-01, float 5.956600e-01, float 6.683400e-01, float 7.498900e-01, float 8.414000e-01, float 9.440600e-01, float 1.059250e+00, float 1.188500e+00, float 1.333520e+00, float 1.496240e+00, float 1.678800e+00, float 1.883650e+00, float 2.113490e+00, float 2.371370e+00, float 2.660730e+00, float 3.054920e+00, float 3.548130e+00, float 4.216970e+00, float 5.308840e+00, float 7.079460e+00, float f0x41170CBD, float f0x41555D05], align 16
@pred_16k = internal constant [2 x float] [float 8.000000e-01, float 6.000000e-01], align 4
@qu = internal unnamed_addr constant [2 x float] [float 1.200000e-01, float 5.000000e-01], align 4
@lsf_cb1_16k = internal unnamed_addr constant [128 x [3 x float]] [[3 x float] [float f0xBDB84CAD, float -1.724850e-01, float -2.033910e-01], [3 x float] [float f0xBDC1F751, float -1.786870e-01, float -1.344830e-01], [3 x float] [float -5.639800e-02, float -1.319520e-01, float -1.545000e-01], [3 x float] [float -5.136200e-02, float -1.281380e-01, float -1.985490e-01], [3 x float] [float -6.170000e-02, float -1.428300e-01, float -2.516230e-01], [3 x float] [float -4.151200e-02, float -1.156370e-01, float -2.294200e-01], [3 x float] [float -3.654400e-02, float -1.075120e-01, float -1.731250e-01], [3 x float] [float -2.415800e-02, float -8.845000e-02, float -2.041440e-01], [3 x float] [float -3.869000e-02, float -1.033680e-01, float -1.326740e-01], [3 x float] [float -5.695400e-02, float -1.284720e-01, float -1.046690e-01], [3 x float] [float -2.096300e-02, float f0xBD9D4174, float -1.631990e-01], [3 x float] [float -1.295200e-02, float -7.724900e-02, float -1.283850e-01], [3 x float] [float -3.278700e-02, float f0xBDC6BF01, float f0xBDC071C5], [3 x float] [float -3.521400e-02, float -5.383800e-02, float -1.119400e-01], [3 x float] [float -1.385000e-02, float -3.692600e-02, float -1.393280e-01], [3 x float] [float -4.956000e-03, float f0xBD854EF4, float -8.770900e-02], [3 x float] [float -6.535400e-02, float -6.559500e-02, float -7.906400e-02], [3 x float] [float -2.362700e-02, float f0xBDA6D2ED, float -5.419500e-02], [3 x float] [float -2.733500e-02, float -3.524400e-02, float -6.803400e-02], [3 x float] [float 1.655500e-02, float -4.707500e-02, float -1.282860e-01], [3 x float] [float 2.106600e-02, float -3.725200e-02, float -9.204100e-02], [3 x float] [float 1.468100e-02, float -4.304400e-02, float -5.773900e-02], [3 x float] [float -8.493000e-03, float -8.143000e-03, float -1.024860e-01], [3 x float] [float -2.303000e-03, float -6.154000e-02, float -2.295200e-02], [3 x float] [float -6.061000e-03, float -1.427800e-02, float -3.365200e-02], [3 x float] [float -5.276000e-03, float 1.124600e-02, float -6.276200e-02], [3 x float] [float 4.341100e-02, float -6.303000e-03, float -6.373000e-02], [3 x float] [float 3.588500e-02, float -1.005200e-02, float -1.152900e-01], [3 x float] [float 3.062800e-02, float -3.153800e-02, float -1.780700e-02], [3 x float] [float 2.234500e-02, float 2.821000e-02, float -3.233500e-02], [3 x float] [float 2.653500e-02, float 2.753600e-02, float -9.115000e-02], [3 x float] [float -3.365000e-03, float -8.077000e-03, float 1.568700e-02], [3 x float] [float -2.601300e-02, float 1.749300e-02, float -1.035500e-02], [3 x float] [float 5.906900e-02, float 1.063400e-02, float -7.530000e-03], [3 x float] [float 4.403800e-02, float -1.942400e-02, float 3.045300e-02], [3 x float] [float -3.606500e-02, float -3.421500e-02, float -7.758000e-03], [3 x float] [float 2.248600e-02, float 4.254300e-02, float 2.787000e-02], [3 x float] [float -4.998500e-02, float -1.608500e-02, float 2.176800e-02], [3 x float] [float -2.171500e-02, float 2.116800e-02, float 5.207600e-02], [3 x float] [float -4.243000e-03, float -6.122800e-02, float 2.764000e-02], [3 x float] [float -3.395000e-02, float -1.728700e-02, float 6.465600e-02], [3 x float] [float 1.615100e-02, float 7.270000e-04, float 6.275700e-02], [3 x float] [float -6.345600e-02, float -4.315200e-02, float 5.670700e-02], [3 x float] [float -6.771500e-02, float 6.126000e-03, float 5.817800e-02], [3 x float] [float -3.893100e-02, float 5.167300e-02, float 3.063600e-02], [3 x float] [float -7.301700e-02, float -7.471600e-02, float 2.638700e-02], [3 x float] [float -3.989300e-02, float -1.046290e-01, float 3.961600e-02], [3 x float] [float -7.317900e-02, float -7.460100e-02, float 8.206900e-02], [3 x float] [float -6.615400e-02, float -2.718000e-02, float 9.943900e-02], [3 x float] [float -7.516700e-02, float -1.211490e-01, float 7.193800e-02], [3 x float] [float -3.038200e-02, float -9.258200e-02, float 9.106700e-02], [3 x float] [float f0xBDAD184C, float -1.375420e-01, float 2.362600e-02], [3 x float] [float -6.095600e-02, float -1.212590e-01, float -1.526400e-02], [3 x float] [float -3.006900e-02, float -9.382300e-02, float -8.692000e-03], [3 x float] [float -6.356400e-02, float -6.522500e-02, float -2.582000e-02], [3 x float] [float -5.207400e-02, float -1.175950e-01, float -5.968900e-02], [3 x float] [float f0xBDBBB40B, float -1.651730e-01, float -4.557300e-02], [3 x float] [float -7.016700e-02, float -1.213420e-01, float 1.317070e-01], [3 x float] [float -6.102400e-02, float -5.833000e-03, float -5.103500e-02], [3 x float] [float 7.837000e-03, float -5.181600e-02, float 7.457500e-02], [3 x float] [float -7.064300e-02, float -5.392700e-02, float 1.494980e-01], [3 x float] [float -1.435800e-02, float f0xBD88900C, float 1.397080e-01], [3 x float] [float -5.818600e-02, float 2.957600e-02, float 9.292300e-02], [3 x float] [float -2.337100e-02, float 7.058000e-03, float 1.124840e-01], [3 x float] [float -5.796900e-02, float 2.278600e-02, float 1.484200e-01], [3 x float] [float 2.943900e-02, float -1.767300e-02, float 1.214230e-01], [3 x float] [float -1.581100e-02, float 5.678500e-02, float 9.159400e-02], [3 x float] [float 4.347000e-03, float 5.668000e-02, float 1.378480e-01], [3 x float] [float -4.464000e-03, float 2.342000e-03, float 1.840130e-01], [3 x float] [float 2.966000e-02, float 4.687000e-02, float 8.265400e-02], [3 x float] [float 5.940800e-02, float 1.016000e-03, float f0x3DB041CC], [3 x float] [float 5.526300e-02, float 2.757400e-02, float 1.550370e-01], [3 x float] [float 6.216600e-02, float 6.432300e-02, float 1.173710e-01], [3 x float] [float 2.296700e-02, float 1.000500e-01, float 7.722700e-02], [3 x float] [float 4.179500e-02, float 9.634300e-02, float 1.704210e-01], [3 x float] [float 5.318900e-02, float 1.229310e-01, float 1.185490e-01], [3 x float] [float 9.424700e-02, float 9.444800e-02, float 7.839500e-02], [3 x float] [float f0x3DA8C500, float 3.340800e-02, float 4.108500e-02], [3 x float] [float f0x3DC64990, float 1.159600e-01, float 1.494330e-01], [3 x float] [float 6.780400e-02, float 1.218490e-01, float 2.533600e-02], [3 x float] [float -8.421000e-03, float 1.043160e-01, float 3.231400e-02], [3 x float] [float 3.101300e-02, float 7.321800e-02, float -4.899000e-03], [3 x float] [float 8.507900e-02, float f0x3D771540, float -9.687000e-03], [3 x float] [float 2.817400e-02, float 9.276600e-02, float -5.559000e-02], [3 x float] [float 7.013300e-02, float 3.916000e-02, float -6.103500e-02], [3 x float] [float -3.921100e-02, float 7.251700e-02, float -2.875600e-02], [3 x float] [float 1.296860e-01, float 1.002330e-01, float -4.699800e-02], [3 x float] [float 1.541890e-01, float 1.076160e-01, float 2.279100e-02], [3 x float] [float -4.933100e-02, float 9.418400e-02, float 8.798400e-02], [3 x float] [float -1.317900e-02, float 1.265520e-01, float 1.250990e-01], [3 x float] [float -5.871600e-02, float f0x3DC9C6F3, float 1.508860e-01], [3 x float] [float -2.275300e-02, float 8.001100e-02, float 1.911270e-01], [3 x float] [float 1.345100e-02, float 1.645930e-01, float 1.537680e-01], [3 x float] [float 7.481800e-02, float 1.812140e-01, float 1.082110e-01], [3 x float] [float 9.132300e-02, float 1.692490e-01, float 1.684600e-01], [3 x float] [float 3.388500e-02, float 1.555160e-01, float 2.137450e-01], [3 x float] [float -3.212800e-02, float 2.272380e-01, float 1.358150e-01], [3 x float] [float -5.917600e-02, float 1.689800e-01, float 2.291100e-01], [3 x float] [float 3.391700e-02, float 2.297530e-01, float 2.222640e-01], [3 x float] [float 8.270200e-02, float 1.163700e-01, float 2.246970e-01], [3 x float] [float 1.277370e-01, float 1.866580e-01, float 2.127830e-01], [3 x float] [float 4.752800e-02, float 6.392000e-02, float 2.168560e-01], [3 x float] [float -2.446000e-03, float 1.141740e-01, float 2.632890e-01], [3 x float] [float -7.778300e-02, float 8.252300e-02, float 2.496970e-01], [3 x float] [float 1.002300e-02, float 2.426700e-02, float 2.568740e-01], [3 x float] [float 5.319000e-02, float 1.114220e-01, float 3.104070e-01], [3 x float] [float -7.880400e-02, float 4.444000e-03, float 2.240780e-01], [3 x float] [float -5.525300e-02, float -5.918000e-02, float 2.178920e-01], [3 x float] [float -6.537100e-02, float 8.124000e-03, float 3.334050e-01], [3 x float] [float f0xBD9C0874, float f0xBDCA465A, float 2.869830e-01], [3 x float] [float -7.191100e-02, float -1.158040e-01, float 1.980310e-01], [3 x float] [float -6.247300e-02, float 1.836390e-01, float 3.701620e-01], [3 x float] [float -4.266600e-02, float 2.552100e-01, float 2.627200e-01], [3 x float] [float 1.199900e-02, float 2.175300e-01, float 3.182910e-01], [3 x float] [float -4.214400e-02, float 3.220870e-01, float 3.263870e-01], [3 x float] [float 9.066300e-02, float 2.058350e-01, float 2.947840e-01], [3 x float] [float 5.821800e-02, float 2.936490e-01, float 2.779270e-01], [3 x float] [float 1.575060e-01, float 2.828700e-01, float 2.946100e-01], [3 x float] [float 1.182480e-01, float 2.610070e-01, float 1.486140e-01], [3 x float] [float 6.526100e-02, float 3.323620e-01, float 4.119120e-01], [3 x float] [float 1.412690e-01, float 4.518500e-01, float 3.157260e-01], [3 x float] [float 1.706000e-03, float 4.563010e-01, float 3.575900e-01], [3 x float] [float -5.294700e-02, float 3.565590e-01, float 4.569440e-01], [3 x float] [float 2.477070e-01, float 2.638370e-01, float 1.525910e-01], [3 x float] [float 3.068470e-01, float 4.173730e-01, float 2.585530e-01], [3 x float] [float 1.663470e-01, float 1.492220e-01, float 1.189730e-01], [3 x float] [float 3.797090e-01, float 2.921720e-01, float 1.398750e-01], [3 x float] [float 1.017100e-02, float -5.517000e-02, float -1.745230e-01]], align 16
@lsf_cb2_16k = internal unnamed_addr constant [256 x [3 x float]] [[3 x float] [float -2.130110e-01, float -2.933850e-01, float -3.305970e-01], [3 x float] [float -2.125820e-01, float -2.409920e-01, float -3.382390e-01], [3 x float] [float -2.233730e-01, float -3.062140e-01, float -2.771920e-01], [3 x float] [float -2.311380e-01, float -2.877290e-01, float -2.294120e-01], [3 x float] [float -2.384660e-01, float -2.285710e-01, float -2.609540e-01], [3 x float] [float -1.409310e-01, float -2.470180e-01, float -2.585660e-01], [3 x float] [float -1.362390e-01, float -2.496690e-01, float -3.501430e-01], [3 x float] [float -1.497380e-01, float -1.929700e-01, float -2.814750e-01], [3 x float] [float -1.670580e-01, float -2.610520e-01, float -1.963010e-01], [3 x float] [float -1.770490e-01, float -2.013240e-01, float -2.078970e-01], [3 x float] [float -1.169150e-01, float -2.006290e-01, float -2.125260e-01], [3 x float] [float -1.622470e-01, float -1.438050e-01, float -2.450930e-01], [3 x float] [float -8.204200e-02, float -1.918420e-01, float -2.663380e-01], [3 x float] [float -9.884600e-02, float -2.085110e-01, float -3.204810e-01], [3 x float] [float -1.135100e-01, float -1.524700e-01, float -2.224740e-01], [3 x float] [float -6.619700e-02, float -1.791120e-01, float -2.078130e-01], [3 x float] [float -1.294900e-01, float -1.693200e-01, float -1.552380e-01], [3 x float] [float -7.884300e-02, float -1.902920e-01, float -1.551720e-01], [3 x float] [float -8.779000e-02, float -1.477290e-01, float -1.693510e-01], [3 x float] [float -1.410370e-01, float -1.272070e-01, float -1.779100e-01], [3 x float] [float -1.265250e-01, float -2.239610e-01, float -1.536390e-01], [3 x float] [float -1.014640e-01, float -1.899530e-01, float -1.145590e-01], [3 x float] [float -1.024500e-01, float -1.063030e-01, float -1.511710e-01], [3 x float] [float -1.032080e-01, float -1.444570e-01, float -1.053780e-01], [3 x float] [float -1.707940e-01, float -1.405250e-01, float -1.364280e-01], [3 x float] [float -1.686410e-01, float -2.030640e-01, float -1.353680e-01], [3 x float] [float -1.381930e-01, float -1.160420e-01, float -1.119050e-01], [3 x float] [float -1.450850e-01, float -1.685810e-01, float -9.261300e-02], [3 x float] [float -1.263790e-01, float -2.204310e-01, float -9.132700e-02], [3 x float] [float -2.129340e-01, float -1.847970e-01, float -1.016320e-01], [3 x float] [float -1.937110e-01, float -1.405560e-01, float -7.830400e-02], [3 x float] [float -1.736740e-01, float -1.972760e-01, float -6.014000e-02], [3 x float] [float -1.978970e-01, float -2.419070e-01, float f0xBDBC68EC], [3 x float] [float -1.560370e-01, float -2.585190e-01, float -1.116280e-01], [3 x float] [float -2.419640e-01, float -1.911240e-01, float -6.314000e-02], [3 x float] [float -2.613400e-01, float -2.408470e-01, float -1.031320e-01], [3 x float] [float -2.216210e-01, float -2.429720e-01, float -4.125500e-02], [3 x float] [float -2.241660e-01, float -2.327420e-01, float -1.615680e-01], [3 x float] [float -2.035910e-01, float -2.944700e-01, float -1.260350e-01], [3 x float] [float -2.095400e-01, float -3.031490e-01, float -5.317000e-02], [3 x float] [float -2.538590e-01, float -2.950660e-01, float -1.560500e-01], [3 x float] [float -2.781430e-01, float -3.311050e-01, float f0xBDAE90BC], [3 x float] [float -3.002730e-01, float -1.987500e-01, float f0xBDC23854], [3 x float] [float -2.604770e-01, float -1.697130e-01, float -1.324760e-01], [3 x float] [float -2.118890e-01, float -1.724540e-01, float -1.642810e-01], [3 x float] [float -2.283700e-01, float -1.221490e-01, float -1.241780e-01], [3 x float] [float -2.546290e-01, float -1.356680e-01, float -8.169200e-02], [3 x float] [float -2.638130e-01, float -1.549280e-01, float -2.135960e-01], [3 x float] [float -3.082240e-01, float -1.068770e-01, float f0xBDACDC01], [3 x float] [float -2.426440e-01, float f0xBDA9B38D, float -8.583500e-02], [3 x float] [float -2.520840e-01, float -6.488800e-02, float -1.464980e-01], [3 x float] [float -1.981620e-01, float -1.057210e-01, float -1.888870e-01], [3 x float] [float -1.892380e-01, float -8.802800e-02, float -1.097360e-01], [3 x float] [float -1.975980e-01, float f0xBDCC7432, float -4.403000e-02], [3 x float] [float -2.690170e-01, float -1.059910e-01, float -2.151300e-02], [3 x float] [float -2.313490e-01, float -5.882500e-02, float -4.140700e-02], [3 x float] [float -2.255890e-01, float -2.750100e-02, float f0xBDB280F1], [3 x float] [float -1.603470e-01, float -5.834100e-02, float -7.978900e-02], [3 x float] [float -1.587290e-01, float -1.089510e-01, float -6.726200e-02], [3 x float] [float -1.704830e-01, float -5.302300e-02, float -1.756100e-02], [3 x float] [float -1.752070e-01, float -1.364900e-02, float -4.951300e-02], [3 x float] [float -1.560040e-01, float -1.083780e-01, float -4.052000e-03], [3 x float] [float -2.199580e-01, float -8.236200e-02, float 1.495000e-02], [3 x float] [float -2.177850e-01, float -1.298100e-02, float -9.410000e-03], [3 x float] [float -1.232900e-01, float -4.084900e-02, float -4.091000e-02], [3 x float] [float -1.198610e-01, float f0xBDC2B841, float -6.024600e-02], [3 x float] [float -1.175370e-01, float -6.547900e-02, float 2.968000e-03], [3 x float] [float -1.032310e-01, float -1.132980e-01, float -2.328200e-02], [3 x float] [float -1.363650e-01, float -1.495240e-01, float -5.138700e-02], [3 x float] [float -1.193320e-01, float -1.644000e-01, float -9.103000e-03], [3 x float] [float -1.045220e-01, float -6.094800e-02, float -8.305600e-02], [3 x float] [float -7.146100e-02, float -7.078700e-02, float -3.734700e-02], [3 x float] [float f0xBDA62025, float -1.490150e-01, float -5.674000e-02], [3 x float] [float -6.956100e-02, float -1.080990e-01, float -6.916700e-02], [3 x float] [float -5.562400e-02, float -1.173690e-01, float -2.509100e-02], [3 x float] [float -9.194100e-02, float -1.900910e-01, float -6.002000e-02], [3 x float] [float -7.200300e-02, float -1.684330e-01, float -6.540000e-03], [3 x float] [float -3.330500e-02, float -1.544270e-01, float -5.460800e-02], [3 x float] [float -6.298800e-02, float -1.270930e-01, float -1.083070e-01], [3 x float] [float -5.669000e-02, float -1.708130e-01, float -1.028340e-01], [3 x float] [float -1.827300e-02, float -1.278630e-01, float -9.499800e-02], [3 x float] [float -5.623900e-02, float -1.236780e-01, float -1.462620e-01], [3 x float] [float -2.344200e-02, float -1.546170e-01, float -1.374170e-01], [3 x float] [float -5.190300e-02, float f0xBDA0852B, float -9.339500e-02], [3 x float] [float -1.459900e-02, float -1.044120e-01, float -1.359590e-01], [3 x float] [float -5.158200e-02, float -8.128000e-02, float -1.406430e-01], [3 x float] [float f0xBDBDE7A7, float -9.193000e-02, float -1.078160e-01], [3 x float] [float -2.481400e-02, float -1.409930e-01, float -1.832430e-01], [3 x float] [float -6.430700e-02, float -1.130240e-01, float -1.947880e-01], [3 x float] [float -1.180000e-04, float f0xBDCA7610, float -1.953360e-01], [3 x float] [float -2.809000e-02, float -4.825800e-02, float -1.641010e-01], [3 x float] [float -9.341400e-02, float -5.596900e-02, float -1.727430e-01], [3 x float] [float -1.144450e-01, float -1.043360e-01, float -2.152040e-01], [3 x float] [float -4.851800e-02, float -1.320630e-01, float -2.429910e-01], [3 x float] [float -1.596200e-01, float -6.024000e-02, float -1.785920e-01], [3 x float] [float -1.357280e-01, float -6.747300e-02, float -1.318760e-01], [3 x float] [float -7.846400e-02, float -3.804000e-02, float -1.251050e-01], [3 x float] [float -1.106100e-02, float -6.401100e-02, float -1.024960e-01], [3 x float] [float -3.388700e-02, float -2.648500e-02, float -1.094930e-01], [3 x float] [float -1.291280e-01, float -1.421600e-02, float -1.113290e-01], [3 x float] [float -1.906870e-01, float -3.066000e-02, float -1.358250e-01], [3 x float] [float -8.203700e-02, float 1.099700e-02, float -1.001670e-01], [3 x float] [float -1.834030e-01, float 1.651000e-03, float -9.896200e-02], [3 x float] [float -7.477500e-02, float -3.033500e-02, float -6.221700e-02], [3 x float] [float -3.175900e-02, float -5.055100e-02, float -5.942000e-02], [3 x float] [float -5.143900e-02, float 1.082700e-02, float -5.214800e-02], [3 x float] [float -1.267440e-01, float 8.689000e-03, float -4.778500e-02], [3 x float] [float -1.459160e-01, float 4.201900e-02, float -7.743100e-02], [3 x float] [float -9.355200e-02, float 5.414300e-02, float -6.047300e-02], [3 x float] [float f0xBDB9ABF3, float 1.286800e-02, float -1.819500e-02], [3 x float] [float -7.978300e-02, float -3.307100e-02, float 1.482000e-03], [3 x float] [float -3.301000e-02, float -2.233100e-02, float -1.450600e-02], [3 x float] [float -4.798000e-03, float -1.733900e-02, float -6.012000e-02], [3 x float] [float -2.502100e-02, float 2.639000e-02, float -3.263000e-03], [3 x float] [float -1.437000e-03, float 2.599400e-02, float -4.089200e-02], [3 x float] [float -7.482100e-02, float 1.900500e-02, float 2.754900e-02], [3 x float] [float -3.081100e-02, float -1.211400e-02, float 3.428400e-02], [3 x float] [float 6.785000e-03, float 4.618000e-03, float 1.871700e-02], [3 x float] [float 1.339200e-02, float -3.259700e-02, float -2.373100e-02], [3 x float] [float 3.599400e-02, float 5.963000e-03, float -1.175700e-02], [3 x float] [float f0x3C043C3A, float -4.575000e-02, float 2.488900e-02], [3 x float] [float 1.305500e-02, float 1.704000e-02, float 5.412100e-02], [3 x float] [float -1.298900e-02, float 4.486400e-02, float 3.632700e-02], [3 x float] [float 2.505400e-02, float 4.713700e-02, float 9.974000e-03], [3 x float] [float 5.380100e-02, float 2.417800e-02, float 3.177400e-02], [3 x float] [float 5.644200e-02, float -3.064700e-02, float 2.129100e-02], [3 x float] [float 3.224700e-02, float 5.268000e-02, float 4.988600e-02], [3 x float] [float 3.536900e-02, float 9.020700e-02, float 3.139400e-02], [3 x float] [float 6.472000e-02, float 7.039000e-02, float 4.093800e-02], [3 x float] [float 2.211200e-02, float 5.483400e-02, float f0x3DBA7D24], [3 x float] [float 4.176500e-02, float 8.624800e-02, float 7.019600e-02], [3 x float] [float 7.064500e-02, float 6.085200e-02, float f0x3DA16F00], [3 x float] [float 5.850600e-02, float 1.692000e-02, float f0x3DA72431], [3 x float] [float 9.000000e-06, float f0x3DB126E9, float 5.984900e-02], [3 x float] [float 7.125300e-02, float 1.073920e-01, float 5.904600e-02], [3 x float] [float f0x3DC1F31F, float 9.616000e-02, float f0x3DBA54C5], [3 x float] [float 4.763900e-02, float 1.108770e-01, float 1.112270e-01], [3 x float] [float 1.224440e-01, float f0x3DBA2E7F, float 5.739600e-02], [3 x float] [float 1.019160e-01, float 5.229900e-02, float 2.990900e-02], [3 x float] [float 7.656000e-02, float f0x3DB0520D, float -7.252000e-03], [3 x float] [float 1.234110e-01, float 3.076900e-02, float 8.274900e-02], [3 x float] [float 1.355790e-01, float 1.030220e-01, float 9.540000e-03], [3 x float] [float 1.205760e-01, float 6.528400e-02, float -2.409500e-02], [3 x float] [float f0x3D9EAF68, float 2.852600e-02, float -1.236900e-02], [3 x float] [float 1.287470e-01, float 1.790100e-02, float -3.874000e-03], [3 x float] [float 1.582540e-01, float 4.696200e-02, float 2.957700e-02], [3 x float] [float 1.022870e-01, float -2.211000e-03, float 3.732900e-02], [3 x float] [float f0x3DB79C84, float -2.137200e-02, float -6.857000e-03], [3 x float] [float 1.379170e-01, float 2.722800e-02, float -5.322300e-02], [3 x float] [float 9.872800e-02, float -1.219200e-02, float -4.851800e-02], [3 x float] [float f0x3DABFA8F, float 3.615300e-02, float -6.226600e-02], [3 x float] [float 4.823000e-02, float -1.024100e-02, float -5.229300e-02], [3 x float] [float 1.101350e-01, float f0x3BFCCE1C, float -9.523300e-02], [3 x float] [float 6.829400e-02, float -1.431700e-02, float -1.040290e-01], [3 x float] [float 6.390900e-02, float -5.641600e-02, float -6.302300e-02], [3 x float] [float 5.913300e-02, float -4.467500e-02, float -2.378000e-02], [3 x float] [float 3.074800e-02, float 2.184500e-02, float -8.633200e-02], [3 x float] [float 2.399400e-02, float -4.557400e-02, float -7.623200e-02], [3 x float] [float 5.214700e-02, float -5.982500e-02, float -1.096670e-01], [3 x float] [float 1.308700e-02, float -2.042000e-02, float -1.219450e-01], [3 x float] [float 1.816300e-02, float f0xBDC62CBA, float f0xBDB5C6C1], [3 x float] [float 2.019600e-02, float -7.647000e-02, float -4.811200e-02], [3 x float] [float 2.028200e-02, float -8.420400e-02, float -1.355350e-01], [3 x float] [float 4.007600e-02, float -5.346400e-02, float -1.619490e-01], [3 x float] [float -1.779600e-02, float -1.030700e-01, float -5.955900e-02], [3 x float] [float -1.648400e-02, float -7.013800e-02, float -1.686600e-02], [3 x float] [float 4.849000e-03, float -1.124810e-01, float -1.773100e-02], [3 x float] [float 4.016000e-02, float -7.387300e-02, float -5.327000e-03], [3 x float] [float 2.202000e-03, float -9.472300e-02, float 4.536600e-02], [3 x float] [float -5.691800e-02, float -8.157800e-02, float 1.787500e-02], [3 x float] [float -3.109900e-02, float -1.417080e-01, float f0x3C1680E0], [3 x float] [float -1.028020e-01, float -1.226750e-01, float 3.006000e-02], [3 x float] [float -6.171700e-02, float -1.451160e-01, float 7.668000e-02], [3 x float] [float f0xBD96BF44, float -5.046400e-02, float f0x3D9533F4], [3 x float] [float -1.174030e-01, float -1.949210e-01, float 4.010100e-02], [3 x float] [float -1.852360e-01, float -1.336200e-01, float 4.593900e-02], [3 x float] [float -1.601740e-01, float -5.722600e-02, float 5.664100e-02], [3 x float] [float -1.784890e-01, float -1.734350e-01, float -7.806000e-03], [3 x float] [float -1.999160e-01, float -2.048660e-01, float 4.734200e-02], [3 x float] [float -1.523370e-01, float -2.496510e-01, float 3.465600e-02], [3 x float] [float -1.856370e-01, float -2.309420e-01, float -2.072000e-03], [3 x float] [float -1.225480e-01, float -2.152090e-01, float -2.455200e-02], [3 x float] [float -2.495780e-01, float -2.097140e-01, float 9.470000e-03], [3 x float] [float -1.601080e-01, float -2.577020e-01, float -4.099200e-02], [3 x float] [float -2.166940e-01, float -2.893530e-01, float 2.718200e-02], [3 x float] [float -2.263900e-01, float -1.478440e-01, float -2.274200e-02], [3 x float] [float -2.887370e-01, float -2.721500e-01, float -1.394800e-02], [3 x float] [float -2.625540e-01, float -2.370350e-01, float 7.247300e-02], [3 x float] [float -3.062670e-01, float -1.883350e-01, float -3.289400e-02], [3 x float] [float -2.596660e-01, float -3.458160e-01, float 2.413800e-02], [3 x float] [float -2.710930e-01, float -1.371430e-01, float 4.040400e-02], [3 x float] [float -2.013170e-01, float -2.867820e-01, float 1.076150e-01], [3 x float] [float -2.357250e-01, float -1.633960e-01, float 1.138440e-01], [3 x float] [float -1.599880e-01, float -2.097880e-01, float 1.121400e-01], [3 x float] [float -2.629850e-01, float -5.674100e-02, float 9.350600e-02], [3 x float] [float -2.772260e-01, float -3.730600e-02, float 1.600800e-02], [3 x float] [float -2.934860e-01, float -4.042200e-02, float -6.201800e-02], [3 x float] [float -2.149210e-01, float 2.290000e-02, float 5.529500e-02], [3 x float] [float -2.538890e-01, float 5.857500e-02, float -1.510000e-04], [3 x float] [float -2.466890e-01, float 2.424200e-02, float -5.848800e-02], [3 x float] [float -1.437900e-01, float 6.767000e-03, float 1.406100e-02], [3 x float] [float -1.870770e-01, float 4.888200e-02, float -3.562500e-02], [3 x float] [float -1.963690e-01, float 1.120850e-01, float 3.154600e-02], [3 x float] [float -1.242640e-01, float 8.619700e-02, float -2.080000e-02], [3 x float] [float -1.262490e-01, float 1.696000e-02, float f0x3DC413DB], [3 x float] [float -7.981600e-02, float 8.039800e-02, float 5.103800e-02], [3 x float] [float -5.626900e-02, float f0x3D9A60D4, float -2.826200e-02], [3 x float] [float -1.204930e-01, float 1.484950e-01, float 2.843000e-02], [3 x float] [float -1.617500e-01, float 1.012900e-01, float 1.178060e-01], [3 x float] [float -3.247000e-03, float 8.339300e-02, float -1.706100e-02], [3 x float] [float -3.400700e-02, float 1.425420e-01, float 7.402000e-03], [3 x float] [float -3.761800e-02, float 2.587100e-02, float 8.949600e-02], [3 x float] [float -8.281900e-02, float 1.844350e-01, float 7.322400e-02], [3 x float] [float 6.448000e-03, float 1.670150e-01, float 8.054800e-02], [3 x float] [float 3.531500e-02, float 1.440220e-01, float 3.218000e-03], [3 x float] [float -2.345900e-02, float 8.814700e-02, float 1.526040e-01], [3 x float] [float 6.247000e-03, float -2.409900e-02, float f0x3D9F5169], [3 x float] [float 3.989400e-02, float 5.758600e-02, float -4.245500e-02], [3 x float] [float -2.041700e-02, float 3.540000e-02, float -9.397100e-02], [3 x float] [float 7.546500e-02, float 5.206300e-02, float 1.455820e-01], [3 x float] [float 7.802700e-02, float 1.847200e-01, float 9.209600e-02], [3 x float] [float 1.072950e-01, float 1.483800e-01, float 2.226400e-02], [3 x float] [float f0x3D89118C, float -5.283100e-02, float 6.510800e-02], [3 x float] [float 9.329500e-02, float 1.181570e-01, float 1.498150e-01], [3 x float] [float 1.193730e-01, float 1.371140e-01, float 9.953600e-02], [3 x float] [float 1.386530e-01, float 7.550900e-02, float 1.215450e-01], [3 x float] [float 1.740250e-01, float 7.753100e-02, float 7.716900e-02], [3 x float] [float 1.658390e-01, float 1.500800e-01, float 1.334230e-01], [3 x float] [float 1.732760e-01, float 1.558870e-01, float 4.815000e-02], [3 x float] [float 1.629100e-01, float 9.589800e-02, float 1.718960e-01], [3 x float] [float 2.145770e-01, float 1.128880e-01, float 1.155790e-01], [3 x float] [float 2.047550e-01, float 1.063920e-01, float 3.233700e-02], [3 x float] [float 1.788530e-01, float 2.050340e-01, float 1.147600e-01], [3 x float] [float 1.774010e-01, float 7.050400e-02, float -1.377800e-02], [3 x float] [float 2.416240e-01, float 1.669210e-01, float 6.608700e-02], [3 x float] [float 2.195950e-01, float 1.835530e-01, float 1.723320e-01], [3 x float] [float 1.236710e-01, float 1.708420e-01, float 1.672160e-01], [3 x float] [float 1.771040e-01, float 2.401970e-01, float 1.863590e-01], [3 x float] [float 2.720030e-01, float 2.202140e-01, float 1.260730e-01], [3 x float] [float 9.374800e-02, float 2.358430e-01, float 1.609980e-01], [3 x float] [float 1.415100e-01, float 1.900120e-01, float 2.404160e-01], [3 x float] [float 4.687800e-02, float 1.689840e-01, float 1.904120e-01], [3 x float] [float 9.489800e-02, float 1.070380e-01, float 2.350030e-01], [3 x float] [float 1.085920e-01, float 2.695360e-01, float 2.625280e-01], [3 x float] [float -2.775400e-02, float 2.343550e-01, float 1.345440e-01], [3 x float] [float 2.651270e-01, float 2.675400e-01, float 1.990410e-01], [3 x float] [float 1.995230e-01, float 2.915070e-01, float 2.651710e-01], [3 x float] [float 2.661770e-01, float 2.093390e-01, float 3.503690e-01], [3 x float] [float 3.221590e-01, float 3.447940e-01, float 2.708230e-01], [3 x float] [float 3.999570e-01, float 2.640650e-01, float 1.103870e-01], [3 x float] [float 2.778170e-01, float 1.274070e-01, float -3.562500e-02], [3 x float] [float -1.770380e-01, float 2.081550e-01, float 1.190770e-01], [3 x float] [float 4.907500e-02, float -7.629400e-02, float 1.457110e-01], [3 x float] [float 1.872460e-01, float 4.286500e-02, float -1.270970e-01], [3 x float] [float 1.178850e-01, float -2.348900e-02, float -1.386580e-01], [3 x float] [float -2.842560e-01, float 6.815300e-02, float 1.242590e-01]], align 16
@lsf_cb3_16k = internal unnamed_addr constant [128 x [3 x float]] [[3 x float] [float -2.234120e-01, float -2.363000e-01, float -1.880670e-01], [3 x float] [float -2.022860e-01, float -2.187110e-01, float -1.029470e-01], [3 x float] [float -2.516520e-01, float -1.610200e-01, float -1.252800e-01], [3 x float] [float -1.692230e-01, float -1.381550e-01, float -1.404300e-01], [3 x float] [float -1.764270e-01, float -1.466280e-01, float -2.226320e-01], [3 x float] [float -1.205840e-01, float -1.872760e-01, float -1.801640e-01], [3 x float] [float -1.955590e-01, float -7.422500e-02, float -1.691090e-01], [3 x float] [float -1.445510e-01, float -1.427740e-01, float -7.334000e-02], [3 x float] [float -1.110010e-01, float -1.113100e-01, float -1.306960e-01], [3 x float] [float -9.522100e-02, float -1.746840e-01, float -1.118410e-01], [3 x float] [float -1.121580e-01, float -1.030490e-01, float -1.951300e-01], [3 x float] [float -5.998900e-02, float -1.421700e-01, float -1.578500e-01], [3 x float] [float -1.275980e-01, float -5.175900e-02, float -1.531090e-01], [3 x float] [float -6.375300e-02, float -6.789800e-02, float -1.641170e-01], [3 x float] [float -1.417530e-01, float -6.827400e-02, float -9.199900e-02], [3 x float] [float -6.048200e-02, float -1.010540e-01, float f0xBDCBB98C], [3 x float] [float -1.046990e-01, float -1.044560e-01, float -6.649600e-02], [3 x float] [float -7.364900e-02, float -5.261400e-02, float -9.161200e-02], [3 x float] [float -8.826800e-02, float -1.907200e-02, float -1.299560e-01], [3 x float] [float -1.883700e-02, float -1.041150e-01, float -1.278370e-01], [3 x float] [float -2.163000e-02, float -3.305500e-02, float -1.298680e-01], [3 x float] [float -8.376800e-02, float -4.754900e-02, float -4.140700e-02], [3 x float] [float -5.589200e-02, float -1.085260e-01, float -4.320000e-02], [3 x float] [float -2.781600e-02, float -6.249900e-02, float -4.819000e-02], [3 x float] [float -2.248000e-03, float -1.104280e-01, float -6.286800e-02], [3 x float] [float 1.270000e-03, float -3.324500e-02, float f0xBD94488C], [3 x float] [float -4.274700e-02, float -1.383500e-02, float -3.382900e-02], [3 x float] [float -3.761500e-02, float -1.478330e-01, float -8.391200e-02], [3 x float] [float -4.502300e-02, float 6.011000e-03, float -9.218200e-02], [3 x float] [float -5.041100e-02, float f0xBDA79789, float 5.787000e-03], [3 x float] [float 3.570000e-04, float -1.042820e-01, float -9.428000e-03], [3 x float] [float -3.893000e-03, float -4.789200e-02, float -1.506000e-03], [3 x float] [float -4.007700e-02, float -1.471100e-01, float -9.065000e-03], [3 x float] [float -6.085800e-02, float -3.097200e-02, float 1.299900e-02], [3 x float] [float -1.467400e-02, float 1.370000e-03, float 5.554000e-03], [3 x float] [float -1.013620e-01, float -1.260610e-01, float -1.898000e-03], [3 x float] [float -1.025190e-01, float -3.900000e-04, float -1.572100e-02], [3 x float] [float -1.326870e-01, float -6.960800e-02, float -1.992800e-02], [3 x float] [float -1.022270e-01, float -7.613100e-02, float 4.330600e-02], [3 x float] [float -5.519300e-02, float 2.700100e-02, float 1.185700e-02], [3 x float] [float -1.564270e-01, float -1.662900e-02, float 1.748000e-02], [3 x float] [float f0xBDA14057, float 2.809000e-03, float 5.797900e-02], [3 x float] [float -1.577890e-01, float -1.669300e-02, float -5.507300e-02], [3 x float] [float -1.793970e-01, float f0xBDC39FFD, float 2.206500e-02], [3 x float] [float -1.102190e-01, float 1.040800e-02, float -8.192700e-02], [3 x float] [float -1.253920e-01, float 4.911100e-02, float 4.459500e-02], [3 x float] [float -1.125280e-01, float 6.317300e-02, float -2.495400e-02], [3 x float] [float -1.855250e-01, float 5.309300e-02, float -3.210200e-02], [3 x float] [float -1.768870e-01, float -1.937900e-02, float -1.151250e-01], [3 x float] [float -2.497060e-01, float -1.766400e-02, float -5.918800e-02], [3 x float] [float -2.002430e-01, float -1.033110e-01, float -6.684600e-02], [3 x float] [float -5.540400e-02, float 4.510600e-02, float -4.699100e-02], [3 x float] [float -5.440000e-04, float 2.269000e-02, float -4.483100e-02], [3 x float] [float 2.229800e-02, float -1.636700e-02, float -2.250900e-02], [3 x float] [float 2.827800e-02, float 1.758500e-02, float -1.006120e-01], [3 x float] [float 6.178100e-02, float -2.082600e-02, float -6.819000e-02], [3 x float] [float 2.915700e-02, float -7.447700e-02, float -9.889800e-02], [3 x float] [float 4.307300e-02, float -6.723400e-02, float -3.229300e-02], [3 x float] [float 6.015700e-02, float 3.463600e-02, float -3.488500e-02], [3 x float] [float 7.115300e-02, float -1.388100e-02, float -9.036000e-03], [3 x float] [float 5.419600e-02, float -2.998900e-02, float -1.311390e-01], [3 x float] [float 3.019300e-02, float 2.497600e-02, float f0x3C219008], [3 x float] [float 5.594300e-02, float -4.530400e-02, float 3.192700e-02], [3 x float] [float 3.321700e-02, float -2.418000e-03, float 3.816500e-02], [3 x float] [float 6.381400e-02, float 4.562500e-02, float 2.530900e-02], [3 x float] [float 3.368900e-02, float 3.881900e-02, float 4.970000e-02], [3 x float] [float 7.358200e-02, float 2.852700e-02, float 6.020000e-02], [3 x float] [float -7.957000e-03, float 2.253100e-02, float 4.368700e-02], [3 x float] [float -9.840000e-04, float 5.451800e-02, float 1.874200e-02], [3 x float] [float 5.700400e-02, float 6.091600e-02, float 6.057300e-02], [3 x float] [float f0x3C21EC4E, float 1.523800e-02, float 8.021100e-02], [3 x float] [float 2.274200e-02, float 7.083200e-02, float 6.885500e-02], [3 x float] [float 5.300100e-02, float 2.979000e-02, float 9.144600e-02], [3 x float] [float -4.244700e-02, float 6.037900e-02, float 6.146200e-02], [3 x float] [float 7.682600e-02, float 6.246800e-02, float 8.965300e-02], [3 x float] [float 3.906500e-02, float 6.976800e-02, float 1.191280e-01], [3 x float] [float f0x3D835E74, float f0x3DC3486F, float 7.162100e-02], [3 x float] [float 9.441100e-02, float 6.952700e-02, float 5.419700e-02], [3 x float] [float 4.281200e-02, float 9.306000e-02, float 2.798000e-02], [3 x float] [float 9.479100e-02, float f0x3DCB239A, float 1.011120e-01], [3 x float] [float 1.176110e-01, float 4.860100e-02, float 9.311100e-02], [3 x float] [float 1.199510e-01, float 1.227580e-01, float 5.154600e-02], [3 x float] [float 1.035580e-01, float 8.524500e-02, float -1.070000e-02], [3 x float] [float 1.501260e-01, float 5.976600e-02, float 2.028000e-02], [3 x float] [float 1.080660e-01, float 1.717000e-02, float f0x3C0D002E], [3 x float] [float 1.084220e-01, float 2.325300e-02, float -6.394200e-02], [3 x float] [float 1.965200e-02, float 7.228400e-02, float -3.033100e-02], [3 x float] [float 1.927190e-01, float 7.562400e-02, float 7.115600e-02], [3 x float] [float 2.211400e-01, float 6.919100e-02, float -3.508500e-02], [3 x float] [float 1.883670e-01, float 1.262000e-01, float 3.522500e-02], [3 x float] [float 1.857600e-01, float 4.353700e-02, float -1.017140e-01], [3 x float] [float -4.251800e-02, float 9.964600e-02, float 3.244000e-03], [3 x float] [float -1.530800e-02, float -2.752100e-02, float 4.600600e-02], [3 x float] [float 3.408600e-02, float -4.577700e-02, float f0x3DC495E1], [3 x float] [float 7.174000e-03, float -9.335800e-02, float 4.645900e-02], [3 x float] [float -5.124800e-02, float -6.209500e-02, float 8.316100e-02], [3 x float] [float -4.562600e-02, float -1.333010e-01, float 5.299700e-02], [3 x float] [float -3.784000e-02, float 2.404200e-02, float 1.310970e-01], [3 x float] [float -2.021700e-02, float -1.159420e-01, float 1.261700e-01], [3 x float] [float -1.345500e-01, float -3.629100e-02, float 1.113220e-01], [3 x float] [float -1.105760e-01, float -1.600240e-01, float 9.184100e-02], [3 x float] [float -9.330800e-02, float -1.849580e-01, float 1.393900e-02], [3 x float] [float -8.273500e-02, float -1.674170e-01, float -5.172500e-02], [3 x float] [float -1.699340e-01, float -1.730030e-01, float -7.155000e-03], [3 x float] [float -1.282440e-01, float -2.131230e-01, float -5.333700e-02], [3 x float] [float -7.985200e-02, float -1.541160e-01, float -2.465460e-01], [3 x float] [float -3.224200e-02, float -1.087560e-01, float -2.041330e-01], [3 x float] [float -1.401170e-01, float -1.994950e-01, float -2.845050e-01], [3 x float] [float 1.084200e-02, float -7.497900e-02, float -1.663330e-01], [3 x float] [float -9.331300e-02, float 1.450060e-01, float 3.411000e-02], [3 x float] [float -3.923600e-02, float 1.132130e-01, float 1.110530e-01], [3 x float] [float 4.061300e-02, float -3.178300e-02, float 1.740580e-01], [3 x float] [float -1.642320e-01, float 1.314210e-01, float 1.498420e-01], [3 x float] [float 2.689300e-02, float 1.072810e-01, float 1.792970e-01], [3 x float] [float 4.708600e-02, float 1.586060e-01, float 1.032670e-01], [3 x float] [float -7.056700e-02, float 2.104590e-01, float 1.347340e-01], [3 x float] [float 9.439200e-02, float 1.370500e-01, float 1.668920e-01], [3 x float] [float f0x3DB03537, float 6.365700e-02, float 1.688250e-01], [3 x float] [float 1.593710e-01, float 1.208970e-01, float 1.543570e-01], [3 x float] [float 1.471010e-01, float 1.606840e-01, float 1.148820e-01], [3 x float] [float 1.201580e-01, float 1.996500e-01, float 1.809480e-01], [3 x float] [float 1.914170e-01, float 1.745000e-01, float 1.707340e-01], [3 x float] [float 1.591530e-01, float 1.421650e-01, float 2.333470e-01], [3 x float] [float 2.320020e-01, float 1.501810e-01, float 1.027360e-01], [3 x float] [float 1.882990e-01, float 2.217380e-01, float 2.287480e-01], [3 x float] [float 2.567860e-01, float 2.096850e-01, float 1.615340e-01], [3 x float] [float 2.578610e-01, float 2.477930e-01, float 2.505160e-01], [3 x float] [float -1.644610e-01, float -1.430000e-04, float 2.324610e-01]], align 16
@lsf_cb4_16k = internal unnamed_addr constant [128 x [3 x float]] [[3 x float] [float -1.933690e-01, float -3.046430e-01, float -2.537770e-01], [3 x float] [float -1.641250e-01, float -2.777860e-01, float -1.531160e-01], [3 x float] [float -1.356810e-01, float -2.091200e-01, float -2.117240e-01], [3 x float] [float -1.218220e-01, float -2.157340e-01, float -2.922070e-01], [3 x float] [float -1.987810e-01, float -1.616740e-01, float -2.425380e-01], [3 x float] [float -1.641470e-01, float -1.805700e-01, float -1.380700e-01], [3 x float] [float f0xBDC46F15, float -1.986950e-01, float -1.543090e-01], [3 x float] [float -2.483860e-01, float -2.344620e-01, float -1.369840e-01], [3 x float] [float -1.649680e-01, float -1.083180e-01, float -1.756350e-01], [3 x float] [float -1.241710e-01, float -1.118090e-01, float -2.244020e-01], [3 x float] [float -6.739800e-02, float -1.570170e-01, float -1.957590e-01], [3 x float] [float f0xBDB89720, float -1.191740e-01, float -1.652530e-01], [3 x float] [float f0xBDCBB1AF, float -1.468950e-01, float -1.067990e-01], [3 x float] [float -1.414930e-01, float -1.081030e-01, float -1.088800e-01], [3 x float] [float -8.508800e-02, float f0xBDC9667B, float -1.099530e-01], [3 x float] [float -1.055260e-01, float -5.446300e-02, float -1.543150e-01], [3 x float] [float -4.048000e-02, float -1.442850e-01, float -1.240420e-01], [3 x float] [float -4.096900e-02, float -8.403900e-02, float -1.428800e-01], [3 x float] [float -4.908200e-02, float -1.185530e-01, float -6.668600e-02], [3 x float] [float f0xBDC54BCF, float -8.751500e-02, float -5.574100e-02], [3 x float] [float -5.860500e-02, float -5.932700e-02, float -8.927500e-02], [3 x float] [float -1.218420e-01, float -5.868100e-02, float f0xBDB21251], [3 x float] [float -5.379200e-02, float -2.202500e-02, float -1.244510e-01], [3 x float] [float -3.674400e-02, float -6.889100e-02, float -4.586500e-02], [3 x float] [float 3.900000e-03, float -9.823700e-02, float -9.115800e-02], [3 x float] [float -1.664000e-03, float -4.508900e-02, float -8.135300e-02], [3 x float] [float -7.282900e-02, float -3.408700e-02, float -3.841600e-02], [3 x float] [float -1.008220e-01, float -7.330000e-03, float -8.871500e-02], [3 x float] [float -3.591100e-02, float -5.864000e-03, float -6.257700e-02], [3 x float] [float -2.020500e-02, float -2.654700e-02, float -1.963400e-02], [3 x float] [float 4.291000e-03, float -4.129000e-02, float -1.381810e-01], [3 x float] [float 2.340400e-02, float -1.093200e-02, float -4.490400e-02], [3 x float] [float 1.355700e-02, float 1.482300e-02, float -9.294300e-02], [3 x float] [float 5.967300e-02, float -3.102400e-02, float f0xBDC412CF], [3 x float] [float 2.113000e-02, float f0xBDA51548, float -3.459400e-02], [3 x float] [float 2.465500e-02, float -3.556400e-02, float 3.243000e-03], [3 x float] [float 1.710600e-02, float 6.952000e-03, float -3.080000e-04], [3 x float] [float 7.520800e-02, float -3.091000e-02, float -3.118100e-02], [3 x float] [float 2.496500e-02, float 4.863200e-02, float -3.944800e-02], [3 x float] [float 5.702800e-02, float 2.154700e-02, float f0xBC1A4DF4], [3 x float] [float -1.857700e-02, float 2.369700e-02, float f0xBC1FE436], [3 x float] [float 2.407700e-02, float 3.305300e-02, float 2.432400e-02], [3 x float] [float 3.705200e-02, float -3.436000e-03, float 4.453000e-02], [3 x float] [float -1.287100e-02, float -7.179000e-03, float 3.179500e-02], [3 x float] [float 7.787700e-02, float 2.154700e-02, float 2.313100e-02], [3 x float] [float 5.336500e-02, float 5.207800e-02, float 2.943300e-02], [3 x float] [float 1.142900e-02, float 7.042600e-02, float 2.873400e-02], [3 x float] [float -1.827000e-03, float 3.311500e-02, float 6.150500e-02], [3 x float] [float -4.487000e-02, float 3.856800e-02, float 2.623900e-02], [3 x float] [float 6.163300e-02, float 3.479900e-02, float 5.978400e-02], [3 x float] [float 3.426100e-02, float 6.034200e-02, float 6.518500e-02], [3 x float] [float 5.898100e-02, float f0x3DA8EBCC, float 4.725200e-02], [3 x float] [float f0x3DB8561D, float 6.594200e-02, float 4.447000e-02], [3 x float] [float 6.696100e-02, float 7.372800e-02, float -4.280000e-04], [3 x float] [float 7.476300e-02, float 6.029300e-02, float f0x3DAF5FD4], [3 x float] [float 6.636600e-02, float 1.033750e-01, float f0x3DA31B58], [3 x float] [float 1.222970e-01, float 3.655800e-02, float 5.874500e-02], [3 x float] [float 1.110420e-01, float f0x3DBC9B41, float 8.541200e-02], [3 x float] [float 9.924300e-02, float 1.154760e-01, float 3.925400e-02], [3 x float] [float 1.997300e-02, float 1.228440e-01, float 5.025500e-02], [3 x float] [float 1.595710e-01, float f0x3DCAAE29, float 5.174000e-02], [3 x float] [float 1.376240e-01, float 7.240500e-02, float -6.922000e-03], [3 x float] [float 1.302400e-01, float 1.460910e-01, float 8.969800e-02], [3 x float] [float 1.383350e-01, float 9.296800e-02, float 1.361930e-01], [3 x float] [float 6.603100e-02, float 1.493040e-01, float 1.254760e-01], [3 x float] [float 2.027490e-01, float 1.457510e-01, float 7.712200e-02], [3 x float] [float 2.224000e-03, float 8.281100e-02, float 1.312000e-01], [3 x float] [float 1.244760e-01, float 1.780730e-01, float 1.623360e-01], [3 x float] [float 1.747220e-01, float 1.902980e-01, float 1.271060e-01], [3 x float] [float 2.021930e-01, float 1.535690e-01, float 1.638400e-01], [3 x float] [float 2.426040e-01, float 1.977960e-01, float 1.369290e-01], [3 x float] [float 1.858090e-01, float 2.293480e-01, float 1.933530e-01], [3 x float] [float -5.881400e-02, float 1.951780e-01, float 1.418210e-01], [3 x float] [float 2.536460e-01, float 2.471750e-01, float 2.057660e-01], [3 x float] [float 6.143300e-02, float -2.554200e-02, float 1.193110e-01], [3 x float] [float -5.781600e-02, float 8.244500e-02, float 7.324300e-02], [3 x float] [float -6.923900e-02, float 1.486780e-01, float 3.114600e-02], [3 x float] [float -3.021700e-02, float -8.503000e-03, float 1.061940e-01], [3 x float] [float -2.670800e-02, float 8.746900e-02, float f0xBC1D1B2E], [3 x float] [float -9.041800e-02, float 2.650000e-04, float 5.680700e-02], [3 x float] [float -5.060700e-02, float -1.938300e-02, float 1.049400e-02], [3 x float] [float -7.939700e-02, float f0x3C06E3B4, float -1.146900e-02], [3 x float] [float -7.263400e-02, float -6.116500e-02, float 4.691700e-02], [3 x float] [float -7.574100e-02, float -7.234300e-02, float -7.557000e-03], [3 x float] [float -2.516200e-02, float -7.336300e-02, float 5.173000e-03], [3 x float] [float -1.233710e-01, float -4.125700e-02, float -8.375000e-03], [3 x float] [float -1.399040e-01, float 1.828500e-02, float 9.920000e-03], [3 x float] [float -1.434210e-01, float -1.042380e-01, float 3.345700e-02], [3 x float] [float -1.009230e-01, float -1.344000e-01, float -2.325700e-02], [3 x float] [float -1.577910e-01, float f0xBDC2A561, float -3.695900e-02], [3 x float] [float -2.198900e-01, float f0xBDA10C6F, float 1.815000e-03], [3 x float] [float -1.836070e-01, float -2.305300e-02, float -4.367800e-02], [3 x float] [float -1.453030e-01, float -1.589230e-01, float -5.904500e-02], [3 x float] [float -1.976150e-01, float -1.651990e-01, float 2.809900e-02], [3 x float] [float -2.251310e-01, float -1.677560e-01, float -5.640100e-02], [3 x float] [float -2.165720e-01, float -1.047510e-01, float -1.029640e-01], [3 x float] [float -1.713360e-01, float -2.419670e-01, float -6.340400e-02], [3 x float] [float -1.340350e-01, float -2.056140e-01, float 1.183100e-02], [3 x float] [float -2.971160e-01, float -2.111730e-01, float -1.535200e-02], [3 x float] [float -8.646400e-02, float -2.005920e-01, float -7.045400e-02], [3 x float] [float -2.177770e-01, float -2.784030e-01, float 3.039800e-02], [3 x float] [float -2.362480e-01, float -3.236940e-01, float -8.758800e-02], [3 x float] [float -2.220740e-01, float -2.107850e-01, float 1.062100e-01], [3 x float] [float -2.834000e-01, float f0xBDC6D04E, float 4.130300e-02], [3 x float] [float -7.841700e-02, float -1.544640e-01, float 6.295600e-02], [3 x float] [float -2.144170e-01, float -1.006950e-01, float 1.219090e-01], [3 x float] [float -1.785760e-01, float -2.884700e-02, float 6.104200e-02], [3 x float] [float -3.799900e-02, float -1.442330e-01, float -1.054600e-02], [3 x float] [float -8.669500e-02, float -7.099600e-02, float 1.252820e-01], [3 x float] [float 1.078800e-02, float f0xBDAE17A0, float 5.852700e-02], [3 x float] [float -1.540150e-01, float 6.656000e-02, float 7.103800e-02], [3 x float] [float -1.435030e-01, float 3.326000e-02, float 1.543930e-01], [3 x float] [float -1.340690e-01, float 3.242000e-02, float -5.629300e-02], [3 x float] [float -1.108510e-01, float 8.690800e-02, float 3.920000e-03], [3 x float] [float -5.725400e-02, float 4.767400e-02, float -5.557100e-02], [3 x float] [float -2.142060e-01, float f0x3D8CDEA0, float -4.735000e-03], [3 x float] [float -2.572640e-01, float 5.046800e-02, float 8.170200e-02], [3 x float] [float -2.918340e-01, float 4.120000e-03, float -2.236600e-02], [3 x float] [float -1.733090e-01, float -2.908100e-02, float -1.159010e-01], [3 x float] [float -2.076220e-01, float 1.686640e-01, float 1.360300e-01], [3 x float] [float f0x3DB96D8F, float 3.275400e-02, float -5.733000e-02], [3 x float] [float 1.402190e-01, float -7.350000e-04, float -1.563300e-02], [3 x float] [float 1.366970e-01, float -1.716300e-02, float -1.009090e-01], [3 x float] [float 2.983800e-02, float -8.951500e-02, float -1.471300e-01], [3 x float] [float -5.536700e-02, float -7.268300e-02, float -2.140150e-01], [3 x float] [float 4.868000e-02, float -5.763300e-02, float -2.124290e-01], [3 x float] [float -1.313400e-02, float -1.138980e-01, float -1.964030e-01], [3 x float] [float -7.170200e-02, float -1.594080e-01, float -2.548950e-01]], align 16
@lsf_cb5_16k = internal unnamed_addr constant [128 x [4 x float]] [[4 x float] [float -2.012770e-01, float -2.786790e-01, float -1.732620e-01, float -1.985800e-01], [4 x float] [float -2.146670e-01, float -1.519220e-01, float -1.175510e-01, float -1.927130e-01], [4 x float] [float -1.609620e-01, float -2.077280e-01, float -1.247500e-01, float -1.297490e-01], [4 x float] [float -1.310430e-01, float -1.378180e-01, float -1.552810e-01, float -1.663080e-01], [4 x float] [float -1.791340e-01, float -1.696020e-01, float -1.652230e-01, float -6.629300e-02], [4 x float] [float -1.364740e-01, float -1.770350e-01, float -2.501270e-01, float -1.343700e-01], [4 x float] [float -6.697000e-02, float -1.462740e-01, float -1.706380e-01, float -1.344360e-01], [4 x float] [float -8.328800e-02, float -1.658600e-01, float -1.034370e-01, float -1.403610e-01], [4 x float] [float -1.304740e-01, float -1.193170e-01, float -1.243930e-01, float f0xBDB0F6AD], [4 x float] [float -1.276090e-01, float -1.344150e-01, float -7.359200e-02, float -1.161030e-01], [4 x float] [float -1.130270e-01, float -9.175600e-02, float -1.077860e-01, float -1.319350e-01], [4 x float] [float -1.255300e-01, float -1.821520e-01, float -9.379600e-02, float -4.508800e-02], [4 x float] [float -7.712200e-02, float -1.380520e-01, float -1.662710e-01, float -3.888600e-02], [4 x float] [float -7.302700e-02, float -1.068450e-01, float -6.707300e-02, float -1.139100e-01], [4 x float] [float -4.914600e-02, float -1.070190e-01, float -1.125310e-01, float -6.338800e-02], [4 x float] [float -1.015390e-01, float -1.195860e-01, float -5.029700e-02, float -4.067000e-02], [4 x float] [float -1.077840e-01, float -6.691300e-02, float f0xBDA5DFA8, float -5.235200e-02], [4 x float] [float -1.521550e-01, float -1.030100e-01, float -9.046100e-02, float -1.552600e-02], [4 x float] [float -1.530870e-01, float f0xBDB384FD, float -2.988900e-02, float -3.736700e-02], [4 x float] [float -2.152810e-01, float -1.380620e-01, float f0xBDB69A91, float -5.083900e-02], [4 x float] [float -5.335000e-02, float -6.016900e-02, float -6.345900e-02, float -2.449900e-02], [4 x float] [float -5.167400e-02, float -7.635500e-02, float -3.373300e-02, float -7.721100e-02], [4 x float] [float -4.504700e-02, float -1.070060e-01, float -2.088000e-02, float -2.452500e-02], [4 x float] [float -8.300300e-02, float -6.367200e-02, float -1.324300e-02, float -2.832400e-02], [4 x float] [float -1.041040e-01, float -7.545000e-02, float -3.274600e-02, float 2.448000e-02], [4 x float] [float f0xBDAF80DC, float -1.950200e-02, float -4.512100e-02, float -2.501600e-02], [4 x float] [float -1.231200e-01, float -3.084400e-02, float -3.533000e-03, float -1.622400e-02], [4 x float] [float -2.556800e-02, float -4.917200e-02, float -3.911000e-03, float -2.752200e-02], [4 x float] [float -3.902900e-02, float -1.985700e-02, float -4.321100e-02, float -5.808700e-02], [4 x float] [float -4.012200e-02, float -2.306700e-02, float -1.356000e-03, float 8.607000e-03], [4 x float] [float -6.335100e-02, float -1.776000e-03, float 1.601500e-02, float -2.708800e-02], [4 x float] [float -6.811000e-02, float -3.883800e-02, float 4.252500e-02, float 1.076000e-03], [4 x float] [float -4.362300e-02, float -2.073600e-02, float -4.786200e-02, float 3.771000e-02], [4 x float] [float -4.105200e-02, float 2.195400e-02, float -2.566000e-02, float 7.580000e-04], [4 x float] [float -1.303500e-02, float 2.583000e-03, float f0xBC06E3B4, float -3.730000e-02], [4 x float] [float -5.523000e-03, float -1.467000e-02, float 1.965100e-02, float -1.266700e-02], [4 x float] [float -4.409000e-03, float -1.443700e-02, float -5.941200e-02, float -1.970100e-02], [4 x float] [float 2.494600e-02, float -1.166300e-02, float -1.435100e-02, float -2.876200e-02], [4 x float] [float 1.266000e-02, float 1.848900e-02, float -1.020500e-02, float 1.269500e-02], [4 x float] [float -4.423000e-03, float 1.782700e-02, float 4.054400e-02, float 3.629000e-03], [4 x float] [float 2.068400e-02, float 2.674300e-02, float 7.752000e-03, float -2.559500e-02], [4 x float] [float 3.207100e-02, float 4.300000e-05, float 2.618800e-02, float -6.444000e-03], [4 x float] [float 5.879300e-02, float 1.582000e-02, float -1.119000e-03, float -1.741500e-02], [4 x float] [float 2.015600e-02, float -4.759000e-02, float 4.227000e-03, float 8.670000e-03], [4 x float] [float 5.477000e-02, float 3.213500e-02, float 2.977000e-02, float f0xBC2005C4], [4 x float] [float 3.088400e-02, float 4.775700e-02, float 3.306800e-02, float 6.866000e-03], [4 x float] [float f0x3D7E1C9B, float 1.164600e-02, float 5.603700e-02, float 1.685900e-02], [4 x float] [float 1.379800e-02, float -2.819600e-02, float 6.071000e-02, float 1.429900e-02], [4 x float] [float 1.000430e-01, float 4.144500e-02, float 2.337900e-02, float -1.488900e-02], [4 x float] [float 6.272800e-02, float -4.282100e-02, float 2.180000e-03, float -5.538000e-02], [4 x float] [float 6.166300e-02, float 1.876700e-02, float -1.557100e-02, float -7.409500e-02], [4 x float] [float 6.298000e-02, float f0x3DA4DB9C, float 1.180800e-02, float -3.178700e-02], [4 x float] [float f0x3DAE019B, float 4.310000e-02, float -2.587700e-02, float 2.030900e-02], [4 x float] [float 1.470700e-02, float 3.542100e-02, float -4.144000e-02, float -5.337300e-02], [4 x float] [float 8.126800e-02, float 5.791000e-03, float -6.629000e-02, float -3.982500e-02], [4 x float] [float 1.769100e-02, float -2.040100e-02, float -4.051300e-02, float f0xBDABF338], [4 x float] [float 1.208740e-01, float 5.575300e-02, float -2.598800e-02, float -5.955200e-02], [4 x float] [float f0x3DA3A8E7, float 7.894000e-03, float -8.538000e-02, float -1.145870e-01], [4 x float] [float 3.685600e-02, float -3.933100e-02, float -1.042370e-01, float -6.911600e-02], [4 x float] [float 8.526000e-03, float -6.427300e-02, float -4.831200e-02, float -3.859500e-02], [4 x float] [float 3.346100e-02, float -2.895600e-02, float -6.650500e-02, float 3.872200e-02], [4 x float] [float -4.206400e-02, float -4.398900e-02, float -1.006530e-01, float -7.155000e-02], [4 x float] [float -1.534200e-02, float -6.485000e-02, float -6.567500e-02, float -1.227690e-01], [4 x float] [float -6.581000e-03, float -4.919000e-03, float -1.135640e-01, float -1.457530e-01], [4 x float] [float f0x3C078B7A, float -7.070200e-02, float -1.649980e-01, float -9.554100e-02], [4 x float] [float -1.698000e-03, float -6.374400e-02, float -1.299710e-01, float -1.116200e-02], [4 x float] [float -4.847100e-02, float f0xBDB33333, float -1.110060e-01, float -1.618230e-01], [4 x float] [float -3.219300e-02, float f0xBDBC52E7, float -8.064200e-02, float 1.228800e-02], [4 x float] [float f0xBDC45910, float -1.598600e-02, float -7.272200e-02, float -1.017450e-01], [4 x float] [float -7.947700e-02, float -8.206000e-02, float -2.030080e-01, float -1.002970e-01], [4 x float] [float -2.388300e-02, float -6.402200e-02, float -1.683410e-01, float -2.117390e-01], [4 x float] [float -7.053000e-02, float -1.035470e-01, float -1.238580e-01, float 5.504900e-02], [4 x float] [float -3.350300e-02, float f0xBD9D4F9C, float -1.628700e-02, float 4.415900e-02], [4 x float] [float f0xBDB51937, float -1.616820e-01, float -5.857900e-02, float 1.387300e-02], [4 x float] [float -8.306800e-02, float -1.682220e-01, float -1.677300e-02, float -8.020900e-02], [4 x float] [float -8.054800e-02, float -1.390900e-01, float 3.054400e-02, float 7.171000e-03], [4 x float] [float -1.174820e-01, float -8.371800e-02, float 2.707400e-02, float -3.674000e-03], [4 x float] [float -1.630850e-01, float -1.568560e-01, float -1.261800e-02, float -2.232900e-02], [4 x float] [float -1.765400e-01, float -1.130420e-01, float -2.014800e-02, float 5.177000e-02], [4 x float] [float -1.538910e-01, float -1.992930e-01, float -4.324400e-02, float 2.833100e-02], [4 x float] [float -1.078220e-01, float -1.506150e-01, float 1.643000e-02, float f0x3DBE4C51], [4 x float] [float -1.376760e-01, float -1.832240e-01, float 6.602600e-02, float 2.934300e-02], [4 x float] [float -1.911060e-01, float -9.925000e-02, float 4.537000e-02, float 4.084000e-03], [4 x float] [float -2.370420e-01, float -1.308150e-01, float -2.254300e-02, float -2.942800e-02], [4 x float] [float -2.010140e-01, float -5.359100e-02, float -7.305000e-03, float -3.354700e-02], [4 x float] [float -2.492860e-01, float -2.284080e-01, float 5.002000e-03, float 7.146000e-03], [4 x float] [float -2.065090e-01, float -2.119980e-01, float -6.135200e-02, float -4.723300e-02], [4 x float] [float -2.557020e-01, float -1.351140e-01, float 7.637500e-02, float 3.663000e-02], [4 x float] [float -2.962710e-01, float f0xBD977100, float -7.273000e-03, float -1.960100e-02], [4 x float] [float -3.029170e-01, float -1.751110e-01, float -7.002400e-02, float -4.390500e-02], [4 x float] [float -2.392750e-01, float -4.396200e-02, float -8.498200e-02, float -6.744600e-02], [4 x float] [float -2.545830e-01, float -2.947200e-01, float -8.876200e-02, float -7.045100e-02], [4 x float] [float -2.055830e-01, float -2.389960e-01, float -1.247530e-01, float 3.307600e-02], [4 x float] [float -2.055830e-01, float -2.158820e-01, float -2.847200e-02, float 1.186790e-01], [4 x float] [float -1.536400e-01, float -2.044640e-01, float -3.965400e-02, float -1.344410e-01], [4 x float] [float -1.459290e-01, float -1.919700e-01, float -1.753080e-01, float 2.136600e-02], [4 x float] [float -1.493480e-01, float -2.125690e-01, float -1.183240e-01, float 1.038120e-01], [4 x float] [float -1.663970e-01, float -2.205810e-01, float -2.652600e-01, float -2.911300e-02], [4 x float] [float -1.641710e-01, float -2.312620e-01, float -2.588280e-01, float 6.142700e-02], [4 x float] [float -2.001980e-01, float -2.634530e-01, float -2.120160e-01, float 1.153590e-01], [4 x float] [float -1.300880e-01, float -2.121680e-01, float -2.023680e-01, float 1.185630e-01], [4 x float] [float -2.063870e-01, float f0xBD9FE5C9, float -2.278560e-01, float -1.111650e-01], [4 x float] [float -1.296050e-01, float -1.768480e-01, float -2.415840e-01, float -2.599000e-01], [4 x float] [float -1.768260e-01, float -4.590100e-02, float -1.417120e-01, float -2.093450e-01], [4 x float] [float -3.511730e-01, float -3.109700e-02, float -1.339350e-01, float -1.824120e-01], [4 x float] [float -1.642320e-01, float 2.700600e-02, float -1.403900e-02, float -5.356700e-02], [4 x float] [float -1.710370e-01, float -2.592400e-02, float 3.097200e-02, float 1.732900e-02], [4 x float] [float -8.086200e-02, float -2.157700e-02, float 7.652000e-03, float 6.396800e-02], [4 x float] [float -6.178800e-02, float 4.202400e-02, float -1.878300e-02, float -5.797900e-02], [4 x float] [float -1.103110e-01, float 5.476000e-02, float 3.144600e-02, float -6.710000e-03], [4 x float] [float -1.366370e-01, float 2.217100e-02, float 8.499100e-02, float 2.803900e-02], [4 x float] [float -2.544710e-01, float -4.376000e-03, float 7.803400e-02, float 3.364900e-02], [4 x float] [float -2.344640e-01, float f0x3DB48BA8, float 4.099900e-02, float 2.639000e-03], [4 x float] [float -3.709500e-02, float 5.944300e-02, float 7.218000e-02, float 1.502700e-02], [4 x float] [float -4.684100e-02, float -4.813000e-03, float 8.826600e-02, float 3.878600e-02], [4 x float] [float -8.678200e-02, float 1.201000e-01, float 8.265500e-02, float 2.027100e-02], [4 x float] [float -1.183610e-01, float -6.924200e-02, float f0x3DC249A1, float 3.920000e-02], [4 x float] [float -2.334200e-02, float f0xBDACA70D, float 5.268400e-02, float 1.709300e-02], [4 x float] [float -1.419400e-02, float 1.012000e-03, float 1.194600e-02, float 7.412500e-02], [4 x float] [float -1.534200e-02, float 7.639600e-02, float 2.236500e-02, float -2.800100e-02], [4 x float] [float 2.770600e-02, float 3.704700e-02, float 1.075730e-01, float 6.081500e-02], [4 x float] [float 3.061500e-02, float 4.066400e-02, float 1.046700e-02, float 7.428900e-02], [4 x float] [float 3.864600e-02, float 1.155840e-01, float 6.962700e-02, float 7.642000e-03], [4 x float] [float 9.646300e-02, float 6.981800e-02, float f0x3D7FF9B5, float 1.541300e-02], [4 x float] [float 5.483400e-02, float 6.523200e-02, float 5.428600e-02, float 1.100880e-01], [4 x float] [float 1.523120e-01, float 9.237100e-02, float 2.642000e-02, float -1.318400e-02], [4 x float] [float 1.442640e-01, float 1.234380e-01, float 8.013100e-02, float 2.323300e-02], [4 x float] [float 1.244050e-01, float 9.943000e-03, float -1.484770e-01, float -2.051840e-01]], align 16
@sinc_win = internal constant <{ [30 x float], [10 x float] }> <{ [30 x float] [float 8.744750e-01, float 7.551010e-01, float 4.559620e-01, float 1.188070e-01, float -1.142230e-01, float -1.767780e-01, float -1.019230e-01, float 1.555300e-02, float f0x3DB143BF, float 7.819300e-02, float 1.866000e-02, float -3.751300e-02, float -5.273300e-02, float -2.745900e-02, float 9.967000e-03, float 3.027800e-02, float 2.405000e-02, float 3.055000e-03, float -1.386200e-02, float -1.616200e-02, float -6.725000e-03, float 4.212000e-03, float 8.634000e-03, float 5.721000e-03, float -0.000000e+00, float -3.710000e-03, float -3.690000e-03, float -1.228000e-03, float 1.409000e-03, float 2.610000e-03], [10 x float] zeroinitializer }>, align 16
@ff_pow_0_5 = external local_unnamed_addr constant [16 x float], align 16

; Function Attrs: nounwind uwtable
define void @ff_sipr_decode_frame_16k(ptr noundef %0, ptr noundef %1, ptr noundef initializes((56, 120)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [46 x float], align 16            ; 4 uses
  %i.b = alloca [16 x double], align 16           ; 11 uses
  %i.c = alloca [16 x float], align 16            ; 12 uses
  %i.d = alloca [16 x double], align 16           ; 20 uses
  %i.e = alloca [2 x [16 x float]], align 16      ; 5 uses
  %i.f = alloca [80 x float], align 16            ; 12 uses
  %3 = alloca %struct.AMRFixed, align 4           ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1952 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %1, align 4, !tbaa !20
  %i.l = load i32, ptr %i.j, align 4, !tbaa !21
  %i.m = mul nsw i32 %i.l, 3
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr @lsf_cb1_16k, i64 %i.n ; 3 uses
  %.sroa.0.0.copyload13.i = load float, ptr %i.o, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.6.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = mul nsw i32 %i.q, 3
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr @lsf_cb2_16k, i64 %i.s ; 3 uses
  %.sroa.9.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.10.12..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !21
  %i.w = mul nsw i32 %i.v, 3
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr @lsf_cb3_16k, i64 %i.x ; 3 uses
  %.sroa.11.24.copyload.i = load float, ptr %i.y, align 4 ; 2 uses
  %.sroa.13.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.14.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  %i.ab = mul nsw i32 %i.aa, 3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr @lsf_cb4_16k, i64 %i.ac ; 3 uses
  %.sroa.17.36..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.18.36..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = shl nsw i32 %i.af, 2
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr @lsf_cb5_16k, i64 %i.ah
  %i.aj = sext i32 %i.k to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr @qu, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !22 ; 2 uses
  %i.am = fsub nsz float 1.000000e+00, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bc = load <2 x float>, ptr %.sroa.5.0..sroa_idx14.i, align 4 ; 2 uses
  %.sroa.6.0.copyload17.i = load float, ptr %.sroa.6.0..sroa_idx16.i, align 4
  %i.bd = load <2 x float>, ptr %i.t, align 4     ; 2 uses
  %i.be = load <4 x float>, ptr %i.i, align 4, !tbaa !22
  %i.bf = insertelement <4 x float> poison, float %i.al, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bh = fmul nsz <4 x float> %i.bg, %i.be
  store float %.sroa.0.0.copyload13.i, ptr %i.i, align 4
  %i.bi = insertelement <4 x float> poison, float %i.am, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bk = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.bl = insertelement <4 x float> %i.bk, float %.sroa.0.0.copyload13.i, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %.sroa.6.0.copyload17.i, i64 2
  %i.bn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bm, <4 x float> %i.bh)
  %i.bo = fadd nsz <4 x float> %i.bn, <float 1.315540e-01, float 2.466150e-01, float 4.358960e-01, float 6.444190e-01>
  store <4 x float> %i.bo, ptr %i.c, align 16, !tbaa !22
  %i.bp = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bq = load <2 x float>, ptr %.sroa.13.24..sroa_idx.i, align 4 ; 2 uses
  %.sroa.14.24.copyload.i = load float, ptr %.sroa.14.24..sroa_idx.i, align 4
  %i.br = load <2 x float>, ptr %i.ad, align 4    ; 2 uses
  %i.bs = load <4 x float>, ptr %i.ap, align 4, !tbaa !22
  %i.bt = fmul nsz <4 x float> %i.bg, %i.bs
  %i.bu = load <2 x float>, ptr %.sroa.9.12..sroa_idx.i, align 4
  %.sroa.10.12.copyload.i = load float, ptr %.sroa.10.12..sroa_idx.i, align 4
  store <4 x float> %i.bp, ptr %i.an, align 4
  store float %.sroa.10.12.copyload.i, ptr %i.ar, align 4
  store float %.sroa.11.24.copyload.i, ptr %i.as, align 4
  %i.bv = shufflevector <2 x float> %i.bq, <2 x float> %i.bu, <4 x i32> <i32 2, i32 3, i32 poison, i32 0>
  %i.bw = insertelement <4 x float> %i.bv, float %.sroa.11.24.copyload.i, i64 2
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bw, <4 x float> %i.bt)
  %i.by = fadd nsz <4 x float> %i.bx, <float f0x3F53EB5B, float f0x3F8249C3, float 1.198910e+00, float f0x3FB08848>
  store <4 x float> %i.by, ptr %i.aq, align 16, !tbaa !22
  %i.bz = load <4 x float>, ptr %i.av, align 4, !tbaa !22
  %i.ca = fmul nsz <4 x float> %i.bg, %i.bz
  %i.cb = load <2 x float>, ptr %.sroa.17.36..sroa_idx.i, align 4
  %.sroa.18.36.copyload.i = load float, ptr %.sroa.18.36..sroa_idx.i, align 4
  %i.cc = shufflevector <2 x float> %i.br, <2 x float> %i.cb, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  %i.cd = insertelement <4 x float> %i.cc, float %.sroa.14.24.copyload.i, i64 0
  %i.ce = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.cd, <4 x float> %i.ca)
  %i.cf = fadd nsz <4 x float> %i.ce, <float f0x3FC7F4C3, float f0x3FDE5300, float f0x3FF8697B, float f0x40087215>
  store <4 x float> %i.cf, ptr %i.aw, align 16, !tbaa !22
  %i.cg = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.cg, ptr %i.au, align 4
  store float %.sroa.18.36.copyload.i, ptr %i.ay, align 4
  %i.ch = load <4 x float>, ptr %i.ai, align 16   ; 2 uses
  %i.ci = load <4 x float>, ptr %i.az, align 4, !tbaa !22
  %i.cj = fmul nsz <4 x float> %i.bg, %i.ci
  %i.ck = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.ch, <4 x float> %i.cj)
  %i.cl = fadd nsz <4 x float> %i.ck, <float f0x401637E7, float f0x4021609A, float 2.717870e+00, float f0x4036365D>
  store <4 x float> %i.cl, ptr %i.ba, align 16, !tbaa !22
  store <4 x float> %i.ch, ptr %i.az, align 4
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.c, double noundef f0x3F941B2F769CF0E0, i32 noundef 16) #6
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %9 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 5568 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.cv = load <2 x float>, ptr %i.c, align 16, !tbaa !22
  %i.cw = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.cv)
  %i.cx = fpext <2 x float> %i.cw to <2 x double> ; 3 uses
  %12 = extractelement <2 x double> %i.cx, i64 0
  store double %12, ptr %i.d, align 16, !tbaa !11
  %13 = extractelement <2 x double> %i.cx, i64 1
  store double %13, ptr %4, align 8, !tbaa !11
  %i.cy = load <2 x double>, ptr %i.cu, align 8, !tbaa !11
  %i.cz = fadd nsz <2 x double> %i.cy, %i.cx
  %i.da = fmul nsz <2 x double> %i.cz, splat (double 5.000000e-01)
  store <2 x double> %i.da, ptr %i.b, align 16, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 5584
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dd = load <2 x float>, ptr %i.ao, align 8, !tbaa !22
  %i.de = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.dd)
  %i.df = fpext <2 x float> %i.de to <2 x double> ; 3 uses
  %14 = extractelement <2 x double> %i.df, i64 0
  store double %14, ptr %5, align 16, !tbaa !11
  %15 = extractelement <2 x double> %i.df, i64 1
  store double %15, ptr %6, align 8, !tbaa !11
  %i.dg = load <2 x double>, ptr %i.db, align 8, !tbaa !11
  %i.dh = fadd nsz <2 x double> %i.dg, %i.df
  %i.di = fmul nsz <2 x double> %i.dh, splat (double 5.000000e-01)
  store <2 x double> %i.di, ptr %i.dc, align 16, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dl = load <2 x float>, ptr %i.aq, align 16, !tbaa !22
  %i.dm = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.dl)
  %i.dn = fpext <2 x float> %i.dm to <2 x double> ; 3 uses
  %16 = extractelement <2 x double> %i.dn, i64 0
  store double %16, ptr %7, align 16, !tbaa !11
  %17 = extractelement <2 x double> %i.dn, i64 1
  store double %17, ptr %8, align 8, !tbaa !11
  %i.do = load <2 x double>, ptr %i.dj, align 8, !tbaa !11
  %i.dp = fadd nsz <2 x double> %i.do, %i.dn
  %i.dq = fmul nsz <2 x double> %i.dp, splat (double 5.000000e-01)
  store <2 x double> %i.dq, ptr %i.dk, align 16, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 5616
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dt = load <2 x float>, ptr %i.at, align 8, !tbaa !22
  %i.du = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.dt)
  %i.dv = fpext <2 x float> %i.du to <2 x double> ; 3 uses
  %18 = extractelement <2 x double> %i.dv, i64 0
  store double %18, ptr %9, align 16, !tbaa !11
  %19 = extractelement <2 x double> %i.dv, i64 1
  store double %19, ptr %10, align 8, !tbaa !11
  %i.dw = load <2 x double>, ptr %i.dr, align 8, !tbaa !11
  %i.dx = fadd nsz <2 x double> %i.dw, %i.dv
  %i.dy = fmul nsz <2 x double> %i.dx, splat (double 5.000000e-01)
  store <2 x double> %i.dy, ptr %i.ds, align 16, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 5632
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.eb = load <2 x float>, ptr %i.aw, align 16, !tbaa !22
  %i.ec = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.eb)
  %i.ed = fpext <2 x float> %i.ec to <2 x double> ; 3 uses
  %20 = extractelement <2 x double> %i.ed, i64 0
  store double %20, ptr %11, align 16, !tbaa !11
  %21 = extractelement <2 x double> %i.ed, i64 1
  store double %21, ptr %i.cm, align 8, !tbaa !11
  %i.ee = load <2 x double>, ptr %i.dz, align 8, !tbaa !11
  %i.ef = fadd nsz <2 x double> %i.ee, %i.ed
  %i.eg = fmul nsz <2 x double> %i.ef, splat (double 5.000000e-01)
  store <2 x double> %i.eg, ptr %i.ea, align 16, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 5648
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ej = load <2 x float>, ptr %i.ax, align 8, !tbaa !22
  %i.ek = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.ej)
  %i.el = fpext <2 x float> %i.ek to <2 x double> ; 3 uses
  %22 = extractelement <2 x double> %i.el, i64 0
  store double %22, ptr %i.cn, align 16, !tbaa !11
  %23 = extractelement <2 x double> %i.el, i64 1
  store double %23, ptr %i.co, align 8, !tbaa !11
  %i.em = load <2 x double>, ptr %i.eh, align 8, !tbaa !11
  %i.en = fadd nsz <2 x double> %i.em, %i.el
  %i.eo = fmul nsz <2 x double> %i.en, splat (double 5.000000e-01)
  store <2 x double> %i.eo, ptr %i.ei, align 16, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 5664
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.er = load <2 x float>, ptr %i.ba, align 16, !tbaa !22
  %i.es = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.er)
  %i.et = fpext <2 x float> %i.es to <2 x double> ; 3 uses
  %24 = extractelement <2 x double> %i.et, i64 0
  store double %24, ptr %i.cp, align 16, !tbaa !11
  %25 = extractelement <2 x double> %i.et, i64 1
  store double %25, ptr %i.cq, align 8, !tbaa !11
  %i.eu = load <2 x double>, ptr %i.ep, align 8, !tbaa !11
  %i.ev = fadd nsz <2 x double> %i.eu, %i.et
  %i.ew = fmul nsz <2 x double> %i.ev, splat (double 5.000000e-01)
  store <2 x double> %i.ew, ptr %i.eq, align 16, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 5680
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ez = load <2 x float>, ptr %i.bb, align 8, !tbaa !22
  %i.fa = call nsz <2 x float> @llvm.cos.v2f32(<2 x float> %i.ez)
  %i.fb = fpext <2 x float> %i.fa to <2 x double> ; 3 uses
  %26 = extractelement <2 x double> %i.fb, i64 0
  store double %26, ptr %i.cr, align 16, !tbaa !11
  %27 = extractelement <2 x double> %i.fb, i64 1
  store double %27, ptr %i.cs, align 8, !tbaa !11
  %i.fc = load <2 x double>, ptr %i.ex, align 8, !tbaa !11
  %i.fd = fadd nsz <2 x double> %i.fc, %i.fb
  %i.fe = fmul nsz <2 x double> %i.fd, splat (double 5.000000e-01)
  store <2 x double> %i.fe, ptr %i.ey, align 16, !tbaa !11
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef 8) #6
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.d, ptr noundef nonnull %i.ct, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.cu, ptr noundef nonnull align 16 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 5504 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ff, ptr noundef nonnull align 16 dereferenceable(64) %i.fg, i64 64, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 5212 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2956 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !21 ; 3 uses
  %i.fs = icmp slt i32 %i.fr, 390
  %i.ft = add nsw i32 %i.fr, 88
  %i.fu = mul nuw nsw i32 %i.fr, 3
  %i.fv = add nsw i32 %i.fu, -690
  %.0.i = select i1 %i.fs, i32 %i.ft, i32 %i.fv   ; 2 uses
  %i.fw = load i32, ptr %i.fh, align 4, !tbaa !21
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr @gain_pitch_cb_16k, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !22 ; 3 uses
  %i.ga = fcmp nsz ogt float %i.fz, 1.000000e+00
  %narrow.sel = select nsz i1 %i.ga, float 1.000000e+00, float %i.fz
  store float %narrow.sel, ptr %i.fi, align 4, !tbaa !24
  %i.gb = mul i32 %.0.i, 10923                    ; 2 uses
  %i.gc = add i32 %i.gb, 10923
  %i.gd = ashr i32 %i.gc, 15                      ; 2 uses
  store i32 %i.gd, ptr %i.fj, align 4, !tbaa !25
  store i32 %i.gd, ptr %i.fk, align 4, !tbaa !14
  %i.ge = add i32 %i.gb, 21846
  %i.gf = ashr i32 %i.ge, 15                      ; 2 uses
  %.neg = mul nsw i32 %i.gf, -3
  %narrow = sub nsw i32 0, %i.gf
  %i.gg = sext i32 %narrow to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = add i32 %.0.i, 3
  %i.gk = add i32 %i.gj, %.neg
  call void @ff_acelp_interpolatef(ptr noundef nonnull %i.h, ptr noundef nonnull %i.gi, ptr noundef nonnull @sinc_win, i32 noundef 3, i32 noundef %i.gk, i32 noundef 10, i32 noundef 80) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.f, i8 0, i64 320, i1 false)
  call void @ff_decode_10_pulses_35bits(ptr noundef nonnull %i.fm, ptr noundef nonnull %3, ptr noundef nonnull @ff_fc_4pulses_8bits_tracks_13, i32 noundef 5, i32 noundef 4) #6
  call void @ff_set_fixed_vector(ptr noundef nonnull %i.f, ptr noundef nonnull %3, float noundef 1.000000e+00, i32 noundef 80) #6
  %i.gl = load i32, ptr %i.fn, align 4, !tbaa !21
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr @gain_cb_16k, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !22 ; 2 uses
  %i.gp = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull @pred_16k, ptr noundef nonnull %i.fo, i32 noundef 2) #6
  %i.gq = fadd nsz float %i.gp, -7.130900e+01
  %i.gr = fpext nsz float %i.gq to double
  %i.gs = fmul nsz double %i.gr, f0x3FBD791C5F888823
  %i.gt = call nsz double @llvm.exp.f64(double %i.gs)
  %i.gu = fmul nsz double %i.gt, f0x4021E377A0000000
  %i.gv = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i32 noundef 80) #6
  %i.gw = fpext nsz float %i.gv to double
  %i.gx = fadd nsz double %i.gw, 1.000000e-02
  %i.gy = call nsz double @llvm.sqrt.f64(double %i.gx)
  %i.gz = fdiv nsz double %i.gu, %i.gy
  %i.ha = fptrunc nsz double %i.gz to float
  %i.hb = fmul nsz float %i.go, %i.ha
  %i.hc = load float, ptr %i.fo, align 4, !tbaa !22
  store float %i.hc, ptr %i.fp, align 16, !tbaa !22
  %i.hd = call nsz float @llvm.log10.f32(float %i.go)
  %i.he = fmul nsz float %i.hd, 2.000000e+01
  store float %i.he, ptr %i.fo, align 4, !tbaa !22
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.h, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, float noundef %i.fz, float noundef %i.hb, i32 noundef 80) #6
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, i32 noundef 80, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.hf = load i32, ptr %i.fl, align 4, !tbaa !21 ; 2 uses
  %i.hg = load i32, ptr %i.fk, align 4, !tbaa !14 ; 3 uses
  %i.hh = icmp slt i32 %i.hf, 62
  br i1 %i.hh, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.hi = mul nsw i32 %i.hg, 3
  br label %dec_delay3_2nd.exit.1

bb.c:                                             ; preds = %bb.a
  %i.hj = add nsw i32 %i.hg, -10
  %i.hk = icmp slt i32 %i.hg, 40
  %..i.i.1 = call i32 @llvm.umin.i32(i32 %i.hj, i32 262)
  %i.hl = mul nuw nsw i32 %..i.i.1, 3
  %i.hm = select i1 %i.hk, i32 90, i32 %i.hl
  %i.hn = add i32 %i.hf, -2
  %i.ho = add i32 %i.hn, %i.hm
  br label %dec_delay3_2nd.exit.1

dec_delay3_2nd.exit.1:                            ; preds = %bb.c, %bb.b
  %.0.1 = phi i32 [ %i.hi, %bb.b ], [ %i.ho, %bb.c ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !21
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr @gain_pitch_cb_16k, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !22 ; 3 uses
  %i.hu = fcmp nsz ogt float %i.ht, 1.000000e+00
  %narrow.sel.1 = select nsz i1 %i.hu, float 1.000000e+00, float %i.ht
  store float %narrow.sel.1, ptr %i.fi, align 4, !tbaa !24
  %i.hv = mul i32 %.0.1, 10923                    ; 2 uses
  %i.hw = add i32 %i.hv, 10923
  %i.hx = ashr i32 %i.hw, 15                      ; 2 uses
  store i32 %i.hx, ptr %i.fj, align 4, !tbaa !25
  store i32 %i.hx, ptr %i.fk, align 4, !tbaa !14
  %i.hy = add i32 %i.hv, 21846
  %i.hz = ashr i32 %i.hy, 15                      ; 2 uses
  %.neg.1 = mul nsw i32 %i.hz, -3
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 5 uses
  %narrow.1 = sub nsw i32 0, %i.hz
  %i.ib = sext i32 %narrow.1 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ie = add i32 %.0.1, 3
  %i.if = add i32 %i.ie, %.neg.1
  call void @ff_acelp_interpolatef(ptr noundef nonnull %i.ia, ptr noundef nonnull %i.id, ptr noundef nonnull @sinc_win, i32 noundef 3, i32 noundef %i.if, i32 noundef 10, i32 noundef 80) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.f, i8 0, i64 320, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 84
  call void @ff_decode_10_pulses_35bits(ptr noundef nonnull %i.ig, ptr noundef nonnull %3, ptr noundef nonnull @ff_fc_4pulses_8bits_tracks_13, i32 noundef 5, i32 noundef 4) #6
  call void @ff_set_fixed_vector(ptr noundef nonnull %i.f, ptr noundef nonnull %3, float noundef 1.000000e+00, i32 noundef 80) #6
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !21
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr @gain_cb_16k, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !22 ; 2 uses
  %i.im = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull @pred_16k, ptr noundef nonnull %i.fo, i32 noundef 2) #6
  %i.in = fadd nsz float %i.im, -7.130900e+01
  %i.io = fpext nsz float %i.in to double
  %i.ip = fmul nsz double %i.io, f0x3FBD791C5F888823
  %i.iq = call nsz double @llvm.exp.f64(double %i.ip)
  %i.ir = fmul nsz double %i.iq, f0x4021E377A0000000
  %i.is = call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i32 noundef 80) #6
  %i.it = fpext nsz float %i.is to double
  %i.iu = fadd nsz double %i.it, 1.000000e-02
  %i.iv = call nsz double @llvm.sqrt.f64(double %i.iu)
  %i.iw = fdiv nsz double %i.ir, %i.iv
  %i.ix = fptrunc nsz double %i.iw to float
  %i.iy = fmul nsz float %i.il, %i.ix
  %i.iz = load float, ptr %i.fo, align 4, !tbaa !22
  store float %i.iz, ptr %i.fp, align 16, !tbaa !22
  %i.ja = call nsz float @llvm.log10.f32(float %i.il)
  %i.jb = fmul nsz float %i.ja, 2.000000e+01
  store float %i.jb, ptr %i.fo, align 4, !tbaa !22
  call void @ff_weighted_vector_sumf(ptr noundef nonnull %i.ia, ptr noundef nonnull %i.ia, ptr noundef nonnull %i.f, float noundef %i.ht, float noundef %i.iy, i32 noundef 80) #6
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 2272
  call void @ff_celp_lp_synthesis_filterf(ptr noundef nonnull %i.jc, ptr noundef nonnull %i.ct, ptr noundef nonnull %i.ia, i32 noundef 80, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 2528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fg, ptr noundef nonnull align 16 dereferenceable(64) %i.je, i64 64, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1168) %i.jd, ptr noundef nonnull align 8 dereferenceable(1168) %i.jf, i64 1168, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 5216 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 5424 ; 5 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 5440 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.jj = load ptr, ptr %i.jh, align 16, !tbaa !16 ; 16 uses
  %i.jk = load float, ptr %i.jg, align 16, !tbaa !22
  %i.jl = load float, ptr @ff_pow_0_5, align 16, !tbaa !22
  %i.jm = fmul nsz float %i.jk, %i.jl
  store float %i.jm, ptr %i.jj, align 4, !tbaa !22
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 5220
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !22
  %i.jp = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_5, i64 4), align 4, !tbaa !22
  %i.jq = fmul nsz float %i.jo, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store float %i.jq, ptr %i.jr, align 4, !tbaa !22
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 5224
  %i.jt = load float, ptr %i.js, align 8, !tbaa !22
  %i.ju = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_5, i64 8), align 8, !tbaa !22
  %i.jv = fmul nsz float %i.jt, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float %i.jv, ptr %i.jw, align 4, !tbaa !22
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 5228
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !22
  %i.jz = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_5, i64 12), align 4, !tbaa !22
  %i.ka = fmul nsz float %i.jy, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store float %i.ka, ptr %i.kb, align 4, !tbaa !22
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 5232
  %i.kd = load float, ptr %i.kc, align 16, !tbaa !22
  %i.ke = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_5, i64 16), align 16, !tbaa !22
  %i.kf = fmul nsz float %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store float %i.kf, ptr %i.kg, align 4, !tbaa !22
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 5236
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !22
  %i.kj = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_5, i64 20), align 4, !tbaa !22
  %i.kk = fmul nsz float %i.ki, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jj, i64 20
  store float %i.kk, ptr %i.kl, align 4, !tbaa !22
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 5240
end_hunk_0
