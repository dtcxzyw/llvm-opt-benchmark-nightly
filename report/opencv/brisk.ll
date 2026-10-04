Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/brisk?download=true
inline.NumInlined: 1012
inline.NumDeleted: 417
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !269
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer5valueERKNS_3MatEfff(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d10BriskLayer5valueERKNS_3MatEfff, ptr noundef nonnull @.str.5, i32 noundef 2285) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !48
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn164 = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.j = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %4, i64 0
  %i.k = fmul <4 x float> %i.j, <float 5.000000e-01, float 0.000000e+00, float poison, float poison> ; 2 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.m = extractelement <4 x float> %i.k, i64 0   ; 5 uses
  %i.n = fcmp olt float %i.m, 5.000000e-01
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call float @llvm.floor.f32(float %3)
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = tail call float @llvm.floor.f32(float %2)
  %i.r = fptosi float %i.q to i32                 ; 2 uses
  %i.s = sitofp i32 %i.r to float
  %i.t = fsub float %2, %i.s
  %i.u = fmul float %i.t, 1.024000e+03
  %i.v = fptosi float %i.u to i32                 ; 3 uses
  %i.w = sitofp i32 %i.p to float
  %i.x = fsub float %3, %i.w
  %i.y = fmul float %i.x, 1.024000e+03
  %i.z = fptosi float %i.y to i32                 ; 2 uses
  %i.aa = sub nsw i32 1024, %i.v                  ; 2 uses
  %i.ab = sub nsw i32 1024, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = sext i32 %i.r to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !39  ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.p
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !48
  %i.al = zext i8 %i.ak to i32
  %i.am = mul i32 %i.aa, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul i32 %i.ap, %i.v
  %i.ar = sext i32 %i.ag to i64
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !48
  %i.au = zext i8 %i.at to i32
  %i.av = mul i32 %i.au, %i.v
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !48
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul i32 %i.aa, %i.ay
  %reass.add = add i32 %i.az, %i.av
  %reass.mul = mul i32 %reass.add, %i.z
  %reass.add170 = add i32 %i.aq, %i.am
  %reass.mul171 = mul i32 %reass.add170, %i.ab
  %i.ba = add i32 %reass.mul171, 512
  %i.bb = add i32 %i.ba, %reass.mul
  %i.bc = sdiv i32 %i.bb, 1048576
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.bd = fmul float %i.m, 4.000000e+00
  %i.be = fmul float %i.m, %i.bd                  ; 2 uses
  %i.bf = fdiv float f0x4A800000, %i.be
  %i.bg = fptosi float %i.bf to i32               ; 3 uses
  %i.bh = sitofp i32 %i.bg to float               ; 6 uses
  %i.bi = fmul float %i.be, %i.bh
  %i.bj = fmul float %i.bi, f0x3A800000
  %i.bk = fptosi float %i.bj to i32               ; 3 uses
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d10BriskLayer5valueERKNS_3MatEfff, ptr noundef nonnull @.str.5, i32 noundef 2321) #27
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.n:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.n
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !48
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.bm, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.bs = fadd float %2, %i.m                     ; 2 uses
  %i.bt = fadd float %3, %i.m                     ; 2 uses
  %i.bu = fpext float %i.bs to double
  %i.bv = fadd double %i.bu, 5.000000e-01
  %i.bw = fptosi double %i.bv to i32              ; 3 uses
  %i.bx = sitofp i32 %i.bw to float
  %i.by = insertelement <4 x float> poison, float %2, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %3, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.bx, i64 2
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cc = fsub <4 x float> %i.cb, %i.l            ; 2 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ce = fpext <2 x float> %i.cd to <2 x double>
  %i.cf = fadd <2 x double> %i.ce, splat (double 5.000000e-01)
  %i.cg = fptosi <2 x double> %i.cf to <2 x i32>  ; 3 uses
  %i.ch = fpext float %i.bt to double
  %i.ci = fadd double %i.ch, 5.000000e-01
  %i.cj = fptosi double %i.ci to i32              ; 2 uses
  %i.ck = insertelement <4 x float> poison, float %i.bs, i64 2
  %i.cl = shufflevector <2 x i32> %i.cg, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cm = sitofp <4 x i32> %i.cl to <4 x float>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.co = fsub <4 x float> %i.cn, %i.cc
  %i.cp = fadd <4 x float> %i.co, splat (float 5.000000e-01) ; 4 uses
  %i.cq = sitofp i32 %i.cj to float
  %i.cr = fsub float %i.bt, %i.cq
  %i.cs = fadd float %i.cr, 5.000000e-01          ; 2 uses
  %i.ct = extractelement <2 x i32> %i.cg, i64 0   ; 3 uses
  %i.cu = xor i32 %i.ct, -1
  %i.cv = add i32 %i.cu, %i.bw                    ; 2 uses
  %i.cw = extractelement <2 x i32> %i.cg, i64 1   ; 2 uses
  %i.cx = xor i32 %i.cw, -1
  %i.cy = add i32 %i.cx, %i.cj
  %i.cz = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.da = shufflevector <4 x float> %i.cp, <4 x float> %i.cz, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.db = fmul <4 x float> %i.cp, %i.da           ; 3 uses
  %9 = extractelement <4 x float> %i.db, i64 0
  %10 = fmul float %9, %i.bh
  %11 = fptosi float %10 to i32
  %i.dc = extractelement <4 x float> %i.db, i64 1
  %12 = fmul float %i.dc, %i.bh
  %i.dd = fptosi float %12 to i32
  %13 = shufflevector <4 x float> %i.db, <4 x float> %i.cp, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %14 = insertelement <4 x float> poison, float %i.bh, i64 0
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %16 = fmul <4 x float> %13, %15                 ; 4 uses
  %i.de = extractelement <4 x float> %16, i64 0
  %i.df = fptosi float %i.de to i32
  %i.dg = extractelement <4 x float> %16, i64 1
  %17 = fptosi float %i.dg to i32
  %18 = extractelement <4 x float> %16, i64 2
  %19 = fptosi float %18 to i32
  %20 = extractelement <4 x float> %16, i64 3
  %i.dh = fptosi float %20 to i32                 ; 2 uses
  %i.di = extractelement <4 x float> %i.cp, i64 2
  %i.dj = fmul float %i.di, %i.bh
  %i.dk = fptosi float %i.dj to i32
  %i.dl = fmul float %i.cs, %i.bh
  %i.dm = fptosi float %i.dl to i32               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !97 ; 2 uses
  %i.dp = sext i32 %i.ct to i64                   ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.i, align 4, !tbaa !39  ; 3 uses
  %i.ds = mul nsw i32 %i.dr, %i.cw
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !48
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nsw i32 %i.dw, %11                  ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 5 uses
  %i.dz = sext i32 %i.cv to i64                   ; 6 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz
  %i.eb = icmp sgt i32 %i.cv, 0                   ; 3 uses
  br i1 %i.eb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.ec = ptrtoaddr ptr %i.do to i64              ; 2 uses
  %i.ed = add i64 %i.ec, %i.dp
  %i.ee = add i64 %i.ed, %i.dt                    ; 2 uses
  %i.ef = add i64 %i.ee, %i.dz
  %i.eg = add i64 %i.ef, 1
  %i.eh = add i64 %i.ee, 2
  %i.ei = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.eh)
  %i.ej = xor i64 %i.ec, -1
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = add nsw i64 %i.dp, %i.dt
  %i.em = sub i64 %i.ek, %i.el                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.em, 8
  br i1 %min.iters.check, label %.lr.ph.preheader277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.em, -8                      ; 3 uses
  %i.en = getelementptr i8, ptr %i.dy, i64 %n.vec ; 2 uses
  %i.eo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dx, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eo, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi226 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ev, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.dy, i64 %index ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !48
  %wide.load227 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !48
  %i.eq = zext <4 x i8> %wide.load to <4 x i32>
  %i.er = zext <4 x i8> %wide.load227 to <4 x i32>
  %i.es = mul nsw <4 x i32> %broadcast.splat, %i.eq
  %i.et = mul nsw <4 x i32> %broadcast.splat, %i.er
  %i.eu = add <4 x i32> %i.es, %vec.phi           ; 2 uses
  %i.ev = add <4 x i32> %i.et, %vec.phi226        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ev, %i.eu
  %i.ex = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader277

