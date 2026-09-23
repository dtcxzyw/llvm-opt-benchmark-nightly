Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/H1?download=true
inline.NumInlined: 10310
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_updateKeepAlive:bb.a
  br i1 %.not.i.i140, label %lean_inc.exit104, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.br = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit104

lean_inc.exit104:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.bs = ptrtoint ptr %i.m to i64
  %i.bt = and i64 %i.bs, 1
  %.not.i101 = icmp eq i64 %i.bt, 0
  br i1 %.not.i101, label %bb.am, label %lean_inc.exit102

bb.am:                                            ; preds = %lean_inc.exit104
  %.val.i.i142 = load i32, ptr %i.m, align 4, !tbaa !13 ; 3 uses
  %i.bu = icmp sgt i32 %.val.i.i142, 0
  br i1 %i.bu, label %bb.an, label %bb.ao, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.bv = add nuw i32 %.val.i.i142, 1
  store i32 %i.bv, ptr %i.m, align 4, !tbaa !13
  br label %lean_inc.exit102

bb.ao:                                            ; preds = %bb.am
  %.not.i.i143 = icmp eq i32 %.val.i.i142, 0
  br i1 %.not.i.i143, label %lean_inc.exit102, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bw = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit102

lean_inc.exit102:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %lean_inc.exit104
  %i.bx = ptrtoint ptr %i.k to i64
  %i.by = and i64 %i.bx, 1
  %.not.i99 = icmp eq i64 %i.by, 0
  br i1 %.not.i99, label %bb.aq, label %lean_inc.exit100

bb.aq:                                            ; preds = %lean_inc.exit102
  %.val.i.i145 = load i32, ptr %i.k, align 4, !tbaa !13 ; 3 uses
  %i.bz = icmp sgt i32 %.val.i.i145, 0
  br i1 %i.bz, label %bb.ar, label %bb.as, !prof !14

bb.ar:                                            ; preds = %bb.aq
  %i.ca = add nuw i32 %.val.i.i145, 1
  store i32 %i.ca, ptr %i.k, align 4, !tbaa !13
  br label %lean_inc.exit100

bb.as:                                            ; preds = %bb.aq
  %.not.i.i146 = icmp eq i32 %.val.i.i145, 0
  br i1 %.not.i.i146, label %lean_inc.exit100, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cb = atomicrmw sub ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit100

lean_inc.exit100:                                 ; preds = %bb.at, %bb.as, %bb.ar, %lean_inc.exit102
  %i.cc = ptrtoint ptr %i.i to i64
  %i.cd = and i64 %i.cc, 1
  %.not.i97 = icmp eq i64 %i.cd, 0
  br i1 %.not.i97, label %bb.au, label %lean_inc.exit98

bb.au:                                            ; preds = %lean_inc.exit100
  %.val.i.i148 = load i32, ptr %i.i, align 4, !tbaa !13 ; 3 uses
  %i.ce = icmp sgt i32 %.val.i.i148, 0
  br i1 %i.ce, label %bb.av, label %bb.aw, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.cf = add nuw i32 %.val.i.i148, 1
  store i32 %i.cf, ptr %i.i, align 4, !tbaa !13
  br label %lean_inc.exit98

bb.aw:                                            ; preds = %bb.au
  %.not.i.i149 = icmp eq i32 %.val.i.i148, 0
  br i1 %.not.i.i149, label %lean_inc.exit98, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cg = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit98

lean_inc.exit98:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %lean_inc.exit100
  %i.ch = ptrtoint ptr %i.g to i64
  %i.ci = and i64 %i.ch, 1
  %.not.i95 = icmp eq i64 %i.ci, 0
  br i1 %.not.i95, label %bb.ay, label %lean_inc.exit96

bb.ay:                                            ; preds = %lean_inc.exit98
  %.val.i.i151 = load i32, ptr %i.g, align 4, !tbaa !13 ; 3 uses
  %i.cj = icmp sgt i32 %.val.i.i151, 0
  br i1 %i.cj, label %bb.az, label %bb.ba, !prof !14

bb.az:                                            ; preds = %bb.ay
  %i.ck = add nuw i32 %.val.i.i151, 1
  store i32 %i.ck, ptr %i.g, align 4, !tbaa !13
  br label %lean_inc.exit96

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i152 = icmp eq i32 %.val.i.i151, 0
  br i1 %.not.i.i152, label %lean_inc.exit96, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cl = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit96

lean_inc.exit96:                                  ; preds = %bb.bb, %bb.ba, %bb.az, %lean_inc.exit98
  %i.cm = ptrtoint ptr %i.e to i64
  %i.cn = and i64 %i.cm, 1
  %.not.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i, label %bb.bc, label %lean_inc.exit

bb.bc:                                            ; preds = %lean_inc.exit96
  %.val.i.i154 = load i32, ptr %i.e, align 4, !tbaa !13 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i154, 0
  br i1 %i.co, label %bb.bd, label %bb.be, !prof !14

