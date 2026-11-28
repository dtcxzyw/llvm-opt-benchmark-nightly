Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/cpu_info?download=true
inline.NumInlined: 281
inline.NumDeleted: 135
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:bb.a
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.i.i": ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.i.i
  %i.jf = load ptr, ptr %i.es, align 8, !tbaa !40 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.et
  br i1 %i.jg, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.1.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.1.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.i.i"
  %i.jh = load i64, ptr %i.et, align 8, !tbaa !41
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.1.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.1.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.1.i.i
  %i.jj = load ptr, ptr %i.en, align 16, !tbaa !40 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.eo
  br i1 %i.jk, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.2.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.2.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.1.i.i"
  %i.jl = load i64, ptr %i.eo, align 16, !tbaa !41
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.2.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.2.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.1.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.2.i.i
  %i.jn = load ptr, ptr %i.ei, align 8, !tbaa !40 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.ej
  br i1 %i.jo, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.3.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.3.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.2.i.i"
  %i.jp = load i64, ptr %i.ej, align 8, !tbaa !41
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.3.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.3.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.2.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.3.i.i
  %i.jr = load ptr, ptr %i.ed, align 16, !tbaa !40 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.ee
  br i1 %i.js, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.4.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.4.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.3.i.i"
  %i.jt = load i64, ptr %i.ee, align 16, !tbaa !41
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.4.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.4.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.3.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.4.i.i
  %i.jv = load ptr, ptr %i.dy, align 8, !tbaa !40 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.dz
  br i1 %i.jw, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.5.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.5.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.4.i.i"
  %i.jx = load i64, ptr %i.dz, align 8, !tbaa !41
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.5.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.5.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.4.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.5.i.i
  %i.jz = load ptr, ptr %i.dt, align 16, !tbaa !40 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.du
  br i1 %i.ka, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.6.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.6.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.5.i.i"
  %i.kb = load i64, ptr %i.du, align 16, !tbaa !41
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.6.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.6.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.5.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.6.i.i
  %i.kd = load ptr, ptr %i.do, align 8, !tbaa !40 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.dp
  br i1 %i.ke, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.7.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.7.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.6.i.i"
  %i.kf = load i64, ptr %i.dp, align 8, !tbaa !41
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.7.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.7.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.6.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.7.i.i
  %i.kh = load ptr, ptr %i.dj, align 16, !tbaa !40 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.dk
  br i1 %i.ki, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.8.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.8.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.7.i.i"
  %i.kj = load i64, ptr %i.dk, align 16, !tbaa !41
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.8.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.8.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.7.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.8.i.i
  %i.kl = load ptr, ptr %i.de, align 8, !tbaa !40 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.df
  br i1 %i.km, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.9.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.9.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.8.i.i"
  %i.kn = load i64, ptr %i.df, align 8, !tbaa !41
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.9.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.9.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.8.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.9.i.i
  %i.kp = load ptr, ptr %i.cz, align 16, !tbaa !40 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.da
  br i1 %i.kq, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.10.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.10.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.10.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.9.i.i"
  %i.kr = load i64, ptr %i.da, align 16, !tbaa !41
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.10.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.10.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.9.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.10.i.i
  %i.kt = load ptr, ptr %i.cu, align 8, !tbaa !40 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.cv
  br i1 %i.ku, label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.11.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.11.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.10.i.i"
  %i.kv = load i64, ptr %i.cv, align 8, !tbaa !41
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #21
  br label %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.11.i.i"