.lr.ph.preheader277:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0173.ph = phi ptr [ %i.dy, %.lr.ph.preheader ], [ %i.en, %middle.block ]
  %.0158172.ph = phi i32 [ %i.dx, %.lr.ph.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader277, %.lr.ph
  %.0173 = phi ptr [ %i.fc, %.lr.ph ], [ %.0173.ph, %.lr.ph.preheader277 ] ; 2 uses
  %.0158172 = phi i32 [ %i.fb, %.lr.ph ], [ %.0158172.ph, %.lr.ph.preheader277 ]
  %i.ey = load i8, ptr %.0173, align 1, !tbaa !48
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nsw i32 %i.ez, %i.dh
  %i.fb = add nsw i32 %i.fa, %.0158172            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0173, i64 1 ; 3 uses
  %i.fd = icmp ult ptr %i.fc, %i.ea
  br i1 %i.fd, label %.lr.ph, label %._crit_edge, !llvm.loop !271

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.o
  %.0158.lcssa = phi i32 [ %i.dx, %bb.o ], [ %i.ex, %middle.block ], [ %i.fb, %.lr.ph ]
  %.0.lcssa = phi ptr [ %i.dy, %bb.o ], [ %i.en, %middle.block ], [ %i.fc, %.lr.ph ] ; 2 uses
  %i.fe = load i8, ptr %.0.lcssa, align 1, !tbaa !48
  %i.ff = zext i8 %i.fe to i32
  %i.fg = mul nsw i32 %i.ff, %i.dd
  %i.fh = add nsw i32 %i.fg, %.0158.lcssa         ; 2 uses
  %i.fi = sub i32 %i.ct, %i.bw
  %i.fj = add i32 %i.fi, %i.dr
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.fk ; 3 uses
  %i.fm = mul nsw i32 %i.dr, %i.cy                ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fl, i64 %i.fn
  %i.fp = icmp sgt i32 %i.fm, 0
  br i1 %i.fp, label %.lr.ph185.preheader, label %._crit_edge186

.lr.ph185.preheader:                              ; preds = %._crit_edge
  %invariant.op = add i64 %i.dz, 1
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %._crit_edge179
  %.1183 = phi ptr [ %i.gw, %._crit_edge179 ], [ %i.fl, %.lr.ph185.preheader ] ; 3 uses
  %.1159182 = phi i32 [ %i.gv, %._crit_edge179 ], [ %i.fh, %.lr.ph185.preheader ]
  %i.fq = load i8, ptr %.1183, align 1, !tbaa !48
  %i.fr = zext i8 %i.fq to i32
  %i.fs = mul nsw i32 %i.fr, %19
  %i.ft = add nsw i32 %i.fs, %.1159182            ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1183, i64 1 ; 5 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.dz
  br i1 %i.eb, label %.lr.ph178.preheader, label %._crit_edge179

.lr.ph178.preheader:                              ; preds = %.lr.ph185
  %i.fw = ptrtoaddr ptr %.1183 to i64             ; 3 uses
  %.reass = add i64 %i.fw, %invariant.op
  %i.fx = add i64 %i.fw, 2
  %i.fy = tail call i64 @llvm.umax.i64(i64 %.reass, i64 %i.fx)
  %i.fz = xor i64 %i.fw, -1
  %i.ga = add i64 %i.fy, %i.fz                    ; 3 uses
  %min.iters.check229 = icmp ult i64 %i.ga, 8
  br i1 %min.iters.check229, label %.lr.ph178.preheader270, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph178.preheader
  %n.vec231 = and i64 %i.ga, -8                   ; 3 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 %n.vec231 ; 2 uses
  %i.gc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ft, i64 0
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph230
  %index235 = phi i64 [ 0, %vector.ph230 ], [ %index.next241, %vector.body234 ] ; 2 uses
  %vec.phi236 = phi <4 x i32> [ %i.gc, %vector.ph230 ], [ %i.gi, %vector.body234 ]
  %vec.phi237 = phi <4 x i32> [ zeroinitializer, %vector.ph230 ], [ %i.gj, %vector.body234 ]
  %next.gep238 = getelementptr i8, ptr %i.fu, i64 %index235 ; 2 uses
  %i.gd = getelementptr i8, ptr %next.gep238, i64 4
  %wide.load239 = load <4 x i8>, ptr %next.gep238, align 1, !tbaa !48
  %wide.load240 = load <4 x i8>, ptr %i.gd, align 1, !tbaa !48
  %i.ge = zext <4 x i8> %wide.load239 to <4 x i32>
  %i.gf = zext <4 x i8> %wide.load240 to <4 x i32>
  %i.gg = mul nuw nsw <4 x i32> %broadcast.splat233, %i.ge
  %i.gh = mul nuw nsw <4 x i32> %broadcast.splat233, %i.gf
  %i.gi = add <4 x i32> %i.gg, %vec.phi236        ; 2 uses
  %i.gj = add <4 x i32> %i.gh, %vec.phi237        ; 2 uses
  %index.next241 = add nuw i64 %index235, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next241, %n.vec231
  br i1 %i.gk, label %middle.block242, label %vector.body234, !llvm.loop !272

middle.block242:                                  ; preds = %vector.body234
  %bin.rdx243 = add <4 x i32> %i.gj, %i.gi
  %i.gl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx243) ; 2 uses
  %cmp.n244 = icmp eq i64 %i.ga, %n.vec231
  br i1 %cmp.n244, label %._crit_edge179, label %.lr.ph178.preheader270

