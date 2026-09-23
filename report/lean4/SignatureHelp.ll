Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SignatureHelp?download=true
inline.NumInlined: 711
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp___lam__1:bb.a
  br i1 %i.fw, label %bb.ep, label %bb.eq, !prof !13

bb.ep:                                            ; preds = %bb.eo
  %i.fx = add nsw i32 %i.fv, -1
  store i32 %i.fx, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit154

bb.eq:                                            ; preds = %bb.eo
  %.not.i217 = icmp eq i32 %i.fv, 0
  br i1 %.not.i217, label %lean_dec.exit154, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit154

lean_dec.exit154:                                 ; preds = %bb.er, %bb.eq, %bb.ep, %bb.en
  %i.fy = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.es, label %bb.et, !prof !13

bb.es:                                            ; preds = %lean_dec.exit154
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit226

bb.et:                                            ; preds = %lean_dec.exit154
  %.not.i225 = icmp eq i32 %i.fy, 0
  br i1 %.not.i225, label %lean_dec_ref.exit226, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec_ref.exit226

lean_dec_ref.exit226:                             ; preds = %bb.es, %bb.et, %bb.eu
  br i1 %.not.i192, label %bb.ev, label %lean_dec.exit152

bb.ev:                                            ; preds = %lean_dec_ref.exit226
  %i.gb = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.ew, label %bb.ex, !prof !13

bb.ew:                                            ; preds = %bb.ev
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit152

bb.ex:                                            ; preds = %bb.ev
  %.not.i219 = icmp eq i32 %i.gb, 0
  br i1 %.not.i219, label %lean_dec.exit152, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit152

lean_dec.exit152:                                 ; preds = %bb.ey, %bb.ex, %bb.ew, %lean_dec_ref.exit226
  %i.ge = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.ez, label %bb.fa, !prof !13

bb.ez:                                            ; preds = %lean_dec.exit152
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit224

bb.fa:                                            ; preds = %lean_dec.exit152
  %.not.i223 = icmp eq i32 %i.ge, 0
  br i1 %.not.i223, label %lean_dec_ref.exit224, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit224

lean_dec_ref.exit224:                             ; preds = %bb.ez, %bb.fa, %bb.fb
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.q, align 8, !tbaa !12
  %i.gj = icmp eq i32 %.val, 1
  br i1 %i.gj, label %lean_dec.exit160, label %bb.fc

bb.fc:                                            ; preds = %lean_dec_ref.exit224
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = and i64 %i.gk, 1
  %.not.i177 = icmp eq i64 %i.gl, 0
  br i1 %.not.i177, label %bb.fd, label %lean_inc.exit

bb.fd:                                            ; preds = %bb.fc
  %.val.i.i296 = load i32, ptr %i.gi, align 4, !tbaa !12 ; 3 uses
  %i.gm = icmp sgt i32 %.val.i.i296, 0
  br i1 %i.gm, label %bb.fe, label %bb.ff, !prof !13

bb.fe:                                            ; preds = %bb.fd
  %i.gn = add nuw i32 %.val.i.i296, 1
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !12
  br label %lean_inc.exit

bb.ff:                                            ; preds = %bb.fd
  %.not.i.i297 = icmp eq i32 %.val.i.i296, 0
  br i1 %.not.i.i297, label %lean_inc.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.go = atomicrmw sub ptr %i.gi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fc
  br i1 %.not.i250, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %lean_inc.exit
  %i.gp = load i32, ptr %i.q, align 8, !tbaa !12  ; 3 uses
  %i.gq = icmp sgt i32 %i.gp, 1
  br i1 %i.gq, label %bb.fi, label %bb.fj, !prof !13

bb.fi:                                            ; preds = %bb.fh
  %i.gr = add nsw i32 %i.gp, -1
  store i32 %i.gr, ptr %i.q, align 8, !tbaa !12
  br label %bb.fl

bb.fj:                                            ; preds = %bb.fh
  %.not.i221 = icmp eq i32 %i.gp, 0
  br i1 %.not.i221, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #7
  br label %bb.fl

bb.fl:                                            ; preds = %lean_inc.exit, %bb.fi, %bb.fj, %bb.fk
  tail call void @lean_inc_heartbeat() #7
  %i.gs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.fm, label %lean_alloc_ctor.exit299

bb.fm:                                            ; preds = %bb.fl
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit299:                          ; preds = %bb.fl
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 1, ptr %i.gs, align 4, !tbaa !12
  store i32 16842768, ptr %i.gu, align 4
  br label %lean_dec.exit160.sink.split

lean_dec.exit160.sink.split:                      ; preds = %lean_alloc_ctor.exit287, %lean_dec_ref.exit234, %lean_alloc_ctor.exit291, %bb.dh, %lean_alloc_ctor.exit295, %lean_alloc_ctor.exit, %lean_alloc_ctor.exit299
  %.sink353 = phi ptr [ %i.gs, %lean_alloc_ctor.exit299 ], [ %i.ey, %lean_alloc_ctor.exit291 ], [ %i.bt, %lean_alloc_ctor.exit ], [ %i.fs, %lean_alloc_ctor.exit295 ], [ %.0150, %lean_dec_ref.exit234 ], [ %i.ep, %bb.dh ], [ %.0147, %lean_alloc_ctor.exit287 ] ; 2 uses
  %.sink = phi ptr [ %i.gi, %lean_alloc_ctor.exit299 ], [ %i.eb, %lean_alloc_ctor.exit291 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit ], [ %i.fi, %lean_alloc_ctor.exit295 ], [ inttoptr (i64 1 to ptr), %lean_dec_ref.exit234 ], [ %i.el, %bb.dh ], [ %i.el, %lean_alloc_ctor.exit287 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sink353, i64 8
  store ptr %.sink, ptr %i.gv, align 8, !tbaa !10
  br label %lean_dec.exit160

lean_dec.exit160:                                 ; preds = %lean_dec.exit160.sink.split, %lean_dec_ref.exit224, %lean_dec_ref.exit228, %bb.di
  %.8 = phi ptr [ %i.dm, %bb.di ], [ %i.by, %lean_dec_ref.exit228 ], [ %i.q, %lean_dec_ref.exit224 ], [ %.sink353, %lean_dec.exit160.sink.split ]
  ret ptr %.8
}

declare ptr @lean_infer_type(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lean_dec_ref_known(ptr noundef %0, i32 noundef range(i32 1, 5) %1) unnamed_addr #2 {
bb.a:
  %.val = load i32, ptr %0, align 4, !tbaa !12    ; 4 uses
  %i.a = icmp eq i32 %.val, 1
  br i1 %i.a, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %lean_dec.exit
  tail call void @lean_free_object(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit9

bb.c:                                             ; preds = %.preheader, %lean_dec.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lean_dec.exit ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %lean_dec.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 4, !tbaa !12   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %.not.i7 = icmp eq i32 %i.g, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !24

bb.h:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.k = add nsw i32 %.val, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit9

bb.j:                                             ; preds = %bb.h
  %.not.i8 = icmp eq i32 %.val, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.b
  ret void
}

declare zeroext i8 @l_Lean_Expr_isForall(ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_PrettyPrinter_delabCore___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_PrettyPrinter_ppTerm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp___lam__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 32) #7 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -184549376
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp___lam__0___boxed, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 2, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1, ptr %i.h, align 2, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.i, align 8, !tbaa !10
  %i.j = tail call ptr @l_Lean_Elab_InfoTree_smallestInfo_x3f(ptr noundef nonnull %i.a, ptr noundef %0) #7 ; 10 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i171 = icmp eq i64 %i.l, 0
  br i1 %.not.i171, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %.val.i = load i32, ptr %i.m, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.n = icmp eq i32 %.mask, 16777216
  br i1 %i.n, label %bb.b, label %bb.cl

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.o = and i64 %i.k, 8589934590
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.b, label %lean_dec.exit136

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10   ; 12 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i152 = icmp eq i64 %i.t, 0                ; 3 uses
  br i1 %.not.i152, label %bb.c, label %lean_inc.exit153

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.r, align 4, !tbaa !12 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i, 0
  br i1 %i.u, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i32 %.val.i.i, 1
  store i32 %i.v, ptr %i.r, align 4, !tbaa !12
  br label %lean_inc.exit153

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit153, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = atomicrmw sub ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit153

lean_inc.exit153:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i172 = load i32, ptr %i.j, align 8, !tbaa !12 ; 4 uses
  %i.x = icmp eq i32 %.val.i172, 1
  br i1 %i.x, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %lean_inc.exit153
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !10   ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i.i173 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i173, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i.preheader
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !12  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.j) #7
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit153
  %i.ae = icmp sgt i32 %.val.i172, 1
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %.val.i172, -1
  store i32 %i.af, ptr %i.j, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i172, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %.not.i174 = icmp eq i64 %i.ak, 0
  br i1 %.not.i174, label %bb.p, label %bb.o

bb.o:                                             ; preds = %lean_dec_ref_known.exit
  %i.al = lshr i64 %i.aj, 1
  %i.am = trunc i64 %i.al to i32
  br label %lean_obj_tag.exit177

bb.p:                                             ; preds = %lean_dec_ref_known.exit
  %i.an = getelementptr i8, ptr %i.ai, i64 4
  %.val.i176 = load i32, ptr %i.an, align 4
  %i.ao = lshr i32 %.val.i176, 24
  br label %lean_obj_tag.exit177

lean_obj_tag.exit177:                             ; preds = %bb.o, %bb.p
  %.0.i175 = phi i32 [ %i.am, %bb.o ], [ %i.ao, %bb.p ]
  %.not = icmp eq i32 %.0.i175, 1
  br i1 %.not, label %bb.q, label %bb.cg

bb.q:                                             ; preds = %lean_obj_tag.exit177
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !10 ; 8 uses
  %.val.i.i178 = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i178, 0
  br i1 %i.ar, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.as = add nuw i32 %.val.i.i178, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !12
  br label %lean_inc_ref.exit180

bb.s:                                             ; preds = %bb.q
  %.not.i.i179 = icmp eq i32 %.val.i.i178, 0
  br i1 %.not.i.i179, label %lean_inc_ref.exit180, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = atomicrmw sub ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit180

lean_inc_ref.exit180:                             ; preds = %bb.r, %bb.s, %bb.t
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !10 ; 5 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 1
  %.not.i150 = icmp eq i64 %i.aw, 0
  br i1 %.not.i150, label %bb.u, label %lean_inc.exit151

end_hunk_0
begin_hunk_1_@l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp:bb.a
  unreachable

lean_alloc_ctor.exit205:                          ; preds = %bb.bj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 1, ptr %i.ec, align 4, !tbaa !12
  store i32 16842768, ptr %i.ee, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %lean_alloc_ctor.exit204, %lean_alloc_ctor.exit205
  %.sink245 = phi ptr [ %i.ec, %lean_alloc_ctor.exit205 ], [ %.0130, %lean_alloc_ctor.exit204 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sink245, i64 8
  store ptr %i.dw, ptr %i.ef, align 8, !tbaa !10
  br i1 %i.cj, label %lean_dec.exit136.thread215.sink.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_inc_heartbeat() #7
  %i.eg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.bn, label %lean_dec.exit136.thread215.sink.split.sink.split

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.bo:                                            ; preds = %lean_obj_tag.exit200
  %i.ei = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %bb.bo
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit138

bb.bq:                                            ; preds = %bb.bo
  %.not.i159 = icmp eq i32 %i.ei, 0
  br i1 %.not.i159, label %lean_dec.exit138, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #7
  br label %lean_dec.exit138

lean_dec.exit138:                                 ; preds = %lean_obj_tag.exit200.thread, %bb.br, %bb.bq, %bb.bp
  br i1 %i.cj, label %lean_dec.exit136.thread215.sink.split, label %bb.bs

bb.bs:                                            ; preds = %lean_dec.exit138
  tail call void @lean_inc_heartbeat() #7
  %i.el = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.bt, label %lean_dec.exit136.thread215.sink.split.sink.split

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.bu:                                            ; preds = %lean_obj_tag.exit193
  br i1 %i.cj, label %lean_dec.exit136.thread215, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.en = ptrtoint ptr %i.ci to i64
  %i.eo = and i64 %i.en, 1
  %.not.i145 = icmp eq i64 %i.eo, 0
  br i1 %.not.i145, label %bb.bw, label %lean_inc.exit

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i208 = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.ep = icmp sgt i32 %.val.i.i208, 0
  br i1 %i.ep, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.eq = add nuw i32 %.val.i.i208, 1
  store i32 %i.eq, ptr %i.ci, align 4, !tbaa !12
  br label %lean_inc.exit

bb.by:                                            ; preds = %bb.bw
  %.not.i.i209 = icmp eq i32 %.val.i.i208, 0
  br i1 %.not.i.i209, label %lean_inc.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.er = atomicrmw sub ptr %i.ci, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bv
  br i1 %.not.i190, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %lean_inc.exit
  %i.es = load i32, ptr %i.bz, align 8, !tbaa !12 ; 3 uses
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.cb, label %bb.cc, !prof !13

bb.cb:                                            ; preds = %bb.ca
  %i.eu = add nsw i32 %i.es, -1
  store i32 %i.eu, ptr %i.bz, align 8, !tbaa !12
  br label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %.not.i161 = icmp eq i32 %i.es, 0
  br i1 %.not.i161, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #7
  br label %bb.ce

bb.ce:                                            ; preds = %lean_inc.exit, %bb.cb, %bb.cc, %bb.cd
  tail call void @lean_inc_heartbeat() #7
  %i.ev = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.cf, label %lean_dec.exit136.thread215.sink.split.sink.split

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.cg:                                            ; preds = %lean_obj_tag.exit177
  br i1 %.not.i152, label %bb.ch, label %lean_dec.exit136

bb.ch:                                            ; preds = %bb.cg
  %i.ex = load i32, ptr %i.r, align 8, !tbaa !12  ; 3 uses
  %i.ey = icmp sgt i32 %i.ex, 1
  br i1 %i.ey, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.ez = add nsw i32 %i.ex, -1
  store i32 %i.ez, ptr %i.r, align 8, !tbaa !12
  br label %lean_dec.exit136

bb.cj:                                            ; preds = %bb.ch
  %.not.i163 = icmp eq i32 %i.ex, 0
  br i1 %.not.i163, label %lean_dec.exit136, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.r) #7
  br label %lean_dec.exit136

