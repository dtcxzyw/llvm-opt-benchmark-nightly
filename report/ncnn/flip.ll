inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__clang_call_terminate:bb.a
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_ZN4ncnn3Mat11create_likeERKS0_PNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn4Flip7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %5, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %6, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not144 = icmp sgt i32 %i.k, %i.j
  br i1 %.not144, label %._crit_edge147, label %.preheader136.lr.ph

.preheader136.lr.ph:                              ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = load i32, ptr %3, align 4, !tbaa !25     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader136.preheader, label %._crit_edge147

.preheader136.preheader:                          ; preds = %.preheader136.lr.ph
  %i.v = sext i32 %i.k to i64
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.preheader, %._crit_edge143
  %i.w = phi i32 [ %i.j, %.preheader136.preheader ], [ %i.ak, %._crit_edge143 ] ; 2 uses
  %i.x = phi i32 [ %i.t, %.preheader136.preheader ], [ %i.al, %._crit_edge143 ] ; 3 uses
  %i.y = phi i32 [ %i.t, %.preheader136.preheader ], [ %i.am, %._crit_edge143 ] ; 3 uses
  %indvars.iv154 = phi i64 [ %i.v, %.preheader136.preheader ], [ %indvars.iv.next155, %._crit_edge143 ] ; 6 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge143

.preheader.lr.ph:                                 ; preds = %.preheader136
  %i.aa = trunc nsw i64 %indvars.iv154 to i32
  %i.ab = xor i32 %i.aa, -1
  %i.ac = load i32, ptr %4, align 4, !tbaa !25    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader, label %._crit_edge143

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ae = phi i32 [ %i.ao, %._crit_edge ], [ %i.x, %.preheader.lr.ph ]
  %i.af = phi i32 [ %i.ap, %._crit_edge ], [ %i.ac, %.preheader.lr.ph ] ; 2 uses
  %i.ag = phi i32 [ %i.aq, %._crit_edge ], [ %i.ac, %.preheader.lr.ph ] ; 3 uses
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph141, label %._crit_edge

.lr.ph141:                                        ; preds = %.preheader
  %i.ai = trunc nuw nsw i64 %indvars.iv151 to i32
  %i.aj = xor i32 %i.ai, -1
  br label %bb.c

._crit_edge143.loopexit:                          ; preds = %._crit_edge
  %.pre158 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge143

._crit_edge143:                                   ; preds = %.preheader.lr.ph, %._crit_edge143.loopexit, %.preheader136
  %i.ak = phi i32 [ %i.w, %.preheader136 ], [ %.pre158, %._crit_edge143.loopexit ], [ %i.w, %.preheader.lr.ph ] ; 2 uses
  %i.al = phi i32 [ %i.x, %.preheader136 ], [ %i.ao, %._crit_edge143.loopexit ], [ %i.x, %.preheader.lr.ph ]
  %i.am = phi i32 [ %i.y, %.preheader136 ], [ %i.ao, %._crit_edge143.loopexit ], [ %i.y, %.preheader.lr.ph ]
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1
  %i.an = sext i32 %i.ak to i64
  %.not.not = icmp slt i64 %indvars.iv154, %i.an
  br i1 %.not.not, label %.preheader136, label %._crit_edge147, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre157 = load i32, ptr %3, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ao = phi i32 [ %.pre157, %._crit_edge.loopexit ], [ %i.ae, %.preheader ] ; 4 uses
  %i.ap = phi i32 [ %i.fd, %._crit_edge.loopexit ], [ %i.af, %.preheader ]
  %i.aq = phi i32 [ %i.fd, %._crit_edge.loopexit ], [ %i.ag, %.preheader ]
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.ar = sext i32 %i.ao to i64
  %i.as = icmp slt i64 %indvars.iv.next152, %i.ar
  br i1 %i.as, label %.preheader, label %._crit_edge143.loopexit, !llvm.loop !56

