Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaLf?download=true
inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@Lf_ObjMergeOrder:bb.a
  %i.azv = icmp ugt i32 %i.azu, 33554431
  br i1 %i.azv, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.azf, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.azw = load i32, ptr %i.azi, align 4
  %i.azx = icmp ugt i32 %i.azw, 33554431
  br i1 %i.azx, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.azy = getelementptr inbounds nuw i8, ptr %.4346728, i64 20 ; 2 uses
  %i.azz = load i32, ptr %i.azy, align 4
  %i.baa = getelementptr inbounds nuw i8, ptr %.4346728, i64 16
  store i32 2, ptr %i.baa, align 8, !tbaa !83
  %i.bab = and i32 %i.azz, 4194303
  %i.bac = or disjoint i32 %i.bab, 16777216
  store i32 %i.bac, ptr %i.azy, align 4
  %i.bad = getelementptr inbounds nuw i8, ptr %.4346728, i64 24
  store i32 %1, ptr %i.bad, align 8, !tbaa !57
  store i64 %i.azl, ptr %.4346728, align 8, !tbaa !89
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg, %bb.fe, %bb.fd
  %i.bae = getelementptr inbounds nuw i8, ptr %.4346728, i64 20 ; 2 uses
  %i.baf = load i32, ptr %i.bae, align 4
  %i.bag = or i32 %i.baf, -16777216
  store i32 %i.bag, ptr %i.bae, align 4
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fc, %bb.fi, %bb.fh
  %i.bah = getelementptr inbounds [8 x i8], ptr %.4346728, i64 %i.azm
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 2 uses
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %wide.trip.count801
  br i1 %exitcond802.not, label %.loopexit, label %bb.fb, !llvm.loop !208