bb.bd:                                            ; preds = %bb.bc
  %i.cp = add nuw i32 %.val.i.i154, 1
  store i32 %i.cp, ptr %i.e, align 4, !tbaa !13
  br label %lean_inc.exit

bb.be:                                            ; preds = %bb.bc
  %.not.i.i155 = icmp eq i32 %.val.i.i154, 0
  br i1 %.not.i.i155, label %lean_inc.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cq = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit96, %bb.bd, %bb.be, %bb.bf
  %i.cr = load i32, ptr %1, align 8, !tbaa !13    ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bg, label %bb.bh, !prof !14

bb.bg:                                            ; preds = %lean_inc.exit
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %1, align 8, !tbaa !13
  br label %bb.bj

bb.bh:                                            ; preds = %lean_inc.exit
  %.not.i121 = icmp eq i32 %i.cr, 0
  br i1 %.not.i121, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  tail call void @lean_inc_heartbeat() #9
  %i.cu = tail call noalias ptr @mi_malloc_small(i64 noundef 64) #9 ; 13 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.bk, label %lean_alloc_ctor.exit158

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit158:                          ; preds = %bb.bj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store i64 0, ptr %i.cx, align 8, !tbaa !16
  store i32 1, ptr %i.cu, align 8, !tbaa !13
  store i32 393280, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.e, ptr %i.cy, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.g, ptr %i.cz, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.i, ptr %i.da, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.k, ptr %i.db, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store ptr %i.m, ptr %i.dc, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store ptr %i.o, ptr %i.dd, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 57
  store i8 %i.q, ptr %i.de, align 1, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 58
  store i8 %i.s, ptr %i.df, align 2, !tbaa !11
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ag, %lean_alloc_ctor.exit158
  %.089 = phi ptr [ %i.cu, %lean_alloc_ctor.exit158 ], [ %1, %bb.ag ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.089, i64 56
  store i8 %2, ptr %i.dg, align 1, !tbaa !11
  br label %lean_dec.exit119

lean_dec.exit119:                                 ; preds = %bb.b, %lean_alloc_ctor.exit, %lean_dec.exit
  %.2 = phi ptr [ %.089, %lean_dec.exit ], [ %i.bb, %lean_alloc_ctor.exit ], [ %1, %bb.b ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_updateKeepAlive___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_updateKeepAlive(i8 zeroext poison, ptr noundef %1, i8 noundef zeroext %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define nonnull ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorIdx(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %switch.selectcmp = icmp eq i32 %.0.i, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp5 = icmp eq i32 %.0.i, 0
  %switch.select6 = select i1 %switch.selectcmp5, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select6
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24                   ; 3 uses
  %1 = load i32, ptr %0, align 4, !tbaa !13       ; 3 uses
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %1, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i3 = icmp eq i32 %1, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.f, %bb.e, %bb.d
  %.0.i.i5 = phi i32 [ %i.f, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.d, %bb.b ] ; 2 uses
  %switch.selectcmp5.i = icmp eq i32 %.0.i.i5, 0
  %switch.selectcmp.i = icmp eq i32 %.0.i.i5, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.select6.i = select i1 %switch.selectcmp5.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select6.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i12 = icmp eq i64 %i.b, 0
  br i1 %.not.i12, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.c, align 4
  %i.d = icmp ult i32 %.val.i, 16777216
  br i1 %i.d, label %bb.b, label %bb.o

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.e = and i64 %i.a, 8589934590
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %lean_inc.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !13 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !13
  br label %lean_inc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i13 = load i32, ptr %0, align 8, !tbaa !13 ; 4 uses
  %i.n = icmp eq i32 %.val.i13, 1
  br i1 %i.n, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !10   ; 4 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i14 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i14, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i.preheader
  %i.r = load i32, ptr %i.o, align 4, !tbaa !13   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !13
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.r, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %0) #9
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit
  %i.u = icmp sgt i32 %.val.i13, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %.val.i13, -1
  store i32 %i.v, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i13, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.h) #9
  br label %lean_dec.exit

bb.o:                                             ; preds = %lean_obj_tag.exit
  %i.x = load i32, ptr %0, align 4, !tbaa !13     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.p, label %bb.q, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i11 = icmp eq i32 %i.x, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.p, %bb.q, %bb.r, %lean_dec_ref_known.exit
  %.0 = phi ptr [ %i.w, %lean_dec_ref_known.exit ], [ %1, %bb.r ], [ %1, %bb.q ], [ %1, %bb.p ], [ %1, %lean_obj_tag.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %2, ptr noundef %4)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !13     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_fixed_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_fixed_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_chunked_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_chunked_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %1, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_eof_elim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_ctorElim___redArg(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Http_Protocol_H1_0__Std_Http_Protocol_H1_Machine_BodyMode_eof_elim(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
end_hunk_0
