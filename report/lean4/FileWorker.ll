Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/FileWorker?download=true
inline.NumInlined: 9223
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@l_Array_contains___at___00Lean_Server_FileWorker_handlePostRequestSpecialCases_spec__3___boxed:bb.a
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.g, %bb.h, %bb.i
  %i.q = inttoptr i64 %.0.i to ptr
  ret ptr %i.q
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 14 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i346 = icmp eq i64 %i.d, 0                ; 2 uses
  br i1 %.not.i346, label %bb.b, label %lean_obj_tag.exit.thread

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !12
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_obj_tag.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.h = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.h, align 4
  %.mask734 = and i32 %.val.i, -16777216
  %i.i = icmp eq i32 %.mask734, 16777216
  br i1 %i.i, label %bb.f, label %bb.jr

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.j = and i64 %i.c, 8589934590
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %bb.f, label %lean_dec.exit350

bb.f:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !16    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10   ; 14 uses
  %.val501 = load i32, ptr %i.b, align 8, !tbaa !12
  %i.p = icmp eq i32 %.val501, 1                  ; 2 uses
  br i1 %i.p, label %lean_dec.exit402, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 1
  %.not.i344 = icmp eq i64 %i.r, 0
  br i1 %.not.i344, label %bb.h, label %lean_inc.exit345

bb.h:                                             ; preds = %bb.g
  %.val.i.i506 = load i32, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i506, 0
  br i1 %i.s, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.t = add nuw i32 %.val.i.i506, 1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !12
  br label %lean_inc.exit345

bb.j:                                             ; preds = %bb.h
  %.not.i.i507 = icmp eq i32 %.val.i.i506, 0
  br i1 %.not.i.i507, label %lean_inc.exit345, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit345

lean_inc.exit345:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  br i1 %.not.i346, label %bb.l, label %lean_dec.exit402

bb.l:                                             ; preds = %lean_inc.exit345
  %i.v = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.b, align 8, !tbaa !12
  br label %lean_dec.exit402

bb.n:                                             ; preds = %bb.l
  %.not.i403 = icmp eq i32 %i.v, 0
  br i1 %.not.i403, label %lean_dec.exit402, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #8
  br label %lean_dec.exit402

lean_dec.exit402:                                 ; preds = %lean_inc.exit345, %bb.m, %bb.n, %bb.o, %bb.f
  %.0294 = phi ptr [ %i.b, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %bb.n ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %lean_inc.exit345 ] ; 13 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10 ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = and i64 %i.ae, 1
  %.not.i509 = icmp eq i64 %i.af, 0
  br i1 %.not.i509, label %bb.q, label %bb.p

bb.p:                                             ; preds = %lean_dec.exit402
  %i.ag = lshr i64 %i.ae, 1
  %i.ah = trunc i64 %i.ag to i32
  br label %lean_obj_tag.exit512

bb.q:                                             ; preds = %lean_dec.exit402
  %i.ai = getelementptr i8, ptr %i.ad, i64 4
  %.val.i511 = load i32, ptr %i.ai, align 4
  %i.aj = lshr i32 %.val.i511, 24
  br label %lean_obj_tag.exit512

lean_obj_tag.exit512:                             ; preds = %bb.p, %bb.q
  %.0.i510 = phi i32 [ %i.ah, %bb.p ], [ %i.aj, %bb.q ]
  %i.ak = icmp eq i32 %.0.i510, 0
  br i1 %i.ak, label %l_Array_contains___at___00Lean_Server_FileWorker_handlePostRequestSpecialCases_spec__3.exit526.thread, label %bb.r

bb.r:                                             ; preds = %lean_obj_tag.exit512
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  %.val.i513 = load i64, ptr %i.an, align 8, !tbaa !15
  %.mask.i = and i64 %.val.i513, 9223372036854775807 ; 2 uses
  %.not.i514 = icmp eq i64 %.mask.i, 0
  br i1 %.not.i514, label %l_Array_contains___at___00Lean_Server_FileWorker_handlePostRequestSpecialCases_spec__3.exit526.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %bb.s

bb.s:                                             ; preds = %lean_string_dec_eq.exit.thread.i.i, %.lr.ph.i.i
  %.01625.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.av, %lean_string_dec_eq.exit.thread.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.01625.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !10 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, @l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__3_value
  br i1 %i.ar, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.val.i.i.i.i = load i64, ptr %i.as, align 8, !tbaa !15
  %i.at = icmp eq i64 %.val.i.i.i.i, 7
  br i1 %i.at, label %lean_string_dec_eq.exit.i.i, label %lean_string_dec_eq.exit.thread.i.i