.loopexit:                                        ; preds = %bb.fj, %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  ret void
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @Lf_MemLoadCut(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2, ptr nofree noundef returned captures(ret: address, provenance) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !84
  %i.b = lshr i32 %1, %i.a                        ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val36 = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val36, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !87
  %i.i = and i32 %i.h, %1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !88    ; 2 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %.not7.i = icmp sgt i8 %i.m, -1
  br i1 %.not7.i, label %Gia_AigerReadUnsigned.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.o = phi i32 [ %i.x, %.lr.ph.i ], [ %i.n, %bb.a ]
  %i.p = phi ptr [ %i.v, %.lr.ph.i ], [ %i.l, %bb.a ] ; 2 uses
  %.09.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.068.i = phi i32 [ %i.u, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = and i32 %i.o, 127
  %i.r = add i32 %.09.i, 1                        ; 2 uses
  %i.s = mul i32 %.09.i, 7
  %i.t = shl i32 %i.q, %i.s
  %i.u = or i32 %i.t, %.068.i                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.p, align 1, !tbaa !88    ; 2 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.w, -1
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.y = mul i32 %i.r, 7
  br label %Gia_AigerReadUnsigned.exit

Gia_AigerReadUnsigned.exit:                       ; preds = %bb.a, %._crit_edge.loopexit.i
  %.1 = phi ptr [ %i.l, %bb.a ], [ %i.v, %._crit_edge.loopexit.i ] ; 2 uses
  %.06.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.u, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.y, %._crit_edge.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.n, %bb.a ], [ %i.x, %._crit_edge.loopexit.i ]
  %i.z = shl i32 %.lcssa.i, %.0.lcssa.i
  %i.aa = or i32 %i.z, %.06.lcssa.i               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = shl i32 %i.aa, 24
  %i.ae = and i32 %i.ac, 16777215
  %i.af = or disjoint i32 %i.ad, %i.ae
  store i32 %i.af, ptr %i.ab, align 4
  %i.ag = and i32 %i.aa, 255
  %.not78 = icmp eq i32 %i.ag, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Gia_AigerReadUnsigned.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = and i32 %i.aa, 255
  %i.aj = zext nneg i32 %i.ai to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Gia_AigerReadUnsigned.exit48
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next, %Gia_AigerReadUnsigned.exit48 ] ; 2 uses
  %.077 = phi i32 [ %2, %.lr.ph ], [ %i.ba, %Gia_AigerReadUnsigned.exit48 ]
  %.06375 = phi ptr [ %.1, %.lr.ph ], [ %.2, %Gia_AigerReadUnsigned.exit48 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.06375, i64 1 ; 2 uses
  %i.al = load i8, ptr %.06375, align 1, !tbaa !88 ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %.not7.i39 = icmp sgt i8 %i.al, -1
  br i1 %.not7.i39, label %Gia_AigerReadUnsigned.exit48, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.b, %.lr.ph.i40
  %i.an = phi i32 [ %i.aw, %.lr.ph.i40 ], [ %i.am, %bb.b ]
  %i.ao = phi ptr [ %i.au, %.lr.ph.i40 ], [ %i.ak, %bb.b ] ; 2 uses
  %.09.i41 = phi i32 [ %i.aq, %.lr.ph.i40 ], [ 0, %bb.b ] ; 2 uses
  %.068.i42 = phi i32 [ %i.at, %.lr.ph.i40 ], [ 0, %bb.b ]
  %i.ap = and i32 %i.an, 127
  %i.aq = add i32 %.09.i41, 1                     ; 2 uses
  %i.ar = mul i32 %.09.i41, 7
  %i.as = shl i32 %i.ap, %i.ar
  %i.at = or i32 %i.as, %.068.i42                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.ao, align 1, !tbaa !88  ; 2 uses
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %.not.i43 = icmp sgt i8 %i.av, -1
  br i1 %.not.i43, label %._crit_edge.loopexit.i44, label %.lr.ph.i40, !llvm.loop !1

._crit_edge.loopexit.i44:                         ; preds = %.lr.ph.i40
  %i.ax = mul i32 %i.aq, 7
  br label %Gia_AigerReadUnsigned.exit48

Gia_AigerReadUnsigned.exit48:                     ; preds = %bb.b, %._crit_edge.loopexit.i44
  %.2 = phi ptr [ %i.ak, %bb.b ], [ %i.au, %._crit_edge.loopexit.i44 ] ; 2 uses
  %.06.lcssa.i45 = phi i32 [ 0, %bb.b ], [ %i.at, %._crit_edge.loopexit.i44 ]
  %.0.lcssa.i46 = phi i32 [ 0, %bb.b ], [ %i.ax, %._crit_edge.loopexit.i44 ]
  %.lcssa.i47 = phi i32 [ %i.am, %bb.b ], [ %i.aw, %._crit_edge.loopexit.i44 ]
  %i.ay = shl i32 %.lcssa.i47, %.0.lcssa.i46
  %i.az = or i32 %i.ay, %.06.lcssa.i45
  %i.ba = sub i32 %.077, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !57
  %i.bc = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bc, label %bb.b, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %Gia_AigerReadUnsigned.exit48, %Gia_AigerReadUnsigned.exit
  %.063.lcssa = phi ptr [ %.1, %Gia_AigerReadUnsigned.exit ], [ %.2, %Gia_AigerReadUnsigned.exit48 ] ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bd = load i8, ptr %.063.lcssa, align 1, !tbaa !88 ; 2 uses
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %.not7.i50 = icmp sgt i8 %i.bd, -1
  br i1 %.not7.i50, label %Gia_AigerReadUnsigned.exit59, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.c, %.lr.ph.i51
  %i.bf = phi i32 [ %i.bn, %.lr.ph.i51 ], [ %i.be, %bb.c ]
  %.pn = phi ptr [ %i.bg, %.lr.ph.i51 ], [ %.063.lcssa, %bb.c ]
  %.09.i52 = phi i32 [ %i.bi, %.lr.ph.i51 ], [ 0, %bb.c ] ; 2 uses
  %.068.i53 = phi i32 [ %i.bl, %.lr.ph.i51 ], [ 0, %bb.c ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.bh = and i32 %i.bf, 127
  %i.bi = add i32 %.09.i52, 1                     ; 2 uses
  %i.bj = mul i32 %.09.i52, 7
  %i.bk = shl i32 %i.bh, %i.bj
  %i.bl = or i32 %i.bk, %.068.i53                 ; 2 uses
  %i.bm = load i8, ptr %i.bg, align 1, !tbaa !88  ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %.not.i54 = icmp sgt i8 %i.bm, -1
  br i1 %.not.i54, label %._crit_edge.loopexit.i55, label %.lr.ph.i51, !llvm.loop !1

._crit_edge.loopexit.i55:                         ; preds = %.lr.ph.i51
  %i.bo = mul i32 %i.bi, 7
  br label %Gia_AigerReadUnsigned.exit59

Gia_AigerReadUnsigned.exit59:                     ; preds = %bb.c, %._crit_edge.loopexit.i55
  %.06.lcssa.i56 = phi i32 [ 0, %bb.c ], [ %i.bl, %._crit_edge.loopexit.i55 ]
  %.0.lcssa.i57 = phi i32 [ 0, %bb.c ], [ %i.bo, %._crit_edge.loopexit.i55 ]
  %.lcssa.i58 = phi i32 [ %i.be, %bb.c ], [ %i.bn, %._crit_edge.loopexit.i55 ]
  %i.bp = shl i32 %.lcssa.i58, %.0.lcssa.i57
  %i.bq = or i32 %i.bp, %.06.lcssa.i56
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %Gia_AigerReadUnsigned.exit59
  %i.br = phi i32 [ %i.bq, %Gia_AigerReadUnsigned.exit59 ], [ -1, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !83
  %i.bt = icmp ne i32 %5, 0                       ; 2 uses
  %i.bu = icmp ne i32 %i.b, 0
  %or.cond = and i1 %i.bt, %i.bu
  br i1 %or.cond, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.bv = add nsw i32 %i.b, -1
  %.val35 = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !86 ; 2 uses
  %.not34 = icmp eq ptr %i.by, null
  br i1 %.not34, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !112 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !113 ; 7 uses
  %i.cd = load i32, ptr %i.ca, align 8, !tbaa !114
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.cf = icmp slt i32 %i.cc, 16
  br i1 %i.cf, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !85 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ch, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ch, i64 noundef 128) #35
  br label %Vec_PtrGrow.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cj = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.j, %bb.i
  %i.ck = phi ptr [ %i.ci, %bb.i ], [ %i.cj, %bb.j ]
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !85
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.cl = icmp samesign ult i32 %i.cc, 1073741823
  %i.cm = shl nuw nsw i32 %i.cc, 1
  %spec.select.i = select i1 %i.cl, i32 %i.cm, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.cc, %spec.select.i
  br i1 %.not.i10.i, label %bb.l, label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !85 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.co, null
  %i.cp = zext nneg i32 %spec.select.i to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = tail call ptr @realloc(ptr noundef nonnull %i.co, i64 noundef %i.cq) #35
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cq) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %bb.n ]
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !85
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.o, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.o ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ca, align 8, !tbaa !114
  %.pre = load i32, ptr %i.cb, align 4, !tbaa !113
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.f, %bb.k, %Vec_PtrGrow.exit12.sink.split.i
  %i.cu = phi i32 [ %i.cc, %bb.f ], [ %i.cc, %bb.k ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !85
  %i.cx = add nsw i32 %i.cu, 1
  store i32 %i.cx, ptr %i.cb, align 4, !tbaa !113
  %i.cy = sext i32 %i.cu to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cy
  store ptr %i.by, ptr %i.cz, align 8, !tbaa !86
  %.val37 = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %i.bw
  store ptr null, ptr %i.da, align 8, !tbaa !86
  br label %.thread

bb.p:                                             ; preds = %bb.d
  br i1 %i.bt, label %.thread, label %.Lf_CutGetSign.exit_crit_edge

.Lf_CutGetSign.exit_crit_edge:                    ; preds = %bb.p
  %.pre91 = load i32, ptr %i.ab, align 4
  br label %Lf_CutGetSign.exit

.thread:                                          ; preds = %bb.e, %Vec_PtrPush.exit, %bb.p
  %i.db = load i32, ptr %i.ab, align 4            ; 5 uses
  %i.dc = lshr i32 %i.db, 24                      ; 2 uses
  %.not.i60 = icmp eq i32 %i.dc, 0
  br i1 %.not.i60, label %Lf_CutGetSign.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.dc to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.db, 67108864
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i61
  %n.vec = and i64 %wide.trip.count.i, 252        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi120 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %wide.load = load <2 x i32>, ptr %i.de, align 4, !tbaa !57
  %wide.load121 = load <2 x i32>, ptr %i.df, align 4, !tbaa !57
  %i.dg = and <2 x i32> %wide.load, splat (i32 63)
  %i.dh = and <2 x i32> %wide.load121, splat (i32 63)
  %i.di = zext nneg <2 x i32> %i.dg to <2 x i64>
  %i.dj = zext nneg <2 x i32> %i.dh to <2 x i64>
  %i.dk = shl nuw <2 x i64> splat (i64 1), %i.di
  %i.dl = shl nuw <2 x i64> splat (i64 1), %i.dj
  %i.dm = or <2 x i64> %i.dk, %vec.phi            ; 2 uses
  %i.dn = or <2 x i64> %i.dl, %vec.phi120         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.dn, %i.dm
  %i.dp = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Lf_CutGetSign.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i61, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i61 ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.i61 ], [ %i.dp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.067.i = phi i64 [ %i.dv, %scalar.ph ], [ %.067.i.ph, %scalar.ph.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !57
  %i.ds = and i32 %i.dr, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = or i64 %i.du, %.067.i                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Lf_CutGetSign.exit, label %scalar.ph, !llvm.loop !211

Lf_CutGetSign.exit:                               ; preds = %scalar.ph, %middle.block, %.Lf_CutGetSign.exit_crit_edge, %.thread
  %i.dw = phi i32 [ %.pre91, %.Lf_CutGetSign.exit_crit_edge ], [ %i.db, %.thread ], [ %i.db, %middle.block ], [ %i.db, %scalar.ph ]
  %i.dx = phi i64 [ 0, %.Lf_CutGetSign.exit_crit_edge ], [ 0, %.thread ], [ %i.dp, %middle.block ], [ %i.dv, %scalar.ph ]
  store i64 %i.dx, ptr %3, align 8, !tbaa !89
  %i.dy = and i32 %i.dw, -8388609
  store i32 %i.dy, ptr %i.ab, align 4
  ret ptr %3
}

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Lf_CutParams(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((8, 16)) %1, i32 noundef %2, float noundef %3) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = and i32 %i.b, -4194305                   ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !80
  %i.f = lshr i32 %i.b, 24                        ; 2 uses
  %.not4 = icmp eq i32 %i.f, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr i8, ptr %0, i64 176
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.k = icmp ne i32 %2, 1000000000
  %i.l = getelementptr i8, ptr %0, i64 272
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Lf_ObjArrival_rec.exit
  %i.m = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ca, %Lf_ObjArrival_rec.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Lf_ObjArrival_rec.exit ] ; 2 uses
  %i.n = phi i32 [ 0, %.lr.ph ], [ %i.cb, %Lf_ObjArrival_rec.exit ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !57
  %.val = load ptr, ptr %i.h, align 8, !tbaa !56  ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !57   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !38
  %i.v = getelementptr i8, ptr %i.u, i64 32
  %.val60 = load ptr, ptr %i.v, align 8, !tbaa !54 ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %.val60, i64 %i.q ; 3 uses
  %.val23.i = load i64, ptr %i.w, align 4         ; 5 uses
  %i.x = trunc i64 %.val23.i to i32
  %i.y = and i32 %i.x, 536870911                  ; 2 uses
  %i.z = lshr i64 %.val23.i, 32                   ; 2 uses
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 536870911
  %i.ac = icmp eq i32 %i.y, %i.ab
  %.not.i24.i = icmp ne i32 %i.y, 536870911
  %or.cond.not.i25.i = and i1 %.not.i24.i, %i.ac
  %i.ad = and i64 %.val23.i, 2147483648
  %.not4.i26.i = icmp eq i64 %i.ad, 0             ; 2 uses
  %narrow.i27.i = and i1 %.not4.i26.i, %or.cond.not.i25.i
  br i1 %narrow.i27.i, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %bb.c, %tailrecurse.i
  %.val29.i = phi i64 [ %.val.i, %tailrecurse.i ], [ %.val23.i, %bb.c ]
  %.tr2228.i = phi ptr [ %i.ag, %tailrecurse.i ], [ %i.w, %bb.c ]
  %i.ae = and i64 %.val29.i, 536870911
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [12 x i8], ptr %.tr2228.i, i64 %i.af ; 3 uses
  %.val.i = load i64, ptr %i.ag, align 4          ; 5 uses
  %i.ah = trunc i64 %.val.i to i32
  %i.ai = and i32 %i.ah, 536870911                ; 2 uses
  %i.aj = lshr i64 %.val.i, 32                    ; 2 uses
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = and i32 %i.ak, 536870911
  %i.am = icmp eq i32 %i.ai, %i.al
  %.not.i.i = icmp ne i32 %i.ai, 536870911
  %or.cond.not.i.i = and i1 %.not.i.i, %i.am
  %i.an = and i64 %.val.i, 2147483648
  %.not4.i.i = icmp eq i64 %i.an, 0               ; 2 uses
  %narrow.i.i = and i1 %.not4.i.i, %or.cond.not.i.i
  br i1 %narrow.i.i, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %tailrecurse.i, %bb.c
  %.tr22.lcssa.i = phi ptr [ %i.w, %bb.c ], [ %i.ag, %tailrecurse.i ]
  %.val.lcssa.i = phi i64 [ %.val23.i, %bb.c ], [ %.val.i, %tailrecurse.i ] ; 2 uses
  %.lcssa.i = phi i64 [ %i.z, %bb.c ], [ %i.aj, %tailrecurse.i ]
  %.not4.i.lcssa.i = phi i1 [ %.not4.i26.i, %bb.c ], [ %.not4.i.i, %tailrecurse.i ]
  %i.ao = and i64 %.val.lcssa.i, 536870911
  %i.ap = icmp ne i64 %i.ao, 536870911
  %narrow.i20.i = and i1 %.not4.i.lcssa.i, %i.ap
  br i1 %narrow.i20.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %tailrecurse._crit_edge.i
  %i.aq = ptrtoint ptr %.tr22.lcssa.i to i64
  %i.ar = ptrtoint ptr %.val60 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 12
  %.val14.i = load ptr, ptr %i.i, align 8, !tbaa !55
  %sext.i = shl i64 %i.at, 32
  %i.au = ashr exact i64 %sext.i, 30
  %i.av = getelementptr inbounds i8, ptr %.val, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !57
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [32 x i8], ptr %.val14.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !57
  br label %Lf_ObjArrival_rec.exit

bb.e:                                             ; preds = %tailrecurse._crit_edge.i
  %i.ba = and i64 %.val.lcssa.i, 2684354559
  %narrow.i21.not.i = icmp eq i64 %i.ba, 2684354559
  br i1 %narrow.i21.not.i, label %bb.f, label %Lf_ObjArrival_rec.exit

bb.f:                                             ; preds = %bb.e
  %.val18.i = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.bb = and i64 %.lcssa.i, 536870911
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !57
  br label %Lf_ObjArrival_rec.exit

bb.g:                                             ; preds = %bb.b
  %.val58 = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.be = zext nneg i32 %i.s to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %.val58, i64 %i.be ; 4 uses
  %i.bg = load i32, ptr %i.j, align 4, !tbaa !96
  %.not56 = icmp eq i32 %i.bg, 0
  br i1 %.not56, label %bb.i, label %bb.h
end_hunk_0