.lr.ph178.preheader270:                           ; preds = %.lr.ph178.preheader, %middle.block242
  %.2176.ph = phi ptr [ %i.fu, %.lr.ph178.preheader ], [ %i.gb, %middle.block242 ]
  %.2160175.ph = phi i32 [ %i.ft, %.lr.ph178.preheader ], [ %i.gl, %middle.block242 ]
  br label %.lr.ph178

.lr.ph178:                                        ; preds = %.lr.ph178.preheader270, %.lr.ph178
  %.2176 = phi ptr [ %i.gq, %.lr.ph178 ], [ %.2176.ph, %.lr.ph178.preheader270 ] ; 2 uses
  %.2160175 = phi i32 [ %i.gp, %.lr.ph178 ], [ %.2160175.ph, %.lr.ph178.preheader270 ]
  %i.gm = load i8, ptr %.2176, align 1, !tbaa !48
  %i.gn = zext i8 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, %i.bg
  %i.gp = add nsw i32 %i.go, %.2160175            ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.2176, i64 1 ; 3 uses
  %i.gr = icmp ult ptr %i.gq, %i.fv
  br i1 %i.gr, label %.lr.ph178, label %._crit_edge179, !llvm.loop !273

._crit_edge179:                                   ; preds = %.lr.ph178, %middle.block242, %.lr.ph185
  %.2160.lcssa = phi i32 [ %i.ft, %.lr.ph185 ], [ %i.gl, %middle.block242 ], [ %i.gp, %.lr.ph178 ]
  %.2.lcssa = phi ptr [ %i.fu, %.lr.ph185 ], [ %i.gb, %middle.block242 ], [ %i.gq, %.lr.ph178 ] ; 2 uses
  %i.gs = load i8, ptr %.2.lcssa, align 1, !tbaa !48
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nsw i32 %i.gt, %i.dk
  %i.gv = add nsw i32 %i.gu, %.2160.lcssa         ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %.2.lcssa, i64 %i.fk ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.fo
  br i1 %i.gx, label %.lr.ph185, label %._crit_edge186, !llvm.loop !274