lean_string_dec_eq.exit.i.i:                      ; preds = %bb.t
  %i.au = tail call zeroext i1 @lean_string_eq_cold(ptr noundef nonnull @l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__3_value, ptr noundef nonnull %i.aq) #8
  br i1 %i.au, label %.critedge, label %lean_string_dec_eq.exit.thread.i.i

lean_string_dec_eq.exit.thread.i.i:               ; preds = %lean_string_dec_eq.exit.i.i, %bb.t
  %i.av = add nuw nsw i64 %.01625.i.i, 1          ; 2 uses
  %.not.i14.i = icmp eq i64 %i.av, %.mask.i
  br i1 %.not.i14.i, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %lean_string_dec_eq.exit.thread.i.i
  %.val.i516.pre = load i64, ptr %i.an, align 8, !tbaa !15
  %.pre = and i64 %.val.i516.pre, 9223372036854775807 ; 2 uses
  %.not.i518 = icmp eq i64 %.pre, 0
  br i1 %.not.i518, label %l_Array_contains___at___00Lean_Server_FileWorker_handlePostRequestSpecialCases_spec__3.exit526.thread, label %.lr.ph.i.i519

.lr.ph.i.i519:                                    ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %bb.u

bb.u:                                             ; preds = %lean_string_dec_eq.exit.thread.i.i522, %.lr.ph.i.i519
  %.01625.i.i520 = phi i64 [ 0, %.lr.ph.i.i519 ], [ %i.bd, %lean_string_dec_eq.exit.thread.i.i522 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.01625.i.i520
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10 ; 3 uses
  %i.az = icmp eq ptr %i.ay, @l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__2_value
  br i1 %i.az, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val.i.i.i.i521 = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.bb = icmp eq i64 %.val.i.i.i.i521, 23
  br i1 %i.bb, label %lean_string_dec_eq.exit.i.i525, label %lean_string_dec_eq.exit.thread.i.i522

lean_string_dec_eq.exit.i.i525:                   ; preds = %bb.v
  %i.bc = tail call zeroext i1 @lean_string_eq_cold(ptr noundef nonnull @l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__2_value, ptr noundef nonnull %i.ay) #8
  br i1 %i.bc, label %.critedge, label %lean_string_dec_eq.exit.thread.i.i522

lean_string_dec_eq.exit.thread.i.i522:            ; preds = %lean_string_dec_eq.exit.i.i525, %bb.v
  %i.bd = add nuw nsw i64 %.01625.i.i520, 1       ; 2 uses
  %.not.i14.i523 = icmp eq i64 %i.bd, %.pre
  br i1 %.not.i14.i523, label %l_Array_contains___at___00Lean_Server_FileWorker_handlePostRequestSpecialCases_spec__3.exit526.thread, label %bb.u

bb.w:                                             ; preds = %bb.gi, %bb.gk, %bb.gl, %bb.gm
  %i.be = and i64 %i.jn, 510
  %i.bf = icmp eq i64 %i.be, 0
  %l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__0_value.l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__1_value = select i1 %i.bf, ptr @l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__0_value, ptr @l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__1_value
  %i.bg = tail call ptr @l_Array_fromJson_x3f___at___00Lean_Server_FileWorker_handlePostRequestSpecialCases_spec__1(ptr noundef %i.o) ; 10 uses
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %.not.i527 = icmp eq i64 %i.bi, 0
  br i1 %.not.i527, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = trunc i64 %i.bj to i32
  br label %lean_obj_tag.exit530

bb.y:                                             ; preds = %bb.w
  %i.bl = getelementptr i8, ptr %i.bg, i64 4
  %.val.i529 = load i32, ptr %i.bl, align 4
  %i.bm = lshr i32 %.val.i529, 24
  br label %lean_obj_tag.exit530

lean_obj_tag.exit530:                             ; preds = %bb.x, %bb.y
  %.0.i528 = phi i32 [ %i.bk, %bb.x ], [ %i.bm, %bb.y ]
  %i.bn = icmp eq i32 %.0.i528, 1
  br i1 %i.bn, label %bb.z, label %bb.ex

bb.z:                                             ; preds = %lean_obj_tag.exit530
  %.val500 = load i32, ptr %3, align 8, !tbaa !12 ; 4 uses
  %i.bo = icmp eq i32 %.val500, 1                 ; 2 uses
  br i1 %i.bo, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !10 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i399 = icmp eq i64 %i.bs, 0
  br i1 %.not.i399, label %bb.ab, label %lean_dec.exit400

bb.ab:                                            ; preds = %bb.aa
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !12 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !12
  br label %lean_dec.exit400

bb.ad:                                            ; preds = %bb.ab
  %.not.i404 = icmp eq i32 %i.bt, 0
  br i1 %.not.i404, label %lean_dec.exit400, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #8
  br label %lean_dec.exit400

lean_dec.exit400:                                 ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %.not.i397 = icmp eq i64 %i.by, 0
  br i1 %.not.i397, label %bb.af, label %lean_dec.exit398

bb.af:                                            ; preds = %lean_dec.exit400
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !12 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !12
  br label %lean_dec.exit398

bb.ah:                                            ; preds = %bb.af
  %.not.i406 = icmp eq i32 %i.bz, 0
  br i1 %.not.i406, label %lean_dec.exit398, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #8
  br label %lean_dec.exit398

bb.aj:                                            ; preds = %bb.z
  %i.cc = icmp sgt i32 %.val500, 1
  br i1 %i.cc, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.cd = add nsw i32 %.val500, -1
  store i32 %i.cd, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit398

bb.al:                                            ; preds = %bb.aj
  %.not.i408 = icmp eq i32 %.val500, 0
  br i1 %.not.i408, label %lean_dec.exit398, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec.exit398

lean_dec.exit398:                                 ; preds = %bb.ak, %bb.al, %bb.am, %lean_dec.exit400, %bb.ag, %bb.ah, %bb.ai
  %.0324 = phi ptr [ %3, %lean_dec.exit400 ], [ %3, %bb.ai ], [ %3, %bb.ah ], [ %3, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.am ], [ inttoptr (i64 1 to ptr), %bb.al ], [ inttoptr (i64 1 to ptr), %bb.ak ] ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 14 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, 1
  %.not.i342 = icmp eq i64 %i.ch, 0               ; 4 uses
  br i1 %.not.i342, label %bb.an, label %lean_inc.exit343

bb.an:                                            ; preds = %lean_dec.exit398
  %.val.i.i531 = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i531, 0
  br i1 %i.ci, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.cj = add nuw i32 %.val.i.i531, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !12
  br label %lean_inc.exit343

bb.ap:                                            ; preds = %bb.an
  %.not.i.i532 = icmp eq i32 %.val.i.i531, 0
  br i1 %.not.i.i532, label %lean_inc.exit343, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ck = atomicrmw sub ptr %i.cf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit343

lean_inc.exit343:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %lean_dec.exit398
  %.val.i534 = load i32, ptr %i.bg, align 8, !tbaa !12 ; 4 uses
  %i.cl = icmp eq i32 %.val.i534, 1
  br i1 %i.cl, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit343
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 4 uses
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = and i64 %i.cn, 1
  %.not.i.i535 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i535, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.cp = load i32, ptr %i.cm, align 4, !tbaa !12 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.cm, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bg) #8
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit343
  %i.cs = icmp sgt i32 %.val.i534, 1
  br i1 %i.cs, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.ct = add nsw i32 %.val.i534, -1
  store i32 %i.ct, ptr %i.bg, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i534, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #8
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  %i.cu = tail call ptr @l_Lean_Server_RequestM_checkCancelled(ptr noundef %4) #8 ; 9 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not.i536 = icmp eq i64 %i.cw, 0               ; 2 uses
  br i1 %.not.i536, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.cx = lshr i64 %i.cv, 1
  %i.cy = trunc i64 %i.cx to i32
  br label %lean_obj_tag.exit539

