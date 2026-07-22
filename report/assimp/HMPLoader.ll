inline.NumInlined: 334
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11HMPImporter19InternReadFile_HMP5Ev:bb.a
  %or.cond = select i1 %i.ck, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.cm = uitofp i32 %i.at to float               ; 2 uses
  %i.cn = fdiv float 1.000000e+00, %i.cm          ; 2 uses
  %i.co = fdiv float %i.cn, %i.cm
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = uitofp i32 %i.au to float               ; 2 uses
  %i.cr = fdiv float 1.000000e+00, %i.cq          ; 2 uses
  %i.cs = fdiv float %i.cr, %i.cq
  %i.ct = fadd float %i.cr, %i.cs                 ; 2 uses
  %i.cu = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 4
  %n.vec = and i64 %i.cu, 4294967292              ; 4 uses
  %i.cv = trunc nuw i64 %n.vec to i32
  %i.cw = mul nuw nsw i64 %n.vec, 12
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.ct, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cu
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.i
  %.02330.i = phi i32 [ 0, %.split.i ], [ %i.dg, %._crit_edge.i ] ; 2 uses
  %.02429.i = phi ptr [ %i.cj, %.split.i ], [ %.lcssa, %._crit_edge.i ] ; 3 uses
  %i.cx = uitofp i32 %.02330.i to float
  %i.cy = fmul float %i.cp, %i.cx                 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.cz = getelementptr i8, ptr %.02429.i, i64 %i.cw ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.da = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %.02429.i, i64 %i.da
  %i.db = uitofp <4 x i32> %vec.ind to <4 x float>
  %i.dc = fmul <4 x float> %broadcast.splat83, %i.db
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %broadcast.splat, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dd, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.028.i.ph = phi i32 [ 0, %.preheader.i ], [ %i.cv, %middle.block ]
  %.127.i.ph = phi ptr [ %.02429.i, %.preheader.i ], [ %i.cz, %middle.block ]
  %i.df = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.cz, %middle.block ], [ %i.dl, %scalar.ph ]
  %i.dg = add nuw i32 %.02330.i, 1                ; 2 uses
  %exitcond31.not.i = icmp eq i32 %i.dg, %i.at
  br i1 %exitcond31.not.i, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.preheader.i, !llvm.loop !11

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028.i = phi i32 [ %i.dk, %scalar.ph ], [ %.028.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.127.i = phi ptr [ %i.dl, %scalar.ph ], [ %.127.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.127.i, i64 4
  %i.di = uitofp i32 %.028.i to float
  %i.dj = fmul float %i.ct, %i.di
  store float %i.dj, ptr %.127.i, align 4
  store <2 x float> %i.df, ptr %i.dh, align 4
  %i.dk = add nuw i32 %.028.i, 1                  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.127.i, i64 12 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dk, %i.au
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !12

_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit: ; preds = %._crit_edge.i, %bb.c, %._crit_edge62.split
  tail call void @_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj(ptr noundef nonnull align 8 dereferenceable(159) %0, i32 noundef %i.au, i32 noundef %i.at)
  %i.dm = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #21 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.dm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit
  %i.dn = load ptr, ptr %i.e, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dm, ptr %i.do, align 8
  %i.dp = load ptr, ptr %i.e, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8            ; 3 uses
  store i32 12, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ds, ptr noundef nonnull align 1 dereferenceable(12) @.str.23, i64 12, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i8 0, ptr %i.dt, align 4
  %.pre = load ptr, ptr %i.e, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1120
  store i32 1, ptr %i.dw, align 8
  %i.dx = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #21
  %i.dy = load ptr, ptr %i.e, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1128
  store ptr %i.dx, ptr %i.eb, align 8
  %i.ec = load ptr, ptr %i.e, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1128
  %i.eg = load ptr, ptr %i.ef, align 8
  store i32 0, ptr %i.eg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.d:                                             ; preds = %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 1144) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.eh
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev(ptr noundef nonnull align 8 dereferenceable(159) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  tail call void @_ZN6Assimp11HMPImporter21ValidateHeader_HMP457Ev(ptr noundef nonnull align 8 dereferenceable(159) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1, ptr %i.g, align 8
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #21
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.h, ptr %i.j, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #21 ; 9 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1272
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1312
  store ptr null, ptr %i.q, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.n, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.o, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.p, i8 0, i64 36, i1 false)
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.k, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.v = load i32, ptr %i.u, align 1
  %.fr = freeze i32 %i.v                          ; 3 uses
  %i.w = sext i32 %.fr to i64
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 12) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 3 uses
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z        ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 3 uses
  %i.ac = icmp eq i32 %.fr, 0
  br i1 %i.ac, label %.loopexit55.thread, label %.loopexit.loopexit

.loopexit55.thread:                               ; preds = %bb.a
  store ptr %i.ab, ptr %i.n, align 8
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.ae = add nsw i64 %i.z, -12                   ; 2 uses
  %i.af = urem i64 %i.ae, 12
  %i.ag = sub nuw nsw i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.ah, i1 false)
  store ptr %i.ab, ptr %i.n, align 8
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 2 uses
  %i.aj = add nsw i64 %i.z, -12                   ; 2 uses
  %i.ak = urem i64 %i.aj, 12
  %i.al = sub nuw nsw i64 %i.aj, %i.ak
  %i.am = add nsw i64 %i.al, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.am, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit55.thread, %.loopexit.loopexit
  %i.an = phi ptr [ %i.ad, %.loopexit55.thread ], [ %i.ai, %.loopexit.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = sitofp i32 %.fr to float
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ar = load float, ptr %i.aq, align 1          ; 2 uses
  %i.as = fdiv float %i.ap, %i.ar
  %i.at = fptoui float %i.as to i32               ; 7 uses
  %i.au = fptoui float %i.ar to i32               ; 12 uses
  call void @_ZN6Assimp11HMPImporter14CreateMaterialEPKhPS2_(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.av = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36 ; 4 uses
  %i.ax = zext i32 %i.at to i64
  %i.ay = zext i32 %i.au to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.bb)
  %.not67 = icmp eq i32 %i.at, 0                  ; 2 uses
  br i1 %.not67, label %._crit_edge66.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit
  %.not68 = icmp eq i32 %i.au, 0
  %i.bc = getelementptr i8, ptr %i.c, i64 36      ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %.not68, label %._crit_edge66.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.bf = load ptr, ptr %i.ao, align 8            ; 5 uses
  %i.bg = add i32 %i.au, -1
  %1 = zext i32 %i.bg to i64                      ; 2 uses
  %2 = mul nuw nsw i64 %1, 12                     ; 2 uses
  %3 = add nuw nsw i64 %2, 12
  %4 = add i32 %i.at, -1
  %i.bh = zext i32 %4 to i64                      ; 2 uses
  %i.bi = mul i64 %3, %i.bh
  %5 = add i64 %i.bi, %2
  %i.bj = add i64 %5, 12                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.bj ; 3 uses
  %scevgep86 = getelementptr i8, ptr %i.bf, i64 %i.bj ; 3 uses
  %scevgep87 = getelementptr i8, ptr %i.c, i64 44 ; 2 uses
  %i.bk = shl nuw nsw i64 %1, 2                   ; 2 uses
  %6 = add nuw nsw i64 %i.bk, 4
  %7 = mul i64 %6, %i.bh
  %8 = getelementptr i8, ptr %i.av, i64 %7
  %9 = getelementptr i8, ptr %8, i64 %i.bk
  %scevgep88 = getelementptr i8, ptr %9, i64 40   ; 2 uses
  %i.bl = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 5
  %bound0 = icmp ult ptr %i.be, %scevgep86
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %i.be, %scevgep87
  %bound190 = icmp ult ptr %i.bc, %scevgep
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ult ptr %i.be, %scevgep88
  %bound193 = icmp ult ptr %i.aw, %scevgep
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  %bound096 = icmp ult ptr %i.bf, %scevgep87
  %bound197 = icmp ult ptr %i.bc, %scevgep86
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %i.bf, %scevgep88
  %bound1101 = icmp ult ptr %i.aw, %scevgep86
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %n.mod.vf = and i64 %i.bl, 3                    ; 2 uses
  %i.bm = icmp eq i64 %n.mod.vf, 0
  %i.bn = select i1 %i.bm, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.bl, %i.bn               ; 4 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = shl nsw i64 %n.vec, 2
  %i.bq = mul nsw i64 %n.vec, 12                  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04565 = phi i32 [ %i.eg, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04664 = phi ptr [ %i.fn, %._crit_edge ], [ %i.aw, %.preheader.preheader ] ; 7 uses
  %.04763 = phi ptr [ %i.fm, %._crit_edge ], [ %i.bf, %.preheader.preheader ] ; 7 uses
  %.04962 = phi ptr [ %i.fl, %._crit_edge ], [ %i.be, %.preheader.preheader ] ; 4 uses
  %i.br = uitofp i32 %.04565 to float             ; 2 uses
  br i1 %min.iters.check, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.memcheck

_ZN10aiVector3tIfEdVEf.exit.i.preheader:          ; preds = %vector.body, %vector.memcheck, %.preheader
  %.04459.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %i.bo, %vector.body ]
  %.158.ph = phi ptr [ %.04664, %vector.memcheck ], [ %.04664, %.preheader ], [ %i.bs, %vector.body ]
  %.14857.ph = phi ptr [ %.04763, %vector.memcheck ], [ %.04763, %.preheader ], [ %i.bt, %vector.body ]
  %.15056.ph = phi ptr [ %.04962, %vector.memcheck ], [ %.04962, %.preheader ], [ %i.bu, %vector.body ]
  br label %_ZN10aiVector3tIfEdVEf.exit.i

vector.memcheck:                                  ; preds = %.preheader
  br i1 %conflict.rdx103, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %.04664, i64 %i.bp
  %i.bt = getelementptr i8, ptr %.04763, i64 %i.bq
  %i.bu = getelementptr i8, ptr %.04962, i64 %i.bq
  %i.bv = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = load float, ptr %i.bd, align 1, !alias.scope !13
  %i.bx = fmul float %i.bw, %i.br
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert112 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat113 = shufflevector <4 x float> %broadcast.splatinsert112, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.04664, i64 %i.bz ; 3 uses
  %i.ca = getelementptr i8, ptr %.04664, i64 %i.bz ; 2 uses
  %i.cb = getelementptr i8, ptr %.04664, i64 %i.bz ; 2 uses
  %i.cc = getelementptr i8, ptr %.04664, i64 %i.bz ; 2 uses
  %i.cd = mul i64 %index, 12                      ; 5 uses
  %next.gep107 = getelementptr i8, ptr %.04763, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %.04763, i64 %i.cd
  %next.gep108 = getelementptr i8, ptr %i.ce, i64 12
  %i.cf = getelementptr i8, ptr %.04763, i64 %i.cd
  %next.gep109 = getelementptr i8, ptr %i.cf, i64 24
  %i.cg = getelementptr i8, ptr %.04763, i64 %i.cd
  %next.gep110 = getelementptr i8, ptr %i.cg, i64 36
  %next.gep111 = getelementptr i8, ptr %.04962, i64 %i.cd
  %i.ch = uitofp <4 x i32> %vec.ind to <4 x float>
  %i.ci = fmul <4 x float> %broadcast.splat, %i.ch
  %wide.vec = load <8 x i16>, ptr %next.gep, align 1, !alias.scope !16
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cj = uitofp <4 x i16> %strided.vec to <4 x float>
  %i.ck = fdiv nnan <4 x float> %i.cj, splat (float 6.553500e+04)
  %i.cl = fadd nnan <4 x float> %i.ck, splat (float -5.000000e-01)
  %i.cm = fmul <4 x float> %broadcast.splat113, %i.cl
  %i.cn = fmul <4 x float> %i.cm, splat (float 8.000000e+00)
  %i.co = shufflevector <4 x float> %i.ci, <4 x float> %broadcast.splat115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.co, <8 x float> %i.cp, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep111, align 4, !alias.scope !18, !noalias !20
  %i.cq = getelementptr i8, ptr %i.ca, i64 6
  %i.cr = getelementptr i8, ptr %i.cb, i64 10
  %i.cs = getelementptr i8, ptr %i.cc, i64 14
  %i.ct = load <16 x i8>, ptr %next.gep, align 1
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cv = load i8, ptr %i.cq, align 1, !alias.scope !16
  %i.cw = load i8, ptr %i.cr, align 1, !alias.scope !16
  %i.cx = load i8, ptr %i.cs, align 1, !alias.scope !16
  %i.cy = insertelement <4 x i8> %i.cu, i8 %i.cv, i64 1
  %i.cz = insertelement <4 x i8> %i.cy, i8 %i.cw, i64 2
  %i.da = insertelement <4 x i8> %i.cz, i8 %i.cx, i64 3
  %i.db = sitofp <4 x i8> %i.da to <4 x float>
  %i.dc = fmul nnan <4 x float> %i.db, splat (float 7.812500e-03) ; 7 uses
  %i.dd = extractelement <4 x float> %i.dc, i64 0
  store float %i.dd, ptr %next.gep107, align 4, !alias.scope !22, !noalias !23
  %i.de = extractelement <4 x float> %i.dc, i64 1
  store float %i.de, ptr %next.gep108, align 4, !alias.scope !22, !noalias !23
  %i.df = extractelement <4 x float> %i.dc, i64 2
  store float %i.df, ptr %next.gep109, align 4, !alias.scope !22, !noalias !23
  %i.dg = extractelement <4 x float> %i.dc, i64 3
  store float %i.dg, ptr %next.gep110, align 4, !alias.scope !22, !noalias !23
  %i.dh = getelementptr i8, ptr %i.ca, i64 7
  %i.di = getelementptr i8, ptr %i.cb, i64 11
  %i.dj = getelementptr i8, ptr %i.cc, i64 15
  %i.dk = load <16 x i8>, ptr %next.gep, align 1
  %i.dl = shufflevector <16 x i8> %i.dk, <16 x i8> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.dm = load i8, ptr %i.dh, align 1, !alias.scope !16
  %i.dn = load i8, ptr %i.di, align 1, !alias.scope !16
  %i.do = load i8, ptr %i.dj, align 1, !alias.scope !16
  %i.dp = insertelement <4 x i8> %i.dl, i8 %i.dm, i64 1
  %i.dq = insertelement <4 x i8> %i.dp, i8 %i.dn, i64 2
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.do, i64 3
  %i.ds = sitofp <4 x i8> %i.dr to <4 x float>
  %i.dt = fmul nnan <4 x float> %i.ds, splat (float 7.812500e-03) ; 3 uses
  %i.du = fmul nnan <4 x float> %i.dt, %i.dt
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.dc, <4 x float> %i.du)
  %i.dw = fadd <4 x float> %i.dv, splat (float 1.000000e+00)
  %i.dx = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dw)
  %i.dy = fdiv <4 x float> splat (float 1.000000e+00), %i.dx ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dc, <4 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ea = shufflevector <4 x float> %i.dy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eb = fmul <8 x float> %i.dz, %i.ea
  %i.ec = shufflevector <4 x float> %i.dy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec116 = shufflevector <8 x float> %i.eb, <8 x float> %i.ec, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec116, ptr %next.gep107, align 4, !alias.scope !22, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.body, !llvm.loop !24

