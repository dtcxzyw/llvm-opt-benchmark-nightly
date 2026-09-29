Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rgb2rgb?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@rgb24to16_c:bb.a
  %i.w = add nuw nsw i64 %i.v, %umin              ; 2 uses
  %i.x = shl nuw i64 %i.w, 1
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %scevgep = getelementptr i8, ptr %i.y, i64 2
  %i.z = mul i64 %i.w, 3
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %scevgep15 = getelementptr i8, ptr %i.aa, i64 3
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -8                       ; 4 uses
  %i.ab = shl i64 %n.vec, 1
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = mul i64 %n.vec, 3
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %1, i64 %i.af
  %i.ag = mul i64 %index, 3                       ; 8 uses
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.ag ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag     ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.ah, i64 3
  %i.ai = getelementptr i8, ptr %0, i64 %i.ag     ; 3 uses
  %next.gep18 = getelementptr i8, ptr %i.ai, i64 6
  %i.aj = getelementptr i8, ptr %0, i64 %i.ag     ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.aj, i64 9
  %i.ak = getelementptr i8, ptr %0, i64 %i.ag     ; 3 uses
  %next.gep20 = getelementptr i8, ptr %i.ak, i64 12
  %i.al = getelementptr i8, ptr %0, i64 %i.ag     ; 3 uses
  %next.gep21 = getelementptr i8, ptr %i.al, i64 15
  %i.am = getelementptr i8, ptr %0, i64 %i.ag     ; 3 uses
  %next.gep22 = getelementptr i8, ptr %i.am, i64 18
  %i.an = getelementptr i8, ptr %0, i64 %i.ag     ; 3 uses
  %next.gep23 = getelementptr i8, ptr %i.an, i64 21
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep16, i64 1
  %i.ap = getelementptr i8, ptr %i.ah, i64 4
  %i.aq = getelementptr i8, ptr %i.ai, i64 7
  %i.ar = getelementptr i8, ptr %i.aj, i64 10
  %i.as = getelementptr i8, ptr %i.ak, i64 13
  %i.at = getelementptr i8, ptr %i.al, i64 16
  %i.au = getelementptr i8, ptr %i.am, i64 19
  %i.av = getelementptr i8, ptr %i.an, i64 22
  %i.aw = load i8, ptr %next.gep16, align 1, !tbaa !12, !alias.scope !177
  %i.ax = load i8, ptr %next.gep17, align 1, !tbaa !12, !alias.scope !177
  %i.ay = load i8, ptr %next.gep18, align 1, !tbaa !12, !alias.scope !177
  %i.az = load i8, ptr %next.gep19, align 1, !tbaa !12, !alias.scope !177
  %i.ba = load i8, ptr %next.gep20, align 1, !tbaa !12, !alias.scope !177
  %i.bb = load i8, ptr %next.gep21, align 1, !tbaa !12, !alias.scope !177
  %i.bc = load i8, ptr %next.gep22, align 1, !tbaa !12, !alias.scope !177
  %i.bd = load i8, ptr %next.gep23, align 1, !tbaa !12, !alias.scope !177
  %i.be = insertelement <8 x i8> poison, i8 %i.aw, i64 0
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 1
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 2
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 3
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 4
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 5
  %i.bk = insertelement <8 x i8> %i.bj, i8 %i.bc, i64 6
  %i.bl = insertelement <8 x i8> %i.bk, i8 %i.bd, i64 7
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep16, i64 2
  %i.bn = getelementptr i8, ptr %i.ah, i64 5
  %i.bo = getelementptr i8, ptr %i.ai, i64 8
  %i.bp = getelementptr i8, ptr %i.aj, i64 11
  %i.bq = getelementptr i8, ptr %i.ak, i64 14
  %i.br = getelementptr i8, ptr %i.al, i64 17
  %i.bs = getelementptr i8, ptr %i.am, i64 20
  %i.bt = getelementptr i8, ptr %i.an, i64 23
  %i.bu = load i8, ptr %i.ao, align 1, !tbaa !12, !alias.scope !177
  %i.bv = load i8, ptr %i.ap, align 1, !tbaa !12, !alias.scope !177
  %i.bw = load i8, ptr %i.aq, align 1, !tbaa !12, !alias.scope !177
  %i.bx = load i8, ptr %i.ar, align 1, !tbaa !12, !alias.scope !177
  %i.by = load i8, ptr %i.as, align 1, !tbaa !12, !alias.scope !177
  %i.bz = load i8, ptr %i.at, align 1, !tbaa !12, !alias.scope !177
  %i.ca = load i8, ptr %i.au, align 1, !tbaa !12, !alias.scope !177
  %i.cb = load i8, ptr %i.av, align 1, !tbaa !12, !alias.scope !177
  %i.cc = insertelement <8 x i8> poison, i8 %i.bu, i64 0
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 1
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 2
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 3
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 4
  %i.ch = insertelement <8 x i8> %i.cg, i8 %i.bz, i64 5
  %i.ci = insertelement <8 x i8> %i.ch, i8 %i.ca, i64 6
  %i.cj = insertelement <8 x i8> %i.ci, i8 %i.cb, i64 7
  %i.ck = load i8, ptr %i.bm, align 1, !tbaa !12, !alias.scope !177
  %i.cl = load i8, ptr %i.bn, align 1, !tbaa !12, !alias.scope !177
  %i.cm = load i8, ptr %i.bo, align 1, !tbaa !12, !alias.scope !177
  %i.cn = load i8, ptr %i.bp, align 1, !tbaa !12, !alias.scope !177
  %i.co = load i8, ptr %i.bq, align 1, !tbaa !12, !alias.scope !177
  %i.cp = load i8, ptr %i.br, align 1, !tbaa !12, !alias.scope !177
  %i.cq = load i8, ptr %i.bs, align 1, !tbaa !12, !alias.scope !177
  %i.cr = load i8, ptr %i.bt, align 1, !tbaa !12, !alias.scope !177
  %i.cs = insertelement <8 x i8> poison, i8 %i.ck, i64 0
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 1
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 2
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 3
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 4
  %i.cx = insertelement <8 x i8> %i.cw, i8 %i.cp, i64 5
  %i.cy = insertelement <8 x i8> %i.cx, i8 %i.cq, i64 6
  %i.cz = insertelement <8 x i8> %i.cy, i8 %i.cr, i64 7
  %i.da = lshr <8 x i8> %i.cz, splat (i8 3)
  %i.db = zext nneg <8 x i8> %i.da to <8 x i16>
  %i.dc = and <8 x i8> %i.cj, splat (i8 -4)
  %i.dd = zext <8 x i8> %i.dc to <8 x i16>
  %i.de = shl nuw nsw <8 x i16> %i.dd, splat (i16 3)
  %i.df = or disjoint <8 x i16> %i.de, %i.db
  %i.dg = and <8 x i8> %i.bl, splat (i8 -8)
  %i.dh = zext <8 x i8> %i.dg to <8 x i16>
  %i.di = shl nuw <8 x i16> %i.dh, splat (i16 8)
  %i.dj = or disjoint <8 x i16> %i.df, %i.di
  store <8 x i16> %i.dj, ptr %next.gep, align 2, !tbaa !15, !alias.scope !178, !noalias !177
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.01213.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.014 = phi ptr [ %i.dy, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.01213 = phi ptr [ %i.dm, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader25 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.01213, i64 3 ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !12
  %i.do = lshr i8 %i.dn, 3
  %i.dp = zext nneg i8 %i.do to i16
  %i.dq = load <2 x i8>, ptr %.01213, align 1, !tbaa !12
  %i.dr = and <2 x i8> %i.dq, <i8 -8, i8 -4>
  %i.ds = zext <2 x i8> %i.dr to <2 x i16>
  %i.dt = shl nuw <2 x i16> %i.ds, <i16 8, i16 3> ; 2 uses
  %i.du = extractelement <2 x i16> %i.dt, i64 1
  %i.dv = or disjoint i16 %i.du, %i.dp
  %i.dw = extractelement <2 x i16> %i.dt, i64 0
  %i.dx = or disjoint i16 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.014, i64 2
  store i16 %i.dx, ptr %.014, align 2, !tbaa !15
  %i.dz = icmp ult ptr %i.dm, %i.c
  br i1 %i.dz, label %.lr.ph, label %._crit_edge, !llvm.loop !176

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb24tobgr24_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.o, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = add i32 %.015, 2
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %i.e = add nuw i32 %.015, 1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  store i8 %i.h, ptr %i.i, align 1, !tbaa !12
  %i.j = zext i32 %.015 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  store i8 %i.l, ptr %i.m, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  store i8 %i.d, ptr %i.n, align 1, !tbaa !12
  %i.o = add i32 %.015, 3                         ; 2 uses
  %i.p = icmp ult i32 %i.o, %2
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !179

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shuffle_bytes_0321_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %.neg = add nsw i32 %2, -15
  %i.a = sext i32 %.neg to i64                    ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub nsw i32 15, %2
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %3 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 11)
  %i.i = zext nneg i32 %2 to i64
  %4 = add nuw i64 %3, %i.i
  %i.j = add i64 %4, -12                          ; 2 uses
  %i.k = lshr i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  %i.m = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.n = shl i64 %n.vec, 2
  %i.o = add i64 %i.n, %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2
  %i.q = add i64 %i.p, %i.h                       ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !11 ; 2 uses
  %wide.load17 = load <4 x i32>, ptr %i.s, align 4, !tbaa !11 ; 2 uses
  %i.t = and <4 x i32> %wide.load, splat (i32 16711935)
  %i.u = and <4 x i32> %wide.load17, splat (i32 16711935)
  %i.v = and <4 x i32> %wide.load, splat (i32 -16711936) ; 2 uses
  %i.w = and <4 x i32> %wide.load17, splat (i32 -16711936) ; 2 uses
  %i.x = lshr <4 x i32> %i.v, splat (i32 16)
  %i.y = lshr <4 x i32> %i.w, splat (i32 16)
  %i.z = or disjoint <4 x i32> %i.t, %i.x
  %i.aa = or disjoint <4 x i32> %i.u, %i.y
  %i.ab = shl <4 x i32> %i.v, splat (i32 16)
  %i.ac = shl <4 x i32> %i.w, splat (i32 16)
  %i.ad = or disjoint <4 x i32> %i.z, %i.ab
  %i.ae = or disjoint <4 x i32> %i.aa, %i.ac
  %i.af = getelementptr inbounds i8, ptr %i.c, i64 %i.q ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %i.ad, ptr %i.af, align 4, !tbaa !11
  store <4 x i32> %i.ae, ptr %i.ag, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.ak = and i32 %i.aj, 16711935
  %i.al = and i32 %i.aj, -16711936                ; 2 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = shl i32 %i.al, 16
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %i.ar = icmp slt i64 %indvars.iv, 11
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shuffle_bytes_2103_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %.neg = add nsw i32 %2, -15
  %i.a = sext i32 %.neg to i64                    ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.a ; 2 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub nsw i32 15, %2
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %3 = tail call i64 @llvm.smax.i64(i64 %i.h, i64 11)
  %i.i = zext nneg i32 %2 to i64
  %4 = add nuw i64 %3, %i.i
  %i.j = add i64 %4, -12                          ; 2 uses
  %i.k = lshr i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  %i.m = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, 9223372036854775800      ; 3 uses
  %i.n = shl i64 %n.vec, 2
  %i.o = add i64 %i.n, %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2
  %i.q = add i64 %i.p, %i.h                       ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !11 ; 2 uses
  %wide.load17 = load <4 x i32>, ptr %i.s, align 4, !tbaa !11 ; 2 uses
  %i.t = and <4 x i32> %wide.load, splat (i32 -16711936)
  %i.u = and <4 x i32> %wide.load17, splat (i32 -16711936)
  %i.v = and <4 x i32> %wide.load, splat (i32 16711935) ; 2 uses
  %i.w = and <4 x i32> %wide.load17, splat (i32 16711935) ; 2 uses
  %i.x = lshr <4 x i32> %i.v, splat (i32 16)
  %i.y = lshr <4 x i32> %i.w, splat (i32 16)
  %i.z = or disjoint <4 x i32> %i.t, %i.x
  %i.aa = or disjoint <4 x i32> %i.u, %i.y
  %i.ab = shl <4 x i32> %i.v, splat (i32 16)
  %i.ac = shl <4 x i32> %i.w, splat (i32 16)
  %i.ad = or disjoint <4 x i32> %i.z, %i.ab
  %i.ae = or disjoint <4 x i32> %i.aa, %i.ac
  %i.af = getelementptr inbounds i8, ptr %i.c, i64 %i.q ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %i.ad, ptr %i.af, align 4, !tbaa !11
  store <4 x i32> %i.ae, ptr %i.ag, align 4, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.ak = and i32 %i.aj, -16711936
  %i.al = and i32 %i.aj, 16711935                 ; 2 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = shl i32 %i.al, 16
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %i.ar = icmp slt i64 %indvars.iv, 11
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !183

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shuffle_bytes_1230_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %i.c = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.e, ptr %i.f, align 1, !tbaa !12
  %i.g = or disjoint i64 %indvars.iv, 2           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  store i8 %i.i, ptr %i.j, align 1, !tbaa !12
  %i.k = or disjoint i64 %indvars.iv, 3           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  store i8 %i.m, ptr %i.n, align 1, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i8 %i.p, ptr %i.q, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shuffle_bytes_3012_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %i.c = or disjoint i64 %indvars.iv, 3           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.e, ptr %i.f, align 1, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = or disjoint i64 %indvars.iv, 2           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  store i8 %i.p, ptr %i.q, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !185

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shuffle_bytes_3210_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %i.c = or disjoint i64 %indvars.iv, 3           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.e, ptr %i.f, align 1, !tbaa !12
  %i.g = or disjoint i64 %indvars.iv, 2           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = or disjoint i64 %indvars.iv, 1           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  store i8 %i.i, ptr %i.k, align 1, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  store i8 %i.m, ptr %i.n, align 1, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  store i8 %i.p, ptr %i.q, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shuffle_bytes_3102_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %i.c = or disjoint i64 %indvars.iv, 3           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@yuyvtoyuv422_c:bb.a
  %i.jt = shl i64 %i.jn, 1
  %i.ju = shl i64 %i.jn, 1
  %i.jv = shl i64 %i.jn, 1
  %i.jw = shl i64 %i.jn, 1
  %i.jx = shl i64 %i.jn, 1
  %i.jy = shl i64 %i.jn, 1
  %i.jz = shl i64 %i.jn, 1
  %i.ka = shl i64 %i.jn, 1
  %i.kb = shl i64 %i.jn, 1
  %i.kc = shl i64 %i.jn, 1
  %i.kd = shl i64 %i.jn, 1
  %i.ke = getelementptr inbounds i8, ptr %i.jm, i64 %i.jo
  %i.kf = getelementptr i8, ptr %i.jm, i64 %i.jp
  %i.kg = getelementptr i8, ptr %i.kf, i64 2
  %i.kh = getelementptr i8, ptr %i.jm, i64 %i.jq
  %i.ki = getelementptr i8, ptr %i.kh, i64 4
  %i.kj = getelementptr i8, ptr %i.jm, i64 %i.jr
  %i.kk = getelementptr i8, ptr %i.kj, i64 6
  %i.kl = getelementptr i8, ptr %i.jm, i64 %i.js
  %i.km = getelementptr i8, ptr %i.kl, i64 8
  %i.kn = getelementptr i8, ptr %i.jm, i64 %i.jt
  %i.ko = getelementptr i8, ptr %i.kn, i64 10
  %i.kp = getelementptr i8, ptr %i.jm, i64 %i.ju
  %i.kq = getelementptr i8, ptr %i.kp, i64 12
  %i.kr = getelementptr i8, ptr %i.jm, i64 %i.jv
  %i.ks = getelementptr i8, ptr %i.kr, i64 14
  %i.kt = getelementptr i8, ptr %i.jm, i64 %i.jw
  %i.ku = getelementptr i8, ptr %i.kt, i64 16
  %i.kv = getelementptr i8, ptr %i.jm, i64 %i.jx
  %i.kw = getelementptr i8, ptr %i.kv, i64 18
  %i.kx = getelementptr i8, ptr %i.jm, i64 %i.jy
  %i.ky = getelementptr i8, ptr %i.kx, i64 20
  %i.kz = getelementptr i8, ptr %i.jm, i64 %i.jz
  %i.la = getelementptr i8, ptr %i.kz, i64 22
  %i.lb = getelementptr i8, ptr %i.jm, i64 %i.ka
  %i.lc = getelementptr i8, ptr %i.lb, i64 24
  %i.ld = getelementptr i8, ptr %i.jm, i64 %i.kb
  %i.le = getelementptr i8, ptr %i.ld, i64 26
  %i.lf = getelementptr i8, ptr %i.jm, i64 %i.kc
  %i.lg = getelementptr i8, ptr %i.lf, i64 28
  %i.lh = getelementptr i8, ptr %i.jm, i64 %i.kd
  %i.li = getelementptr i8, ptr %i.lh, i64 30
  %i.lj = load i8, ptr %i.ke, align 1, !tbaa !12, !alias.scope !357
  %i.lk = load i8, ptr %i.kg, align 1, !tbaa !12, !alias.scope !357
  %i.ll = load i8, ptr %i.ki, align 1, !tbaa !12, !alias.scope !357
  %i.lm = load i8, ptr %i.kk, align 1, !tbaa !12, !alias.scope !357
  %i.ln = load i8, ptr %i.km, align 1, !tbaa !12, !alias.scope !357
  %i.lo = load i8, ptr %i.ko, align 1, !tbaa !12, !alias.scope !357
  %i.lp = load i8, ptr %i.kq, align 1, !tbaa !12, !alias.scope !357
  %i.lq = load i8, ptr %i.ks, align 1, !tbaa !12, !alias.scope !357
  %i.lr = load i8, ptr %i.ku, align 1, !tbaa !12, !alias.scope !357
  %i.ls = load i8, ptr %i.kw, align 1, !tbaa !12, !alias.scope !357
  %i.lt = load i8, ptr %i.ky, align 1, !tbaa !12, !alias.scope !357
  %i.lu = load i8, ptr %i.la, align 1, !tbaa !12, !alias.scope !357
  %i.lv = load i8, ptr %i.lc, align 1, !tbaa !12, !alias.scope !357
  %i.lw = load i8, ptr %i.le, align 1, !tbaa !12, !alias.scope !357
  %i.lx = load i8, ptr %i.lg, align 1, !tbaa !12, !alias.scope !357
  %i.ly = load i8, ptr %i.li, align 1, !tbaa !12, !alias.scope !357
  %i.lz = insertelement <16 x i8> poison, i8 %i.lj, i64 0
  %i.ma = insertelement <16 x i8> %i.lz, i8 %i.lk, i64 1
  %i.mb = insertelement <16 x i8> %i.ma, i8 %i.ll, i64 2
  %i.mc = insertelement <16 x i8> %i.mb, i8 %i.lm, i64 3
  %i.md = insertelement <16 x i8> %i.mc, i8 %i.ln, i64 4
  %i.me = insertelement <16 x i8> %i.md, i8 %i.lo, i64 5
  %i.mf = insertelement <16 x i8> %i.me, i8 %i.lp, i64 6
  %i.mg = insertelement <16 x i8> %i.mf, i8 %i.lq, i64 7
  %i.mh = insertelement <16 x i8> %i.mg, i8 %i.lr, i64 8
  %i.mi = insertelement <16 x i8> %i.mh, i8 %i.ls, i64 9
  %i.mj = insertelement <16 x i8> %i.mi, i8 %i.lt, i64 10
  %i.mk = insertelement <16 x i8> %i.mj, i8 %i.lu, i64 11
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 12
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 13
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 14
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 15
  %i.mp = getelementptr inbounds i8, ptr %i.jl, i64 %i.jn
  store <16 x i8> %i.mo, ptr %i.mp, align 1, !tbaa !12, !alias.scope !358, !noalias !357
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mq = icmp eq i64 %index.next, %n.vec
  br i1 %i.mq, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !351

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %i.mr = add i64 %index49, %i.i                  ; 5 uses
  %i.ms = shl nsw i64 %i.mr, 1
  %i.mt = shl i64 %i.mr, 1
  %i.mu = shl i64 %i.mr, 1
  %i.mv = shl i64 %i.mr, 1
  %i.mw = getelementptr inbounds i8, ptr %i.jm, i64 %i.ms
  %i.mx = getelementptr i8, ptr %i.jm, i64 %i.mt
  %i.my = getelementptr i8, ptr %i.mx, i64 2
  %i.mz = getelementptr i8, ptr %i.jm, i64 %i.mu
  %i.na = getelementptr i8, ptr %i.mz, i64 4
  %i.nb = getelementptr i8, ptr %i.jm, i64 %i.mv
  %i.nc = getelementptr i8, ptr %i.nb, i64 6
  %i.nd = load i8, ptr %i.mw, align 1, !tbaa !12, !alias.scope !357
  %i.ne = load i8, ptr %i.my, align 1, !tbaa !12, !alias.scope !357
  %i.nf = load i8, ptr %i.na, align 1, !tbaa !12, !alias.scope !357
  %i.ng = load i8, ptr %i.nc, align 1, !tbaa !12, !alias.scope !357
  %i.nh = insertelement <4 x i8> poison, i8 %i.nd, i64 0
  %i.ni = insertelement <4 x i8> %i.nh, i8 %i.ne, i64 1
  %i.nj = insertelement <4 x i8> %i.ni, i8 %i.nf, i64 2
  %i.nk = insertelement <4 x i8> %i.nj, i8 %i.ng, i64 3
  %i.nl = getelementptr inbounds i8, ptr %i.jl, i64 %i.mr
  store <4 x i8> %i.nk, ptr %i.nl, align 1, !tbaa !12, !alias.scope !358, !noalias !357
  %index.next50 = add nuw i64 %index49, 4         ; 2 uses
  %i.nm = icmp eq i64 %index.next50, %n.vec48
  br i1 %i.nm, label %.lr.ph.i.preheader, label %vec.epilog.vector.body, !llvm.loop !352

.lr.ph.i.preheader:                               ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ %i.i, %iter.check ], [ %i.jg, %vec.epilog.iter.check ], [ %i.jk, %vec.epilog.vector.body ] ; 3 uses
  %i.nn = trunc i64 %indvars.iv.i.ph to i32       ; 2 uses
  %i.no = sub i32 0, %i.nn
  %xtraiter = and i32 %i.no, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.np = shl nsw i64 %indvars.iv.i.prol, 1
  %i.nq = getelementptr inbounds i8, ptr %i.jm, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !12
  %i.ns = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.i.prol
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !12
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !353

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.nt = icmp ugt i32 %i.nn, -4
  br i1 %i.nt, label %extract_even_c.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.nu = shl nsw i64 %indvars.iv.i, 1
  %i.nv = getelementptr inbounds i8, ptr %i.jm, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !12
  %i.nx = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.i
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ny = shl nsw i64 %indvars.iv.next.i, 1
  %i.nz = getelementptr inbounds i8, ptr %i.jm, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !12
  %i.ob = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.next.i
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !12
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.oc = shl nsw i64 %indvars.iv.next.i.1, 1
  %i.od = getelementptr inbounds i8, ptr %i.jm, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !12
  %i.of = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.next.i.1
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !12
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.og = shl nsw i64 %indvars.iv.next.i.2, 1
  %i.oh = getelementptr inbounds i8, ptr %i.jm, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !12
  %i.oj = getelementptr inbounds i8, ptr %i.jl, i64 %indvars.iv.next.i.2
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !12
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ok = and i64 %indvars.iv.next.i.3, 4294967295
  %exitcond.not.i.3 = icmp eq i64 %i.ok, 0
  br i1 %exitcond.not.i.3, label %extract_even_c.exit.loopexit, label %.lr.ph.i, !llvm.loop !354

