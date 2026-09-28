Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOMaterial?download=true
inline.NumInlined: 941
inline.NumDeleted: 358
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp11LWOImporter12LoadNodeDataEj:bb.a
  br label %bb.af

bb.u:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bv, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.l, ptr %3, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.l, align 8
  invoke void @_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = load i64, ptr %i.m, align 8             ; 3 uses
  switch i64 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.v
  %i.bx = load ptr, ptr %3, align 8               ; 2 uses
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = xor i16 %i.by, 28265
  %i.ca = getelementptr i8, ptr %i.bx, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i16
  %i.cd = xor i16 %i.cc, 116
  %i.ce = or i16 %i.bz, %i.cd
  %i.cf = icmp ne i16 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ci = load ptr, ptr %i.a, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store ptr %i.cj, ptr %i.a, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

bb.w:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71: ; preds = %bb.v
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  %bcmp.i70 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.54, i64 %i.bw)
  %i.cl = icmp eq i32 %bcmp.i70, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
  %i.cm = load ptr, ptr %i.a, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cn, ptr %i.a, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
  %i.co = load i32, ptr %.pre, align 1
  %i.cp = xor i32 %i.co, 1918988406
  %i.cq = getelementptr i8, ptr %.pre, i64 4
  %i.cr = load i16, ptr %i.cq, align 1
  %i.cs = zext i16 %i.cr to i32
  %i.ct = xor i32 %i.cs, 28001
  %i.cu = or i32 %i.cp, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74
  %i.cy = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  store ptr %i.cz, ptr %i.a, align 8
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.db, ptr %i.a, align 8
  %.4.insert.insert.i = call i64 @llvm.bswap.i64(i64 %i.da)
  %i.dc = bitcast i64 %.4.insert.insert.i to double
  %i.dd = fptrunc double %i.dc to float           ; 8 uses
  %i.de = load i64, ptr %i.k, align 8             ; 5 uses
  switch i64 %i.de, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread
  %i.df = load ptr, ptr %2, align 8               ; 2 uses
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = xor i32 %i.dg, 1717987652
  %i.di = getelementptr i8, ptr %i.df, i64 3
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = xor i32 %i.dj, 1702065510
  %i.dl = or i32 %i.dh, %i.dk
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76
  store float %i.dd, ptr %i.u, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

bb.x:                                             ; preds = %bb.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread
  %.pre131 = load ptr, ptr %2, align 8
  %bcmp.i77 = call i32 @bcmp(ptr %.pre131, ptr nonnull @.str.57, i64 %i.de)
  %i.dq = icmp eq i32 %bcmp.i77, 0
  br i1 %i.dq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
  store float %i.dd, ptr %i.t, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread
  %.pre132 = load ptr, ptr %2, align 8
  %bcmp.i79 = call i32 @bcmp(ptr %.pre132, ptr nonnull @.str.58, i64 %i.de)
  %i.dr = icmp eq i32 %bcmp.i79, 0
  br i1 %i.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80
  store float %i.dd, ptr %i.s, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread
  %.pre133 = load ptr, ptr %2, align 8            ; 3 uses
  %bcmp.i81 = call i32 @bcmp(ptr %.pre133, ptr nonnull @.str.59, i64 %i.de)
  %i.ds = icmp eq i32 %bcmp.i81, 0
  br i1 %i.ds, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82
  store float %i.dd, ptr %i.r, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82
  %i.dt = load i64, ptr %.pre133, align 1
  %i.du = xor i64 %i.dt, 7598539516310025548
  %i.dv = getelementptr i8, ptr %.pre133, i64 8
  %i.dw = load i16, ptr %i.dv, align 1
  %i.dx = zext i16 %i.dw to i64
  %i.dy = xor i64 %i.dx, 31092
  %i.dz = or i64 %i.du, %i.dy
  %i.ea = icmp ne i64 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
  store float %i.dd, ptr %i.q, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread
  %.pre134 = load ptr, ptr %2, align 8
  %bcmp.i85 = call i32 @bcmp(ptr %.pre134, ptr nonnull @.str.61, i64 %i.de)
  %i.ed = icmp eq i32 %bcmp.i85, 0
  br i1 %i.ed, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  store float %i.dd, ptr %i.p, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  %i.ee = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.62)
          to label %bb.y unwind label %bb.x

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread111
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float %i.dd, ptr %i.w, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

bb.aa:                                            ; preds = %bb.y
  %i.ef = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.63)
          to label %bb.ab unwind label %bb.x

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ef, label %bb.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