._crit_edge66.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.loopexit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ef = load i32, ptr %i.ee, align 1
  %.not = icmp eq i32 %i.ef, 0
  br i1 %.not, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %bb.b

._crit_edge:                                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i
  %i.eg = add nuw i32 %.04565, 1                  ; 2 uses
  %exitcond72.not = icmp eq i32 %i.eg, %i.at
  br i1 %exitcond72.not, label %._crit_edge66.split, label %.preheader, !llvm.loop !25

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.preheader, %_ZN10aiVector3tIfEdVEf.exit.i
  %.04459 = phi i32 [ %i.fo, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.04459.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 2 uses
  %.158 = phi ptr [ %i.fn, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.158.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 4 uses
  %.14857 = phi ptr [ %i.fm, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.14857.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 5 uses
  %.15056 = phi ptr [ %i.fl, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.15056.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 4 uses
  %i.eh = uitofp i32 %.04459 to float
  %i.ei = load float, ptr %i.bc, align 1
  %i.ej = fmul float %i.ei, %i.eh
  store float %i.ej, ptr %.15056, align 4
  %i.ek = load float, ptr %i.bd, align 1
  %i.el = fmul float %i.ek, %i.br
  %i.em = getelementptr inbounds nuw i8, ptr %.15056, i64 4
  store float %i.el, ptr %i.em, align 4
  %i.en = load i16, ptr %.158, align 1
  %i.eo = uitofp i16 %i.en to float
  %i.ep = fdiv nnan float %i.eo, 6.553500e+04
  %i.eq = fadd nnan float %i.ep, -5.000000e-01
  %i.er = load float, ptr %i.bc, align 1
  %i.es = fmul float %i.er, %i.eq
  %i.et = fmul float %i.es, 8.000000e+00
  %i.eu = getelementptr inbounds nuw i8, ptr %.15056, i64 8
  store float %i.et, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.158, i64 2
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = sitofp i8 %i.ew to float
  %i.ey = fmul nnan float %i.ex, 7.812500e-03     ; 4 uses
  store float %i.ey, ptr %.14857, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.158, i64 3
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = sitofp i8 %i.fa to float
  %i.fc = fmul nnan float %i.fb, 7.812500e-03     ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.14857, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.14857, i64 8
  %i.ff = fmul nnan float %i.fc, %i.fc
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.ey, float %i.ff)
  %i.fh = fadd float %i.fg, 1.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.fh)
  %i.fi = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.fj = fmul float %i.ey, %i.fi
  store float %i.fj, ptr %.14857, align 4
  %i.fk = fmul float %i.fc, %i.fi
  store float %i.fk, ptr %i.fd, align 4
  store float %i.fi, ptr %i.fe, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.15056, i64 12 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.14857, i64 12 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.158, i64 4 ; 2 uses
  %i.fo = add nuw i32 %.04459, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.fo, %i.au
  br i1 %exitcond.not, label %._crit_edge, label %_ZN10aiVector3tIfEdVEf.exit.i, !llvm.loop !26

bb.b:                                             ; preds = %._crit_edge66.split
  %i.fp = load ptr, ptr %i.e, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 112
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  %i.fw = icmp eq i32 %i.au, 0
  %or.cond.i = or i1 %i.fw, %.not67
  %or.cond = select i1 %i.fv, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.fx = uitofp i32 %i.at to float               ; 2 uses
  %i.fy = fdiv float 1.000000e+00, %i.fx          ; 2 uses
  %i.fz = fdiv float %i.fy, %i.fx
  %i.ga = fadd float %i.fy, %i.fz
  %i.gb = uitofp i32 %i.au to float               ; 2 uses
  %i.gc = fdiv float 1.000000e+00, %i.gb          ; 2 uses
  %i.gd = fdiv float %i.gc, %i.gb
  %i.ge = fadd float %i.gc, %i.gd                 ; 2 uses
  %i.gf = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check121 = icmp ult i32 %i.au, 4
  %n.vec124 = and i64 %i.gf, 4294967292           ; 4 uses
  %i.gg = trunc nuw i64 %n.vec124 to i32
  %i.gh = mul nuw nsw i64 %n.vec124, 12
  %broadcast.splatinsert127 = insertelement <4 x float> poison, float %i.ge, i64 0
  %broadcast.splat128 = shufflevector <4 x float> %broadcast.splatinsert127, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec124, %i.gf
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.i
  %.02330.i = phi i32 [ 0, %.split.i ], [ %i.gr, %._crit_edge.i ] ; 2 uses
  %.02429.i = phi ptr [ %i.fu, %.split.i ], [ %.lcssa, %._crit_edge.i ] ; 3 uses
  %i.gi = uitofp i32 %.02330.i to float
  %i.gj = fmul float %i.ga, %i.gi                 ; 2 uses
  br i1 %min.iters.check121, label %scalar.ph120.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.preheader.i
  %i.gk = getelementptr i8, ptr %.02429.i, i64 %i.gh ; 2 uses
end_hunk_0
