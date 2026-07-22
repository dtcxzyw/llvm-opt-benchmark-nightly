inline.NumInlined: 112
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_handle_chunk:bb.a
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  br label %bb.ab

bb.h:                                             ; preds = %bb.a
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  br label %bb.ab

bb.l:                                             ; preds = %bb.a
  br label %bb.ab

bb.m:                                             ; preds = %bb.a
  br label %bb.ab

bb.n:                                             ; preds = %bb.a
  br label %bb.ab

bb.o:                                             ; preds = %bb.a
  br label %bb.ab

bb.p:                                             ; preds = %bb.a
  br label %bb.ab

bb.q:                                             ; preds = %bb.a
  br label %bb.ab

bb.r:                                             ; preds = %bb.a
  br label %bb.ab

bb.s:                                             ; preds = %bb.a
  br label %bb.ab

bb.t:                                             ; preds = %bb.a
  br label %bb.ab

bb.u:                                             ; preds = %bb.a
  br label %bb.ab

bb.v:                                             ; preds = %bb.a
  br label %bb.ab

bb.w:                                             ; preds = %bb.a
  br label %bb.ab

bb.x:                                             ; preds = %bb.a
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  br label %bb.ab

bb.z:                                             ; preds = %bb.a
  br label %bb.ab

bb.aa:                                            ; preds = %bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i.ph = phi i32 [ 27, %bb.aa ], [ 26, %bb.z ], [ 25, %bb.y ], [ 24, %bb.x ], [ 23, %bb.w ], [ 22, %bb.v ], [ 21, %bb.u ], [ 20, %bb.t ], [ 19, %bb.s ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %i.c = zext nneg i32 %.0.i.ph to i64            ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.c                  ; 2 uses
  %i.e = and i64 %i.d, 3092
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.ac, label %png_chunk_index_from_name.exit

png_chunk_index_from_name.exit:                   ; preds = %bb.a, %bb.ab
  %.0.i59 = phi i32 [ %.0.i.ph, %bb.ab ], [ 28, %bb.a ]
  %i.f = tail call i32 @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0)
  br label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @read_chunks, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %i.j = and i32 %i.i, 1
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.ad, label %.thread64

bb.ad:                                            ; preds = %bb.ac
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #12
  unreachable

