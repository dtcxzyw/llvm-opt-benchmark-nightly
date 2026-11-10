Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/basicretinafilter?download=true
inline.NumInlined: 322
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN2cv11bioinspired17BasicRetinaFilter21setLPfilterParametersEfffj:bb.a
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load i8, ptr %i.i, align 8, !tbaa !71
  %.not.i1.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 67
  %i.l = load i8, ptr %i.k, align 1, !tbaa !72
  br label %.thread

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.h)
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef signext i8 %i.o(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext 10), !inline_history !0
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i8 [ %i.l, %bb.d ], [ %i.p, %bb.e ]
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.s = fmul float %3, %3
  %i.t = fmul float %i.s, 1.600000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.023 = phi float [ f0x35D6BF97, %.thread ], [ %i.t, %bb.f ]
  %i.u = mul i32 %4, 3                            ; 3 uses
  %i.v = fadd float %1, %2
  %i.w = fadd float %i.v, 1.000000e+00            ; 2 uses
  %i.x = fdiv float %i.w, %.023
  %i.y = fadd float %i.x, 1.000000e+00            ; 3 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float -1.000000e+00)
  %i.aa = tail call noundef float @sqrtf(float noundef %i.z) #17
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.u to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  store float %i.ab, ptr %i.af, align 4, !tbaa !37
  %i.ag = fsub float 1.000000e+00, %i.ab          ; 4 uses
  %i.ah = fmul float %i.ag, %i.ag
  %i.ai = fmul float %i.ag, %i.ah
  %i.aj = fmul float %i.ag, %i.ai
  %i.ak = fdiv float %i.aj, %i.w
  %i.al = add i32 %i.u, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.am
  store float %i.ak, ptr %i.an, align 4, !tbaa !37
  %i.ao = add i32 %i.u, 2
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ap
  store float %2, ptr %i.aq, align 4, !tbaa !37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11bioinspired17BasicRetinaFilter45setProgressiveFilterConstants_CentredAccuracyEfffj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34   ; 4 uses
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %_ZNSt8valarrayIfE6resizeEmf.exit69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @_ZdlPv(ptr noundef %.pre.i) #17
  store i64 %i.d, ptr %i.a, align 8, !tbaa !34
  %i.f = shl i64 %i.d, 2                          ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !35
  %.not4.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not4.i.i.i, label %_ZNSt8valarrayIfE6resizeEmf.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 0, i64 %i.f, i1 false), !tbaa !37
  br label %_ZNSt8valarrayIfE6resizeEmf.exit

_ZNSt8valarrayIfE6resizeEmf.exit:                 ; preds = %.lr.ph.i.i.i.preheader, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load i64, ptr %i.c, align 8, !tbaa !34   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !34
  %.not.i60 = icmp eq i64 %i.k, %i.i
  %.pre.i61 = load ptr, ptr %i.j, align 8, !tbaa !35 ; 2 uses
  br i1 %.not.i60, label %._crit_edge.i67, label %bb.c

._crit_edge.i67:                                  ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  %.pre5.i68 = shl i64 %i.i, 2
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit
  tail call void @_ZdlPv(ptr noundef %.pre.i61) #17
  store i64 %i.i, ptr %i.h, align 8, !tbaa !34
  %i.l = shl i64 %i.i, 2                          ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #16 ; 2 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i67
  %.idx.pre-phi.i62 = phi i64 [ %.pre5.i68, %._crit_edge.i67 ], [ %i.l, %bb.c ]
  %i.n = phi ptr [ %.pre.i61, %._crit_edge.i67 ], [ %i.m, %bb.c ]
  %.not4.i.i.i63 = icmp eq i64 %i.i, 0
  br i1 %.not4.i.i.i63, label %_ZNSt8valarrayIfE6resizeEmf.exit69, label %.lr.ph.i.i.i64.preheader

.lr.ph.i.i.i64.preheader:                         ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.pre-phi.i62, i1 false), !tbaa !37
  br label %_ZNSt8valarrayIfE6resizeEmf.exit69