bb.cl:                                            ; preds = %lean_obj_tag.exit
  %i.fa = load i32, ptr %i.j, align 4, !tbaa !12  ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %i.j, align 4, !tbaa !12
  br label %lean_dec.exit136

bb.cn:                                            ; preds = %bb.cl
  %.not.i165 = icmp eq i32 %i.fa, 0
  br i1 %.not.i165, label %lean_dec.exit136, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #7
  br label %lean_dec.exit136

lean_dec.exit136:                                 ; preds = %lean_obj_tag.exit.thread, %bb.cm, %bb.cn, %bb.co, %bb.ck, %bb.cj, %bb.ci, %bb.cg
  tail call void @lean_inc_heartbeat() #7
  %i.fd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.cp, label %lean_dec.exit136.thread215.sink.split.sink.split

bb.cp:                                            ; preds = %lean_dec.exit136
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_dec.exit136.thread215.sink.split.sink.split: ; preds = %lean_dec.exit136, %bb.ce, %bb.bs, %bb.bm
  %.sink251 = phi ptr [ %i.ev, %bb.ce ], [ %i.eg, %bb.bm ], [ %i.el, %bb.bs ], [ %i.fd, %lean_dec.exit136 ] ; 3 uses
  %.sink248 = phi i32 [ 16842768, %bb.ce ], [ 65552, %bb.bm ], [ 65552, %bb.bs ], [ 65552, %lean_dec.exit136 ]
  %.sink.ph = phi ptr [ %i.ci, %bb.ce ], [ %.sink245, %bb.bm ], [ inttoptr (i64 1 to ptr), %bb.bs ], [ inttoptr (i64 1 to ptr), %lean_dec.exit136 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink251, i64 4
  store i32 1, ptr %.sink251, align 4, !tbaa !12
  store i32 %.sink248, ptr %i.ff, align 4
  br label %lean_dec.exit136.thread215.sink.split

lean_dec.exit136.thread215.sink.split:            ; preds = %lean_dec.exit136.thread215.sink.split.sink.split, %lean_dec.exit138, %bb.bl
  %.sink = phi ptr [ inttoptr (i64 1 to ptr), %lean_dec.exit138 ], [ %.sink245, %bb.bl ], [ %.sink.ph, %lean_dec.exit136.thread215.sink.split.sink.split ]
  %.7.ph = phi ptr [ %.0132, %lean_dec.exit138 ], [ %.0132, %bb.bl ], [ %.sink251, %lean_dec.exit136.thread215.sink.split.sink.split ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.7.ph, i64 8
  store ptr %.sink, ptr %i.fg, align 8, !tbaa !10
  br label %lean_dec.exit136.thread215

lean_dec.exit136.thread215:                       ; preds = %lean_dec.exit136.thread215.sink.split, %bb.bu
  %.7 = phi ptr [ %i.bz, %bb.bu ], [ %.7.ph, %lean_dec.exit136.thread215.sink.split ]
  ret ptr %.7
}

declare ptr @l_Lean_Elab_InfoTree_smallestInfo_x3f(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Elab_ContextInfo_runMetaM___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Std_Format_pretty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_array_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_ctorIdx.exit:
  %switch.selectcmp.i = icmp eq i8 %0, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %0, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.c, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i.i = icmp eq i8 %i.c, 0
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i
  ret ptr %switch.select5.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %4
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_pipeArg_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
end_hunk_1
begin_hunk_2_@l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_termArg_elim___boxed:bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_appArg_elim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_appArg_elim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_appArg_elim(ptr nofree noundef readnone captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_appArg_elim___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef returned %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %3, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i6 = icmp eq i32 %i.f, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 1
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4 = icmp eq i8 %0, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8                     ; 2 uses
  %switch.selectcmp.i = icmp eq i8 %i.c, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %switch.selectcmp4.i = icmp eq i8 %i.c, 0
  %switch.select5.i = select i1 %switch.selectcmp4.i, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i
  ret ptr %switch.select5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_ctorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %0, 0
  %spec.select = select i1 %i.a, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_ctorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %i.c = icmp eq i64 %i.b, 0
  %spec.select.i = select i1 %i.c, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_toCtorIdx(i8 noundef zeroext %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %0, 0
  %spec.select.i = select i1 %i.a, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  ret ptr %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_toCtorIdx___boxed(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 510
  %i.c = icmp eq i64 %i.b, 0
  %spec.select.i.i = select i1 %i.c, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_ctorElim___redArg(ptr noundef returned %0) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_ctorElim___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_ctorElim(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i8 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_FileWorker_SignatureHelp_SearchControl_ctorElim___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef returned %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit9

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %4, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %i.i = ptrtoint ptr %1 to i64
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.k = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
end_hunk_2
begin_hunk_3_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___redArg:bb.a
bb.ef:                                            ; preds = %bb.ed
  tail call void @lean_inc_heartbeat() #7
  %i.if = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #7 ; 8 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.eg, label %lean_alloc_ctor.exit428

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit428:                          ; preds = %bb.ef
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i32 1, ptr %i.if, align 4, !tbaa !12
  store i32 33816616, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %i.bi, ptr %i.ii, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.bk, ptr %i.ij, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  store ptr %i.ic, ptr %i.ik, align 8, !tbaa !10
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.il, align 8, !tbaa !10
  br label %lean_inc.exit315.backedge

bb.eh:                                            ; preds = %lean_nat_eq.exit
  %i.im = load i32, ptr %i.bo, align 4, !tbaa !12 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %bb.ei, label %bb.ej, !prof !13

bb.ei:                                            ; preds = %bb.eh
  %i.io = add nsw i32 %i.im, -1
  store i32 %i.io, ptr %i.bo, align 4, !tbaa !12
  br label %lean_dec.exit284

bb.ej:                                            ; preds = %bb.eh
  %.not.i351 = icmp eq i32 %i.im, 0
  br i1 %.not.i351, label %lean_dec.exit284, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bo) #7
  br label %lean_dec.exit284

lean_dec.exit284:                                 ; preds = %lean_nat_eq.exit.thread, %bb.ek, %bb.ej, %bb.ei
  br i1 %.not.i266, label %bb.eo, label %bb.el, !prof !20

bb.el:                                            ; preds = %lean_dec.exit284
  %i.ip = add nuw i64 %i.fv, 1                    ; 2 uses
  %i.iq = icmp sgt i64 %i.ip, -1
  br i1 %i.iq, label %bb.em, label %bb.en, !prof !13

bb.em:                                            ; preds = %bb.el
  %i.ir = shl nuw i64 %i.ip, 1
  %i.is = or disjoint i64 %i.ir, 1
  %i.it = inttoptr i64 %i.is to ptr
  br label %lean_dec.exit282

bb.en:                                            ; preds = %bb.el
  %i.iu = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) -9223372036854775808) #7
  br label %lean_dec.exit282

bb.eo:                                            ; preds = %lean_dec.exit284
  %i.iv = tail call ptr @lean_nat_big_add(ptr noundef %i.bm, ptr noundef nonnull inttoptr (i64 3 to ptr)) #7 ; 3 uses
  %i.iw = load i32, ptr %i.bm, align 4, !tbaa !12 ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %bb.ep, label %bb.eq, !prof !13

bb.ep:                                            ; preds = %bb.eo
  %i.iy = add nsw i32 %i.iw, -1
  store i32 %i.iy, ptr %i.bm, align 4, !tbaa !12
  br label %lean_dec.exit282

bb.eq:                                            ; preds = %bb.eo
  %.not.i353 = icmp eq i32 %i.iw, 0
  br i1 %.not.i353, label %lean_dec.exit282, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #7
  br label %lean_dec.exit282

lean_dec.exit282:                                 ; preds = %bb.em, %bb.en, %bb.er, %bb.eq, %bb.ep
  %.0.i246454 = phi ptr [ %i.iv, %bb.er ], [ %i.iv, %bb.ep ], [ %i.iv, %bb.eq ], [ %i.iu, %bb.en ], [ %i.it, %bb.em ]
  %i.iz = tail call ptr @l_String_Slice_posGE___redArg(ptr noundef %1, ptr noundef %.0.i246454) #7 ; 2 uses
  br i1 %i.bp, label %bb.es, label %bb.et

bb.es:                                            ; preds = %lean_dec.exit282
  %i.ja = getelementptr inbounds nuw i8, ptr %.0238, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ja, align 8, !tbaa !10
  %i.jb = getelementptr inbounds nuw i8, ptr %.0238, i64 24
  store ptr %i.iz, ptr %i.jb, align 8, !tbaa !10
  br label %lean_inc.exit315.backedge

bb.et:                                            ; preds = %lean_dec.exit282
  tail call void @lean_inc_heartbeat() #7
  %i.jc = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #7 ; 8 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.eu, label %lean_alloc_ctor.exit431

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit431:                          ; preds = %bb.et
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 1, ptr %i.jc, align 4, !tbaa !12
  store i32 33816616, ptr %i.je, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %i.bi, ptr %i.jf, align 8, !tbaa !10
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store ptr %i.bk, ptr %i.jg, align 8, !tbaa !10
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store ptr %i.iz, ptr %i.jh, align 8, !tbaa !10
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.ji, align 8, !tbaa !10
  br label %lean_inc.exit315.backedge

bb.ev:                                            ; preds = %lean_nat_add.exit251
  br i1 %.not.i266, label %bb.ez, label %bb.ew, !prof !20

bb.ew:                                            ; preds = %bb.ev
  %i.jj = add nuw i64 %i.fv, 1                    ; 2 uses
  %i.jk = icmp sgt i64 %i.jj, -1
  br i1 %i.jk, label %bb.ex, label %bb.ey, !prof !13

bb.ex:                                            ; preds = %bb.ew
  %i.jl = shl nuw i64 %i.jj, 1
  %i.jm = or disjoint i64 %i.jl, 1
  %i.jn = inttoptr i64 %i.jm to ptr
  br label %lean_dec.exit280

bb.ey:                                            ; preds = %bb.ew
  %i.jo = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) -9223372036854775808) #7
  br label %lean_dec.exit280

bb.ez:                                            ; preds = %bb.ev
  %i.jp = tail call ptr @lean_nat_big_add(ptr noundef %i.bm, ptr noundef nonnull inttoptr (i64 3 to ptr)) #7 ; 3 uses
  %i.jq = load i32, ptr %i.bm, align 4, !tbaa !12 ; 3 uses
  %i.jr = icmp sgt i32 %i.jq, 1
  br i1 %i.jr, label %bb.fa, label %bb.fb, !prof !13

bb.fa:                                            ; preds = %bb.ez
  %i.js = add nsw i32 %i.jq, -1
  store i32 %i.js, ptr %i.bm, align 4, !tbaa !12
  br label %lean_dec.exit280

bb.fb:                                            ; preds = %bb.ez
  %.not.i355 = icmp eq i32 %i.jq, 0
  br i1 %.not.i355, label %lean_dec.exit280, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #7
  br label %lean_dec.exit280

lean_dec.exit280:                                 ; preds = %bb.ex, %bb.ey, %bb.fc, %bb.fb, %bb.fa
  %.0.i242456 = phi ptr [ %i.jp, %bb.fc ], [ %i.jp, %bb.fa ], [ %i.jp, %bb.fb ], [ %i.jo, %bb.ey ], [ %i.jn, %bb.ex ] ; 8 uses
  %i.jt = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.ju = and i64 %i.jt, 1
  %.not.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i, label %bb.fg, label %bb.fd, !prof !20

bb.fd:                                            ; preds = %lean_dec.exit280
  %i.jv = lshr i64 %i.jt, 1
  %i.jw = add nuw i64 %i.jv, 1                    ; 2 uses
  %i.jx = icmp sgt i64 %i.jw, -1
  br i1 %i.jx, label %bb.fe, label %bb.ff, !prof !13

bb.fe:                                            ; preds = %bb.fd
  %i.jy = shl nuw i64 %i.jw, 1
  %i.jz = or disjoint i64 %i.jy, 1
  %i.ka = inttoptr i64 %i.jz to ptr
  br label %lean_dec.exit278

bb.ff:                                            ; preds = %bb.fd
  %i.kb = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) -9223372036854775808) #7
  br label %lean_dec.exit278