bb.ba:                                            ; preds = %lean_dec_ref_known.exit
  %i.cz = getelementptr i8, ptr %i.cu, i64 4
  %.val.i538 = load i32, ptr %i.cz, align 4
  %i.da = lshr i32 %.val.i538, 24
  br label %lean_obj_tag.exit539

lean_obj_tag.exit539:                             ; preds = %bb.az, %bb.ba
  %.0.i537 = phi i32 [ %i.cy, %bb.az ], [ %i.da, %bb.ba ]
  %i.db = icmp eq i32 %.0.i537, 0
  br i1 %i.db, label %bb.bb, label %bb.dw

bb.bb:                                            ; preds = %lean_obj_tag.exit539
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.cu, i32 noundef 1)
  %i.dc = tail call ptr @l_IO_sleep(i32 noundef 1000) #8 ; 0 uses
  %i.dd = tail call ptr @l_Lean_Server_RequestM_checkCancelled(ptr noundef %4) #8 ; 9 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, 1
  %.not.i540 = icmp eq i64 %i.df, 0               ; 2 uses
  br i1 %.not.i540, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dg = lshr i64 %i.de, 1
  %i.dh = trunc i64 %i.dg to i32
  br label %lean_obj_tag.exit543

bb.bd:                                            ; preds = %bb.bb
  %i.di = getelementptr i8, ptr %i.dd, i64 4
  %.val.i542 = load i32, ptr %i.di, align 4
  %i.dj = lshr i32 %.val.i542, 24
  br label %lean_obj_tag.exit543