"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.11.i.i": ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.10.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.11.i.i
  %i.kx = load ptr, ptr %1, align 16, !tbaa !40   ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.cq
  br i1 %i.ky, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i101.12.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.12.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.11.i.i"
  %i.kz = load i64, ptr %i.cq, align 16, !tbaa !41
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i101.12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i101.12.i.i: ; preds = %"_ZZN5arrow8internal12_GLOBAL__N_118LinuxParseCpuFlagsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev.exit102.11.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100.12.i.i
  %.not.12.i.i = icmp eq i64 %i.iz, -1
  %.not.i40.i = icmp eq i64 %i.hd, -1
  %spec.select.i.i = select i1 %.not.i40.i, i64 0, i64 %i.he
  %.not.1.i.i = icmp eq i64 %i.hh, -1
  %i.lb = select i1 %.not.1.i.i, i64 0, i64 %i.hi
  %.1.1.i.i = or i64 %i.lb, %spec.select.i.i
  %.not.2.i.i = icmp eq i64 %i.hl, -1
  %i.lc = select i1 %.not.2.i.i, i64 0, i64 %i.hm
  %.1.2.i.i = or i64 %.1.1.i.i, %i.lc
  %.not.3.i.i = icmp eq i64 %i.hp, -1
  %i.ld = select i1 %.not.3.i.i, i64 0, i64 %i.hq
  %.1.3.i.i = or i64 %.1.2.i.i, %i.ld
  %.not.4.i.i = icmp eq i64 %i.ht, -1
  %i.le = select i1 %.not.4.i.i, i64 0, i64 %i.hu
  %.1.4.i.i = or i64 %.1.3.i.i, %i.le
  %.not.5.i.i = icmp eq i64 %i.hx, -1
  %i.lf = select i1 %.not.5.i.i, i64 0, i64 %i.hy
  %.1.5.i.i = or i64 %.1.4.i.i, %i.lf
  %.not.6.i.i = icmp eq i64 %i.ib, -1
  %i.lg = select i1 %.not.6.i.i, i64 0, i64 %i.ic
  %.1.6.i.i = or i64 %.1.5.i.i, %i.lg
  %.not.7.i.i = icmp eq i64 %i.if, -1
  %i.lh = select i1 %.not.7.i.i, i64 0, i64 %i.ig
  %.1.7.i.i = or i64 %.1.6.i.i, %i.lh
  %.not.8.i.i = icmp eq i64 %i.ij, -1
  %i.li = select i1 %.not.8.i.i, i64 0, i64 %i.ik
  %.1.8.i.i = or i64 %.1.7.i.i, %i.li
  %.not.9.i.i = icmp eq i64 %i.in, -1
  %i.lj = select i1 %.not.9.i.i, i64 0, i64 %i.io
  %.1.9.i.i = or i64 %.1.8.i.i, %i.lj
  %.not.10.i.i = icmp eq i64 %i.ir, -1
  %i.lk = select i1 %.not.10.i.i, i64 0, i64 %i.is
  %.1.10.i.i = or i64 %.1.9.i.i, %i.lk
  %.not.11.i.i = icmp eq i64 %i.iv, -1
  %i.ll = select i1 %.not.11.i.i, i64 0, i64 %i.iw
  %.1.11.i.i = or i64 %.1.10.i.i, %i.ll
  %i.lm = select i1 %.not.12.i.i, i64 0, i64 %i.ja
  %.1.12.i.i = or i64 %.1.11.i.i, %i.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.ln = load i64, ptr %0, align 8, !tbaa !52
  %i.lo = or i64 %.1.12.i.i, %i.ln
  store i64 %i.lo, ptr %0, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc17.i, %bb.z, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp

bb.al:                                            ; preds = %.noexc10.i.i.i
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

bb.am:                                            ; preds = %bb.ad
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.ck
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %bb.am
  %i.lt = load i64, ptr %i.ck, align 8, !tbaa !41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.a

.loopexit.split-lp129.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i23.i, %bb.af
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

bb.an:                                            ; preds = %bb.ai
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.cm
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %bb.an
  %i.lx = load i64, ptr %i.cm, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.sink.split

bb.ao:                                            ; preds = %bb.ap
  %i.ly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lz = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.fc
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %bb.ao
  %i.mb = load i64, ptr %i.fc, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit39.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i
  %.sroa.speculated.i50.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 10)
  %bcmp115.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.11, i64 %.sroa.speculated.i50.i)
  %.not.i52.i = icmp eq i32 %bcmp115.i, 0
  %i.mc = icmp eq i64 %i.gz, 10
  %or.cond120.i = and i1 %i.mc, %.not.i52.i
  br i1 %or.cond120.i, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit58.thread.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit39.thread.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit58.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit39.thread.i
  %.sroa.speculated.i60.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 9)
  %bcmp116.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.12, i64 %.sroa.speculated.i60.i)
  %.not.i62.i = icmp eq i32 %bcmp116.i, 0
  %i.md = icmp eq i64 %i.gz, 9
  %or.cond121.i = and i1 %i.md, %.not.i62.i
  br i1 %or.cond121.i, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit58.thread.i
  %i.me = load i64, ptr %i.cp, align 8, !tbaa !76 ; 3 uses
  %.sroa.speculated.i69.i = call i64 @llvm.umin.i64(i64 %i.me, i64 12) ; 2 uses
  %cond127.i = icmp eq i64 %i.me, 0
  br i1 %cond127.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i70.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i70.i: ; preds = %bb.aq
  %i.mf = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %bcmp117.i = call i32 @bcmp(ptr %i.mf, ptr nonnull @.str.13, i64 %.sroa.speculated.i69.i)
  %.not.i71.i = icmp eq i32 %bcmp117.i, 0
  %i.mg = icmp eq i64 %i.me, 12                   ; 2 uses
  %or.cond122.i = and i1 %i.mg, %.not.i71.i
  br i1 %or.cond122.i, label %bb.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i