bb.fg:                                            ; preds = %lean_dec.exit280
  %i.kc = tail call ptr @lean_nat_big_add(ptr noundef %i.bo, ptr noundef nonnull inttoptr (i64 3 to ptr)) #7 ; 3 uses
  %i.kd = load i32, ptr %i.bo, align 4, !tbaa !12 ; 3 uses
  %i.ke = icmp sgt i32 %i.kd, 1
  br i1 %i.ke, label %bb.fh, label %bb.fi, !prof !13

bb.fh:                                            ; preds = %bb.fg
  %i.kf = add nsw i32 %i.kd, -1
  store i32 %i.kf, ptr %i.bo, align 4, !tbaa !12
  br label %lean_dec.exit278

bb.fi:                                            ; preds = %bb.fg
  %.not.i357 = icmp eq i32 %i.kd, 0
  br i1 %.not.i357, label %lean_dec.exit278, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bo) #7
  br label %lean_dec.exit278

lean_dec.exit278:                                 ; preds = %bb.fe, %bb.ff, %bb.fj, %bb.fi, %bb.fh
  %.0.i458 = phi ptr [ %i.kc, %bb.fj ], [ %i.kc, %bb.fh ], [ %i.kc, %bb.fi ], [ %i.kb, %bb.ff ], [ %i.ka, %bb.fe ] ; 10 uses
  %i.kg = ptrtoint ptr %.0.i458 to i64            ; 3 uses
  %.not.i388 = trunc i64 %i.kg to i1              ; 2 uses
  %i.kh = ptrtoint ptr %.1.i264 to i64            ; 2 uses
  %i.ki = trunc i64 %i.kh to i1
  %or.cond = select i1 %.not.i388, i1 %i.ki, i1 false, !prof !21
  br i1 %or.cond, label %bb.fk, label %.critedge.i389, !prof !21

bb.fk:                                            ; preds = %lean_dec.exit278
  %i.kj = icmp eq ptr %.0.i458, %.1.i264
  br label %lean_nat_eq.exit391

.critedge.i389:                                   ; preds = %lean_dec.exit278
  %i.kk = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0.i458, ptr noundef %.1.i264) #7
  br label %lean_nat_eq.exit391

lean_nat_eq.exit391:                              ; preds = %bb.fk, %.critedge.i389
  %.0.i390 = phi i1 [ %i.kj, %bb.fk ], [ %i.kk, %.critedge.i389 ]
  %i.kl = and i64 %i.kh, 1
  %.not.i275 = icmp eq i64 %i.kl, 0
  br i1 %.not.i275, label %bb.fl, label %lean_dec.exit276

bb.fl:                                            ; preds = %lean_nat_eq.exit391
  %i.km = load i32, ptr %.1.i264, align 4, !tbaa !12 ; 3 uses
  %i.kn = icmp sgt i32 %i.km, 1
  br i1 %i.kn, label %bb.fm, label %bb.fn, !prof !13

bb.fm:                                            ; preds = %bb.fl
  %i.ko = add nsw i32 %i.km, -1
  store i32 %i.ko, ptr %.1.i264, align 4, !tbaa !12
  br label %lean_dec.exit276

bb.fn:                                            ; preds = %bb.fl
  %.not.i359 = icmp eq i32 %i.km, 0
  br i1 %.not.i359, label %lean_dec.exit276, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i264) #7
  br label %lean_dec.exit276

lean_dec.exit276:                                 ; preds = %bb.fo, %bb.fn, %bb.fm, %lean_nat_eq.exit391
  br i1 %.0.i390, label %bb.ft, label %bb.fp

bb.fp:                                            ; preds = %lean_dec.exit276
  br i1 %i.bp, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.kp = getelementptr inbounds nuw i8, ptr %.0238, i64 32
  store ptr %.0.i458, ptr %i.kp, align 8, !tbaa !10
  %i.kq = getelementptr inbounds nuw i8, ptr %.0238, i64 24
  store ptr %.0.i242456, ptr %i.kq, align 8, !tbaa !10
  br label %lean_inc.exit315.backedge

bb.fr:                                            ; preds = %bb.fp
  tail call void @lean_inc_heartbeat() #7
  %i.kr = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #7 ; 8 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.fs, label %lean_alloc_ctor.exit436

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit436:                          ; preds = %bb.fr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 1, ptr %i.kr, align 4, !tbaa !12
  store i32 33816616, ptr %i.kt, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %i.bi, ptr %i.ku, align 8, !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr %i.bk, ptr %i.kv, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store ptr %.0.i242456, ptr %i.kw, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  store ptr %.0.i458, ptr %i.kx, align 8, !tbaa !10
  br label %lean_inc.exit315.backedge

bb.ft:                                            ; preds = %lean_dec.exit276
  %i.ky = ptrtoint ptr %.0238 to i64
  %i.kz = and i64 %i.ky, 1
  %.not.i437 = icmp eq i64 %i.kz, 0
  br i1 %.not.i437, label %bb.fu, label %lean_del_object.exit438

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_free_object(ptr noundef nonnull %.0238) #7
  br label %lean_del_object.exit438

lean_del_object.exit438:                          ; preds = %bb.ft, %bb.fu
  %i.la = load i32, ptr %i.bk, align 4, !tbaa !12 ; 3 uses
  %i.lb = icmp sgt i32 %i.la, 1
  br i1 %i.lb, label %bb.fv, label %bb.fw, !prof !13

bb.fv:                                            ; preds = %lean_del_object.exit438
  %i.lc = add nsw i32 %i.la, -1
  store i32 %i.lc, ptr %i.bk, align 4, !tbaa !12
  br label %lean_dec_ref.exit370

bb.fw:                                            ; preds = %lean_del_object.exit438
  %.not.i369 = icmp eq i32 %i.la, 0
  br i1 %.not.i369, label %lean_dec_ref.exit370, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bk) #7
  br label %lean_dec_ref.exit370

lean_dec_ref.exit370:                             ; preds = %bb.fv, %bb.fw, %bb.fx
  %i.ld = load i32, ptr %i.bi, align 4, !tbaa !12 ; 3 uses
  %i.le = icmp sgt i32 %i.ld, 1
  br i1 %i.le, label %bb.fy, label %bb.fz, !prof !13

bb.fy:                                            ; preds = %lean_dec_ref.exit370
  %i.lf = add nsw i32 %i.ld, -1
  store i32 %i.lf, ptr %i.bi, align 4, !tbaa !12
  br label %lean_dec_ref.exit368

bb.fz:                                            ; preds = %lean_dec_ref.exit370
  %.not.i367 = icmp eq i32 %i.ld, 0
  br i1 %.not.i367, label %lean_dec_ref.exit368, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #7
  br label %lean_dec_ref.exit368

lean_dec_ref.exit368:                             ; preds = %bb.fy, %bb.fz, %bb.ga
  %i.lg = ptrtoint ptr %.0.i242456 to i64         ; 2 uses
  %i.lh = and i64 %i.lg, 1
  %.not.i256 = icmp eq i64 %i.lh, 0               ; 2 uses
  br i1 %.not.i256, label %lean_nat_sub.exit, label %bb.gb, !prof !20

bb.gb:                                            ; preds = %lean_dec_ref.exit368
  %i.li = and i64 %i.kg, 1
  %.not480 = icmp eq i64 %i.li, 0
  br i1 %.not480, label %lean_nat_sub.exit.thread461, label %bb.gc, !prof !20

lean_nat_sub.exit.thread461:                      ; preds = %bb.gb
  %i.lj = tail call ptr @lean_nat_big_sub(ptr noundef %.0.i242456, ptr noundef %.0.i458) #7
  br label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  %i.lk = lshr i64 %i.lg, 1                       ; 2 uses
  %i.ll = lshr i64 %i.kg, 1                       ; 2 uses
  %i.lm = icmp samesign ult i64 %i.lk, %i.ll
  br i1 %i.lm, label %lean_dec.exit272, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ln = sub nuw nsw i64 %i.lk, %i.ll
  %i.lo = shl nuw i64 %i.ln, 1
  %i.lp = or disjoint i64 %i.lo, 1
  %i.lq = inttoptr i64 %i.lp to ptr
  br label %lean_dec.exit272

lean_nat_sub.exit:                                ; preds = %lean_dec_ref.exit368
  %i.lr = tail call ptr @lean_nat_big_sub(ptr noundef %.0.i242456, ptr noundef %.0.i458) #7 ; 2 uses
  br i1 %.not.i388, label %lean_dec.exit274.thread, label %bb.ge

bb.ge:                                            ; preds = %lean_nat_sub.exit.thread461, %lean_nat_sub.exit
  %i.ls = phi ptr [ %i.lj, %lean_nat_sub.exit.thread461 ], [ %i.lr, %lean_nat_sub.exit ] ; 2 uses
  %i.lt = load i32, ptr %.0.i458, align 4, !tbaa !12 ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %bb.gf, label %bb.gg, !prof !13

bb.gf:                                            ; preds = %bb.ge
  %i.lv = add nsw i32 %i.lt, -1
  store i32 %i.lv, ptr %.0.i458, align 4, !tbaa !12
  br label %lean_dec.exit274

bb.gg:                                            ; preds = %bb.ge
  %.not.i361 = icmp eq i32 %i.lt, 0
  br i1 %.not.i361, label %lean_dec.exit274, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i458) #7
  br label %lean_dec.exit274

lean_dec.exit274:                                 ; preds = %bb.gh, %bb.gg, %bb.gf
  br i1 %.not.i256, label %lean_dec.exit274.thread, label %lean_dec.exit272

lean_dec.exit274.thread:                          ; preds = %lean_nat_sub.exit, %lean_dec.exit274
  %.1.i460464 = phi ptr [ %i.ls, %lean_dec.exit274 ], [ %i.lr, %lean_nat_sub.exit ] ; 3 uses
  %i.lw = load i32, ptr %.0.i242456, align 4, !tbaa !12 ; 3 uses
  %i.lx = icmp sgt i32 %i.lw, 1
  br i1 %i.lx, label %bb.gi, label %bb.gj, !prof !13

bb.gi:                                            ; preds = %lean_dec.exit274.thread
  %i.ly = add nsw i32 %i.lw, -1
  store i32 %i.ly, ptr %.0.i242456, align 4, !tbaa !12
  br label %lean_dec.exit272

bb.gj:                                            ; preds = %lean_dec.exit274.thread
  %.not.i363 = icmp eq i32 %i.lw, 0
  br i1 %.not.i363, label %lean_dec.exit272, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i242456) #7
  br label %lean_dec.exit272