lean_obj_tag.exit543:                             ; preds = %bb.bc, %bb.bd
  %.0.i541 = phi i32 [ %i.dh, %bb.bc ], [ %i.dj, %bb.bd ]
  %i.dk = icmp eq i32 %.0.i541, 0
  br i1 %i.dk, label %lean_inc_ref.exit546, label %bb.cv

lean_inc_ref.exit546:                             ; preds = %lean_obj_tag.exit543
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.dd, i32 noundef 1)
  %i.dl = tail call ptr @l_Lean_Server_FileWorker_handleUnknownIdentifierCodeAction(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.iz, ptr noundef nonnull %l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__0_value.l_Lean_Server_FileWorker_handlePostRequestSpecialCases___lam__0___closed__1_value, ptr noundef %4) #8 ; 14 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dn = and i64 %i.dm, 1
  %.not.i547 = icmp eq i64 %i.dn, 0               ; 3 uses
  br i1 %.not.i547, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %lean_inc_ref.exit546
  %i.do = lshr i64 %i.dm, 1
  %i.dp = trunc i64 %i.do to i32
  br label %lean_obj_tag.exit550

bb.bf:                                            ; preds = %lean_inc_ref.exit546
  %i.dq = getelementptr i8, ptr %i.dl, i64 4
  %.val.i549 = load i32, ptr %i.dq, align 4
  %i.dr = lshr i32 %.val.i549, 24
  br label %lean_obj_tag.exit550

lean_obj_tag.exit550:                             ; preds = %bb.be, %bb.bf
  %.0.i548 = phi i32 [ %i.dp, %bb.be ], [ %i.dr, %bb.bf ]
  %i.ds = icmp eq i32 %.0.i548, 0
  br i1 %i.ds, label %bb.bg, label %bb.ce

bb.bg:                                            ; preds = %lean_obj_tag.exit550
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !10 ; 8 uses
  %.val499 = load i32, ptr %i.dl, align 8, !tbaa !12
  %i.dv = icmp eq i32 %.val499, 1                 ; 2 uses
  %.pre626 = ptrtoint ptr %i.du to i64
  %.pre627 = and i64 %.pre626, 1                  ; 2 uses
  br i1 %i.dv, label %lean_dec.exit394, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i340 = icmp eq i64 %.pre627, 0
  br i1 %.not.i340, label %bb.bi, label %lean_inc.exit341

bb.bi:                                            ; preds = %bb.bh
  %.val.i.i551 = load i32, ptr %i.du, align 4, !tbaa !12 ; 3 uses
  %i.dw = icmp sgt i32 %.val.i.i551, 0
  br i1 %i.dw, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.dx = add nuw i32 %.val.i.i551, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !12
  br label %lean_inc.exit341

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i552 = icmp eq i32 %.val.i.i551, 0
  br i1 %.not.i.i552, label %lean_inc.exit341, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dy = atomicrmw sub ptr %i.du, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit341

lean_inc.exit341:                                 ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bh
  br i1 %.not.i547, label %bb.bm, label %lean_dec.exit394

bb.bm:                                            ; preds = %lean_inc.exit341
  %i.dz = load i32, ptr %i.dl, align 8, !tbaa !12 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.eb = add nsw i32 %i.dz, -1
  store i32 %i.eb, ptr %i.dl, align 8, !tbaa !12
  br label %lean_dec.exit394

bb.bo:                                            ; preds = %bb.bm
  %.not.i410 = icmp eq i32 %i.dz, 0
  br i1 %.not.i410, label %lean_dec.exit394, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #8
  br label %lean_dec.exit394

lean_dec.exit394:                                 ; preds = %bb.bg, %lean_inc.exit341, %bb.bn, %bb.bo, %bb.bp
  %.0323 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bp ], [ inttoptr (i64 1 to ptr), %lean_inc.exit341 ], [ inttoptr (i64 1 to ptr), %bb.bn ], [ inttoptr (i64 1 to ptr), %bb.bo ], [ %i.dl, %bb.bg ]
  %i.ec = tail call ptr @l_Array_append___redArg(ptr noundef %i.cf, ptr noundef %i.du) #8
  %.not.i391 = icmp eq i64 %.pre627, 0
  br i1 %.not.i391, label %bb.bq, label %lean_dec.exit392