.thread64:                                        ; preds = %..thread64_crit_edge, %bb.ac
  %i.l = phi i32 [ %i.i, %bb.ac ], [ %.pre, %..thread64_crit_edge ] ; 2 uses
  %.0.i.ph6367 = phi i32 [ %.0.i.ph, %bb.ac ], [ 0, %..thread64_crit_edge ] ; 2 uses
  %i.m = phi ptr [ %i.g, %bb.ac ], [ @read_chunks, %..thread64_crit_edge ] ; 2 uses
  %i.n = phi i64 [ %i.d, %bb.ac ], [ 1, %..thread64_crit_edge ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i32, ptr %i.o, align 8              ; 4 uses
  %i.q = lshr i32 %i.p, 20
  %i.r = and i32 %i.l, 15
  %i.s = and i32 %i.r, %i.q
  %.not49 = icmp eq i32 %i.s, 0
  br i1 %.not49, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %.thread64
  %i.t = lshr i32 %i.p, 24
  %i.u = and i32 %i.t, 15                         ; 2 uses
  %i.v = and i32 %i.u, %i.l
  %.not50 = icmp eq i32 %i.v, %i.u
  br i1 %.not50, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.w = and i64 %i.n, 113210345
  %.not51 = icmp eq i64 %i.w, 0
  br i1 %.not51, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51
  %i.z = shl nuw nsw i32 1, %.0.i.ph6367
  %i.aa = and i32 %i.y, %i.z
  %.not52 = icmp eq i32 %i.aa, 0
  br i1 %.not52, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ab = lshr i32 %i.p, 12
  %i.ac = and i32 %i.ab, 255
  %i.ad = icmp ult i32 %2, %i.ac
  br i1 %i.ad, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ae = and i32 %i.p, 4095                      ; 2 uses
  switch i32 %i.ae, label %bb.ak [
    i32 2050, label %bb.aj
    i32 2049, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.af = zext i32 %2 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !48
  %.not53 = icmp ult i64 %i.ah, %i.af
  br i1 %.not53, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.not54 = icmp ugt i32 %2, %i.ae
  br i1 %.not54, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %i.ai = load ptr, ptr %i.m, align 16, !tbaa !52
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #13
  br label %bb.ap

bb.am:                                            ; preds = %bb.ah, %.thread64, %bb.ag, %bb.ae, %bb.aj, %bb.ak
  %.144.ph = phi ptr [ @.str.16, %bb.ak ], [ @.str.15, %bb.aj ], [ @.str.12, %bb.ae ], [ @.str.13, %bb.ag ], [ @.str.12, %.thread64 ], [ @.str.14, %bb.ah ] ; 2 uses
  %i.ak = and i32 %i.b, 536870912
  %.not56 = icmp eq i32 %i.ak, 0
  br i1 %.not56, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @png_chunk_error(ptr noundef nonnull %0, ptr noundef nonnull %.144.ph) #12
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.al = tail call fastcc range(i32 0, 2) i32 @png_crc_finish_critical(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 0) ; 0 uses
  tail call void @png_chunk_benign_error(ptr noundef nonnull %0, ptr noundef nonnull %.144.ph) #13
  br label %bb.ar

bb.ap:                                            ; preds = %png_chunk_index_from_name.exit, %bb.al
  %.0.i58 = phi i32 [ %.0.i59, %png_chunk_index_from_name.exit ], [ %.0.i.ph6367, %bb.al ] ; 2 uses
  %.1 = phi i32 [ %i.f, %png_chunk_index_from_name.exit ], [ %i.aj, %bb.al ] ; 3 uses
  %i.am = icmp ugt i32 %.1, 1
  %i.an = icmp ne i32 %.0.i58, 28
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ao = shl nuw nsw i32 1, %.0.i58
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !51
  %i.ar = or i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !51
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.ao
  %.174 = phi i32 [ %.1, %bb.ap ], [ %.1, %bb.aq ], [ 0, %bb.ao ]
  ret i32 %.174
}

; Function Attrs: nounwind uwtable
define void @png_combine_row(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 631
  %i.b = load i8, ptr %i.a, align 1, !tbaa !54    ; 12 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %4 = ptrtoaddr ptr %i.e to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56   ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.k = load i8, ptr %i.j, align 1, !tbaa !57    ; 4 uses
  %i.l = zext i8 %i.k to i32                      ; 7 uses
  %i.m = icmp eq i8 %i.b, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ugt i8 %i.b, 7
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = lshr i8 %i.b, 3
  %i.r = zext nneg i8 %i.q to i64
  %i.s = mul nuw nsw i64 %i.i, %i.r
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %i.b to i64
  %i.u = mul nuw nsw i64 %i.i, %i.t
  %i.v = add nuw nsw i64 %i.u, 7
  %i.w = lshr i64 %i.v, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i64 [ %i.s, %bb.e ], [ %i.w, %bb.f ]
  %.not284 = icmp eq i64 %i.o, %i.x
  br i1 %.not284, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.18) #12
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.c
  %i.y = icmp eq i32 %i.h, 0
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #12
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.z = zext i8 %i.b to i64                      ; 3 uses
  %i.aa = mul nuw nsw i64 %i.i, %i.z              ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 7                        ; 3 uses
  %.not285 = icmp eq i32 %i.ac, 0
  br i1 %.not285, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp ugt i8 %i.b, 7
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = lshr i64 %i.z, 3
  %i.af = mul nuw nsw i64 %i.ae, %i.i
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ag = add nuw nsw i64 %i.aa, 7
  %i.ah = lshr i64 %i.ag, 3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = phi i64 [ %i.af, %bb.m ], [ %i.ah, %bb.n ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !7   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.an = load i32, ptr %i.am, align 4, !tbaa !59
  %i.ao = and i32 %i.an, 65536
  %.not286 = icmp eq i32 %i.ao, 0
  br i1 %.not286, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = shl nuw nsw i32 255, %i.ac
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aq = lshr i32 255, %i.ac
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.k
  %.0265 = phi i8 [ %i.al, %bb.p ], [ %i.al, %bb.q ], [ 0, %bb.k ]
  %.0264 = phi i32 [ %i.ap, %bb.p ], [ %i.aq, %bb.q ], [ 0, %bb.k ] ; 2 uses
  %.0260 = phi ptr [ %i.ak, %bb.p ], [ %i.ak, %bb.q ], [ null, %bb.k ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !60
  %.not287 = icmp eq i8 %i.as, 0
  br i1 %.not287, label %bb.bd, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.au = load i32, ptr %i.at, align 4, !tbaa !59 ; 2 uses
  %i.av = and i32 %i.au, 2
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = icmp ult i8 %i.k, 6
  %or.cond = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond, label %bb.t, label %bb.bd

bb.t:                                             ; preds = %bb.s
  switch i32 %2, label %bb.bd [
    i32 0, label %._crit_edge
    i32 1, label %bb.u
  ]

._crit_edge:                                      ; preds = %bb.t
  %.pre = and i32 %i.l, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = and i32 %i.l, 1
  %.not288 = icmp eq i32 %i.ay, 0
  br i1 %.not288, label %bb.bd, label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.u
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ 1, %bb.u ]
  %i.az = add nuw nsw i32 %i.l, 1
  %i.ba = lshr i32 %i.az, 1
  %i.bb = sub nuw nsw i32 3, %i.ba
  %i.bc = shl nuw nsw i32 %.pre-phi, %i.bb
  %i.bd = and i32 %i.bc, 7                        ; 2 uses
  %.not289 = icmp ugt i32 %i.h, %i.bd
  br i1 %.not289, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.be = icmp ult i8 %i.b, 8
  br i1 %i.be, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.bf = udiv i8 8, %i.b
  %i.bg = and i32 %i.au, 65536
  %.not304 = icmp eq i32 %i.bg, 0
  %.not305 = icmp eq i32 %2, 0                    ; 2 uses
  %i.bh = icmp eq i8 %i.b, 1
  %i.bi = icmp eq i8 %i.b, 2
  %i.bj = select i1 %i.bi, i64 1, i64 2
  %i.bk = select i1 %i.bh, i64 0, i64 %i.bj       ; 4 uses
  br i1 %.not304, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not305, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr @png_combine_row.display_mask, i64 %i.bk
  %i.bm = lshr i32 %i.l, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr @png_combine_row.row_mask, i64 %i.bk
  %i.bq = zext nneg i8 %i.k to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  br label %bb.ae

bb.ab:                                            ; preds = %bb.x
  br i1 %.not305, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr getelementptr inbounds nuw (i8, ptr @png_combine_row.display_mask, i64 36), i64 %i.bk
  %i.bt = lshr i32 %i.l, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bu
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @png_combine_row.row_mask, i64 72), i64 %i.bk
  %i.bx = zext nneg i8 %i.k to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.z, %bb.aa
  %.0258.in = phi ptr [ %i.br, %bb.aa ], [ %i.bo, %bb.z ], [ %i.bv, %bb.ac ], [ %i.by, %bb.ad ]
  %.0258 = load i32, ptr %.0258.in, align 4, !tbaa !3
  %i.bz = zext nneg i8 %i.bf to i64               ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %bb.ae
  %.1259 = phi i32 [ %.0258, %bb.ae ], [ %i.ca, %bb.aj ] ; 5 uses
  %.0247 = phi i64 [ %i.i, %bb.ae ], [ %i.cl, %bb.aj ] ; 2 uses
  %.0239 = phi ptr [ %i.f, %bb.ae ], [ %i.cn, %bb.aj ] ; 3 uses
  %.0225 = phi ptr [ %1, %bb.ae ], [ %i.cm, %bb.aj ] ; 3 uses
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %.1259, i32 %.1259, i32 24)
  %trunc = trunc i32 %.1259 to i8
  switch i8 %trunc, label %bb.ag [
    i8 0, label %bb.ai
    i8 -1, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cb = load i8, ptr %.0225, align 1, !tbaa !7
  %i.cc = zext i8 %i.cb to i32
  %i.cd = xor i32 %.1259, -1
  %i.ce = and i32 %i.cc, %i.cd
  %i.cf = load i8, ptr %.0239, align 1, !tbaa !7
  %i.cg = zext i8 %i.cf to i32
  %i.ch = and i32 %.1259, %i.cg
  %i.ci = or i32 %i.ch, %i.ce
  %i.cj = trunc nuw i32 %i.ci to i8
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.ck = load i8, ptr %.0239, align 1, !tbaa !7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.ag
  %.sink = phi i8 [ %i.cj, %bb.ag ], [ %i.ck, %bb.ah ]
  store i8 %.sink, ptr %.0225, align 1, !tbaa !7
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.af
  %.not310 = icmp ugt i64 %.0247, %i.bz
  br i1 %.not310, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.cl = sub nuw nsw i64 %.0247, %i.bz
  %i.cm = getelementptr inbounds nuw i8, ptr %.0225, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.0239, i64 1
  br label %bb.af

bb.ak:                                            ; preds = %bb.w
  %i.co = and i32 %i.c, 7
  %.not290 = icmp eq i32 %i.co, 0
  br i1 %.not290, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #12
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cp = lshr exact i32 %i.c, 3                  ; 5 uses
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = mul nuw nsw i64 %i.i, %i.cq
  %i.cs = mul nuw nsw i32 %i.bd, %i.cp
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %i.cu = sub nsw i64 %i.cr, %i.ct                ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.ct ; 12 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ct ; 12 uses
  %.not291 = icmp eq i32 %2, 0
  br i1 %.not291, label %select.unfold, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = sub nuw nsw i32 6, %i.l
  %i.cy = lshr i32 %i.cx, 1
  %i.cz = shl nuw nsw i32 %i.cp, %i.cy
  %i.da = zext nneg i32 %i.cz to i64
  %spec.select323 = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.da)
  %spec.select = trunc nuw nsw i64 %spec.select323 to i32
  br label %select.unfold