lean_dec.exit272:                                 ; preds = %bb.gc, %bb.gd, %bb.gk, %bb.gj, %bb.gi, %lean_dec.exit274
  %.1.i460463 = phi ptr [ %i.ls, %lean_dec.exit274 ], [ %.1.i460464, %bb.gk ], [ %.1.i460464, %bb.gi ], [ %.1.i460464, %bb.gj ], [ inttoptr (i64 1 to ptr), %bb.gc ], [ %i.lq, %bb.gd ] ; 5 uses
  %i.lz = tail call ptr @l_String_Slice_pos_x21(ptr noundef %1, ptr noundef %.1.i460463) #7
  %i.ma = ptrtoint ptr %.1.i460463 to i64
  %i.mb = and i64 %i.ma, 1
  %.not.i270 = icmp eq i64 %i.mb, 0
  br i1 %.not.i270, label %bb.gl, label %lean_dec.exit

bb.gl:                                            ; preds = %lean_dec.exit272
  %i.mc = load i32, ptr %.1.i460463, align 4, !tbaa !12 ; 3 uses
  %i.md = icmp sgt i32 %i.mc, 1
end_hunk_3
begin_hunk_4_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___redArg:bb.a
bb.gm:                                            ; preds = %bb.gl
  %i.me = add nsw i32 %i.mc, -1
  store i32 %i.me, ptr %.1.i460463, align 4, !tbaa !12
  br label %lean_dec.exit

bb.gn:                                            ; preds = %bb.gl
  %.not.i365 = icmp eq i32 %i.mc, 0
  br i1 %.not.i365, label %lean_dec.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i460463) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.go, %bb.gn, %bb.gm, %lean_dec.exit272
  tail call void @lean_inc_heartbeat() #7
  %i.mf = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.gp, label %lean_alloc_ctor.exit439

bb.gp:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit439:                          ; preds = %lean_dec.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i32 1, ptr %i.mf, align 4, !tbaa !12
  store i32 16842768, ptr %i.mh, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store ptr %i.lz, ptr %i.mi, align 8, !tbaa !10
  br label %bb.gv

bb.gq:                                            ; preds = %lean_obj_tag.exit
  %i.mj = ptrtoint ptr %.0208 to i64
  %i.mk = and i64 %i.mj, 1
  %.not.i309 = icmp eq i64 %i.mk, 0
  br i1 %.not.i309, label %bb.gr, label %bb.gv

bb.gr:                                            ; preds = %bb.gq
  %.val.i.i440 = load i32, ptr %.0208, align 4, !tbaa !12 ; 3 uses
  %i.ml = icmp sgt i32 %.val.i.i440, 0
  br i1 %i.ml, label %bb.gs, label %bb.gt, !prof !13

bb.gs:                                            ; preds = %bb.gr
  %i.mm = add nuw i32 %.val.i.i440, 1
  store i32 %i.mm, ptr %.0208, align 4, !tbaa !12
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gr
  %.not.i.i441 = icmp eq i32 %.val.i.i440, 0
  br i1 %.not.i.i441, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.mn = atomicrmw sub ptr %.0208, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.gv

bb.gv:                                            ; preds = %lean_alloc_ctor.exit, %bb.cq, %lean_alloc_ctor.exit439, %bb.cu, %bb.ct, %bb.cs, %bb.gu, %bb.gt, %bb.gs, %bb.gq
  %.5.ph = phi ptr [ %.0208, %bb.gq ], [ %.0208, %bb.gs ], [ %.0208, %bb.gt ], [ %.0208, %bb.gu ], [ %.0208, %bb.cs ], [ %.0208, %bb.ct ], [ %.0208, %bb.cu ], [ %i.mf, %lean_alloc_ctor.exit439 ], [ %.0208, %bb.cq ], [ %i.z, %lean_alloc_ctor.exit ]
  ret ptr %.5.ph
}

declare ptr @l_String_Slice_posGE___redArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_String_Slice_pos_x21(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %2 to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i13 = icmp eq i32 %i.i, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit11
  %i.l = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %lean_dec.exit
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit18

bb.k:                                             ; preds = %lean_dec.exit
  %.not.i17 = icmp eq i32 %i.l, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.o = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec_ref.exit18
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec_ref.exit18
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val50 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = shl i64 %.val50, 1
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.val.i.i = load i32, ptr %0, align 8, !tbaa !12 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i, 0
  br i1 %i.e, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i32 %.val.i.i, 1
  store i32 %i.f, ptr %0, align 8, !tbaa !12
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  tail call void @lean_inc_heartbeat() #7
  %i.h = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 13 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %lean_alloc_ctor.exit

bb.e:                                             ; preds = %lean_inc_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !12
  store i32 196640, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %0, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.d, ptr %i.m, align 8, !tbaa !10
  %i.n = load atomic i32, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__2_once seq_cst, align 4, !tbaa !23
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_alloc_ctor.exit
  %i.p = load i8, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__2, align 1, !tbaa !19
  br label %lean_uint8_once.exit

bb.g:                                             ; preds = %lean_alloc_ctor.exit
  %i.q = tail call zeroext i8 @lean_uint8_once_cold(ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__2, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__2_once, ptr noundef nonnull @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__2) #7
  br label %lean_uint8_once.exit

lean_uint8_once.exit:                             ; preds = %bb.f, %bb.g
  %.0.i = phi i8 [ %i.p, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i8 %.0.i, 0
  br i1 %i.r, label %bb.h, label %lean_obj_once.exit

bb.h:                                             ; preds = %lean_uint8_once.exit
  %i.s = load atomic i32, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__5_once seq_cst, align 4, !tbaa !23
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.j:                                             ; preds = %bb.h
  %i.v = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__5, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__5) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.j, %bb.i, %lean_uint8_once.exit
  %.043 = phi ptr [ @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__6_value, %lean_uint8_once.exit ], [ %i.u, %bb.i ], [ %i.v, %bb.j ] ; 5 uses
  %i.w = ptrtoint ptr %.043 to i64
  %i.x = and i64 %i.w, 1
  %.not.i45 = icmp eq i64 %i.x, 0
  br i1 %.not.i45, label %bb.k, label %lean_inc.exit46

bb.k:                                             ; preds = %lean_obj_once.exit
  %.val.i.i52 = load i32, ptr %.043, align 4, !tbaa !12 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i52, 0
  br i1 %i.y, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.z = add nuw i32 %.val.i.i52, 1
  store i32 %i.z, ptr %.043, align 4, !tbaa !12
  br label %lean_inc.exit46

bb.m:                                             ; preds = %bb.k
  %.not.i.i53 = icmp eq i32 %.val.i.i52, 0
  br i1 %.not.i.i53, label %lean_inc.exit46, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = atomicrmw sub ptr %.043, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit46

lean_inc.exit46:                                  ; preds = %bb.n, %bb.m, %bb.l, %lean_obj_once.exit
  %i.ab = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___redArg(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef %.043, ptr noundef nonnull inttoptr (i64 1 to ptr)) ; 8 uses
  %.val.i = load i32, ptr %i.h, align 8, !tbaa !12 ; 4 uses
  %i.ac = icmp eq i32 %.val.i, 1
  br i1 %i.ac, label %.preheader.i.preheader, label %bb.aa

.preheader.i.preheader:                           ; preds = %lean_inc.exit46
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !10  ; 4 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, 1
  %.not.i.i55 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i55, label %bb.o, label %lean_dec.exit.i

bb.o:                                             ; preds = %.preheader.i.preheader
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !12 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.q:                                             ; preds = %bb.o
  %.not.i7.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ad) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10 ; 4 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %.not.i.i55.1 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i55.1, label %bb.s, label %lean_dec.exit.i.1

bb.s:                                             ; preds = %lean_dec.exit.i
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !12 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.v, label %bb.t, !prof !13

bb.t:                                             ; preds = %bb.s
  %.not.i7.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #7
  br label %lean_dec.exit.i.1

bb.v:                                             ; preds = %bb.s
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !12
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.v, %bb.u, %bb.t, %lean_dec.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !10 ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i55.2 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i55.2, label %bb.w, label %lean_dec.exit.i.2

bb.w:                                             ; preds = %lean_dec.exit.i.1
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !12 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.z, label %bb.x, !prof !13

bb.x:                                             ; preds = %bb.w
  %.not.i7.i.2 = icmp eq i32 %i.au, 0
  br i1 %.not.i7.i.2, label %lean_dec.exit.i.2, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #7
  br label %lean_dec.exit.i.2

bb.z:                                             ; preds = %bb.w
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !12
  br label %lean_dec.exit.i.2

lean_dec.exit.i.2:                                ; preds = %bb.z, %bb.y, %bb.x, %lean_dec.exit.i.1
  tail call void @lean_free_object(ptr noundef nonnull %i.h) #7
  br label %lean_dec_ref_known.exit

bb.aa:                                            ; preds = %lean_inc.exit46
  %i.ax = icmp sgt i32 %.val.i, 1
  br i1 %i.ax, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.ay = add nsw i32 %.val.i, -1
  store i32 %i.ay, ptr %i.h, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i8.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.2, %bb.ab, %bb.ac, %bb.ad
  %i.az = load i32, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %lean_dec_ref_known.exit
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit49

bb.af:                                            ; preds = %lean_dec_ref_known.exit
  %.not.i48 = icmp eq i32 %i.az, 0
  br i1 %.not.i48, label %lean_dec_ref.exit49, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit49

lean_dec_ref.exit49:                              ; preds = %bb.ae, %bb.af, %bb.ag
  %i.bc = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i56 = icmp eq i64 %i.bd, 0                ; 2 uses
  br i1 %.not.i56, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %lean_dec_ref.exit49
  %i.be = lshr i64 %i.bc, 1
  %i.bf = trunc i64 %i.be to i32
  br label %lean_obj_tag.exit

bb.ai:                                            ; preds = %lean_dec_ref.exit49
  %i.bg = getelementptr i8, ptr %i.ab, i64 4
  %.val.i58 = load i32, ptr %i.bg, align 4
  %i.bh = lshr i32 %.val.i58, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.ah, %bb.ai
  %.0.i57 = phi i32 [ %i.bf, %bb.ah ], [ %i.bh, %bb.ai ]
  %i.bi = icmp eq i32 %.0.i57, 0
  br i1 %i.bi, label %lean_dec.exit, label %bb.aj

bb.aj:                                            ; preds = %lean_obj_tag.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.ab, align 8, !tbaa !12
  %i.bl = icmp eq i32 %.val, 1
  br i1 %i.bl, label %lean_dec.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = and i64 %i.bm, 1
  %.not.i44 = icmp eq i64 %i.bn, 0
  br i1 %.not.i44, label %bb.al, label %lean_inc.exit

bb.al:                                            ; preds = %bb.ak
  %.val.i.i59 = load i32, ptr %i.bk, align 4, !tbaa !12 ; 3 uses
  %i.bo = icmp sgt i32 %.val.i.i59, 0
  br i1 %i.bo, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.bp = add nuw i32 %.val.i.i59, 1
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !12
  br label %lean_inc.exit

bb.an:                                            ; preds = %bb.al
  %.not.i.i60 = icmp eq i32 %.val.i.i59, 0
  br i1 %.not.i.i60, label %lean_inc.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bq = atomicrmw sub ptr %i.bk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  br i1 %.not.i56, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %lean_inc.exit
  %i.br = load i32, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.ab, align 8, !tbaa !12
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %.not.i47 = icmp eq i32 %i.br, 0
  br i1 %.not.i47, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #7
  br label %bb.at

bb.at:                                            ; preds = %lean_inc.exit, %bb.aq, %bb.ar, %bb.as
  tail call void @lean_inc_heartbeat() #7
  %i.bu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.au, label %lean_alloc_ctor.exit62

bb.au:                                            ; preds = %bb.at
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit62:                           ; preds = %bb.at
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 1, ptr %i.bu, align 4, !tbaa !12
  store i32 16842768, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bk, ptr %i.bx, align 8, !tbaa !10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.aj, %lean_obj_tag.exit, %lean_alloc_ctor.exit62
  %.1 = phi ptr [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ], [ %i.bu, %lean_alloc_ctor.exit62 ], [ %i.ab, %bb.aj ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i2 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i2 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge.i, label %bb.d, !prof !20

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = icmp eq ptr %.0.i2, inttoptr (i64 1 to ptr)
  br label %lean_nat_eq.exit

.critedge.i:                                      ; preds = %lean_obj_once.exit
  %i.h = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0.i2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.d, %.critedge.i
  %.0.i = phi i1 [ %i.g, %bb.d ], [ %i.h, %.critedge.i ]
  %i.i = zext i1 %.0.i to i8
  ret i8 %i.i
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__4_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__4, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__4_once, ptr noundef nonnull @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__4) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = load atomic i32, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3_once seq_cst, align 4, !tbaa !23
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit10

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3) #7
  br label %lean_obj_once.exit10