bb.bq:                                            ; preds = %lean_dec.exit394
  %i.ed = load i32, ptr %i.du, align 4, !tbaa !12 ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.ef = add nsw i32 %i.ed, -1
  store i32 %i.ef, ptr %i.du, align 4, !tbaa !12
  br label %lean_dec.exit392

bb.bs:                                            ; preds = %bb.bq
  %.not.i412 = icmp eq i32 %i.ed, 0
  br i1 %.not.i412, label %lean_dec.exit392, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #8
  br label %lean_dec.exit392

lean_dec.exit392:                                 ; preds = %bb.bt, %bb.bs, %bb.br, %lean_dec.exit394
  %i.eg = tail call ptr @l_Array_toJson___at___00Lean_Server_FileWorker_handlePostRequestSpecialCases_spec__2(ptr noundef %i.ec) ; 6 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = and i64 %i.eh, 1
  %.not.i338 = icmp eq i64 %i.ei, 0
  br i1 %.not.i338, label %bb.bu, label %lean_inc.exit339

bb.bu:                                            ; preds = %lean_dec.exit392
  %.val.i.i554 = load i32, ptr %i.eg, align 4, !tbaa !12 ; 3 uses
  %i.ej = icmp sgt i32 %.val.i.i554, 0
  br i1 %i.ej, label %bb.bv, label %bb.bw, !prof !13

bb.bv:                                            ; preds = %bb.bu
  %i.ek = add nuw i32 %.val.i.i554, 1
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !12
  br label %lean_inc.exit339

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i555 = icmp eq i32 %.val.i.i554, 0
  br i1 %.not.i.i555, label %lean_inc.exit339, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.el = atomicrmw sub ptr %i.eg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit339

lean_inc.exit339:                                 ; preds = %bb.bx, %bb.bw, %bb.bv, %lean_dec.exit392
  br i1 %i.p, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %lean_inc.exit339
  %i.em = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.bz

bb.bz:                                            ; preds = %lean_inc.exit339, %bb.by
  %.sink730 = phi ptr [ %i.em, %bb.by ], [ %.0294, %lean_inc.exit339 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sink730, i64 8
  store ptr %i.eg, ptr %i.en, align 8, !tbaa !10
  %i.eo = tail call ptr @l_Lean_Json_compress(ptr noundef nonnull %i.eg) #8 ; 2 uses
  br i1 %i.bo, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ep = getelementptr inbounds nuw i8, ptr %.0324, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0324, i64 16
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !10
  store ptr %.sink730, ptr %i.ep, align 8, !tbaa !10
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.er = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 1) ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %.sink730, ptr %i.es, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store ptr %i.eo, ptr %i.et, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store i8 %i.m, ptr %i.eu, align 8, !tbaa !16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0320 = phi ptr [ %.0324, %bb.ca ], [ %i.er, %bb.cb ] ; 2 uses
  br i1 %i.dv, label %lean_dec.exit388.sink.split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ev = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit388.sink.split

bb.ce:                                            ; preds = %lean_obj_tag.exit550
  br i1 %.not.i342, label %bb.cf, label %lean_dec.exit390

bb.cf:                                            ; preds = %bb.ce
  %i.ew = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %bb.cg, label %bb.ch, !prof !13

bb.cg:                                            ; preds = %bb.cf
  %i.ey = add nsw i32 %i.ew, -1
  store i32 %i.ey, ptr %i.cf, align 4, !tbaa !12
  br label %lean_dec.exit390

bb.ch:                                            ; preds = %bb.cf
  %.not.i414 = icmp eq i32 %i.ew, 0
  br i1 %.not.i414, label %lean_dec.exit390, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #8
  br label %lean_dec.exit390

lean_dec.exit390:                                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce
  %i.ez = ptrtoint ptr %.0324 to i64
  %i.fa = and i64 %i.ez, 1
  %.not.i557 = icmp eq i64 %i.fa, 0
  br i1 %.not.i557, label %bb.cj, label %lean_del_object.exit

bb.cj:                                            ; preds = %lean_dec.exit390
  tail call void @lean_free_object(ptr noundef nonnull %.0324) #8
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit390, %bb.cj
  %i.fb = ptrtoint ptr %.0294 to i64
  %i.fc = and i64 %i.fb, 1
  %.not.i558 = icmp eq i64 %i.fc, 0
  br i1 %.not.i558, label %bb.ck, label %lean_del_object.exit559

bb.ck:                                            ; preds = %lean_del_object.exit
end_hunk_0