select.unfold:                                    ; preds = %bb.an, %bb.am
  %.0255 = phi i32 [ %i.cp, %bb.am ], [ %spec.select, %bb.an ] ; 5 uses
  %i.db = sub nuw nsw i32 7, %i.l
  %i.dc = lshr i32 %i.db, 1
  %i.dd = shl nuw nsw i32 %i.cp, %i.dc            ; 6 uses
  switch i32 %.0255, label %bb.ar [
    i32 1, label %.preheader330
    i32 2, label %.preheader332
    i32 3, label %.preheader334
  ]

.preheader334:                                    ; preds = %select.unfold
  %i.de = zext nneg i32 %i.dd to i64              ; 5 uses
  %i.df = load i8, ptr %i.cw, align 1, !tbaa !7
  store i8 %i.df, ptr %i.cv, align 1, !tbaa !7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !7
  %.not292347 = icmp ugt i64 %i.cu, %i.de
  br i1 %.not292347, label %.lr.ph, label %.loopexit

.preheader332:                                    ; preds = %select.unfold
  %i.dm = zext nneg i32 %i.dd to i64              ; 4 uses
  br label %bb.ao

.preheader330:                                    ; preds = %select.unfold
  %i.dn = zext nneg i32 %i.dd to i64              ; 5 uses
  %i.do = load i8, ptr %i.cw, align 1, !tbaa !7
  store i8 %i.do, ptr %i.cv, align 1, !tbaa !7
  %.not294351 = icmp ugt i64 %i.cu, %i.dn
  br i1 %.not294351, label %.lr.ph355, label %.loopexit