lean_obj_once.exit10:                             ; preds = %bb.d, %bb.e
  %.0.i9 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  tail call void @lean_inc_heartbeat() #7
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #7 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %lean_alloc_ctor.exit

bb.f:                                             ; preds = %lean_obj_once.exit10
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit10
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !12
  store i32 33816616, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.0.i9, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8, !tbaa !10
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f_spec__0___redArg(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %6)
  %i.b = ptrtoint ptr %6 to i64
  %i.c = and i64 %i.b, 1
  %.not.i13 = icmp eq i64 %i.c, 0
  br i1 %.not.i13, label %bb.b, label %lean_dec.exit14

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !12
  br label %lean_dec.exit14

bb.d:                                             ; preds = %bb.b
  %.not.i15 = icmp eq i32 %i.d, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #7
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %2 to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit14
  %i.i = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i16 = icmp eq i32 %i.i, 0
  br i1 %.not.i16, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit14
  %i.l = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %lean_dec.exit
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.k:                                             ; preds = %lean_dec.exit
  %.not.i20 = icmp eq i32 %i.l, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.o = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec_ref.exit21
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit19

bb.n:                                             ; preds = %lean_dec_ref.exit21
  %.not.i18 = icmp eq i32 %i.o, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_isPositionInLineComment(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.a = icmp sgt i32 %.val.i.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i.i, 1
  store i32 %i.b, ptr %0, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.d = tail call ptr @l_Lean_FileMap_toPosition(ptr noundef nonnull %0, ptr noundef %1) #7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 9 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not.i58 = icmp eq i64 %i.h, 0                 ; 2 uses
  br i1 %.not.i58, label %bb.e, label %lean_inc.exit59

bb.e:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i84 = load i32, ptr %i.f, align 4, !tbaa !12 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i84, 0
  br i1 %i.i, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i32 %.val.i.i84, 1
  store i32 %i.j, ptr %i.f, align 4, !tbaa !12
  br label %lean_inc.exit59

bb.g:                                             ; preds = %bb.e
  %.not.i.i85 = icmp eq i32 %.val.i.i84, 0
  br i1 %.not.i.i85, label %lean_inc.exit59, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = atomicrmw sub ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit59

lean_inc.exit59:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_inc_ref.exit
  %i.l = load i32, ptr %i.d, align 8, !tbaa !12   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %lean_inc.exit59
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %i.d, align 8, !tbaa !12
  br label %lean_dec_ref.exit80

bb.j:                                             ; preds = %lean_inc.exit59
  %.not.i79 = icmp eq i32 %i.l, 0
  br i1 %.not.i79, label %lean_dec_ref.exit80, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br label %lean_dec_ref.exit80

end_hunk_4
begin_hunk_5_@l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f___lam__1:bb.a
  br i1 %i.e, label %bb.b, label %bb.s

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.f = and i64 %i.b, 8589934590
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.b, label %lean_dec.exit14

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10   ; 8 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i15 = icmp eq i64 %i.k, 0                 ; 2 uses
  br i1 %.not.i15, label %bb.c, label %lean_inc.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !12 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i, 0
  br i1 %i.l, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i32 %.val.i.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !12
  br label %lean_inc.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.val.i20 = load i32, ptr %i.a, align 8, !tbaa !12 ; 4 uses
  %i.o = icmp eq i32 %.val.i20, 1
  br i1 %i.o, label %.preheader.i.preheader, label %bb.k

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !10   ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, 1
  %.not.i.i21 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i21, label %bb.g, label %lean_dec.exit.i

bb.g:                                             ; preds = %.preheader.i.preheader
  %i.s = load i32, ptr %i.p, align 4, !tbaa !12   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i7.i = icmp eq i32 %i.s, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #7
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %lean_inc.exit
  %i.v = icmp sgt i32 %.val.i20, 1
  br i1 %i.v, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %.val.i20, -1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %bb.k
  %.not.i8.i = icmp eq i32 %.val.i20, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.l, %bb.m, %bb.n
  %i.x = tail call zeroext i8 @l_Lean_Syntax_Range_contains(ptr noundef %i.i, ptr noundef %1, i8 noundef zeroext %0) #7 ; 4 uses
  br i1 %.not.i15, label %bb.o, label %lean_dec.exit14

bb.o:                                             ; preds = %lean_dec_ref_known.exit
  %i.y = load i32, ptr %i.i, align 4, !tbaa !12   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !12
  br label %lean_dec.exit14

bb.q:                                             ; preds = %bb.o
  %.not.i16 = icmp eq i32 %i.y, 0
  br i1 %.not.i16, label %lean_dec.exit14, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #7
  br label %lean_dec.exit14

bb.s:                                             ; preds = %lean_obj_tag.exit
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !12  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !12
  br label %lean_dec.exit14

bb.u:                                             ; preds = %bb.s
  %.not.i17 = icmp eq i32 %i.ab, 0
  br i1 %.not.i17, label %lean_dec.exit14, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %lean_obj_tag.exit.thread, %bb.t, %bb.u, %bb.v, %lean_dec_ref_known.exit, %bb.p, %bb.q, %bb.r
  %.0 = phi i8 [ %i.x, %lean_dec_ref_known.exit ], [ %i.x, %bb.r ], [ %i.x, %bb.q ], [ %i.x, %bb.p ], [ %2, %bb.v ], [ %2, %bb.u ], [ %2, %bb.t ], [ %2, %lean_obj_tag.exit.thread ]
  ret i8 %.0
}