bb.ar:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i70.i
  store i32 1, ptr %i.g, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i70.i
  %bcmp118.i = call i32 @bcmp(ptr %i.mf, ptr nonnull @.str.14, i64 %.sroa.speculated.i69.i)
  %.not.i80.i = icmp eq i32 %bcmp118.i, 0
  %or.cond123.i = and i1 %i.mg, %.not.i80.i
  br i1 %or.cond123.i, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

bb.as:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i
  store i32 2, ptr %i.g, align 8, !tbaa !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.as, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i, %bb.ar, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit58.thread.i, %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i101.12.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i
  %i.mh = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.fc
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.mj = load i64, ptr %i.fc, align 8, !tbaa !41
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ml = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.fd
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i
  %i.mn = load i64, ptr %i.fd, align 8, !tbaa !41
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i
  %.sink154 = phi i64 [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i ]
  %.sink = phi ptr [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i ], [ %i.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i ]
  %12 = add i64 %.sink154, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %12) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.sink.split, %bb.ao, %bb.an, %.loopexit.split-lp129.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.i = phi { ptr, i32 } [ %i.lu, %bb.an ], [ %i.ly, %bb.ao ], [ %lpad.loopexit.split-lp154, %.loopexit.split-lp129.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.mp = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.fd
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i
  %13 = load i64, ptr %i.fd, align 8, !tbaa !41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i
  %.sink157 = phi i64 [ %13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i ], [ %i.lt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i ]
  %.sink155 = phi ptr [ %i.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i ]
  %.pn.pn.i.ph = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i ]
  %i.mr = add i64 %.sink157, 1
  call void @_ZdlPvm(ptr noundef %.sink155, i64 noundef %i.mr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %bb.am, %bb.al
  %.pn.pn.i = phi { ptr, i32 } [ %i.lq, %bb.am ], [ %i.lp, %bb.al ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i ], [ %.pn.pn.i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93.i.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.loopexit.split-lp.i.loopexit.split-lp

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ms = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.ci
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %bb.at
  %i.mu = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.mw = load ptr, ptr %2, align 8, !tbaa !51
  %i.mx = getelementptr i8, ptr %i.mw, i64 -24    ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = getelementptr inbounds i8, ptr %2, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !85
  %i.nc = and i32 %i.nb, 5
  %.not.i.i24 = icmp eq i32 %i.nc, 0
  br i1 %.not.i.i24, label %bb.w, label %.loopexit, !llvm.loop !64

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.nd = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.ci
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp
  %i.nf = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.body

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, %.noexc26
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.nh = load i64, ptr %0, align 8, !tbaa !45
  store i64 %i.nh, ptr %i.f, align 8, !tbaa !47
  %i.ni = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #24
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ni, i32 1)
  store i32 %.sroa.speculated, ptr %i.e, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZN5arrow8internal9GetEnvVarB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, ptr noundef nonnull @.str.1)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %.loopexit
  %i.nj = load ptr, ptr %9, align 8, !tbaa !55
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.ax, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i