extract_even_c.exit.loopexit:                     ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ol = getelementptr inbounds i8, ptr %.02127, i64 %i.p
  %i.om = getelementptr inbounds i8, ptr %.01830, i64 %i.q
  %i.on = add nuw nsw i32 %.031, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.on, %5
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !347

._crit_edge:                                      ; preds = %extract_even_c.exit.loopexit, %extract_odd2_c.exit.loopexit.us, %extract_odd2_c.exit.loopexit.us.us, %.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <12 x i16> @llvm.bswap.v12i16(<12 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"short", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13, !16, !17}
!28 = distinct !{!28, !13, !16}
!29 = distinct !{!29, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !13, !16, !17}
!33 = distinct !{!33, !13, !16}
!34 = !{!30}
!35 = !{!31}
!36 = distinct !{!36, !13, !16, !17}
!37 = distinct !{!37, !13, !16, !17}
!38 = distinct !{!38, !13, !16}
!39 = distinct !{!39, !13, !16, !17}
!40 = distinct !{!40, !13, !16, !17}
!41 = distinct !{!41, !13, !16}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !13, !16, !17}
!47 = distinct !{!47, !13, !16}
!48 = !{!44}
!49 = !{!45}
!50 = distinct !{!50, !13, !16, !17}
!51 = distinct !{!51, !13, !16, !17}
!52 = distinct !{!52, !13, !16}
!53 = distinct !{!53, !13, !16, !17}
!54 = distinct !{!54, !13, !16, !17}
!55 = distinct !{!55, !13, !16}
!56 = distinct !{!56, !13, !16, !17}
!57 = distinct !{!57, !13, !16, !17}
!58 = distinct !{!58, !13, !16}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !13, !16, !17}
!73 = distinct !{!73, !13, !16}
!74 = !{!70}
!75 = !{!71}
!76 = distinct !{!76, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !13, !16, !17}
!80 = distinct !{!80, !13, !16}
!81 = !{!77}
!82 = !{!78}
!83 = distinct !{!83, !"LVerDomain"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !13, !16, !17}
!87 = distinct !{!87, !13, !16}
!88 = !{!84}
!89 = !{!85}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !13, !16, !17}
!94 = distinct !{!94, !13, !16}
!95 = !{!91}
!96 = !{!92}
!97 = distinct !{!97, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !13, !16, !17}
!101 = distinct !{!101, !13, !16}
!102 = !{!98}
!103 = !{!99}
!104 = distinct !{!104, !"LVerDomain"}
!105 = distinct !{!105, !104}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !13, !16, !17}
!108 = distinct !{!108, !13, !16}
!109 = !{!105}
!110 = !{!106}
!111 = distinct !{!111, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !13, !16, !17}
!115 = distinct !{!115, !13, !16}
!116 = !{!112}
!117 = !{!113}
!118 = distinct !{!118, !"LVerDomain"}
!119 = distinct !{!119, !118}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !13, !16, !17}
!122 = distinct !{!122, !13, !16}
!123 = !{!119}
!124 = !{!120}
!125 = distinct !{!125, !13, !16, !17}
!126 = distinct !{!126, !13, !16}
!127 = distinct !{!127, !"LVerDomain"}
!128 = distinct !{!128, !127}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !13, !16, !17}
!131 = distinct !{!131, !13, !16}
!132 = !{!128}
!133 = !{!129}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !"LVerDomain"}
!136 = distinct !{!136, !135}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !13, !16, !17}
!139 = distinct !{!139, !13, !16}
!140 = !{!136}
!141 = !{!137}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13, !16, !17}
!144 = distinct !{!144, !13, !16}
!145 = distinct !{!145, !"LVerDomain"}
!146 = distinct !{!146, !145}
!147 = distinct !{!147, !145}
!148 = distinct !{!148, !13, !16, !17}
!149 = distinct !{!149, !13, !16}
!150 = !{!146}
!151 = !{!147}
!152 = distinct !{!152, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !13, !16, !17}
!156 = distinct !{!156, !13, !16}
!157 = !{!153}
!158 = !{!154}
!159 = distinct !{!159, !13}
!160 = distinct !{!160, !13, !16, !17}
!161 = distinct !{!161, !13, !17, !16}
!162 = distinct !{!162, !13, !16, !17}
!163 = distinct !{!163, !13, !17, !16}
!164 = distinct !{!164, !13}
!165 = distinct !{!165, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !13, !16, !17}
!169 = distinct !{!169, !13, !16}
!170 = !{!166}
!171 = !{!167}
!172 = distinct !{!172, !"LVerDomain"}
!173 = distinct !{!173, !172}
!174 = distinct !{!174, !172}
!175 = distinct !{!175, !13, !16, !17}
!176 = distinct !{!176, !13, !16}
!177 = !{!173}
!178 = !{!174}
!179 = distinct !{!179, !13}
!180 = distinct !{!180, !13, !16, !17}
!181 = distinct !{!181, !13, !16}
!182 = distinct !{!182, !13, !16, !17}
!183 = distinct !{!183, !13, !16}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
end_hunk_1