_ZNSt8valarrayIfE6resizeEmf.exit69:               ; preds = %.lr.ph.i.i.i64.preheader, %bb.d, %bb.a
  %i.o = fadd float %1, %2
  %i.p = fcmp ugt float %3, 0.000000e+00
  br i1 %i.p, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt8valarrayIfE6resizeEmf.exit69
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 99) ; 0 uses
  %i.r = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !39
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65   ; 6 uses
  %.not.i.i.i70 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i70, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !71
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !72
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.aa, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNSt8valarrayIfE6resizeEmf.exit69
  %i.ah = mul i32 %4, 3                           ; 3 uses
  %i.ai = fadd float %i.o, 1.000000e+00           ; 4 uses
  %i.aj = fdiv float %i.ai, f0x3FA3D70B
  %i.ak = fadd float %i.aj, 1.000000e+00          ; 3 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float -1.000000e+00)
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #17
  %i.an = fsub float %i.ak, %i.am                 ; 2 uses
  %i.ao = zext i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ao
  store float %i.an, ptr %i.ar, align 4, !tbaa !37
  %i.as = fsub float 1.000000e+00, %i.an          ; 4 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = fmul float %i.as, %i.at
  %i.av = fmul float %i.as, %i.au
  %i.aw = fdiv float %i.av, %i.ai
  %i.ax = add i32 %i.ah, 1
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ay
  store float %i.aw, ptr %i.az, align 4, !tbaa !37
  %i.ba = add i32 %i.ah, 2
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bb
  store float %2, ptr %i.bc, align 4, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !74 ; 8 uses
  %i.bf = mul i32 %i.be, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !73 ; 10 uses
  %i.bi = mul i32 %i.bh, %i.bh
  %i.bj = add i32 %i.bi, %i.bf
  %i.bk = uitofp i32 %i.bj to float
  %i.bl = fadd nnan float %i.bk, 1.000000e+00
  %sqrt = tail call nnan float @llvm.sqrt.f32(float %i.bl)
  %i.bm = fdiv float %3, %sqrt                    ; 2 uses
  %.not75 = icmp eq i32 %i.be, 0
  br i1 %.not75, label %._crit_edge74.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %.not76 = icmp eq i32 %i.bh, 0
  %i.bn = add i32 %i.be, -1
  %i.bo = add i32 %i.bh, -1                       ; 2 uses
  br i1 %.not76, label %._crit_edge74.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !42 ; 2 uses
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 13 uses
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !35 ; 13 uses
  %wide.trip.count = zext i32 %i.bh to i64        ; 5 uses
  %i.bw = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bx = add i32 %i.be, %i.bh
  %i.by = add i32 %i.bx, -2                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bv, i64 4   ; 2 uses
  %i.bz = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ca = sub nsw i64 4, %i.bz                    ; 2 uses
  %scevgep218 = getelementptr i8, ptr %i.bv, i64 %i.ca ; 2 uses
  %scevgep219 = getelementptr i8, ptr %i.bv, i64 %i.bz ; 2 uses
  %scevgep220 = getelementptr i8, ptr %i.bu, i64 4 ; 2 uses
  %scevgep221 = getelementptr i8, ptr %i.bu, i64 %i.ca ; 2 uses
  %scevgep222 = getelementptr i8, ptr %i.bu, i64 %i.bz ; 2 uses
  %5 = add i32 %i.be, %i.bh
  %6 = add i32 %5, -2                             ; 2 uses
  %min.iters.check = icmp ult i32 %i.bh, 12
  %ident.check = icmp ne i64 %i.bs, 1
  %i.cb = trunc i64 %i.bw to i32                  ; 4 uses
  %i.cc = icmp ugt i64 %i.bw, 4294967295
  %invariant.op = or i1 %i.cc, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.05973 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.fa, %._crit_edge ] ; 9 uses
  %i.cd = mul i32 %.05973, %.05973
  %i.ce = uitofp i32 %i.cd to float               ; 2 uses
  %i.cf = add i32 %i.bn, %.05973                  ; 4 uses
  %i.cg = xor i32 %.05973, -1
  %i.ch = add i32 %i.be, %i.cg                    ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader
  %i.ci = sub i32 %i.by, %.05973                  ; 2 uses
  %i.cj = add i32 %i.by, %.05973                  ; 2 uses
  %i.ck = xor i32 %i.cj, -1
  %i.cl = icmp ult i32 %i.ck, %i.cb
  %i.cm = xor i32 %i.ci, -1
  %i.cn = icmp ult i32 %i.cm, %i.cb
  %i.co = icmp ult i32 %i.cj, %i.cb
  %i.cp = icmp ult i32 %i.ci, %i.cb
  %.reass = or i1 %i.cl, %invariant.op
  %i.cq = or i1 %i.cn, %.reass
  %i.cr = or i1 %i.co, %i.cq
  %i.cs = or i1 %i.cp, %i.cr
  br i1 %i.cs, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ct = add i32 %6, %.05973
  %i.cu = zext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 2                ; 8 uses
  %i.cw = getelementptr i8, ptr %i.bu, i64 %i.cv  ; 7 uses
  %i.cx = getelementptr i8, ptr %scevgep222, i64 %i.cv ; 7 uses
  %i.cy = sub i32 %6, %.05973
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 2                ; 8 uses
  %i.db = getelementptr i8, ptr %i.bu, i64 %i.da  ; 7 uses
  %i.dc = getelementptr i8, ptr %scevgep222, i64 %i.da ; 7 uses
  %i.dd = getelementptr i8, ptr %scevgep221, i64 %i.cv ; 7 uses
  %i.de = getelementptr i8, ptr %scevgep220, i64 %i.cv ; 7 uses
  %i.df = getelementptr i8, ptr %scevgep221, i64 %i.da ; 7 uses
  %i.dg = getelementptr i8, ptr %scevgep220, i64 %i.da ; 7 uses
  %i.dh = getelementptr i8, ptr %i.bv, i64 %i.cv  ; 7 uses
  %i.di = getelementptr i8, ptr %scevgep219, i64 %i.cv ; 7 uses
  %i.dj = getelementptr i8, ptr %i.bv, i64 %i.da  ; 7 uses
  %i.dk = getelementptr i8, ptr %scevgep219, i64 %i.da ; 7 uses
  %i.dl = getelementptr i8, ptr %scevgep218, i64 %i.cv ; 7 uses
  %i.dm = getelementptr i8, ptr %scevgep, i64 %i.cv ; 7 uses
  %i.dn = getelementptr i8, ptr %scevgep218, i64 %i.da ; 7 uses
  %i.do = getelementptr i8, ptr %scevgep, i64 %i.da ; 7 uses
  %bound0 = icmp ult ptr %i.cw, %i.dc
  %bound1 = icmp ult ptr %i.db, %i.cx
  %found.conflict = and i1 %bound0, %bound1
  %bound0218 = icmp ult ptr %i.cw, %i.de
  %bound1219 = icmp ult ptr %i.dd, %i.cx
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx = or i1 %found.conflict, %found.conflict220
  %bound0221 = icmp ult ptr %i.cw, %i.dg
  %bound1222 = icmp ult ptr %i.df, %i.cx
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx, %found.conflict223
  %bound0225 = icmp ult ptr %i.cw, %i.di
  %bound1226 = icmp ult ptr %i.dh, %i.cx
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %i.cw, %i.dk
  %bound1230 = icmp ult ptr %i.dj, %i.cx
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %i.cw, %i.dm
  %bound1234 = icmp ult ptr %i.dl, %i.cx
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0237 = icmp ult ptr %i.cw, %i.do
  %bound1238 = icmp ult ptr %i.dn, %i.cx
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict239
  %bound0241 = icmp ult ptr %i.db, %i.de
  %bound1242 = icmp ult ptr %i.dd, %i.dc
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  %bound0245 = icmp ult ptr %i.db, %i.dg
  %bound1246 = icmp ult ptr %i.df, %i.dc
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  %bound0249 = icmp ult ptr %i.db, %i.di
  %bound1250 = icmp ult ptr %i.dh, %i.dc
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %bound0253 = icmp ult ptr %i.db, %i.dk
  %bound1254 = icmp ult ptr %i.dj, %i.dc
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict255
  %bound0257 = icmp ult ptr %i.db, %i.dm
  %bound1258 = icmp ult ptr %i.dl, %i.dc
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx256, %found.conflict259
  %bound0261 = icmp ult ptr %i.db, %i.do
  %bound1262 = icmp ult ptr %i.dn, %i.dc
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.dd, %i.dg
  %bound1266 = icmp ult ptr %i.df, %i.de
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  %bound0269 = icmp ult ptr %i.dd, %i.di
  %bound1270 = icmp ult ptr %i.dh, %i.de
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %conflict.rdx268, %found.conflict271
  %bound0273 = icmp ult ptr %i.dd, %i.dk
  %bound1274 = icmp ult ptr %i.dj, %i.de
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx272, %found.conflict275
  %bound0277 = icmp ult ptr %i.dd, %i.dm
  %bound1278 = icmp ult ptr %i.dl, %i.de
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %conflict.rdx276, %found.conflict279
  %bound0281 = icmp ult ptr %i.dd, %i.do
  %bound1282 = icmp ult ptr %i.dn, %i.de
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx280, %found.conflict283
  %bound0285 = icmp ult ptr %i.df, %i.di
  %bound1286 = icmp ult ptr %i.dh, %i.dg
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx284, %found.conflict287
  %bound0289 = icmp ult ptr %i.df, %i.dk
  %bound1290 = icmp ult ptr %i.dj, %i.dg
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %i.df, %i.dm
  %bound1294 = icmp ult ptr %i.dl, %i.dg
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %bound0297 = icmp ult ptr %i.df, %i.do
  %bound1298 = icmp ult ptr %i.dn, %i.dg
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  %bound0301 = icmp ult ptr %i.dh, %i.dk
  %bound1302 = icmp ult ptr %i.dj, %i.di
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  %bound0305 = icmp ult ptr %i.dh, %i.dm
  %bound1306 = icmp ult ptr %i.dl, %i.di
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %conflict.rdx304, %found.conflict307
  %bound0309 = icmp ult ptr %i.dh, %i.do
  %bound1310 = icmp ult ptr %i.dn, %i.di
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  %bound0313 = icmp ult ptr %i.dj, %i.dm
  %bound1314 = icmp ult ptr %i.dl, %i.dk
  %found.conflict315 = and i1 %bound0313, %bound1314
  %conflict.rdx316 = or i1 %conflict.rdx312, %found.conflict315
  %bound0317 = icmp ult ptr %i.dj, %i.do
  %bound1318 = icmp ult ptr %i.dn, %i.dk
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx316, %found.conflict319
  %bound0321 = icmp ult ptr %i.dl, %i.do
  %bound1322 = icmp ult ptr %i.dn, %i.dm
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.dp = trunc i64 %index to i32                 ; 2 uses
  %i.dq = mul <4 x i32> %vec.ind, %vec.ind
  %i.dr = uitofp <4 x i32> %i.dq to <4 x float>
  %i.ds = fadd nnan <4 x float> %broadcast.splat, %i.dr
  %i.dt = tail call nnan <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ds)
  %i.du = fmul <4 x float> %broadcast.splat326, %i.dt ; 2 uses
  %i.dv = fcmp ogt <4 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = select <4 x i1> %i.dv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.du ; 4 uses
  %i.dx = add i32 %i.bo, %i.dp                    ; 2 uses
  %i.dy = add i32 %i.dx, %i.cf
  %i.dz = zext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dz
  store <4 x float> %i.dw, ptr %i.ea, align 4, !tbaa !37, !alias.scope !153, !noalias !154
  %i.eb = add i32 %i.dx, %i.ch
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ec
  store <4 x float> %i.dw, ptr %i.ed, align 4, !tbaa !37, !alias.scope !155, !noalias !156
  %i.ee = xor i32 %i.dp, -1
  %i.ef = add i32 %i.bh, %i.ee                    ; 2 uses
  %i.eg = add i32 %i.ef, %i.cf
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -12
  %reverse = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x float> %reverse, ptr %i.ej, align 4, !tbaa !37, !alias.scope !157, !noalias !158
  %i.ek = add i32 %i.ef, %i.ch
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.el
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -12
  store <4 x float> %reverse, ptr %i.en, align 4, !tbaa !37, !alias.scope !159, !noalias !160
  %i.eo = fsub <4 x float> splat (float 1.000000e+00), %i.dw ; 4 uses
  %i.ep = fmul <4 x float> %i.eo, %i.eo
  %i.eq = fmul <4 x float> %i.eo, %i.ep
  %i.er = fmul <4 x float> %i.eo, %i.eq
  %i.es = fdiv <4 x float> %i.er, %broadcast.splat328 ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.dz
  store <4 x float> %i.es, ptr %i.et, align 4, !tbaa !37, !alias.scope !161, !noalias !162
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ec
  store <4 x float> %i.es, ptr %i.eu, align 4, !tbaa !37, !alias.scope !163, !noalias !164
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.eh
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -12
  %reverse329 = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x float> %reverse329, ptr %i.ew, align 4, !tbaa !37, !alias.scope !165, !noalias !166
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.el
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -12
  store <4 x float> %reverse329, ptr %i.ey, align 4, !tbaa !37, !alias.scope !166
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge74.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.i
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.fa = add nuw i32 %.05973, 1                  ; 2 uses
  %exitcond78.not = icmp eq i32 %i.fa, %i.be
  br i1 %exitcond78.not, label %._crit_edge74.split, label %.preheader, !llvm.loop !151

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fb = trunc nuw i64 %indvars.iv to i32        ; 4 uses
  %i.fc = mul i32 %i.fb, %i.fb
  %i.fd = uitofp i32 %i.fc to float
  %i.fe = fadd nnan float %i.ce, %i.fd
  %sqrt71 = tail call nnan float @llvm.sqrt.f32(float %i.fe)
  %i.ff = fmul float %i.bm, %sqrt71               ; 2 uses
  %i.fg = fcmp ogt float %i.ff, 1.000000e+00
  %spec.store.select = select i1 %i.fg, float 1.000000e+00, float %i.ff ; 5 uses
  %i.fh = add i32 %i.bo, %i.fb
  %i.fi = mul i32 %i.fh, %i.bt                    ; 2 uses
  %i.fj = add i32 %i.fi, %i.cf
end_hunk_0