._crit_edge186:                                   ; preds = %._crit_edge179, %._crit_edge
  %.1159.lcssa = phi i32 [ %i.fh, %._crit_edge ], [ %i.gv, %._crit_edge179 ]
  %.1.lcssa = phi ptr [ %i.fl, %._crit_edge ], [ %i.gw, %._crit_edge179 ] ; 3 uses
  %i.gy = load i8, ptr %.1.lcssa, align 1, !tbaa !48
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nsw i32 %i.gz, %17
  %i.hb = add nsw i32 %i.ha, %.1159.lcssa         ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1 ; 5 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.dz
  br i1 %i.eb, label %.lr.ph192.preheader, label %._crit_edge193

.lr.ph192.preheader:                              ; preds = %._crit_edge186
  %i.he = ptrtoaddr ptr %.1.lcssa to i64          ; 3 uses
  %i.hf = add i64 %i.he, %i.dz
  %i.hg = add i64 %i.hf, 1
  %i.hh = add i64 %i.he, 2
  %i.hi = tail call i64 @llvm.umax.i64(i64 %i.hg, i64 %i.hh)
  %i.hj = xor i64 %i.he, -1
  %i.hk = add i64 %i.hi, %i.hj                    ; 3 uses
  %min.iters.check248 = icmp ult i64 %i.hk, 8
  br i1 %min.iters.check248, label %.lr.ph192.preheader266, label %vector.ph249