declare zeroext i8 @l_Lean_Syntax_Range_contains(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call zeroext i8 @l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f___lam__1(i8 noundef zeroext %i.c, ptr noundef %1, i8 noundef zeroext %i.f, ptr noundef %3)
  %i.h = ptrtoint ptr %3 to i64
  %i.i = and i64 %i.h, 1
  %.not.i9 = icmp eq i64 %i.i, 0
  br i1 %.not.i9, label %bb.b, label %lean_dec.exit10

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit10

bb.d:                                             ; preds = %bb.b
  %.not.i11 = icmp eq i32 %i.j, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = ptrtoint ptr %1 to i64
  %i.n = and i64 %i.m, 1
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit10
  %i.o = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit10
  %i.r = zext i8 %i.g to i64
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = or disjoint i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext range(i8 0, 2) i8 @l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f___lam__2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19    ; 2 uses
  %switch.selectcmp4.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19    ; 2 uses
  %switch.selectcmp4.i16 = icmp eq i8 %i.d, 0
  %switch.selectcmp.i14 = icmp ne i8 %i.d, 1
  %2 = icmp ult i8 %i.b, 2
  %3 = select i1 %switch.selectcmp.i14, i1 true, i1 %2
  %4 = select i1 %switch.selectcmp4.i16, i1 %switch.selectcmp4.i, i1 %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f___lam__2___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19    ; 2 uses
  %2 = load i32, ptr %1, align 4, !tbaa !12       ; 3 uses
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %2, -1
  store i32 %i.e, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %bb.a
  %.not.i5 = icmp eq i32 %2, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.f = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %switch.selectcmp4.i16.i = icmp eq i8 %i.d, 0
  %switch.selectcmp4.i.i = icmp eq i8 %i.b, 0
  %switch.selectcmp.i14.i = icmp ne i8 %i.d, 1
  %4 = icmp ult i8 %i.b, 2
  %5 = select i1 %switch.selectcmp.i14.i, i1 true, i1 %4
  %6 = select i1 %switch.selectcmp4.i16.i, i1 %switch.selectcmp4.i.i, i1 %5
  %i.i = select i1 %6, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__1(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not161 = icmp ult i64 %5, %4
  br i1 %.not161, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.b = icmp eq i8 %2, 0                         ; 2 uses
  %i.c = icmp eq i8 %1, 0                         ; 2 uses
  %i.d = load i32, ptr %6, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.b, !prof !13

bb.b:                                             ; preds = %.lr.ph
  %.not.i120.peel = icmp eq i32 %i.d, 0
  br i1 %.not.i120.peel, label %lean_dec_ref.exit121.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #7
  br label %lean_dec_ref.exit121.peel

bb.d:                                             ; preds = %.lr.ph
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !12
  br label %lean_dec_ref.exit121.peel

lean_dec_ref.exit121.peel:                        ; preds = %bb.d, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %5
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  %i.k = icmp ne i8 %i.j, 1
  %or.cond.peel = and i1 %i.b, %i.k
  %or.cond6.peel = or i1 %i.c, %or.cond.peel
  br i1 %or.cond6.peel, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %lean_dec_ref.exit121.peel
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10   ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i107.peel = icmp eq i64 %i.o, 0
  br i1 %.not.i107.peel, label %bb.f, label %lean_inc.exit108.peel

bb.f:                                             ; preds = %bb.e
  %.val.i.i.peel = load i32, ptr %i.m, align 4, !tbaa !12 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i.peel, 0
  br i1 %i.p, label %bb.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %.not.i.i.peel = icmp eq i32 %.val.i.i.peel, 0
  br i1 %.not.i.i.peel, label %lean_inc.exit108.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit108.peel

bb.i:                                             ; preds = %bb.f
  %i.r = add nuw i32 %.val.i.i.peel, 1
  store i32 %i.r, ptr %i.m, align 4, !tbaa !12
  br label %lean_inc.exit108.peel

lean_inc.exit108.peel:                            ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %.val.i.i125.peel = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i125.peel, 0
  br i1 %i.s, label %bb.l, label %bb.j, !prof !13

bb.j:                                             ; preds = %lean_inc.exit108.peel
  %.not.i.i126.peel = icmp eq i32 %.val.i.i125.peel, 0
  br i1 %.not.i.i126.peel, label %lean_inc_ref.exit127.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit127.peel

bb.l:                                             ; preds = %lean_inc.exit108.peel
  %i.u = add nuw i32 %.val.i.i125.peel, 1
  store i32 %i.u, ptr %0, align 4, !tbaa !12
  br label %lean_inc_ref.exit127.peel

lean_inc_ref.exit127.peel:                        ; preds = %bb.l, %bb.k, %bb.j
  %i.v = tail call ptr @l_Lean_Server_FileWorker_SignatureHelp_determineSignatureHelp(ptr noundef nonnull %0, ptr noundef %i.m) ; 9 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.x = and i64 %i.w, 1
  %.not.i128.peel = icmp eq i64 %i.x, 0           ; 2 uses
  br i1 %.not.i128.peel, label %bb.n, label %bb.m

bb.m:                                             ; preds = %lean_inc_ref.exit127.peel
  %i.y = lshr i64 %i.w, 1
  %i.z = trunc i64 %i.y to i32
  br label %lean_obj_tag.exit.peel

bb.n:                                             ; preds = %lean_inc_ref.exit127.peel
  %i.aa = getelementptr i8, ptr %i.v, i64 4
  %.val.i.peel = load i32, ptr %i.aa, align 4
  %i.ab = lshr i32 %.val.i.peel, 24
  br label %lean_obj_tag.exit.peel

lean_obj_tag.exit.peel:                           ; preds = %bb.n, %bb.m
  %.0.i.peel = phi i32 [ %i.z, %bb.m ], [ %i.ab, %bb.n ]
  %i.ac = icmp eq i32 %.0.i.peel, 0
  br i1 %i.ac, label %bb.o, label %.loopexit175

bb.o:                                             ; preds = %lean_obj_tag.exit.peel
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10 ; 9 uses
  %.val124.peel = load i32, ptr %i.v, align 8, !tbaa !12
  %i.af = icmp eq i32 %.val124.peel, 1            ; 2 uses
  %.pre = ptrtoint ptr %i.ae to i64               ; 2 uses
  %.pre177 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.af, label %lean_dec.exit103.peel, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i105.peel = icmp eq i64 %.pre177, 0
  br i1 %.not.i105.peel, label %bb.q, label %lean_inc.exit106.peel

bb.q:                                             ; preds = %bb.p
  %.val.i.i129.peel = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.ag = icmp sgt i32 %.val.i.i129.peel, 0
  br i1 %i.ag, label %bb.t, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  %.not.i.i130.peel = icmp eq i32 %.val.i.i129.peel, 0
  br i1 %.not.i.i130.peel, label %lean_inc.exit106.peel, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit106.peel

bb.t:                                             ; preds = %bb.q
  %i.ai = add nuw i32 %.val.i.i129.peel, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !12
  br label %lean_inc.exit106.peel

lean_inc.exit106.peel:                            ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  br i1 %.not.i128.peel, label %bb.u, label %lean_dec.exit103.peel

bb.u:                                             ; preds = %lean_inc.exit106.peel
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !12  ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.x, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  %.not.i109.peel = icmp eq i32 %i.aj, 0
  br i1 %.not.i109.peel, label %lean_dec.exit103.peel, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #7
  br label %lean_dec.exit103.peel

bb.x:                                             ; preds = %bb.u
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.v, align 8, !tbaa !12
  br label %lean_dec.exit103.peel

lean_dec.exit103.peel:                            ; preds = %bb.o, %bb.x, %bb.w, %bb.v, %lean_inc.exit106.peel
  %.099.peel = phi ptr [ inttoptr (i64 1 to ptr), %lean_inc.exit106.peel ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.v ], [ %i.v, %bb.o ] ; 3 uses
  %.not.i132.peel = icmp eq i64 %.pre177, 0       ; 2 uses
  br i1 %.not.i132.peel, label %bb.z, label %bb.y

bb.y:                                             ; preds = %lean_dec.exit103.peel
  %i.am = lshr i64 %.pre, 1
  %i.an = trunc i64 %i.am to i32
  br label %lean_obj_tag.exit135.peel

bb.z:                                             ; preds = %lean_dec.exit103.peel
  %i.ao = getelementptr i8, ptr %i.ae, i64 4
  %.val.i134.peel = load i32, ptr %i.ao, align 4
  %i.ap = lshr i32 %.val.i134.peel, 24
  br label %lean_obj_tag.exit135.peel

lean_obj_tag.exit135.peel:                        ; preds = %bb.z, %bb.y
  %.0.i133.peel = phi i32 [ %i.an, %bb.y ], [ %i.ap, %bb.z ]
  %i.aq = icmp eq i32 %.0.i133.peel, 1
  br i1 %i.aq, label %.loopexit176, label %bb.aa

bb.aa:                                            ; preds = %lean_obj_tag.exit135.peel
  %i.ar = ptrtoint ptr %.099.peel to i64
  %i.as = and i64 %i.ar, 1
  %.not.i139.peel = icmp eq i64 %i.as, 0
  br i1 %.not.i139.peel, label %bb.ab, label %lean_del_object.exit.peel

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_free_object(ptr noundef nonnull %.099.peel) #7
  br label %lean_del_object.exit.peel

lean_del_object.exit.peel:                        ; preds = %bb.ab, %bb.aa
  br i1 %.not.i132.peel, label %bb.ac, label %lean_dec.exit.peel

bb.ac:                                            ; preds = %lean_del_object.exit.peel
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.af, label %bb.ad, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %.not.i110.peel = icmp eq i32 %i.at, 0
end_hunk_5
begin_hunk_6_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__1:bb.a
  %i.dn = and i64 %i.dm, 1
  %.not.i104 = icmp eq i64 %i.dn, 0
  br i1 %.not.i104, label %bb.bx, label %lean_inc.exit

bb.bx:                                            ; preds = %bb.bw
  %.val.i.i140 = load i32, ptr %i.dk, align 4, !tbaa !12 ; 3 uses
  %i.do = icmp sgt i32 %.val.i.i140, 0
  br i1 %i.do, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.dp = add nuw i32 %.val.i.i140, 1
  store i32 %i.dp, ptr %i.dk, align 4, !tbaa !12
  br label %lean_inc.exit

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i141 = icmp eq i32 %.val.i.i140, 0
  br i1 %.not.i.i141, label %lean_inc.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dq = atomicrmw sub ptr %i.dk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
  %i.dr = and i64 %.lcssa, 1
  %.not.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %lean_inc.exit
  %i.ds = load i32, ptr %.lcssa166, align 8, !tbaa !12 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %.lcssa166, align 8, !tbaa !12
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  %.not.i112 = icmp eq i32 %i.ds, 0
  br i1 %.not.i112, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa166) #7
  br label %bb.cf

bb.cf:                                            ; preds = %lean_inc.exit, %bb.cc, %bb.cd, %bb.ce
  tail call void @lean_inc_heartbeat() #7
  %i.dv = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.cg, label %.sink.split.sink.split

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

.loopexit:                                        ; preds = %lean_dec_ref.exit121, %lean_dec_ref.exit121.peel
  %i.dx = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.ch, label %bb.ci, !prof !13

bb.ch:                                            ; preds = %.loopexit
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit115

bb.ci:                                            ; preds = %.loopexit
  %.not.i114 = icmp eq i32 %i.dx, 0
  br i1 %.not.i114, label %lean_dec_ref.exit115, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit115

lean_dec_ref.exit115:                             ; preds = %bb.ch, %bb.ci, %bb.cj
  tail call void @lean_inc_heartbeat() #7
  %i.ea = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.ck, label %.sink.split.sink.split

bb.ck:                                            ; preds = %lean_dec_ref.exit115
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_dec.exit:                                    ; preds = %lean_del_object.exit, %bb.bq, %bb.br, %bb.bs
  %i.ec = add nuw i64 %.078163, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ec, %4
  br i1 %exitcond.not, label %._crit_edge, label %lean_dec_ref.exit121, !llvm.loop !27

.sink.split.sink.split:                           ; preds = %lean_dec_ref.exit115, %bb.cf, %bb.bl, %lean_dec_ref.exit123
  %.sink226 = phi ptr [ %i.cz, %bb.bl ], [ %i.ba, %lean_dec_ref.exit123 ], [ %i.dv, %bb.cf ], [ %i.ea, %lean_dec_ref.exit115 ] ; 3 uses
  %.sink = phi i32 [ 65552, %bb.bl ], [ 65552, %lean_dec_ref.exit123 ], [ 16842768, %bb.cf ], [ 65552, %lean_dec_ref.exit115 ]
  %.083.lcssa.sink.ph = phi ptr [ %i.cu, %bb.bl ], [ %.083.lcssa, %lean_dec_ref.exit123 ], [ %i.dk, %bb.cf ], [ @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__1___closed__2_value, %lean_dec_ref.exit115 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.sink226, i64 4
  store i32 1, ptr %.sink226, align 4, !tbaa !12
  store i32 %.sink, ptr %i.ed, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %lean_alloc_ctor.exit137
  %.sink223 = phi ptr [ %.099.lcssa, %lean_alloc_ctor.exit137 ], [ %.sink226, %.sink.split.sink.split ] ; 2 uses
  %.083.lcssa.sink = phi ptr [ %i.cu, %lean_alloc_ctor.exit137 ], [ %.083.lcssa.sink.ph, %.sink.split.sink.split ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink223, i64 8
  store ptr %.083.lcssa.sink, ptr %i.ee, align 8, !tbaa !10
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split, %lean_dec_ref.exit117
  %.6.ph = phi ptr [ %.lcssa166, %lean_dec_ref.exit117 ], [ %.sink223, %.sink.split ]
  ret ptr %.6.ph
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = getelementptr i8, ptr %4, i64 8
  %.val21 = load i64, ptr %i.g, align 8, !tbaa !15
  %i.h = load i32, ptr %4, align 8, !tbaa !12     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %4, align 8, !tbaa !12
  br label %lean_dec.exit15

bb.c:                                             ; preds = %bb.a
  %.not.i16 = icmp eq i32 %i.h, 0
  br i1 %.not.i16, label %lean_dec.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr i8, ptr %5, i64 8
  %.val = load i64, ptr %i.k, align 8, !tbaa !15
  %i.l = load i32, ptr %5, align 8, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit15
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %5, align 8, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit15
  %.not.i17 = icmp eq i32 %i.l, 0
  br i1 %.not.i17, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.o = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__1(ptr noundef %0, i8 noundef zeroext %i.c, i8 noundef zeroext %i.f, ptr noundef %3, i64 noundef %.val21, i64 noundef %.val, ptr noundef %6)
  %i.p = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit20

bb.i:                                             ; preds = %lean_dec.exit
  %.not.i19 = icmp eq i32 %i.p, 0
  br i1 %.not.i19, label %lean_dec_ref.exit20, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec_ref.exit20

lean_dec_ref.exit20:                              ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.o
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not30 = icmp eq i64 %1, %2
  br i1 %.not30, label %lean_dec.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.b:                                             ; preds = %.split, %lean_dec.exit
  %i.b = add i64 %.01931, 1                       ; 2 uses
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %lean_dec.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01931 = phi i64 [ %1, %.lr.ph ], [ %i.b, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01931
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19    ; 2 uses
  %i.g = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0_once seq_cst, align 4, !tbaa !23
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0, align 8, !tbaa !10
  br label %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0) #7
  br label %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit

l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit: ; preds = %bb.d, %bb.e
  %.0.i24 = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 3 uses
  %switch.selectcmp.i = icmp eq i8 %i.f, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %.not.i23.a = icmp eq i8 %i.f, 0
  %switch.select5.i = select i1 %.not.i23.a, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i ; 2 uses
  %3 = ptrtoint ptr %.0.i24 to i64
  %.not.i23 = trunc i64 %3 to i1
  br i1 %.not.i23, label %.split, label %lean_dec.exit, !prof !21

.split:                                           ; preds = %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit
  %i.k = icmp ult ptr %.0.i24, %switch.select5.i
  br i1 %i.k, label %lean_dec.exit._crit_edge, label %bb.b

lean_dec.exit:                                    ; preds = %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit
  %i.l = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0.i24, ptr noundef nonnull %switch.select5.i) #7
  br i1 %i.l, label %lean_dec.exit._crit_edge, label %bb.b

lean_dec.exit._crit_edge:                         ; preds = %bb.b, %lean_dec.exit, %.split, %bb.a
  %.2.ph = phi i8 [ 0, %bb.a ], [ 1, %.split ], [ 1, %lean_dec.exit ], [ 0, %bb.b ]
  ret i8 %.2.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0() #3 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val16 = load i64, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !12
  br label %lean_dec.exit10

bb.c:                                             ; preds = %bb.a
  %.not.i11 = icmp eq i32 %i.b, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.f = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit10
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit10
  %.not.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %.not30.i = icmp eq i64 %.val16, %.val
  br i1 %.not30.i, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_dec.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.h:                                             ; preds = %lean_dec.exit.i, %.split.i
  %i.j = add i64 %.01931.i, 1                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.j, %.val
  br i1 %.not.i17, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.01931.i = phi i64 [ %.val16, %.lr.ph.i ], [ %i.j, %bb.h ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01931.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19    ; 2 uses
  %i.o = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0_once seq_cst, align 4, !tbaa !23
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0, align 8, !tbaa !10
  br label %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i

bb.k:                                             ; preds = %bb.i
  %i.r = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0) #7
  br label %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i

l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i: ; preds = %bb.k, %bb.j
  %.0.i24.i = phi ptr [ %i.q, %bb.j ], [ %i.r, %bb.k ] ; 3 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.n, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %.not.i23.i.a = icmp eq i8 %i.n, 0
  %switch.select5.i.i = select i1 %.not.i23.i.a, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i ; 2 uses
  %3 = ptrtoint ptr %.0.i24.i to i64
  %.not.i23.i = trunc i64 %3 to i1
  br i1 %.not.i23.i, label %.split.i, label %lean_dec.exit.i, !prof !21

.split.i:                                         ; preds = %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i
  %i.s = icmp ult ptr %.0.i24.i, %switch.select5.i.i
  br i1 %i.s, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit, label %bb.h

lean_dec.exit.i:                                  ; preds = %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i
  %i.t = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0.i24.i, ptr noundef nonnull %switch.select5.i.i) #7
  br i1 %i.t, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit, label %bb.h

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit: ; preds = %bb.h, %.split.i, %lean_dec.exit.i, %lean_dec.exit
  %.2.ph.i = phi i64 [ 1, %lean_dec.exit ], [ 1, %bb.h ], [ 3, %lean_dec.exit.i ], [ 3, %.split.i ]
  %i.u = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit15

bb.m:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit
  %.not.i14 = icmp eq i32 %i.u, 0
  br i1 %.not.i14, label %lean_dec_ref.exit15, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit15

lean_dec_ref.exit15:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.x = inttoptr i64 %.2.ph.i to ptr
  ret ptr %i.x
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_WellFounded_opaqueFix_u2083___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__3___redArg___lam__0(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nofree readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i8 %0, 1
  %i.b = icmp eq i8 %1, 0
  %or.cond = and i1 %i.a, %i.b
  tail call void @lean_inc_heartbeat() #7
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 8 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %lean_alloc_ctor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  store i32 16842768, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %lean_alloc_ctor.exit14

bb.d:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.e:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.f, label %lean_alloc_ctor.exit15

bb.f:                                             ; preds = %bb.e
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit15:                           ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  store i32 65552, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %3, ptr %i.j, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.k = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %lean_alloc_ctor.exit14

bb.g:                                             ; preds = %lean_alloc_ctor.exit15
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit14:                           ; preds = %lean_alloc_ctor.exit15, %lean_alloc_ctor.exit
  %.sink23 = phi ptr [ %i.g, %lean_alloc_ctor.exit ], [ %i.k, %lean_alloc_ctor.exit15 ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sink23, i64 4
  store i32 1, ptr %.sink23, align 4, !tbaa !12
  store i32 65552, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.sink23, i64 8
  store ptr %i.c, ptr %i.n, align 8, !tbaa !10
  ret ptr %.sink23
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_WellFounded_opaqueFix_u2083___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__3___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %1 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__3___redArg___lam__0(i8 noundef zeroext %i.c, i8 noundef zeroext %i.f, ptr poison, ptr noundef %3)
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_WellFounded_opaqueFix_u2083___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__3___redArg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  br label %lean_dec.exit152

lean_dec.exit152:                                 ; preds = %lean_dec.exit152.backedge, %bb.a
  %.0130 = phi ptr [ %7, %bb.a ], [ %i.gf, %lean_dec.exit152.backedge ] ; 3 uses
  %.0127 = phi ptr [ %6, %bb.a ], [ %.0127.be, %lean_dec.exit152.backedge ] ; 18 uses
  %i.e = ptrtoint ptr %.0127 to i64               ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not.i225 = icmp eq i64 %i.f, 0                ; 4 uses
  br i1 %.not.i225, label %lean_nat_lt.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %lean_dec.exit152
  br i1 %.not, label %lean_nat_lt.exit.thread318, label %lean_nat_lt.exit.thread, !prof !20

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit152
  %i.g = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0127, ptr noundef %0) #7
  br i1 %i.g, label %.critedge.i145, label %bb.c

lean_nat_lt.exit.thread318:                       ; preds = %bb.b
  %i.h = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0127, ptr noundef %0) #7
  br i1 %i.h, label %.thread320, label %lean_dec.exit170

lean_nat_lt.exit.thread:                          ; preds = %bb.b
  %.not321 = icmp ult ptr %.0127, %0
  br i1 %.not321, label %.thread320, label %lean_dec.exit170

bb.c:                                             ; preds = %lean_nat_lt.exit
  %i.i = load i32, ptr %.0127, align 4, !tbaa !12 ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %.0127, align 4, !tbaa !12
  br label %lean_dec.exit170

bb.e:                                             ; preds = %bb.c
  %.not.i192 = icmp eq i32 %i.i, 0
  br i1 %.not.i192, label %lean_dec.exit170, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0127) #7
  br label %lean_dec.exit170