.lr.ph355:                                        ; preds = %.preheader330, %.lr.ph355
  %.2354 = phi ptr [ %i.dp, %.lr.ph355 ], [ %i.cv, %.preheader330 ]
  %.2241353 = phi ptr [ %i.dq, %.lr.ph355 ], [ %i.cw, %.preheader330 ]
  %.2249352 = phi i64 [ %i.dr, %.lr.ph355 ], [ %i.cu, %.preheader330 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.2354, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.2241353, i64 %i.dn ; 2 uses
  %i.dr = sub nuw i64 %.2249352, %i.dn            ; 2 uses
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !7
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !7
  %.not294 = icmp ugt i64 %i.dr, %i.dn
  br i1 %.not294, label %.lr.ph355, label %.loopexit

bb.ao:                                            ; preds = %.preheader332, %bb.ap
  %.3250 = phi i64 [ %i.dz, %bb.ap ], [ %i.cu, %.preheader332 ] ; 2 uses
  %.3242 = phi ptr [ %i.dx, %bb.ap ], [ %i.cw, %.preheader332 ] ; 3 uses
  %.3 = phi ptr [ %i.dy, %bb.ap ], [ %i.cv, %.preheader332 ] ; 3 uses
  %i.dt = load i8, ptr %.3242, align 1, !tbaa !7
  store i8 %i.dt, ptr %.3, align 1, !tbaa !7
  %i.du = getelementptr inbounds nuw i8, ptr %.3242, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !7
  %i.dw = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !7
  %.not293 = icmp ugt i64 %.3250, %i.dm
  br i1 %.not293, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.dx = getelementptr inbounds nuw i8, ptr %.3242, i64 %i.dm ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.3, i64 %i.dm ; 2 uses
  %i.dz = sub nuw i64 %.3250, %i.dm               ; 2 uses
  %i.ea = icmp ugt i64 %i.dz, 1
  br i1 %i.ea, label %bb.ao, label %bb.aq, !llvm.loop !61

bb.aq:                                            ; preds = %bb.ap
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !7
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !7
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader334, %.lr.ph
  %.4350 = phi ptr [ %i.ed, %.lr.ph ], [ %i.cv, %.preheader334 ]
  %.4243349 = phi ptr [ %i.ec, %.lr.ph ], [ %i.cw, %.preheader334 ]
  %.4251348 = phi i64 [ %i.ee, %.lr.ph ], [ %i.cu, %.preheader334 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.4243349, i64 %i.de ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.4350, i64 %i.de ; 4 uses
  %i.ee = sub nuw i64 %.4251348, %i.de            ; 2 uses
  %i.ef = load i8, ptr %i.ec, align 1, !tbaa !7
  store i8 %i.ef, ptr %i.ed, align 1, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !7
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !7
  %.not292 = icmp ugt i64 %i.ee, %i.de
  br i1 %.not292, label %.lr.ph, label %.loopexit

bb.ar:                                            ; preds = %select.unfold
  %i.em = icmp samesign ult i32 %.0255, 16
  br i1 %i.em, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.en = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.eq = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.er = and i64 %i.eq, 1
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.et = zext nneg i32 %.0255 to i64             ; 11 uses
  %i.eu = and i64 %i.et, 1
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.ew = zext nneg i32 %i.dd to i64              ; 6 uses
  %i.ex = and i64 %i.ew, 1
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.ez = or i64 %i.eq, %i.ew
  %i.fa = or i64 %i.ez, %i.en
  %i.fb = or i64 %i.fa, %i.et
  %i.fc = and i64 %i.fb, 2
  %or.cond317 = icmp eq i64 %i.fc, 0
  %i.fd = sub nsw i32 %i.dd, %.0255               ; 2 uses
  br i1 %or.cond317, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.fe = lshr i32 %i.fd, 2
  %i.ff = zext nneg i32 %i.fe to i64              ; 2 uses
  %i.fg = add nsw i64 %i.et, -4                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 2
  %5 = add nuw nsw i64 %i.fh, 1                   ; 2 uses
  %min.iters.check496 = icmp ult i64 %i.fg, 28
  %6 = sub i64 %3, %4
  %i.fi = add i64 %6, -2
  %min.iters.check498 = icmp ult i64 %i.fi, 31
  %n.vec501 = and i64 %5, 9223372036854775800     ; 4 uses
  %i.fj = shl i64 %n.vec501, 2                    ; 2 uses
  %i.fk = mul i64 %n.vec501, -4
  %i.fl = or disjoint i64 %i.fk, %i.et
  %cmp.n510 = icmp eq i64 %5, %n.vec501
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.5252 = phi i64 [ %i.cu, %bb.ax ], [ %i.gz, %bb.az ] ; 2 uses
  %.0236 = phi ptr [ %i.cv, %bb.ax ], [ %i.hb, %bb.az ] ; 3 uses
  %.0233 = phi ptr [ %i.cw, %bb.ax ], [ %i.ha, %bb.az ] ; 3 uses
  %or.cond557 = select i1 %min.iters.check496, i1 true, i1 %min.iters.check498
  br i1 %or.cond557, label %scalar.ph.preheader, label %vector.ph499

vector.ph499:                                     ; preds = %bb.ay
  %i.fm = getelementptr i8, ptr %.0236, i64 %i.fj ; 2 uses
  %i.fn = getelementptr i8, ptr %.0233, i64 %i.fj ; 2 uses
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph499
  %index503 = phi i64 [ 0, %vector.ph499 ], [ %index.next508, %vector.body502 ] ; 2 uses
  %i.fo = shl i64 %index503, 2                    ; 2 uses
  %next.gep504 = getelementptr i8, ptr %.0236, i64 %i.fo ; 2 uses
  %next.gep505 = getelementptr i8, ptr %.0233, i64 %i.fo ; 2 uses
  %i.fp = getelementptr i8, ptr %next.gep505, i64 16
  %wide.load506 = load <4 x i32>, ptr %next.gep505, align 4, !tbaa !3
  %wide.load507 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !3
  %i.fq = getelementptr i8, ptr %next.gep504, i64 16
  store <4 x i32> %wide.load506, ptr %next.gep504, align 4, !tbaa !3
  store <4 x i32> %wide.load507, ptr %i.fq, align 4, !tbaa !3
  %index.next508 = add nuw i64 %index503, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next508, %n.vec501
  br i1 %i.fr, label %middle.block509, label %vector.body502, !llvm.loop !62

middle.block509:                                  ; preds = %vector.body502
  br i1 %cmp.n510, label %.loopexit555, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ay, %middle.block509
  %.1237.ph = phi ptr [ %i.fm, %middle.block509 ], [ %.0236, %bb.ay ] ; 2 uses
  %.1234.ph = phi ptr [ %i.fn, %middle.block509 ], [ %.0233, %bb.ay ] ; 2 uses
  %.0232.ph = phi i64 [ %i.fl, %middle.block509 ], [ %i.et, %bb.ay ] ; 3 uses
  %i.fs = add i64 %.0232.ph, -4                   ; 2 uses
  %i.ft = lshr i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1
  %xtraiter587 = and i64 %i.fu, 7                 ; 2 uses
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod588.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.1237.prol = phi ptr [ %i.fx, %scalar.ph.prol ], [ %.1237.ph, %scalar.ph.preheader ] ; 2 uses
  %.1234.prol = phi ptr [ %i.fv, %scalar.ph.prol ], [ %.1234.ph, %scalar.ph.preheader ] ; 2 uses
  %.0232.prol = phi i64 [ %i.fy, %scalar.ph.prol ], [ %.0232.ph, %scalar.ph.preheader ]
  %prol.iter589 = phi i64 [ %prol.iter589.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.1234.prol, i64 4 ; 3 uses
  %i.fw = load i32, ptr %.1234.prol, align 4, !tbaa !3
  %i.fx = getelementptr inbounds nuw i8, ptr %.1237.prol, i64 4 ; 3 uses
  store i32 %i.fw, ptr %.1237.prol, align 4, !tbaa !3
  %i.fy = add i64 %.0232.prol, -4                 ; 2 uses
  %prol.iter589.next = add i64 %prol.iter589, 1   ; 2 uses
  %prol.iter589.cmp.not = icmp eq i64 %prol.iter589.next, %xtraiter587
  br i1 %prol.iter589.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa563.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.fv, %scalar.ph.prol ]
  %.lcssa562.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.fx, %scalar.ph.prol ]
  %.1237.unr = phi ptr [ %.1237.ph, %scalar.ph.preheader ], [ %i.fx, %scalar.ph.prol ]
  %.1234.unr = phi ptr [ %.1234.ph, %scalar.ph.preheader ], [ %i.fv, %scalar.ph.prol ]
  %.0232.unr = phi i64 [ %.0232.ph, %scalar.ph.preheader ], [ %i.fy, %scalar.ph.prol ]
  %i.fz = icmp ult i64 %i.fs, 28
  br i1 %i.fz, label %.loopexit555, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.1237 = phi ptr [ %i.gx, %scalar.ph ], [ %.1237.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.1234 = phi ptr [ %i.gv, %scalar.ph ], [ %.1234.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.0232 = phi i64 [ %i.gy, %scalar.ph ], [ %.0232.unr, %scalar.ph.prol.loopexit ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.1234, i64 4
  %i.gb = load i32, ptr %.1234, align 4, !tbaa !3
  %i.gc = getelementptr inbounds nuw i8, ptr %.1237, i64 4
  store i32 %i.gb, ptr %.1237, align 4, !tbaa !3
  %i.gd = getelementptr inbounds nuw i8, ptr %.1234, i64 8
  %i.ge = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gf = getelementptr inbounds nuw i8, ptr %.1237, i64 8
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !3
  %i.gg = getelementptr inbounds nuw i8, ptr %.1234, i64 12
  %i.gh = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gi = getelementptr inbounds nuw i8, ptr %.1237, i64 12
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !3
  %i.gj = getelementptr inbounds nuw i8, ptr %.1234, i64 16
  %i.gk = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gl = getelementptr inbounds nuw i8, ptr %.1237, i64 16
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !3
  %i.gm = getelementptr inbounds nuw i8, ptr %.1234, i64 20
  %i.gn = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.go = getelementptr inbounds nuw i8, ptr %.1237, i64 20
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !3
  %i.gp = getelementptr inbounds nuw i8, ptr %.1234, i64 24
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.gr = getelementptr inbounds nuw i8, ptr %.1237, i64 24
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %.1234, i64 28
  %i.gt = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gu = getelementptr inbounds nuw i8, ptr %.1237, i64 28
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !3
  %i.gv = getelementptr inbounds nuw i8, ptr %.1234, i64 32 ; 2 uses
  %i.gw = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gx = getelementptr inbounds nuw i8, ptr %.1237, i64 32 ; 2 uses
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !3
  %i.gy = add i64 %.0232, -32                     ; 2 uses
  %.not300.7 = icmp eq i64 %i.gy, 0
  br i1 %.not300.7, label %.loopexit555, label %scalar.ph, !llvm.loop !67

.loopexit555:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block509
  %.lcssa425 = phi ptr [ %i.fn, %middle.block509 ], [ %.lcssa563.unr, %scalar.ph.prol.loopexit ], [ %i.gv, %scalar.ph ] ; 2 uses
  %.lcssa = phi ptr [ %i.fm, %middle.block509 ], [ %.lcssa562.unr, %scalar.ph.prol.loopexit ], [ %i.gx, %scalar.ph ] ; 2 uses
  %.not301 = icmp ugt i64 %.5252, %i.ew
  br i1 %.not301, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.loopexit555
  %i.gz = sub nuw i64 %.5252, %i.ew               ; 12 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.lcssa425, i64 %i.ff ; 6 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.ff ; 6 uses
  %.not302 = icmp ult i64 %i.gz, %i.et
  br i1 %.not302, label %iter.check537, label %bb.ay, !llvm.loop !68

iter.check537:                                    ; preds = %bb.az
  %.lcssa425515 = ptrtoaddr ptr %.lcssa425 to i64
  %.lcssa514 = ptrtoaddr ptr %.lcssa to i64
  %min.iters.check518.a = icmp ult i64 %i.gz, 4
  %i.hc = sub i64 %.lcssa425515, %.lcssa514
  %diff.check516 = icmp ugt i64 %i.hc, -32
  %or.cond558 = select i1 %min.iters.check518.a, i1 true, i1 %diff.check516
  br i1 %or.cond558, label %.preheader.preheader, label %vector.main.loop.iter.check519

vector.main.loop.iter.check519:                   ; preds = %iter.check537
  %min.iters.check520 = icmp ult i64 %i.gz, 32
  br i1 %min.iters.check520, label %vec.epilog.ph541, label %vector.ph521

vector.ph521:                                     ; preds = %vector.main.loop.iter.check519
  %n.mod.vf522 = and i64 %i.gz, 28
  %n.vec523 = and i64 %i.gz, -32                  ; 5 uses
  %i.hd = and i64 %i.gz, 31
  %i.he = getelementptr i8, ptr %i.ha, i64 %n.vec523
  %i.hf = getelementptr i8, ptr %i.hb, i64 %n.vec523
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph521
  %index525 = phi i64 [ 0, %vector.ph521 ], [ %index.next530, %vector.body524 ] ; 3 uses
  %next.gep526 = getelementptr i8, ptr %i.ha, i64 %index525 ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.hb, i64 %index525 ; 2 uses
  %i.hg = getelementptr i8, ptr %next.gep526, i64 16
  %wide.load528 = load <16 x i8>, ptr %next.gep526, align 1, !tbaa !7
  %wide.load529 = load <16 x i8>, ptr %i.hg, align 1, !tbaa !7
  %i.hh = getelementptr i8, ptr %next.gep527, i64 16
  store <16 x i8> %wide.load528, ptr %next.gep527, align 1, !tbaa !7
  store <16 x i8> %wide.load529, ptr %i.hh, align 1, !tbaa !7
  %index.next530 = add nuw i64 %index525, 32      ; 2 uses
  %i.hi = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.hi, label %middle.block531, label %vector.body524, !llvm.loop !69

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.gz, %n.vec523
  br i1 %cmp.n532, label %.loopexit, label %vec.epilog.iter.check539

vec.epilog.iter.check539:                         ; preds = %middle.block531
  %min.epilog.iters.check540 = icmp eq i64 %n.mod.vf522, 0
  br i1 %min.epilog.iters.check540, label %.preheader.preheader, label %vec.epilog.ph541, !prof !70

vec.epilog.ph541:                                 ; preds = %vector.main.loop.iter.check519, %vec.epilog.iter.check539
  %vec.epilog.resume.val533 = phi i64 [ %n.vec523, %vec.epilog.iter.check539 ], [ 0, %vector.main.loop.iter.check519 ]
  %n.vec543 = and i64 %i.gz, -4                   ; 4 uses
  %i.hj = and i64 %i.gz, 3
  %i.hk = getelementptr i8, ptr %i.ha, i64 %n.vec543
  %i.hl = getelementptr i8, ptr %i.hb, i64 %n.vec543
  br label %vec.epilog.vector.body544

vec.epilog.vector.body544:                        ; preds = %vec.epilog.vector.body544, %vec.epilog.ph541
  %index545 = phi i64 [ %vec.epilog.resume.val533, %vec.epilog.ph541 ], [ %index.next549, %vec.epilog.vector.body544 ] ; 3 uses
  %next.gep546 = getelementptr i8, ptr %i.ha, i64 %index545
  %next.gep547 = getelementptr i8, ptr %i.hb, i64 %index545
  %wide.load548 = load <4 x i8>, ptr %next.gep546, align 1, !tbaa !7
  store <4 x i8> %wide.load548, ptr %next.gep547, align 1, !tbaa !7
  %index.next549 = add nuw i64 %index545, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next549, %n.vec543
  br i1 %i.hm, label %vec.epilog.middle.block550, label %vec.epilog.vector.body544, !llvm.loop !71

vec.epilog.middle.block550:                       ; preds = %vec.epilog.vector.body544
  %cmp.n551 = icmp eq i64 %i.gz, %n.vec543
  br i1 %cmp.n551, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check537, %vec.epilog.iter.check539, %vec.epilog.middle.block550
  %.7254.ph = phi i64 [ %i.gz, %iter.check537 ], [ %i.hd, %vec.epilog.iter.check539 ], [ %i.hj, %vec.epilog.middle.block550 ] ; 4 uses
  %.5244.ph = phi ptr [ %i.ha, %iter.check537 ], [ %i.he, %vec.epilog.iter.check539 ], [ %i.hk, %vec.epilog.middle.block550 ] ; 2 uses
  %.5.ph = phi ptr [ %i.hb, %iter.check537 ], [ %i.hf, %vec.epilog.iter.check539 ], [ %i.hl, %vec.epilog.middle.block550 ] ; 2 uses
  %i.hn = add i64 %.7254.ph, -1
  %xtraiter590 = and i64 %.7254.ph, 7             ; 2 uses
  %lcmp.mod591.not = icmp eq i64 %xtraiter590, 0
  br i1 %lcmp.mod591.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.7254.prol = phi i64 [ %i.hr, %.preheader.prol ], [ %.7254.ph, %.preheader.preheader ]
  %.5244.prol = phi ptr [ %i.ho, %.preheader.prol ], [ %.5244.ph, %.preheader.preheader ] ; 2 uses
  %.5.prol = phi ptr [ %i.hq, %.preheader.prol ], [ %.5.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter592 = phi i64 [ %prol.iter592.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.5244.prol, i64 1 ; 2 uses
  %i.hp = load i8, ptr %.5244.prol, align 1, !tbaa !7
  %i.hq = getelementptr inbounds nuw i8, ptr %.5.prol, i64 1 ; 2 uses
  store i8 %i.hp, ptr %.5.prol, align 1, !tbaa !7
  %i.hr = add i64 %.7254.prol, -1                 ; 2 uses
  %prol.iter592.next = add i64 %prol.iter592, 1   ; 2 uses
  %prol.iter592.cmp.not = icmp eq i64 %prol.iter592.next, %xtraiter590
  br i1 %prol.iter592.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !72

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.7254.unr = phi i64 [ %.7254.ph, %.preheader.preheader ], [ %i.hr, %.preheader.prol ]
  %.5244.unr = phi ptr [ %.5244.ph, %.preheader.preheader ], [ %i.ho, %.preheader.prol ]
  %.5.unr = phi ptr [ %.5.ph, %.preheader.preheader ], [ %i.hq, %.preheader.prol ]
  %i.hs = icmp ult i64 %i.hn, 7
  br i1 %i.hs, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.7254 = phi i64 [ %i.ir, %.preheader ], [ %.7254.unr, %.preheader.prol.loopexit ]
  %.5244 = phi ptr [ %i.io, %.preheader ], [ %.5244.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.5 = phi ptr [ %i.iq, %.preheader ], [ %.5.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.5244, i64 1
  %i.hu = load i8, ptr %.5244, align 1, !tbaa !7
  %i.hv = getelementptr inbounds nuw i8, ptr %.5, i64 1
  store i8 %i.hu, ptr %.5, align 1, !tbaa !7
  %i.hw = getelementptr inbounds nuw i8, ptr %.5244, i64 2
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !7
  %i.hy = getelementptr inbounds nuw i8, ptr %.5, i64 2
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !7
  %i.hz = getelementptr inbounds nuw i8, ptr %.5244, i64 3
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !7
  %i.ib = getelementptr inbounds nuw i8, ptr %.5, i64 3
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !7
  %i.ic = getelementptr inbounds nuw i8, ptr %.5244, i64 4
  %i.id = load i8, ptr %i.hz, align 1, !tbaa !7
  %i.ie = getelementptr inbounds nuw i8, ptr %.5, i64 4
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !7
  %i.if = getelementptr inbounds nuw i8, ptr %.5244, i64 5
  %i.ig = load i8, ptr %i.ic, align 1, !tbaa !7
  %i.ih = getelementptr inbounds nuw i8, ptr %.5, i64 5
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !7
  %i.ii = getelementptr inbounds nuw i8, ptr %.5244, i64 6
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !7
  %i.ik = getelementptr inbounds nuw i8, ptr %.5, i64 6
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !7
  %i.il = getelementptr inbounds nuw i8, ptr %.5244, i64 7
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !7
  %i.in = getelementptr inbounds nuw i8, ptr %.5, i64 7
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !7
  %i.io = getelementptr inbounds nuw i8, ptr %.5244, i64 8
  %i.ip = load i8, ptr %i.il, align 1, !tbaa !7
  %i.iq = getelementptr inbounds nuw i8, ptr %.5, i64 8
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !7
  %i.ir = add i64 %.7254, -8                      ; 2 uses
  %.not303.7 = icmp eq i64 %i.ir, 0
  br i1 %.not303.7, label %.loopexit, label %.preheader, !llvm.loop !73

bb.ba:                                            ; preds = %bb.aw
  %i.is = lshr i32 %i.fd, 1
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = add nsw i64 %i.et, -2                   ; 3 uses
  %i.iv = lshr exact i64 %i.iu, 1
  %7 = add nuw i64 %i.iv, 1                       ; 5 uses
  %min.iters.check = icmp ult i64 %i.iu, 6
  %8 = sub i64 %3, %4
  %i.iw = add i64 %8, -2
  %min.iters.check.a = icmp ult i64 %i.iw, 31
  %min.iters.check438 = icmp ult i64 %i.iu, 30
  %n.mod.vf = and i64 %7, 12
  %n.vec = and i64 %7, -16                        ; 5 uses
  %i.ix = shl i64 %n.vec, 1                       ; 2 uses
  %i.iy = mul i64 %n.vec, -2
  %i.iz = or disjoint i64 %i.iy, %i.et
  %cmp.n = icmp eq i64 %7, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec444 = and i64 %7, -4                      ; 4 uses
  %i.ja = shl i64 %n.vec444, 1                    ; 2 uses
  %i.jb = shl i64 %n.vec444, 1
  %i.jc = sub i64 %i.et, %i.jb
  %cmp.n450 = icmp eq i64 %7, %n.vec444
  br label %iter.check

iter.check:                                       ; preds = %bb.bb, %bb.ba
  %.8 = phi i64 [ %i.cu, %bb.ba ], [ %i.ku, %bb.bb ] ; 2 uses
  %.0229 = phi ptr [ %i.cv, %bb.ba ], [ %i.kw, %bb.bb ] ; 5 uses
  %.0226 = phi ptr [ %i.cw, %bb.ba ], [ %i.kv, %bb.bb ] ; 5 uses
  %or.cond559 = select i1 %min.iters.check, i1 true, i1 %min.iters.check.a
  br i1 %or.cond559, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check438, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jd = getelementptr i8, ptr %.0229, i64 %i.ix ; 2 uses
  %i.je = getelementptr i8, ptr %.0226, i64 %i.ix ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jf = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0229, i64 %i.jf ; 2 uses
  %next.gep439 = getelementptr i8, ptr %.0226, i64 %i.jf ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep439, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep439, align 2, !tbaa !74
  %wide.load440 = load <8 x i16>, ptr %i.jg, align 2, !tbaa !74
  %i.jh = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !74
  store <8 x i16> %wide.load440, ptr %i.jh, align 2, !tbaa !74
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit556, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.jj = getelementptr i8, ptr %.0229, i64 %i.ja ; 2 uses
  %i.jk = getelementptr i8, ptr %.0226, i64 %i.ja ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index445 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next449, %vec.epilog.vector.body ] ; 2 uses
  %i.jl = shl i64 %index445, 1                    ; 2 uses
  %next.gep446 = getelementptr i8, ptr %.0229, i64 %i.jl
  %next.gep447 = getelementptr i8, ptr %.0226, i64 %i.jl
  %wide.load448 = load <4 x i16>, ptr %next.gep447, align 2, !tbaa !74
  store <4 x i16> %wide.load448, ptr %next.gep446, align 2, !tbaa !74
  %index.next449 = add nuw i64 %index445, 4       ; 2 uses
  %i.jm = icmp eq i64 %index.next449, %n.vec444
  br i1 %i.jm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n450, label %.loopexit556, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1230.ph = phi ptr [ %.0229, %iter.check ], [ %i.jj, %vec.epilog.middle.block ], [ %i.jd, %vec.epilog.iter.check ] ; 2 uses
  %.1227.ph = phi ptr [ %.0226, %iter.check ], [ %i.jk, %vec.epilog.middle.block ], [ %i.je, %vec.epilog.iter.check ] ; 2 uses
  %.0.ph = phi i64 [ %i.et, %iter.check ], [ %i.jc, %vec.epilog.middle.block ], [ %i.iz, %vec.epilog.iter.check ] ; 3 uses
  %i.jn = add i64 %.0.ph, -2                      ; 2 uses
  %i.jo = lshr i64 %i.jn, 1
  %i.jp = add nuw i64 %i.jo, 1
  %xtraiter = and i64 %i.jp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1230.prol = phi ptr [ %i.js, %vec.epilog.scalar.ph.prol ], [ %.1230.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1227.prol = phi ptr [ %i.jq, %vec.epilog.scalar.ph.prol ], [ %.1227.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i64 [ %i.jt, %vec.epilog.scalar.ph.prol ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.1227.prol, i64 2 ; 3 uses
  %i.jr = load i16, ptr %.1227.prol, align 2, !tbaa !74
  %i.js = getelementptr inbounds nuw i8, ptr %.1230.prol, i64 2 ; 3 uses
  store i16 %i.jr, ptr %.1230.prol, align 2, !tbaa !74
  %i.jt = add i64 %.0.prol, -2                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !78

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa572.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.jq, %vec.epilog.scalar.ph.prol ]
  %.lcssa571.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.js, %vec.epilog.scalar.ph.prol ]
  %.1230.unr = phi ptr [ %.1230.ph, %vec.epilog.scalar.ph.preheader ], [ %i.js, %vec.epilog.scalar.ph.prol ]
  %.1227.unr = phi ptr [ %.1227.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jq, %vec.epilog.scalar.ph.prol ]
  %.0.unr = phi i64 [ %.0.ph, %vec.epilog.scalar.ph.preheader ], [ %i.jt, %vec.epilog.scalar.ph.prol ]
  %i.ju = icmp ult i64 %i.jn, 14
  br i1 %i.ju, label %.loopexit556, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1230 = phi ptr [ %i.ks, %vec.epilog.scalar.ph ], [ %.1230.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.1227 = phi ptr [ %i.kq, %vec.epilog.scalar.ph ], [ %.1227.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.0 = phi i64 [ %i.kt, %vec.epilog.scalar.ph ], [ %.0.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.1227, i64 2
  %i.jw = load i16, ptr %.1227, align 2, !tbaa !74
  %i.jx = getelementptr inbounds nuw i8, ptr %.1230, i64 2
  store i16 %i.jw, ptr %.1230, align 2, !tbaa !74
  %i.jy = getelementptr inbounds nuw i8, ptr %.1227, i64 4
  %i.jz = load i16, ptr %i.jv, align 2, !tbaa !74
  %i.ka = getelementptr inbounds nuw i8, ptr %.1230, i64 4
  store i16 %i.jz, ptr %i.jx, align 2, !tbaa !74
  %i.kb = getelementptr inbounds nuw i8, ptr %.1227, i64 6
  %i.kc = load i16, ptr %i.jy, align 2, !tbaa !74
  %i.kd = getelementptr inbounds nuw i8, ptr %.1230, i64 6
  store i16 %i.kc, ptr %i.ka, align 2, !tbaa !74
  %i.ke = getelementptr inbounds nuw i8, ptr %.1227, i64 8
  %i.kf = load i16, ptr %i.kb, align 2, !tbaa !74
  %i.kg = getelementptr inbounds nuw i8, ptr %.1230, i64 8
  store i16 %i.kf, ptr %i.kd, align 2, !tbaa !74
  %i.kh = getelementptr inbounds nuw i8, ptr %.1227, i64 10
  %i.ki = load i16, ptr %i.ke, align 2, !tbaa !74
  %i.kj = getelementptr inbounds nuw i8, ptr %.1230, i64 10
  store i16 %i.ki, ptr %i.kg, align 2, !tbaa !74
  %i.kk = getelementptr inbounds nuw i8, ptr %.1227, i64 12
  %i.kl = load i16, ptr %i.kh, align 2, !tbaa !74
  %i.km = getelementptr inbounds nuw i8, ptr %.1230, i64 12
  store i16 %i.kl, ptr %i.kj, align 2, !tbaa !74
  %i.kn = getelementptr inbounds nuw i8, ptr %.1227, i64 14
  %i.ko = load i16, ptr %i.kk, align 2, !tbaa !74
  %i.kp = getelementptr inbounds nuw i8, ptr %.1230, i64 14
  store i16 %i.ko, ptr %i.km, align 2, !tbaa !74
  %i.kq = getelementptr inbounds nuw i8, ptr %.1227, i64 16 ; 2 uses
  %i.kr = load i16, ptr %i.kn, align 2, !tbaa !74
  %i.ks = getelementptr inbounds nuw i8, ptr %.1230, i64 16 ; 2 uses
  store i16 %i.kr, ptr %i.kp, align 2, !tbaa !74
  %i.kt = add i64 %.0, -16                        ; 2 uses
  %.not296.7 = icmp eq i64 %i.kt, 0
  br i1 %.not296.7, label %.loopexit556, label %vec.epilog.scalar.ph, !llvm.loop !79

.loopexit556:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa430 = phi ptr [ %i.jk, %vec.epilog.middle.block ], [ %i.je, %middle.block ], [ %.lcssa572.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.kq, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa429 = phi ptr [ %i.jj, %vec.epilog.middle.block ], [ %i.jd, %middle.block ], [ %.lcssa571.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ks, %vec.epilog.scalar.ph ] ; 2 uses
  %.not297 = icmp ugt i64 %.8, %i.ew
  br i1 %.not297, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %.loopexit556
  %i.ku = sub nuw i64 %.8, %i.ew                  ; 12 uses
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %.lcssa430, i64 %i.it ; 6 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %.lcssa429, i64 %i.it ; 6 uses
  %.not298 = icmp ult i64 %i.ku, %i.et
  br i1 %.not298, label %iter.check476, label %iter.check, !llvm.loop !80

iter.check476:                                    ; preds = %bb.bb
  %.lcssa430456 = ptrtoaddr ptr %.lcssa430 to i64
  %.lcssa429455 = ptrtoaddr ptr %.lcssa429 to i64
  %min.iters.check458 = icmp ult i64 %i.ku, 4
  %i.kx = sub i64 %.lcssa430456, %.lcssa429455
  %diff.check457 = icmp ugt i64 %i.kx, -32
  %or.cond560 = select i1 %min.iters.check458, i1 true, i1 %diff.check457
  br i1 %or.cond560, label %.preheader326.preheader, label %vector.main.loop.iter.check459

vector.main.loop.iter.check459:                   ; preds = %iter.check476
  %min.iters.check460 = icmp ult i64 %i.ku, 32
  br i1 %min.iters.check460, label %vec.epilog.ph480, label %vector.ph461

vector.ph461:                                     ; preds = %vector.main.loop.iter.check459
  %n.mod.vf462 = and i64 %i.ku, 28
  %n.vec463 = and i64 %i.ku, -32                  ; 5 uses
  %i.ky = and i64 %i.ku, 31
  %i.kz = getelementptr i8, ptr %i.kv, i64 %n.vec463
  %i.la = getelementptr i8, ptr %i.kw, i64 %n.vec463
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph461
  %index465 = phi i64 [ 0, %vector.ph461 ], [ %index.next470, %vector.body464 ] ; 3 uses
  %next.gep466 = getelementptr i8, ptr %i.kv, i64 %index465 ; 2 uses
  %next.gep467 = getelementptr i8, ptr %i.kw, i64 %index465 ; 2 uses
  %i.lb = getelementptr i8, ptr %next.gep466, i64 16
  %wide.load468 = load <16 x i8>, ptr %next.gep466, align 1, !tbaa !7
  %wide.load469 = load <16 x i8>, ptr %i.lb, align 1, !tbaa !7
  %i.lc = getelementptr i8, ptr %next.gep467, i64 16
  store <16 x i8> %wide.load468, ptr %next.gep467, align 1, !tbaa !7
  store <16 x i8> %wide.load469, ptr %i.lc, align 1, !tbaa !7
  %index.next470 = add nuw i64 %index465, 32      ; 2 uses
  %i.ld = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.ld, label %middle.block471, label %vector.body464, !llvm.loop !81

middle.block471:                                  ; preds = %vector.body464
  %cmp.n472 = icmp eq i64 %i.ku, %n.vec463
  br i1 %cmp.n472, label %.loopexit, label %vec.epilog.iter.check478

vec.epilog.iter.check478:                         ; preds = %middle.block471
  %min.epilog.iters.check479 = icmp eq i64 %n.mod.vf462, 0
  br i1 %min.epilog.iters.check479, label %.preheader326.preheader, label %vec.epilog.ph480, !prof !70

vec.epilog.ph480:                                 ; preds = %vector.main.loop.iter.check459, %vec.epilog.iter.check478
  %vec.epilog.resume.val473 = phi i64 [ %n.vec463, %vec.epilog.iter.check478 ], [ 0, %vector.main.loop.iter.check459 ]
  %n.vec482 = and i64 %i.ku, -4                   ; 4 uses
  %i.le = and i64 %i.ku, 3
  %i.lf = getelementptr i8, ptr %i.kv, i64 %n.vec482
  %i.lg = getelementptr i8, ptr %i.kw, i64 %n.vec482
  br label %vec.epilog.vector.body483

vec.epilog.vector.body483:                        ; preds = %vec.epilog.vector.body483, %vec.epilog.ph480
  %index484 = phi i64 [ %vec.epilog.resume.val473, %vec.epilog.ph480 ], [ %index.next488, %vec.epilog.vector.body483 ] ; 3 uses
  %next.gep485 = getelementptr i8, ptr %i.kv, i64 %index484
  %next.gep486 = getelementptr i8, ptr %i.kw, i64 %index484
  %wide.load487 = load <4 x i8>, ptr %next.gep485, align 1, !tbaa !7
  store <4 x i8> %wide.load487, ptr %next.gep486, align 1, !tbaa !7
  %index.next488 = add nuw i64 %index484, 4       ; 2 uses
  %i.lh = icmp eq i64 %index.next488, %n.vec482
  br i1 %i.lh, label %vec.epilog.middle.block489, label %vec.epilog.vector.body483, !llvm.loop !82

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body483
  %cmp.n490 = icmp eq i64 %i.ku, %n.vec482
  br i1 %cmp.n490, label %.loopexit, label %.preheader326.preheader

.preheader326.preheader:                          ; preds = %iter.check476, %vec.epilog.iter.check478, %vec.epilog.middle.block489
  %.10.ph = phi i64 [ %i.ku, %iter.check476 ], [ %i.ky, %vec.epilog.iter.check478 ], [ %i.le, %vec.epilog.middle.block489 ] ; 4 uses
  %.6245.ph = phi ptr [ %i.kv, %iter.check476 ], [ %i.kz, %vec.epilog.iter.check478 ], [ %i.lf, %vec.epilog.middle.block489 ] ; 2 uses
  %.6.ph = phi ptr [ %i.kw, %iter.check476 ], [ %i.la, %vec.epilog.iter.check478 ], [ %i.lg, %vec.epilog.middle.block489 ] ; 2 uses
  %i.li = add i64 %.10.ph, -1
  %xtraiter584 = and i64 %.10.ph, 7               ; 2 uses
  %lcmp.mod585.not = icmp eq i64 %xtraiter584, 0
  br i1 %lcmp.mod585.not, label %.preheader326.prol.loopexit, label %.preheader326.prol

.preheader326.prol:                               ; preds = %.preheader326.preheader, %.preheader326.prol
  %.10.prol = phi i64 [ %i.lm, %.preheader326.prol ], [ %.10.ph, %.preheader326.preheader ]
  %.6245.prol = phi ptr [ %i.lj, %.preheader326.prol ], [ %.6245.ph, %.preheader326.preheader ] ; 2 uses
  %.6.prol = phi ptr [ %i.ll, %.preheader326.prol ], [ %.6.ph, %.preheader326.preheader ] ; 2 uses
  %prol.iter586 = phi i64 [ %prol.iter586.next, %.preheader326.prol ], [ 0, %.preheader326.preheader ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.6245.prol, i64 1 ; 2 uses
  %i.lk = load i8, ptr %.6245.prol, align 1, !tbaa !7
  %i.ll = getelementptr inbounds nuw i8, ptr %.6.prol, i64 1 ; 2 uses
  store i8 %i.lk, ptr %.6.prol, align 1, !tbaa !7
  %i.lm = add i64 %.10.prol, -1                   ; 2 uses
  %prol.iter586.next = add i64 %prol.iter586, 1   ; 2 uses
  %prol.iter586.cmp.not = icmp eq i64 %prol.iter586.next, %xtraiter584
  br i1 %prol.iter586.cmp.not, label %.preheader326.prol.loopexit, label %.preheader326.prol, !llvm.loop !83

.preheader326.prol.loopexit:                      ; preds = %.preheader326.prol, %.preheader326.preheader
  %.10.unr = phi i64 [ %.10.ph, %.preheader326.preheader ], [ %i.lm, %.preheader326.prol ]
  %.6245.unr = phi ptr [ %.6245.ph, %.preheader326.preheader ], [ %i.lj, %.preheader326.prol ]
  %.6.unr = phi ptr [ %.6.ph, %.preheader326.preheader ], [ %i.ll, %.preheader326.prol ]
  %i.ln = icmp ult i64 %i.li, 7
  br i1 %i.ln, label %.loopexit, label %.preheader326

.preheader326:                                    ; preds = %.preheader326.prol.loopexit, %.preheader326
  %.10 = phi i64 [ %i.mm, %.preheader326 ], [ %.10.unr, %.preheader326.prol.loopexit ]
  %.6245 = phi ptr [ %i.mj, %.preheader326 ], [ %.6245.unr, %.preheader326.prol.loopexit ] ; 9 uses
  %.6 = phi ptr [ %i.ml, %.preheader326 ], [ %.6.unr, %.preheader326.prol.loopexit ] ; 9 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.6245, i64 1
  %i.lp = load i8, ptr %.6245, align 1, !tbaa !7
  %i.lq = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %i.lp, ptr %.6, align 1, !tbaa !7
  %i.lr = getelementptr inbounds nuw i8, ptr %.6245, i64 2
  %i.ls = load i8, ptr %i.lo, align 1, !tbaa !7
  %i.lt = getelementptr inbounds nuw i8, ptr %.6, i64 2
  store i8 %i.ls, ptr %i.lq, align 1, !tbaa !7
  %i.lu = getelementptr inbounds nuw i8, ptr %.6245, i64 3
  %i.lv = load i8, ptr %i.lr, align 1, !tbaa !7
  %i.lw = getelementptr inbounds nuw i8, ptr %.6, i64 3
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !7
  %i.lx = getelementptr inbounds nuw i8, ptr %.6245, i64 4
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !7
  %i.lz = getelementptr inbounds nuw i8, ptr %.6, i64 4
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !7
  %i.ma = getelementptr inbounds nuw i8, ptr %.6245, i64 5
  %i.mb = load i8, ptr %i.lx, align 1, !tbaa !7
end_hunk_0