bb.c:                                             ; preds = %.lr.ph141, %.loopexit
  %i.at = phi i32 [ %i.af, %.lr.ph141 ], [ %i.fd, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.au = phi i32 [ %i.ag, %.lr.ph141 ], [ %i.fd, %.loopexit ]
  %i.av = load i8, ptr %5, align 1, !tbaa !47, !range !57, !noundef !58
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %2, align 4, !tbaa !25
  %i.ay = add i32 %i.ax, %i.ab
  %i.az = sext i32 %i.ay to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ba = phi i64 [ %i.az, %bb.d ], [ %indvars.iv154, %bb.c ] ; 2 uses
  %i.bb = load i8, ptr %6, align 1, !tbaa !47, !range !57, !noundef !58
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.f, label %.noexc71

bb.f:                                             ; preds = %bb.e
  %i.bd = load i32, ptr %3, align 4, !tbaa !25
  %i.be = add i32 %i.bd, %i.aj
  %i.bf = sext i32 %i.be to i64
  br label %.noexc71

.noexc71:                                         ; preds = %bb.e, %bb.f
  %i.bg = phi i64 [ %i.bf, %bb.f ], [ %indvars.iv151, %bb.e ] ; 2 uses
  %i.bh = load i8, ptr %7, align 1, !tbaa !47, !range !57, !noundef !58
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = xor i32 %i.bj, -1
  %i.bl = add i32 %i.au, %i.bk
  %i.bm = load i32, ptr %i.l, align 4, !tbaa !44, !noalias !59
  %i.bn = load i32, ptr %i.m, align 8, !tbaa !45, !noalias !59
  %i.bo = load ptr, ptr %8, align 8, !tbaa !18, !noalias !59 ; 3 uses
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !59 ; 2 uses
  %i.bq = mul i64 %i.bp, %i.ba
  %i.br = load i64, ptr %i.o, align 8, !tbaa !23, !noalias !59 ; 3 uses
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bs
  %i.bu = sext i32 %i.bm to i64                   ; 2 uses
  %i.bv = sext i32 %i.bn to i64                   ; 2 uses
  %i.bw = mul i64 %i.br, %i.bu                    ; 2 uses
  %i.bx = mul i64 %i.bw, %i.bg
  %i.by = mul i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by
  %i.ca = sext i32 %i.bl to i64
  %i.cb = select i1 %i.bi, i64 %i.ca, i64 %indvars.iv ; 2 uses
  %i.cc = mul i64 %i.bw, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.p, align 4, !tbaa !44, !noalias !62
  %i.cf = load i32, ptr %i.q, align 8, !tbaa !45, !noalias !62
  %i.cg = load ptr, ptr %9, align 8, !tbaa !18, !noalias !62 ; 3 uses
  %i.ch = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !62 ; 2 uses
  %i.ci = mul i64 %i.ch, %indvars.iv154
  %i.cj = load i64, ptr %i.s, align 8, !tbaa !23, !noalias !62 ; 3 uses
  %i.ck = mul i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  %i.cm = sext i32 %i.ce to i64                   ; 2 uses
  %i.cn = sext i32 %i.cf to i64                   ; 2 uses
  %i.co = mul i64 %i.cj, %i.cm                    ; 2 uses
  %i.cp = mul i64 %i.co, %indvars.iv151
  %i.cq = mul i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cq
  %i.cs = mul i64 %i.co, %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 5 uses
  %i.cu = load i8, ptr %10, align 1, !tbaa !47, !range !57, !noundef !58
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = load i32, ptr %11, align 4, !tbaa !25   ; 8 uses
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc71
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.cy = zext nneg i32 %i.cw to i64              ; 4 uses
  %i.cz = getelementptr [4 x i8], ptr %i.cd, i64 %i.cy ; 4 uses
  %min.iters.check = icmp ult i32 %i.cw, 36
  br i1 %min.iters.check, label %.lr.ph.preheader179, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.da = mul i64 %indvars.iv154, %i.ch
  %i.db = mul nsw i64 %indvars.iv151, %i.cn
  %i.dc = add nsw i64 %indvars.iv, %i.db
  %i.dd = mul i64 %i.dc, %i.cm
  %i.de = add i64 %i.da, %i.dd
  %i.df = mul i64 %i.cj, %i.de                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cg, i64 %i.df
  %scevgep169 = getelementptr i8, ptr %i.cg, i64 4
  %i.dg = add nsw i32 %i.cw, -1
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 2 uses
  %i.dj = getelementptr i8, ptr %scevgep169, i64 %i.df
  %scevgep170 = getelementptr i8, ptr %i.dj, i64 %i.di
  %scevgep171 = getelementptr i8, ptr %i.bo, i64 -4
  %i.dk = mul i64 %i.ba, %i.bp
  %i.dl = mul nsw i64 %i.bg, %i.bv
  %i.dm = add i64 %i.cb, %i.dl
  %i.dn = mul i64 %i.dm, %i.bu
  %i.do = add i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.br, %i.do
  %i.dq = shl nuw nsw i64 %i.cy, 2
  %i.dr = add i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = sub i64 %i.dr, %i.di
  %scevgep172 = getelementptr i8, ptr %scevgep171, i64 %i.ds
  %scevgep173 = getelementptr i8, ptr %i.bo, i64 %i.dr
  %bound0 = icmp ult ptr %scevgep, %scevgep173
  %bound1 = icmp ult ptr %scevgep172, %scevgep170
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader179, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, 2147483640              ; 5 uses
  %i.dt = trunc nuw nsw i64 %n.vec to i32
  %i.du = shl nuw nsw i64 %n.vec, 2
  %i.dv = getelementptr i8, ptr %i.ct, i64 %i.du
  %i.dw = mul nsw i64 %n.vec, -4
  %i.dx = getelementptr i8, ptr %i.cz, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.dy ; 2 uses
  %i.dz = mul i64 %index, -4
  %next.gep174 = getelementptr i8, ptr %i.cz, i64 %i.dz ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep174, i64 -16
  %i.eb = getelementptr i8, ptr %next.gep174, i64 -32
  %wide.load = load <4 x float>, ptr %i.ea, align 4, !tbaa !65, !alias.scope !67
  %wide.load175 = load <4 x float>, ptr %i.eb, align 4, !tbaa !65, !alias.scope !67
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse176 = shufflevector <4 x float> %wide.load175, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %reverse, ptr %next.gep, align 4, !tbaa !65, !alias.scope !70, !noalias !67
  store <4 x float> %reverse176, ptr %i.ec, align 4, !tbaa !65, !alias.scope !70, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cy
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader179

.lr.ph.preheader179:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0139.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.dt, %middle.block ] ; 4 uses
  %.044138.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.preheader ], [ %i.dv, %middle.block ] ; 2 uses
  %.pn137.ph = phi ptr [ %i.cz, %vector.memcheck ], [ %i.cz, %.lr.ph.preheader ], [ %i.dx, %middle.block ] ; 2 uses
  %i.ee = sub i32 %i.cw, %.0139.ph
  %xtraiter = and i32 %i.ee, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader179, %.lr.ph.prol
  %.0139.prol = phi i32 [ %i.eh, %.lr.ph.prol ], [ %.0139.ph, %.lr.ph.preheader179 ]
  %.044138.prol = phi ptr [ %i.eg, %.lr.ph.prol ], [ %.044138.ph, %.lr.ph.preheader179 ] ; 2 uses
  %.pn137.prol = phi ptr [ %.045.prol, %.lr.ph.prol ], [ %.pn137.ph, %.lr.ph.preheader179 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader179 ]
  %.045.prol = getelementptr i8, ptr %.pn137.prol, i64 -4 ; 3 uses
  %i.ef = load float, ptr %.045.prol, align 4, !tbaa !65
  %i.eg = getelementptr inbounds nuw i8, ptr %.044138.prol, i64 4 ; 2 uses
  store float %i.ef, ptr %.044138.prol, align 4, !tbaa !65
  %i.eh = add nuw nsw i32 %.0139.prol, 1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !75

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader179
  %.0139.unr = phi i32 [ %.0139.ph, %.lr.ph.preheader179 ], [ %i.eh, %.lr.ph.prol ]
  %.044138.unr = phi ptr [ %.044138.ph, %.lr.ph.preheader179 ], [ %i.eg, %.lr.ph.prol ]
  %.pn137.unr = phi ptr [ %.pn137.ph, %.lr.ph.preheader179 ], [ %.045.prol, %.lr.ph.prol ]
  %i.ei = sub i32 %.0139.ph, %i.cw
  %i.ej = icmp ugt i32 %i.ei, -8
  br i1 %i.ej, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0139 = phi i32 [ %i.fa, %.lr.ph ], [ %.0139.unr, %.lr.ph.prol.loopexit ]
  %.044138 = phi ptr [ %i.ez, %.lr.ph ], [ %.044138.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.pn137 = phi ptr [ %.045.7, %.lr.ph ], [ %.pn137.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %.045 = getelementptr i8, ptr %.pn137, i64 -4
  %i.ek = load float, ptr %.045, align 4, !tbaa !65
  %i.el = getelementptr inbounds nuw i8, ptr %.044138, i64 4
  store float %i.ek, ptr %.044138, align 4, !tbaa !65
  %.045.1 = getelementptr i8, ptr %.pn137, i64 -8
  %i.em = load float, ptr %.045.1, align 4, !tbaa !65
  %i.en = getelementptr inbounds nuw i8, ptr %.044138, i64 8
  store float %i.em, ptr %i.el, align 4, !tbaa !65
  %.045.2 = getelementptr i8, ptr %.pn137, i64 -12
  %i.eo = load float, ptr %.045.2, align 4, !tbaa !65
  %i.ep = getelementptr inbounds nuw i8, ptr %.044138, i64 12
  store float %i.eo, ptr %i.en, align 4, !tbaa !65
  %.045.3 = getelementptr i8, ptr %.pn137, i64 -16
  %i.eq = load float, ptr %.045.3, align 4, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %.044138, i64 16
  store float %i.eq, ptr %i.ep, align 4, !tbaa !65
  %.045.4 = getelementptr i8, ptr %.pn137, i64 -20
  %i.es = load float, ptr %.045.4, align 4, !tbaa !65
  %i.et = getelementptr inbounds nuw i8, ptr %.044138, i64 20
  store float %i.es, ptr %i.er, align 4, !tbaa !65
  %.045.5 = getelementptr i8, ptr %.pn137, i64 -24
  %i.eu = load float, ptr %.045.5, align 4, !tbaa !65
  %i.ev = getelementptr inbounds nuw i8, ptr %.044138, i64 24
  store float %i.eu, ptr %i.et, align 4, !tbaa !65
  %.045.6 = getelementptr i8, ptr %.pn137, i64 -28
  %i.ew = load float, ptr %.045.6, align 4, !tbaa !65
  %i.ex = getelementptr inbounds nuw i8, ptr %.044138, i64 28
  store float %i.ew, ptr %i.ev, align 4, !tbaa !65
  %.045.7 = getelementptr i8, ptr %.pn137, i64 -32 ; 2 uses
  %i.ey = load float, ptr %.045.7, align 4, !tbaa !65
  %i.ez = getelementptr inbounds nuw i8, ptr %.044138, i64 32
  store float %i.ey, ptr %i.ex, align 4, !tbaa !65
  %i.fa = add nuw nsw i32 %.0139, 8               ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.fa, %i.cw
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !77

bb.h:                                             ; preds = %.noexc71
  %i.fb = sext i32 %i.cw to i64
  %i.fc = shl nsw i64 %i.fb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ct, ptr align 4 %i.cd, i64 %i.fc, i1 false)
  %.pre = load i32, ptr %4, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.g, %bb.h
  %i.fd = phi i32 [ %.pre, %bb.h ], [ %i.at, %bb.g ], [ %i.at, %middle.block ], [ %i.at, %.lr.ph ], [ %i.at, %.lr.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp slt i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !78

._crit_edge147:                                   ; preds = %._crit_edge143, %.preheader136.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge147, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !79 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
end_hunk_0