bb.ac:                                            ; preds = %bb.ab
  store float %i.dd, ptr %i.v, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88: ; preds = %bb.v
  %.pre130 = load ptr, ptr %3, align 8
  %bcmp.i87 = call i32 @bcmp(ptr %.pre130, ptr nonnull @.str.64, i64 %i.bw)
  %i.eg = icmp eq i32 %bcmp.i87, 0
  br i1 %i.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88
  %i.eh = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  store ptr %i.ei, ptr %i.a, align 8
  %4 = load i64, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 2 uses
  store ptr %i.ej, ptr %i.a, align 8
  %i.ek = load i64, ptr %i.ej, align 1
  %5 = getelementptr inbounds nuw i8, ptr %i.eh, i64 40 ; 2 uses
  store ptr %5, ptr %i.a, align 8
  %.4.insert.insert.i89 = call i64 @llvm.bswap.i64(i64 %4)
  %.4.insert.insert.i90 = call i64 @llvm.bswap.i64(i64 %i.ek)
  %i.el = insertelement <2 x i64> poison, i64 %.4.insert.insert.i89, i64 0
  %i.em = insertelement <2 x i64> %i.el, i64 %.4.insert.insert.i90, i64 1
  %i.en = bitcast <2 x i64> %i.em to <2 x double>
  %i.eo = fptrunc <2 x double> %i.en to <2 x float>
  %i.ep = load i64, ptr %5, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  store ptr %i.eq, ptr %i.a, align 8
  %.4.insert.insert.i91 = call i64 @llvm.bswap.i64(i64 %i.ep)
  %i.er = bitcast i64 %.4.insert.insert.i91 to double
  %i.es = fptrunc double %i.er to float
  %i.et = load i64, ptr %i.k, align 8
  %i.eu = icmp eq i64 %i.et, 5
  br i1 %i.eu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread
  %i.ev = load ptr, ptr %2, align 8               ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 1
  %i.ex = xor i32 %i.ew, 1869377347
  %i.ey = getelementptr i8, ptr %i.ev, i64 4
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i32
  %i.fb = xor i32 %i.fa, 114
  %i.fc = or i32 %i.ex, %i.fb
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93
  store <2 x float> %i.eo, ptr %i.n, align 8
  store float %i.es, ptr %i.o, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74, %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit93.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, %bb.z, %bb.ac, %bb.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store ptr %i.bo, ptr %i.a, align 8
  %i.fg = load ptr, ptr %3, align 8               ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.l
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112
  %i.fi = load i64, ptr %i.l, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit88.thread112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ae

bb.ad:                                            ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.w ], [ %i.dp, %bb.x ]
  %i.fk = load ptr, ptr %3, align 8               ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.l
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.ad
  %i.fm = load i64, ptr %i.l, align 8
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.af

bb.ae:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r, %bb.q
  %i.fo = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %.not58 = icmp ult ptr %i.fp, %i.ap
  br i1 %.not58, label %.lr.ph, label %._crit_edge, !llvm.loop !71

bb.af:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.p, %bb.o
  %.pn62 = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.br, %bb.o ], [ %i.bu, %bb.t ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ]
  %i.fq = load ptr, ptr %2, align 8               ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.j
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.af
  %i.fs = load i64, ptr %i.j, align 8
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.ae
  %.pre135 = load ptr, ptr %2, align 8            ; 2 uses
  %i.fu = icmp eq ptr %.pre135, %i.j
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %._crit_edge
  %i.fv = load i64, ptr %i.j, align 8
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %.pre135, i64 noundef %i.fw) #21
  %.pre136.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %._crit_edge, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  %.pre136 = phi ptr [ %.pre136.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.fo, %._crit_edge ], [ %i.at, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.i, %bb.h
  %i.fx = phi ptr [ %.pre136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.ap, %bb.i ], [ %i.at, %bb.h ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %.not = icmp ult ptr %i.fy, %i.d
  br i1 %.not, label %bb.b, label %._crit_edge129, !llvm.loop !72

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %bb.g
  %.pn64 = phi { ptr, i32 } [ %i.as, %bb.g ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ]
  resume { ptr, i32 } %.pn64

._crit_edge129:                                   ; preds = %bb.ag, %bb.a
  ret void

bb.ai:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter15LoadLWO2SurfaceEj(ptr noundef nonnull align 8 dereferenceable(233) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Assimp::LWO::Surface", align 8 ; 47 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"struct.Assimp::IFF::SubChunkHeader", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 29 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x float> splat (float f0x3F48C88A), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float f0x3F48C88A, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i8 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 4.000000e-01>, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <2 x float> zeroinitializer, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float 0.000000e+00, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i32 1380401729, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.s, ptr %i.t, align 8
  store ptr %i.s, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %i.v, ptr %i.w, align 8
  store ptr %i.v, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i64 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 176
  store ptr %i.y, ptr %i.z, align 8
  store ptr %i.y, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.ab, ptr %i.ac, align 8
  store ptr %i.ab, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 224
  store ptr %i.ae, ptr %i.af, align 8
  store ptr %i.ae, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 248
  store ptr %i.ah, ptr %i.ai, align 8
  store ptr %i.ah, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 256
  store i64 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 272
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 280
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 296
  store ptr %i.an, ptr %i.ao, align 8
  store ptr %i.an, ptr %i.an, align 8
end_hunk_0
