Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CoreM?download=true
inline.NumInlined: 6868
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@l___private_Lean_CoreM_0__Lean_mapErrorImp___redArg:bb.a
l_Lean_Exception_isRuntime.exit:                  ; preds = %lean_inc_ref.exit.i
  %i.ap = tail call zeroext i8 @l_Lean_Exception_isMaxRecDepth(ptr noundef nonnull %i.u) #10
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %l_Lean_Exception_isRuntime.exit
  br i1 %.not.i84, label %lean_obj_tag.exit124, label %lean_obj_tag.exit124.thread

lean_obj_tag.exit124:                             ; preds = %bb.ae
  %i.ar = getelementptr i8, ptr %i.u, i64 4
  %.val.i123 = load i32, ptr %i.ar, align 4
  %i.as = icmp ult i32 %.val.i123, 16777216
  br i1 %i.as, label %bb.af, label %bb.bn

lean_obj_tag.exit124.thread:                      ; preds = %bb.ae
  %i.at = and i64 %i.v, 8589934590
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.af, label %lean_dec.exit90

bb.af:                                            ; preds = %lean_obj_tag.exit124.thread, %lean_obj_tag.exit124
  %.val.i125 = load i32, ptr %i.i, align 8, !tbaa !11 ; 4 uses
  %i.av = icmp eq i32 %.val.i125, 1
  br i1 %i.av, label %.preheader.i, label %bb.ak

.preheader.i:                                     ; preds = %bb.af
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !15  ; 4 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i.i126 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i126, label %bb.ag, label %lean_dec.exit.i

bb.ag:                                            ; preds = %.preheader.i
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !11 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !17

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.ai:                                            ; preds = %bb.ag
  %.not.i7.i = icmp eq i32 %i.az, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aw) #10
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.aj, %bb.ai, %bb.ah, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.i) #10
  br label %lean_dec_ref_known.exit

bb.ak:                                            ; preds = %bb.af
  %i.bc = icmp sgt i32 %.val.i125, 1
  br i1 %i.bc, label %bb.al, label %bb.am, !prof !17

bb.al:                                            ; preds = %bb.ak
  %i.bd = add nsw i32 %.val.i125, -1
  store i32 %i.bd, ptr %i.i, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.am:                                            ; preds = %bb.ak
  %.not.i8.i = icmp eq i32 %.val.i125, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #10
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.al, %bb.am, %bb.an
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 5 uses
  %.val108 = load i32, ptr %i.u, align 8, !tbaa !11
  %i.bi = icmp eq i32 %.val108, 1                 ; 2 uses
  br i1 %i.bi, label %lean_dec.exit94, label %bb.ao

bb.ao:                                            ; preds = %lean_dec_ref_known.exit
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i80 = icmp eq i64 %i.bk, 0
  br i1 %.not.i80, label %bb.ap, label %lean_inc.exit81

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i127 = load i32, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.bl = icmp sgt i32 %.val.i.i127, 0
  br i1 %i.bl, label %bb.aq, label %bb.ar, !prof !17

bb.aq:                                            ; preds = %bb.ap
  %i.bm = add nuw i32 %.val.i.i127, 1
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !11
  br label %lean_inc.exit81

bb.ar:                                            ; preds = %bb.ap
  %.not.i.i128 = icmp eq i32 %.val.i.i127, 0
  br i1 %.not.i.i128, label %lean_inc.exit81, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bn = atomicrmw add ptr %i.bh, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit81

lean_inc.exit81:                                  ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %i.bo = ptrtoint ptr %i.bf to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i78 = icmp eq i64 %i.bp, 0
  br i1 %.not.i78, label %bb.at, label %lean_inc.exit79

bb.at:                                            ; preds = %lean_inc.exit81
  %.val.i.i130 = load i32, ptr %i.bf, align 4, !tbaa !11 ; 3 uses
  %i.bq = icmp sgt i32 %.val.i.i130, 0
  br i1 %i.bq, label %bb.au, label %bb.av, !prof !17

bb.au:                                            ; preds = %bb.at
  %i.br = add nuw i32 %.val.i.i130, 1
  store i32 %i.br, ptr %i.bf, align 4, !tbaa !11
  br label %lean_inc.exit79

bb.av:                                            ; preds = %bb.at
  %.not.i.i131 = icmp eq i32 %.val.i.i130, 0
  br i1 %.not.i.i131, label %lean_inc.exit79, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bs = atomicrmw add ptr %i.bf, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit79