vector.ph249:                                     ; preds = %.lr.ph192.preheader
  %n.vec250 = and i64 %i.hk, -8                   ; 3 uses
  %i.hl = getelementptr i8, ptr %i.hc, i64 %n.vec250 ; 2 uses
  %i.hm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hb, i64 0
  %broadcast.splatinsert251 = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat252 = shufflevector <4 x i32> %broadcast.splatinsert251, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph249
  %index254 = phi i64 [ 0, %vector.ph249 ], [ %index.next260, %vector.body253 ] ; 2 uses
  %vec.phi255 = phi <4 x i32> [ %i.hm, %vector.ph249 ], [ %i.hs, %vector.body253 ]
  %vec.phi256 = phi <4 x i32> [ zeroinitializer, %vector.ph249 ], [ %i.ht, %vector.body253 ]
  %next.gep257 = getelementptr i8, ptr %i.hc, i64 %index254 ; 2 uses
  %i.hn = getelementptr i8, ptr %next.gep257, i64 4
  %wide.load258 = load <4 x i8>, ptr %next.gep257, align 1, !tbaa !48
  %wide.load259 = load <4 x i8>, ptr %i.hn, align 1, !tbaa !48
  %i.ho = zext <4 x i8> %wide.load258 to <4 x i32>
  %i.hp = zext <4 x i8> %wide.load259 to <4 x i32>
  %i.hq = mul nsw <4 x i32> %broadcast.splat252, %i.ho
  %i.hr = mul nsw <4 x i32> %broadcast.splat252, %i.hp
  %i.hs = add <4 x i32> %i.hq, %vec.phi255        ; 2 uses
  %i.ht = add <4 x i32> %i.hr, %vec.phi256        ; 2 uses
  %index.next260 = add nuw i64 %index254, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next260, %n.vec250
  br i1 %i.hu, label %middle.block261, label %vector.body253, !llvm.loop !275

middle.block261:                                  ; preds = %vector.body253
  %bin.rdx262 = add <4 x i32> %i.ht, %i.hs
  %i.hv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %i.hk, %n.vec250
  br i1 %cmp.n263, label %._crit_edge193, label %.lr.ph192.preheader266

.lr.ph192.preheader266:                           ; preds = %.lr.ph192.preheader, %middle.block261
  %.3190.ph = phi ptr [ %i.hc, %.lr.ph192.preheader ], [ %i.hl, %middle.block261 ]
  %.3161189.ph = phi i32 [ %i.hb, %.lr.ph192.preheader ], [ %i.hv, %middle.block261 ]
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader266, %.lr.ph192
  %.3190 = phi ptr [ %i.ia, %.lr.ph192 ], [ %.3190.ph, %.lr.ph192.preheader266 ] ; 2 uses
  %.3161189 = phi i32 [ %i.hz, %.lr.ph192 ], [ %.3161189.ph, %.lr.ph192.preheader266 ]
  %i.hw = load i8, ptr %.3190, align 1, !tbaa !48
  %i.hx = zext i8 %i.hw to i32
  %i.hy = mul nsw i32 %i.hx, %i.dm
  %i.hz = add nsw i32 %i.hy, %.3161189            ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.3190, i64 1 ; 3 uses
  %i.ib = icmp ult ptr %i.ia, %i.hd
  br i1 %i.ib, label %.lr.ph192, label %._crit_edge193, !llvm.loop !276