lean_dec.exit170:                                 ; preds = %lean_nat_lt.exit.thread318, %lean_nat_lt.exit.thread, %bb.f, %bb.e, %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %lean_dec.exit170
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit224

bb.h:                                             ; preds = %lean_dec.exit170
  %.not.i223 = icmp eq i32 %i.l, 0
  br i1 %.not.i223, label %lean_dec_ref.exit224, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit224

lean_dec_ref.exit224:                             ; preds = %bb.g, %bb.h, %bb.i
  tail call void @lean_inc_heartbeat() #7
  %i.o = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %.sink.split.sink.split

bb.j:                                             ; preds = %lean_dec_ref.exit224
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

.thread320:                                       ; preds = %lean_nat_lt.exit.thread, %lean_nat_lt.exit.thread318
  %i.q = lshr i64 %i.e, 1                         ; 3 uses
  %.in = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.q
  %i.r = load ptr, ptr %.in, align 8, !tbaa !10   ; 2 uses
  %i.s = add nuw i64 %i.q, 1                      ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %.thread320
  %i.u = shl nuw i64 %i.s, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_nat_add.exit147

bb.l:                                             ; preds = %.thread320
  %i.x = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) -9223372036854775808) #7
  br label %lean_nat_add.exit147
end_hunk_6
begin_hunk_7_@l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f:bb.a
  %.not.i7.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.ae) #7
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %lean_inc.exit191
  %i.az = icmp sgt i32 %.val.i240, 1
  br i1 %i.az, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ba = add nsw i32 %.val.i240, -1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i8.i = icmp eq i32 %.val.i240, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.t, %bb.u, %bb.v
  %i.bb = tail call ptr @lean_array_mk(ptr noundef %i.am) #7 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val229 = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.bd = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__0(i64 noundef %.val229, i64 noundef 0, ptr noundef %i.bb) ; 5 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val231 = load i64, ptr %i.be, align 8, !tbaa !15
  %i.bf = shl i64 %.val231, 1
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__3___redArg(ptr noundef nonnull %i.bh, ptr noundef %i.bd, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f___closed__0_value) ; 13 uses
  br i1 %.not.i192, label %bb.w, label %lean_dec.exit178

bb.w:                                             ; preds = %lean_dec_ref_known.exit
  %i.bj = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit178

bb.y:                                             ; preds = %bb.w
  %.not.i194 = icmp eq i32 %i.bj, 0
  br i1 %.not.i194, label %lean_dec.exit178, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit178

lean_dec.exit178:                                 ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref_known.exit
  %i.bm = load i32, ptr %i.bd, align 8, !tbaa !12 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %lean_dec.exit178
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.bd, align 8, !tbaa !12
  br label %lean_dec_ref.exit224

bb.ab:                                            ; preds = %lean_dec.exit178
  %.not.i223 = icmp eq i32 %i.bm, 0
  br i1 %.not.i223, label %lean_dec_ref.exit224, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #7
  br label %lean_dec_ref.exit224

lean_dec_ref.exit224:                             ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.bp = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bq = and i64 %i.bp, 1
  %.not.i242 = icmp eq i64 %i.bq, 0               ; 2 uses
  br i1 %.not.i242, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %lean_dec_ref.exit224
  %i.br = lshr i64 %i.bp, 1
  %i.bs = trunc i64 %i.br to i32
  br label %lean_obj_tag.exit245

bb.ae:                                            ; preds = %lean_dec_ref.exit224
  %i.bt = getelementptr i8, ptr %i.bi, i64 4
  %.val.i244 = load i32, ptr %i.bt, align 4
  %i.bu = lshr i32 %.val.i244, 24
  br label %lean_obj_tag.exit245

lean_obj_tag.exit245:                             ; preds = %bb.ad, %bb.ae
  %.0.i243 = phi i32 [ %i.bs, %bb.ad ], [ %i.bu, %bb.ae ]
  %i.bv = icmp eq i32 %.0.i243, 0
  br i1 %i.bv, label %bb.af, label %bb.co

bb.af:                                            ; preds = %lean_obj_tag.exit245
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !10 ; 5 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 1
  %.not.i188 = icmp eq i64 %i.bz, 0
  br i1 %.not.i188, label %bb.ag, label %lean_inc.exit189

bb.ag:                                            ; preds = %bb.af
  %.val.i.i246 = load i32, ptr %i.bx, align 4, !tbaa !12 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i246, 0
  br i1 %i.ca, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.cb = add nuw i32 %.val.i.i246, 1
  store i32 %i.cb, ptr %i.bx, align 4, !tbaa !12
  br label %lean_inc.exit189

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i247 = icmp eq i32 %.val.i.i246, 0
  br i1 %.not.i.i247, label %lean_inc.exit189, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cc = atomicrmw sub ptr %i.bx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit189

lean_inc.exit189:                                 ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.val.i249 = load i32, ptr %i.bi, align 8, !tbaa !12 ; 4 uses
  %i.cd = icmp eq i32 %.val.i249, 1
  br i1 %i.cd, label %.preheader.i251.preheader, label %bb.ao

.preheader.i251.preheader:                        ; preds = %lean_inc.exit189
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !10 ; 4 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = and i64 %i.cf, 1
  %.not.i.i253 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i253, label %bb.ak, label %lean_dec.exit.i254

bb.ak:                                            ; preds = %.preheader.i251.preheader
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.al, label %bb.am, !prof !13

bb.al:                                            ; preds = %bb.ak
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !12
  br label %lean_dec.exit.i254

bb.am:                                            ; preds = %bb.ak
  %.not.i7.i257 = icmp eq i32 %i.ch, 0
  br i1 %.not.i7.i257, label %lean_dec.exit.i254, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #7
  br label %lean_dec.exit.i254

lean_dec.exit.i254:                               ; preds = %bb.an, %bb.am, %bb.al, %.preheader.i251.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.bi) #7
  br label %lean_nat_lt.exit

bb.ao:                                            ; preds = %lean_inc.exit189
  %i.ck = icmp sgt i32 %.val.i249, 1
  br i1 %i.ck, label %bb.ap, label %bb.aq, !prof !13

bb.ap:                                            ; preds = %bb.ao
  %i.cl = add nsw i32 %.val.i249, -1
  store i32 %i.cl, ptr %i.bi, align 8, !tbaa !12
  br label %lean_nat_lt.exit

bb.aq:                                            ; preds = %bb.ao
  %.not.i8.i250 = icmp eq i32 %.val.i249, 0
  br i1 %.not.i8.i250, label %lean_nat_lt.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #7
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %bb.ar, %bb.aq, %bb.ap, %lean_dec.exit.i254
  %i.cm = tail call ptr @lean_array_to_list(ptr noundef %i.bx) #7
  %i.cn = tail call ptr @l_List_mergeSort___redArg(ptr noundef %i.cm, ptr noundef nonnull @l_Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f___closed__1_value) #7
  %i.co = tail call ptr @lean_array_mk(ptr noundef %i.cn) #7 ; 6 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8      ; 2 uses
  %.val230 = load i64, ptr %i.cp, align 8, !tbaa !15 ; 2 uses
  %.mask = and i64 %.val230, 9223372036854775807  ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %lean_nat_lt.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  br label %bb.at

bb.as:                                            ; preds = %lean_dec.exit.i261, %.split.i
  %i.cr = add nuw nsw i64 %.01931.i, 1            ; 2 uses
  %.not.i260 = icmp eq i64 %i.cr, %.mask
  br i1 %.not.i260, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i
  %.01931.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cr, %bb.as ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.01931.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !19  ; 2 uses
  %i.cw = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0_once seq_cst, align 4, !tbaa !23
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.au, label %bb.av, !prof !13

bb.au:                                            ; preds = %bb.at
  %i.cy = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0, align 8, !tbaa !10
  br label %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i

bb.av:                                            ; preds = %bb.at
  %i.cz = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2___closed__0) #7
  br label %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i

l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i: ; preds = %bb.av, %bb.au
  %.0.i24.i = phi ptr [ %i.cy, %bb.au ], [ %i.cz, %bb.av ] ; 3 uses
  %switch.selectcmp.i.i = icmp eq i8 %i.cv, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 5 to ptr)
  %.not.i23.i.a = icmp eq i8 %i.cv, 0
  %switch.select5.i.i = select i1 %.not.i23.i.a, ptr inttoptr (i64 1 to ptr), ptr %switch.select.i.i ; 2 uses
  %5 = ptrtoint ptr %.0.i24.i to i64
  %.not.i23.i = trunc i64 %5 to i1
  br i1 %.not.i23.i, label %.split.i, label %lean_dec.exit.i261, !prof !21

.split.i:                                         ; preds = %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i
  %i.da = icmp ult ptr %.0.i24.i, %switch.select5.i.i
  br i1 %i.da, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit.loopexit, label %bb.as

lean_dec.exit.i261:                               ; preds = %l_Lean_Server_FileWorker_SignatureHelp_CandidateKind_prio.exit.i
  %i.db = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0.i24.i, ptr noundef nonnull %switch.select5.i.i) #7
  br i1 %i.db, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit.loopexit, label %bb.as

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit.loopexit: ; preds = %bb.as, %.split.i, %lean_dec.exit.i261
  %.0162.ph = phi i8 [ 1, %.split.i ], [ 1, %lean_dec.exit.i261 ], [ 0, %bb.as ]
  %.val228.pre = load i64, ptr %i.cp, align 8, !tbaa !15
  br label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit: ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit.loopexit, %lean_nat_lt.exit
  %.val228 = phi i64 [ %.val230, %lean_nat_lt.exit ], [ %.val228.pre, %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit.loopexit ]
  %.0162 = phi i8 [ 0, %lean_nat_lt.exit ], [ %.0162.ph, %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit.loopexit ]
  %i.dc = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__1(ptr noundef %3, i8 noundef zeroext %.0162, i8 noundef zeroext 0, ptr noundef nonnull %i.co, i64 noundef %.val228, i64 noundef 0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__1___closed__0_value) ; 12 uses
  %i.dd = load i32, ptr %i.co, align 8, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.co, align 8, !tbaa !12
  br label %lean_dec_ref.exit222