bb.av:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_119OsRetrieveCacheSizeEPSt5arrayIlLm3EE.exit, %bb.q, %bb.j, %bb.b
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %.loopexit
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.nn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.no, ptr %10, align 8, !tbaa !75, !alias.scope !109
  %i.np = load ptr, ptr %i.nn, align 8, !tbaa !40, !noalias !109 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ns = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !76, !noalias !109 ; 3 uses
  %i.nu = icmp ult i64 %i.nt, 16
  call void @llvm.assume(i1 %i.nu)
  %i.nv = add nuw nsw i64 %i.nt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.no, ptr noundef nonnull align 8 dereferenceable(1) %i.nq, i64 %i.nv, i1 false)
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ax
  store ptr %i.np, ptr %10, align 8, !tbaa !40, !alias.scope !109
  %i.nw = load i64, ptr %i.nq, align 8, !tbaa !41, !noalias !109
  store i64 %i.nw, ptr %i.no, align 8, !tbaa !41, !alias.scope !109
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !76, !noalias !109
  br label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ay
  %i.nx = phi ptr [ %i.no, %bb.ay ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.ny = phi i64 [ %i.nt, %bb.ay ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.ny, ptr %i.oa, align 8, !tbaa !76, !alias.scope !109
  store ptr %i.nq, ptr %i.nn, align 8, !tbaa !40, !noalias !109
  store i64 0, ptr %i.nz, align 8, !tbaa !76, !noalias !109
  store i8 0, ptr %i.nq, align 8, !tbaa !41, !noalias !109
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ny
  %.not6.i = icmp samesign eq i64 %i.ny, 0
  br i1 %.not6.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.az, %.lr.ph.i30
  %.sroa.0.08.i = phi ptr [ %i.og, %.lr.ph.i30 ], [ %i.nx, %bb.az ] ; 3 uses
  %i.oc = load i8, ptr %.sroa.0.08.i, align 1, !tbaa !41
  %i.od = zext i8 %i.oc to i32
  %i.oe = call noundef i32 @toupper(i32 noundef %i.od) #26
  %i.of = trunc i32 %i.oe to i8
  store i8 %i.of, ptr %.sroa.0.08.i, align 1, !tbaa !41
  %i.og = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i31 = icmp eq ptr %i.og, %i.ob
  br i1 %.not.i31, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit, label %.lr.ph.i30, !llvm.loop !71

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit: ; preds = %.lr.ph.i30
  %.val.pre = load ptr, ptr %10, align 8          ; 10 uses
  %.val19.pre = load i64, ptr %i.oa, align 8, !tbaa !76
  switch i64 %.val19.pre, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %i.oh = load i32, ptr %.val.pre, align 1
  %i.oi = xor i32 %i.oh, 894981697
  %i.oj = getelementptr i8, ptr %.val.pre, i64 4
  %i.ok = load i16, ptr %i.oj, align 1
  %i.ol = zext i16 %i.ok to i32
  %i.om = xor i32 %i.ol, 12849
  %i.on = or i32 %i.oi, %i.om
  %i.oo = icmp ne i32 %i.on, 0
  %i.op = zext i1 %i.oo to i32
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %_ZN5arrow8internal12_GLOBAL__N_122ArchParseUserSimdLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %i.or = load i32, ptr %.val.pre, align 1
  %i.os = icmp ne i32 %i.or, 844650049
  %i.ot = zext i1 %i.os to i32
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %i.ov = load i16, ptr %.val.pre, align 1
  %i.ow = xor i16 %i.ov, 22081
  %i.ox = getelementptr i8, ptr %.val.pre, i64 2
  %i.oy = load i8, ptr %i.ox, align 1
  %i.oz = zext i8 %i.oy to i16
  %i.pa = xor i16 %i.oz, 88
  %i.pb = or i16 %i.ow, %i.pa
  %i.pc = icmp ne i16 %i.pb, 0
  %i.pd = zext i1 %i.pc to i32
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.pf = load i32, ptr %.val.pre, align 1
  %i.pg = xor i32 %i.pf, 876958547
  %i.ph = getelementptr i8, ptr %.val.pre, i64 4
  %i.pi = load i16, ptr %i.ph, align 1
  %i.pj = zext i16 %i.pi to i32
  %i.pk = xor i32 %i.pj, 12895
  %i.pl = or i32 %i.pg, %i.pk
  %i.pm = icmp ne i32 %i.pl, 0
  %i.pn = zext i1 %i.pm to i32
  %i.po = icmp eq i32 %i.pn, 0
  br i1 %i.po, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %i.pp = load i32, ptr %.val.pre, align 1
  %i.pq = icmp ne i32 %i.pp, 1162760014
  %i.pr = zext i1 %i.pq to i32
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %.sink44.i = phi i64 [ -6113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i ], [ -6129, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i ], [ -1985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i ], [ -8181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i ]
  %i.pt = load i64, ptr %0, align 8, !tbaa !52
  %i.pu = and i64 %i.pt, %.sink44.i
  store i64 %i.pu, ptr %0, align 8, !tbaa !52
  br label %_ZN5arrow8internal12_GLOBAL__N_122ArchParseUserSimdLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl.exit

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread: ; preds = %bb.az, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %11, ptr noundef nonnull @.str.2, i32 noundef 527, i32 noundef 1)
          to label %bb.ba unwind label %bb.bd
end_hunk_0