._crit_edge193:                                   ; preds = %.lr.ph192, %middle.block261, %._crit_edge186
  %.3161.lcssa = phi i32 [ %i.hb, %._crit_edge186 ], [ %i.hv, %middle.block261 ], [ %i.hz, %.lr.ph192 ]
  %.3.lcssa = phi ptr [ %i.hc, %._crit_edge186 ], [ %i.hl, %middle.block261 ], [ %i.ia, %.lr.ph192 ]
  %i.ic = load i8, ptr %.3.lcssa, align 1, !tbaa !48
  %i.id = zext i8 %i.ic to i32
  %i.ie = mul nsw i32 %i.id, %i.df
  %i.if = sdiv i32 %i.bk, 2
  %i.ig = add i32 %.3161.lcssa, %i.if
  %i.ih = add i32 %i.ig, %i.ie
  %i.ii = sdiv i32 %i.ih, %i.bk
  %i.ij = sdiv i32 %i.ii, 1024
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge193, %bb.h
  %.0151.in = phi i32 [ %i.bc, %bb.h ], [ %i.ij, %._crit_edge193 ]
  %.0151 = and i32 %.0151.in, 255
  ret i32 %.0151

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn164.pn = phi { ptr, i32 } [ %.pn164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  resume { ptr, i32 } %.pn164.pn
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN2cv4readERKNS_8FileNodeERii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv4readERKNS_8FileNodeERff(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #2

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cv11xfeatures2d10BriskLayerEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i
  %.05.i = phi ptr [ %i.s, %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !111
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !277
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !277
  br label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i, !prof !40

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i

_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i, i64 208
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(640) %.05.i) #24
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i, i64 640 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cv11xfeatures2d10BriskLayerEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cv11xfeatures2d10BriskLayerEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv11xfeatures2d10BriskLayerESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(640) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !106    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv11xfeatures2d10BriskLayerESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
  unreachable

_ZNKSt6vectorIN2cv11xfeatures2d10BriskLayerESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 640                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 14411518807585587)
  %i.l = select i1 %i.j, i64 14411518807585587, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 640                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(640) %i.q, ptr noundef nonnull align 8 dereferenceable(640) %2) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 208
  tail call void @_ZN2cv3MatC2EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.r, ptr noundef nonnull align 8 dereferenceable(208) %i.s) #24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 416
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 424
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 424 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !113
  store ptr null, ptr %i.y, align 8, !tbaa !108
  store <2 x ptr> %i.z, ptr %i.w, align 8, !tbaa !113
  store ptr null, ptr %i.x, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 440
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 440
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.aa, ptr noundef nonnull align 8 dereferenceable(200) %i.ab, i64 200, i1 false)
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv11xfeatures2d10BriskLayerEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv11xfeatures2d10BriskLayerES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.j

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv11xfeatures2d10BriskLayerES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZNKSt6vectorIN2cv11xfeatures2d10BriskLayerESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 640 ; 2 uses
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv11xfeatures2d10BriskLayerEPS2_ET0_T_S7_S6_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ad)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv11xfeatures2d10BriskLayerES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 unwind label %bb.k

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv11xfeatures2d10BriskLayerES3_SaIS2_EET0_T_S6_S5_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv11xfeatures2d10BriskLayerES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv11xfeatures2d10BriskLayerES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv11xfeatures2d10BriskLayerES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 432
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ah, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !111
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #24, !inline_history !3
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #24, !inline_history !3
end_hunk_0