bb.ax:                                            ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Server_FileWorker_SignatureHelp_findSignatureHelp_x3f_spec__2.exit
  %.not.i221 = icmp eq i32 %i.dd, 0
  br i1 %.not.i221, label %lean_dec_ref.exit222, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #7
  br label %lean_dec_ref.exit222

lean_dec_ref.exit222:                             ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.dg = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dh = and i64 %i.dg, 1
  %.not.i262 = icmp eq i64 %i.dh, 0               ; 3 uses
  br i1 %.not.i262, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref.exit222
  %i.di = lshr i64 %i.dg, 1
  %i.dj = trunc i64 %i.di to i32
  br label %lean_obj_tag.exit265

bb.ba:                                            ; preds = %lean_dec_ref.exit222
  %i.dk = getelementptr i8, ptr %i.dc, i64 4
  %.val.i264 = load i32, ptr %i.dk, align 4
  %i.dl = lshr i32 %.val.i264, 24
  br label %lean_obj_tag.exit265

lean_obj_tag.exit265:                             ; preds = %bb.az, %bb.ba
  %.0.i263 = phi i32 [ %i.dj, %bb.az ], [ %i.dl, %bb.ba ]
  %i.dm = icmp eq i32 %.0.i263, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !10 ; 13 uses
  %.val227 = load i32, ptr %i.dc, align 8, !tbaa !12
  %i.dp = icmp eq i32 %.val227, 1                 ; 4 uses
  br i1 %i.dm, label %bb.bb, label %bb.cc

bb.bb:                                            ; preds = %lean_obj_tag.exit265
  br i1 %i.dp, label %lean_dec.exit176, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = and i64 %i.dq, 1
  %.not.i186 = icmp eq i64 %i.dr, 0
  br i1 %.not.i186, label %bb.bd, label %lean_inc.exit187

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i266 = load i32, ptr %i.do, align 4, !tbaa !12 ; 3 uses
  %i.ds = icmp sgt i32 %.val.i.i266, 0
  br i1 %i.ds, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.dt = add nuw i32 %.val.i.i266, 1
  store i32 %i.dt, ptr %i.do, align 4, !tbaa !12
  br label %lean_inc.exit187

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i267 = icmp eq i32 %.val.i.i266, 0
  br i1 %.not.i.i267, label %lean_inc.exit187, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.du = atomicrmw sub ptr %i.do, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit187

lean_inc.exit187:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  br i1 %.not.i262, label %bb.bh, label %lean_dec.exit176

bb.bh:                                            ; preds = %lean_inc.exit187
  %i.dv = load i32, ptr %i.dc, align 8, !tbaa !12 ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.dx = add nsw i32 %i.dv, -1
  store i32 %i.dx, ptr %i.dc, align 8, !tbaa !12
  br label %lean_dec.exit176

bb.bj:                                            ; preds = %bb.bh
  %.not.i195 = icmp eq i32 %i.dv, 0
  br i1 %.not.i195, label %lean_dec.exit176, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dc) #7
  br label %lean_dec.exit176

lean_dec.exit176:                                 ; preds = %lean_inc.exit187, %bb.bi, %bb.bj, %bb.bk, %bb.bb
  %.0161 = phi ptr [ %i.dc, %bb.bb ], [ inttoptr (i64 1 to ptr), %bb.bk ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bi ], [ inttoptr (i64 1 to ptr), %lean_inc.exit187 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !10 ; 7 uses
  %i.ea = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.eb = and i64 %i.ea, 1
  %.not.i184 = icmp eq i64 %i.eb, 0               ; 2 uses
  br i1 %.not.i184, label %bb.bl, label %lean_inc.exit185

bb.bl:                                            ; preds = %lean_dec.exit176
  %.val.i.i269 = load i32, ptr %i.dz, align 4, !tbaa !12 ; 3 uses
  %i.ec = icmp sgt i32 %.val.i.i269, 0
  br i1 %i.ec, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.ed = add nuw i32 %.val.i.i269, 1
  store i32 %i.ed, ptr %i.dz, align 4, !tbaa !12
  br label %lean_inc.exit185

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i270 = icmp eq i32 %.val.i.i269, 0
  br i1 %.not.i.i270, label %lean_inc.exit185, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ee = atomicrmw sub ptr %i.dz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit185

lean_inc.exit185:                                 ; preds = %lean_dec.exit176, %bb.bm, %bb.bn, %bb.bo
  %i.ef = load i32, ptr %i.do, align 8, !tbaa !12 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %lean_inc.exit185
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %i.do, align 8, !tbaa !12
  br label %lean_dec.exit174

bb.bq:                                            ; preds = %lean_inc.exit185
  %.not.i197 = icmp eq i32 %i.ef, 0
  br i1 %.not.i197, label %lean_dec.exit174, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.do) #7
  br label %lean_dec.exit174

lean_dec.exit174:                                 ; preds = %bb.br, %bb.bq, %bb.bp
  br i1 %.not.i184, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %lean_dec.exit174
  %i.ei = lshr i64 %i.ea, 1
  %i.ej = trunc i64 %i.ei to i32
  br label %lean_obj_tag.exit275

bb.bt:                                            ; preds = %lean_dec.exit174
  %i.ek = getelementptr i8, ptr %i.dz, i64 4
  %.val.i274 = load i32, ptr %i.ek, align 4
  %i.el = lshr i32 %.val.i274, 24
  br label %lean_obj_tag.exit275

lean_obj_tag.exit275:                             ; preds = %bb.bs, %bb.bt
  %.0.i273 = phi i32 [ %i.ej, %bb.bs ], [ %i.el, %bb.bt ]
  %i.em = icmp eq i32 %.0.i273, 0
  br i1 %i.em, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %lean_obj_tag.exit275
  br i1 %i.dp, label %lean_dec.exit172.sink.split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.en = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit172.sink.split

bb.bw:                                            ; preds = %lean_obj_tag.exit275
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !10 ; 6 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = and i64 %i.eq, 1
  %.not.i182 = icmp eq i64 %i.er, 0
  br i1 %.not.i182, label %bb.bx, label %lean_inc.exit183

bb.bx:                                            ; preds = %bb.bw
  %.val.i.i276 = load i32, ptr %i.ep, align 4, !tbaa !12 ; 3 uses
  %i.es = icmp sgt i32 %.val.i.i276, 0
  br i1 %i.es, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.et = add nuw i32 %.val.i.i276, 1
  store i32 %i.et, ptr %i.ep, align 4, !tbaa !12
  br label %lean_inc.exit183

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i277 = icmp eq i32 %.val.i.i276, 0
  br i1 %.not.i.i277, label %lean_inc.exit183, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.eu = atomicrmw sub ptr %i.ep, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit183

lean_inc.exit183:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
end_hunk_7
begin_hunk_8_@initialize_Lean_Server_FileWorker_SignatureHelp:bb.a
bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !12
  br label %lean_dec_ref.exit34

bb.e:                                             ; preds = %bb.c
  %.not.i33 = icmp eq i32 %i.h, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #7
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @initialize_Lean_Data_Lsp(i8 noundef zeroext %0) #7 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val38 = load i32, ptr %i.l, align 4
  %.mask.i40 = and i32 %.val38, -16777216
  %i.m = icmp eq i32 %.mask.i40, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit34
  %i.n = load i32, ptr %i.k, align 4, !tbaa !12   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  br label %lean_dec_ref.exit32

bb.i:                                             ; preds = %bb.g
  %.not.i31 = icmp eq i32 %i.n, 0
  br i1 %.not.i31, label %lean_dec_ref.exit32, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #7
  br label %lean_dec_ref.exit32

lean_dec_ref.exit32:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.q = tail call ptr @initialize_Init_Data_List_Sort_Basic(i8 noundef zeroext %0) #7 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val37 = load i32, ptr %i.r, align 4
  %.mask.i41 = and i32 %.val37, -16777216
  %i.s = icmp eq i32 %.mask.i41, 16777216
  br i1 %i.s, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %lean_dec_ref.exit32
  %i.t = load i32, ptr %i.q, align 4, !tbaa !12   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec_ref.exit30

bb.m:                                             ; preds = %bb.k
  %.not.i29 = icmp eq i32 %i.t, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #7
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @initialize_Lean_PrettyPrinter_Delaborator(i8 noundef zeroext %0) #7 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val36 = load i32, ptr %i.x, align 4
  %.mask.i42 = and i32 %.val36, -16777216
  %i.y = icmp eq i32 %.mask.i42, 16777216
  br i1 %i.y, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %lean_dec_ref.exit30
  %i.z = load i32, ptr %i.w, align 4, !tbaa !12   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !12
  br label %lean_dec_ref.exit28

bb.q:                                             ; preds = %bb.o
  %.not.i27 = icmp eq i32 %i.z, 0
  br i1 %.not.i27, label %lean_dec_ref.exit28, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #7
  br label %lean_dec_ref.exit28

lean_dec_ref.exit28:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.ac = tail call ptr @runtime_initialize_Lean_Server_FileWorker_SignatureHelp(i8 noundef zeroext %0) ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val35 = load i32, ptr %i.ad, align 4
  %.mask.i43 = and i32 %.val35, -16777216
  %i.ae = icmp eq i32 %.mask.i43, 16777216
  br i1 %i.ae, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %lean_dec_ref.exit28
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !12
  br label %lean_dec_ref.exit26

bb.u:                                             ; preds = %bb.s
  %.not.i25 = icmp eq i32 %i.af, 0
  br i1 %.not.i25, label %lean_dec_ref.exit26, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #7
  br label %lean_dec_ref.exit26

lean_dec_ref.exit26:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.ai = tail call ptr @meta_initialize_Lean_Server_FileWorker_SignatureHelp(i8 zeroext poison) ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val = load i32, ptr %i.aj, align 4
  %.mask.i44 = and i32 %.val, -16777216
  %i.ak = icmp eq i32 %.mask.i44, 16777216
  br i1 %i.ak, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %lean_dec_ref.exit26
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !12 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !12
  br label %tailrecurse._crit_edge

bb.y:                                             ; preds = %bb.w
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %tailrecurse._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #7
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit26, %lean_dec_ref.exit28, %lean_dec_ref.exit30, %lean_dec_ref.exit32, %lean_dec_ref.exit34, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.ac, %lean_dec_ref.exit28 ], [ %i.w, %lean_dec_ref.exit30 ], [ %i.q, %lean_dec_ref.exit32 ], [ %i.k, %lean_dec_ref.exit34 ], [ %i.e, %.lr.ph ], [ %i.ai, %lean_dec_ref.exit26 ]
  ret ptr %.0
}

declare ptr @initialize_Lean_Server_InfoUtils(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Lean_Data_Lsp(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Init_Data_List_Sort_Basic(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @initialize_Lean_PrettyPrinter_Delaborator(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @lean_copy_expand_array_nonlinear(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i1 @lean_nat_big_lt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_nat_big_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_big_usize_to_nat(i64 noundef) local_unnamed_addr #1

declare ptr @lean_string_utf8_next_fast_cold(i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @lean_nat_big_sub(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lean_nat_big_le(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lean_nat_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #6

declare ptr @lean_alloc_object(i64 noundef) local_unnamed_addr #1

declare void @lean_inc_heartbeat() local_unnamed_addr #1

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #1

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_free_object(ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_PrettyPrinter_Delaborator_delabForallWithSignature___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare zeroext i8 @lean_uint8_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1() #3 {
bb.a:
  ret ptr inttoptr (i64 5 to ptr)
}

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_String_Slice_Pattern_ForwardSliceSearcher_buildTable(ptr noundef %.0.i) #7
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1, ptr noundef nonnull @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__1) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #7
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !12
  store i32 196640, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @l___private_Lean_Server_FileWorker_SignatureHelp_0__Lean_Server_FileWorker_SignatureHelp_lineCommentPosition_x3f___closed__0_value, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !10
  ret ptr %i.e
}

declare ptr @l_String_Slice_Pattern_ForwardSliceSearcher_buildTable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!12 = !{!11, !6, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"long", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"short", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2146812770, i32 670878}
!19 = !{!5, !5, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 4000000, i32 4001}
!22 = !{!"", !5, i64 0, !5, i64 4}
!23 = !{!22, !5, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"branch_weights", i32 4001, i32 4000000}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_8