lean_inc.exit79:                                  ; preds = %bb.aw, %bb.av, %bb.au, %lean_inc.exit81
  br i1 %.not.i84, label %bb.ax, label %lean_dec.exit94

bb.ax:                                            ; preds = %lean_inc.exit79
  %i.bt = load i32, ptr %i.u, align 8, !tbaa !11  ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ay, label %bb.az, !prof !17

bb.ay:                                            ; preds = %bb.ax
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.u, align 8, !tbaa !11
  br label %lean_dec.exit94

bb.az:                                            ; preds = %bb.ax
  %.not.i95 = icmp eq i32 %i.bt, 0
  br i1 %.not.i95, label %lean_dec.exit94, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #10
  br label %lean_dec.exit94

lean_dec.exit94:                                  ; preds = %lean_inc.exit79, %bb.ay, %bb.az, %bb.ba, %lean_dec_ref_known.exit
  %.076 = phi ptr [ %i.u, %lean_dec_ref_known.exit ], [ inttoptr (i64 1 to ptr), %bb.ba ], [ inttoptr (i64 1 to ptr), %bb.az ], [ inttoptr (i64 1 to ptr), %bb.ay ], [ inttoptr (i64 1 to ptr), %lean_inc.exit79 ]
  %i.bw = tail call ptr @lean_apply_1(ptr noundef %1, ptr noundef %i.bh) #10
  %i.bx = tail call ptr @l_Lean_addMessageContextPartial___at___00Lean_throwError___at___00Lean_Core_instantiateValueLevelParams_spec__0_spec__0(ptr noundef %i.bw, ptr noundef nonnull %2, ptr noundef %3) ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15 ; 5 uses
  %.val = load i32, ptr %i.bx, align 8, !tbaa !11 ; 4 uses
  %i.ca = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.ca, label %lean_dec.exit92, label %bb.bb

bb.bb:                                            ; preds = %lean_dec.exit94
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %bb.bc, label %lean_inc.exit

bb.bc:                                            ; preds = %bb.bb
  %.val.i.i133 = load i32, ptr %i.bz, align 4, !tbaa !11 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i133, 0
  br i1 %i.cd, label %bb.bd, label %bb.be, !prof !17

bb.bd:                                            ; preds = %bb.bc
  %i.ce = add nuw i32 %.val.i.i133, 1
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !11
  br label %lean_inc.exit

bb.be:                                            ; preds = %bb.bc
  %.not.i.i134 = icmp eq i32 %.val.i.i133, 0
  br i1 %.not.i.i134, label %lean_inc.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cf = atomicrmw add ptr %i.bz, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bb, %bb.bd, %bb.be, %bb.bf
  %i.cg = icmp sgt i32 %.val, 1
  br i1 %i.cg, label %bb.bg, label %bb.bh, !prof !17

bb.bg:                                            ; preds = %lean_inc.exit
  %i.ch = add nsw i32 %.val, -1
  store i32 %i.ch, ptr %i.bx, align 8, !tbaa !11
  br label %lean_dec.exit92

bb.bh:                                            ; preds = %lean_inc.exit
  %.not.i96 = icmp eq i32 %.val, 0
  br i1 %.not.i96, label %lean_dec.exit92, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #10
  br label %lean_dec.exit92

lean_dec.exit92:                                  ; preds = %bb.bg, %bb.bh, %bb.bi, %lean_dec.exit94
  %.074 = phi ptr [ %i.bx, %lean_dec.exit94 ], [ inttoptr (i64 1 to ptr), %bb.bi ], [ inttoptr (i64 1 to ptr), %bb.bh ], [ inttoptr (i64 1 to ptr), %bb.bg ] ; 2 uses
  br i1 %i.bi, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %lean_dec.exit92
  %i.ci = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bf, ptr %i.cj, align 8, !tbaa !15
  br label %bb.bk

bb.bk:                                            ; preds = %lean_dec.exit92, %bb.bj
  %.sink157 = phi ptr [ %i.ci, %bb.bj ], [ %.076, %lean_dec.exit92 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink157, i64 16
  store ptr %i.bz, ptr %i.ck, align 8, !tbaa !15
  br i1 %i.ca, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.cl = getelementptr inbounds nuw i8, ptr %.074, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = and i32 %i.cm, 16777215
  %i.co = or disjoint i32 %i.cn, 16777216
  store i32 %i.co, ptr %i.cl, align 4
  br label %lean_dec_ref.exit107.sink.split

bb.bm:                                            ; preds = %bb.bk
  %i.cp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec_ref.exit107.sink.split

bb.bn:                                            ; preds = %lean_obj_tag.exit124
  %i.cq = load i32, ptr %i.u, align 4, !tbaa !11  ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.bo, label %bb.bp, !prof !17

bb.bo:                                            ; preds = %bb.bn
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.u, align 4, !tbaa !11
  br label %lean_dec.exit90

bb.bp:                                            ; preds = %bb.bn
  %.not.i98 = icmp eq i32 %i.cq, 0
  br i1 %.not.i98, label %lean_dec.exit90, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #10
  br label %lean_dec.exit90

lean_dec.exit90:                                  ; preds = %lean_obj_tag.exit124.thread, %bb.bq, %bb.bp, %bb.bo
  %i.ct = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.br, label %bb.bs, !prof !17

bb.br:                                            ; preds = %lean_dec.exit90
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit107

bb.bs:                                            ; preds = %lean_dec.exit90
  %.not.i104 = icmp eq i32 %i.ct, 0
  br i1 %.not.i104, label %lean_dec_ref.exit107, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit107

.critedge:                                        ; preds = %bb.ad, %bb.ac, %bb.ab, %l_Lean_Exception_isRuntime.exit
  br i1 %.not.i84, label %.critedge.thread, label %lean_dec.exit

.critedge.thread:                                 ; preds = %lean_inc.exit85, %.critedge
  %i.cw = load i32, ptr %i.u, align 4, !tbaa !11  ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %bb.bu, label %bb.bv, !prof !17

bb.bu:                                            ; preds = %.critedge.thread
  %i.cy = add nsw i32 %i.cw, -1
  store i32 %i.cy, ptr %i.u, align 4, !tbaa !11
  br label %lean_dec.exit

bb.bv:                                            ; preds = %.critedge.thread
  %.not.i100 = icmp eq i32 %i.cw, 0
  br i1 %.not.i100, label %lean_dec.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit85.thread, %bb.bw, %bb.bv, %bb.bu, %.critedge
  %i.cz = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.bx, label %bb.by, !prof !17

bb.bx:                                            ; preds = %lean_dec.exit
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit107

bb.by:                                            ; preds = %lean_dec.exit
  %.not.i102 = icmp eq i32 %i.cz, 0
  br i1 %.not.i102, label %lean_dec_ref.exit107, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit107

lean_dec_ref.exit107.sink.split:                  ; preds = %bb.bm, %bb.bl
  %.074.sink = phi ptr [ %.074, %bb.bl ], [ %i.cp, %bb.bm ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.074.sink, i64 8
  store ptr %.sink157, ptr %4, align 8, !tbaa !15
  br label %lean_dec_ref.exit107

lean_dec_ref.exit107:                             ; preds = %lean_dec_ref.exit107.sink.split, %bb.bz, %bb.by, %bb.bx, %bb.bt, %bb.bs, %bb.br, %bb.n, %bb.m, %bb.l
  %.3 = phi ptr [ %i.i, %bb.by ], [ %i.i, %bb.bt ], [ %i.i, %bb.n ], [ %i.i, %bb.bz ], [ %i.i, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.br ], [ %i.i, %bb.bs ], [ %i.i, %bb.bx ], [ %.074.sink, %lean_dec_ref.exit107.sink.split ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_dec.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit9

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i8 = icmp eq i32 %i.d, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_dec.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit10

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i9 = icmp eq i32 %i.g, 0
  br i1 %.not.i9, label %lean_dec_ref.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec_ref.exit10

lean_dec_ref.exit10:                              ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Core_mapError___redArg___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_apply_2(ptr noundef %2, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %0) #10
  %i.b = tail call ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp___redArg(ptr noundef %i.a, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Core_mapError___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #1 {
bb.a:
  %i.a = tail call ptr @lean_apply_2(ptr noundef %2, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %0) #10
  %i.b = tail call ptr @l___private_Lean_CoreM_0__Lean_mapErrorImp___redArg(ptr noundef %i.a, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  %i.c = ptrtoint ptr %4 to i64
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i8 = icmp eq i32 %i.e, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_dec.exit
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit10

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i9 = icmp eq i32 %i.h, 0
  br i1 %.not.i9, label %lean_dec_ref.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #10
  br label %lean_dec_ref.exit10

lean_dec_ref.exit10:                              ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Core_mapError___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i21 = icmp eq i64 %i.d, 0
  br i1 %.not.i21, label %bb.b, label %lean_inc.exit22

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !11 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !11
  br label %lean_inc.exit22

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit22, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit22

lean_inc.exit22:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = load i32, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !17

bb.f:                                             ; preds = %lean_inc.exit22
end_hunk_0
