Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_ffrecord?download=true
inline.NumInlined: 63
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@recff_unpack:bb.a
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 2195, ptr %i.af, align 4, !tbaa !9
  store i16 %i.ab, ptr %i.ae, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.ad, ptr %i.ag, align 2, !tbaa !9
  %i.ah = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %argv2int.exit, %bb.f, %bb.c
  %.064 = phi i32 [ %i.n, %bb.c ], [ %i.z, %argv2int.exit ], [ %i.z, %bb.f ]
  %.062 = phi i32 [ 1, %bb.c ], [ %i.y, %argv2int.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %i.an = icmp ult i32 %i.am, 3
  %i.ao = and i32 %i.ak, 520093696
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call i32 @lj_tab_len(ptr noundef %i.i) #8
  %i.ar = trunc i32 %i.c to i16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 18707, ptr %i.at, align 4, !tbaa !9
  store i16 %i.ar, ptr %i.as, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 32767, ptr %i.au, align 2, !tbaa !9
  %i.av = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %1, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.az = ashr i64 %i.ay, 47                      ; 2 uses
  %i.ba = icmp ult i64 %i.az, -13
  %i.bb = bitcast i64 %i.ay to double
  br i1 %i.ba, label %argv2int.exit73, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = icmp eq i64 %i.az, -5
  br i1 %i.bc, label %lj_strscan_numberobj.exit.i69, label %lj_strscan_numberobj.exit.thread.i68

lj_strscan_numberobj.exit.i69:                    ; preds = %bb.j
  %i.bd = and i64 %i.ay, 140737488355327
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = tail call i32 @lj_strscan_num(ptr noundef %i.be, ptr noundef nonnull %i.ax) #8
  %.not6.i70 = icmp eq i32 %i.bf, 0
  br i1 %.not6.i70, label %lj_strscan_numberobj.exit.thread.i68, label %lj_strscan_numberobj.exit.lj_strscan_numberobj.exit.thread4_crit_edge.i71

lj_strscan_numberobj.exit.lj_strscan_numberobj.exit.thread4_crit_edge.i71: ; preds = %lj_strscan_numberobj.exit.i69
  %.pre.i72 = load double, ptr %i.ax, align 8, !tbaa !9
  br label %argv2int.exit73

lj_strscan_numberobj.exit.thread.i68:             ; preds = %lj_strscan_numberobj.exit.i69, %bb.j
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 11) #9
  unreachable

argv2int.exit73:                                  ; preds = %bb.i, %lj_strscan_numberobj.exit.lj_strscan_numberobj.exit.thread4_crit_edge.i71
  %i.bg = phi double [ %.pre.i72, %lj_strscan_numberobj.exit.lj_strscan_numberobj.exit.thread4_crit_edge.i71 ], [ %i.bb, %bb.i ]
  %i.bh = fptosi double %i.bg to i32
  %i.bi = tail call i32 @lj_opt_narrow_toint(ptr noundef nonnull %0, i32 noundef %i.ak) #8
  br label %bb.k

bb.k:                                             ; preds = %argv2int.exit73, %bb.h
  %.063 = phi i32 [ %i.av, %bb.h ], [ %i.bi, %argv2int.exit73 ] ; 2 uses
  %.061 = phi i32 [ %i.aq, %bb.h ], [ %i.bh, %argv2int.exit73 ] ; 4 uses
  %i.bj = trunc i32 %.063 to i16                  ; 2 uses
  %i.bk = and i32 %.063, 32768
  %.not.not66 = icmp eq i32 %i.bk, 0
  br i1 %.not.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %.061) #8
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 2195, ptr %i.bo, align 4, !tbaa !9
  store i16 %i.bj, ptr %i.bn, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.bm, ptr %i.bp, align 2, !tbaa !9
  %i.bq = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not = icmp sgt i32 %.062, %.061
  br i1 %.not, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.br = sub i32 %.061, %.062                    ; 3 uses
  %i.bs = icmp ugt i32 %i.br, 250
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !52
  %i.bv = add i32 %i.bu, %i.br
  %i.bw = icmp ugt i32 %i.bv, 250
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @lj_trace_err_info(ptr noundef nonnull %0, i32 noundef 3) #9
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bx = add nuw nsw i32 %i.br, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.c, ptr %i.ca, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.cb, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %i.cc, align 4, !tbaa !47
  %i.cd = or disjoint i64 %i.h, -1688849860263936
  store i64 %i.cd, ptr %2, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = sext i32 %.062 to i64                   ; 2 uses
  %sext = sext i32 %.061 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ %i.cg, %bb.q ] ; 4 uses
  %i.ch = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ci = call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ch) #8
  store i32 %i.ci, ptr %i.ce, align 4, !tbaa !46
  %i.cj = sitofp i32 %i.ch to double
  store double %i.cj, ptr %i.cf, align 8, !tbaa !9
  %i.ck = call i32 @lj_record_idx(ptr noundef nonnull %0, ptr noundef nonnull %2) #8
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.cm = sub nsw i64 %indvars.iv, %i.cg
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !40
  %i.co = icmp eq i64 %indvars.iv, %sext
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.co, label %bb.s, label %bb.r

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.cp = trunc i32 %.064 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 147, ptr %i.cr, align 4, !tbaa !9
  store i16 %i.bj, ptr %i.cq, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.cp, ptr %i.cs, align 2, !tbaa !9
  %i.ct = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.cu, align 8, !tbaa !33
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @recff_select(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40   ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !37
  %i.e = tail call i32 @lj_ffrecord_select_mode(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.d) ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = add i32 %i.i, -1
  %i.k = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.j) #8
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !38
  store i32 %i.k, ptr %i.l, align 4, !tbaa !40
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = and i32 %i.c, 32768
  %.not37.not = icmp eq i32 %i.m, 0
  br i1 %.not37.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39
  %i.p = zext i32 %i.o to i64                     ; 5 uses
  %i.q = icmp slt i32 %i.e, 0
  %i.r = add nsw i64 %i.p, %i.f
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.p)
  %.033 = select i1 %i.q, i64 %i.r, i64 %spec.select ; 6 uses
  %i.s = icmp sgt i64 %.033, 0
  br i1 %i.s, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.t = sub nsw i64 %i.p, %.033                  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = icmp sgt i64 %i.t, 0
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !38   ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.033 ; 6 uses
  %min.iters.check = icmp ult i64 %i.t, 12
  %i.y = shl i64 %.033, 2
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !40
  %wide.load41 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !40
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %wide.load, ptr %i.ab, align 4, !tbaa !40
  store <4 x i32> %wide.load41, ptr %i.ac, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.03238.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %2 = sub nsw i64 %i.p, %.033
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.03238.prol = phi i64 [ %i.ah, %scalar.ph.prol ], [ %.03238.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03238.prol
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.03238.prol
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !40
  %i.ah = add nuw nsw i64 %.03238.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !63

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03238.unr = phi i64 [ %.03238.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = sub nsw i64 %.033, %i.p
  %i.aj = add i64 %i.ai, %.03238.ph
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03238 = phi i64 [ %i.ba, %scalar.ph ], [ %.03238.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03238
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.03238
  store i32 %i.am, ptr %i.an, align 4, !tbaa !40
  %i.ao = add nuw nsw i64 %.03238, 1              ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ao
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !40
  %i.as = add nuw nsw i64 %.03238, 2              ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.as
  store i32 %i.au, ptr %i.av, align 4, !tbaa !40
  %i.aw = add nuw nsw i64 %.03238, 3              ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !40
  %i.ba = add nuw nsw i64 %.03238, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !64

.critedge:                                        ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !40
  %i.bf = add i32 %i.be, 32768
  %i.bg = icmp ult i32 %i.bc, %i.bf
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  tail call void @lj_trace_err_info(ptr noundef nonnull %0, i32 noundef 1) #9
  unreachable

bb.h:                                             ; preds = %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9  ; 2 uses
  %i.bp = and i64 %i.bo, 3
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.br = inttoptr i64 %i.bo to ptr
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !40
  %.fr21.i = freeze i32 %i.bs                     ; 2 uses
  %i.bt = and i32 %.fr21.i, 253
  %or.cond.i = icmp eq i32 %i.bt, 65
  br i1 %or.cond.i, label %.thread.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.j
  %trunc.i = trunc i32 %.fr21.i to i8
  switch i8 %trunc.i, label %bb.k [
    i8 73, label %.thread.i
    i8 63, label %.thread.i
  ]

bb.k:                                             ; preds = %switch.early.test.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 10
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !9
  switch i8 %i.bx, label %bb.l [
    i8 19, label %.thread.i
    i8 -117, label %.thread.i
    i8 -111, label %.thread.i
  ]

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @recff_stitch(ptr noundef nonnull %0)
  br label %recff_nyi.exit

.thread.i:                                        ; preds = %bb.k, %bb.k, %bb.k, %switch.early.test.i, %switch.early.test.i, %bb.j, %bb.i, %bb.h
  tail call void @lj_record_stop(ptr noundef nonnull %0, i32 noundef 7, i32 noundef 0) #8
  br label %recff_nyi.exit

recff_nyi.exit:                                   ; preds = %bb.l, %.thread.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.by, align 8, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f, %bb.a, %bb.c, %bb.e, %recff_nyi.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @recff_tonumber(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %union.TValue, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  %i.f = and i32 %i.e, 520093696
  %i.g = icmp eq i32 %i.f, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @lj_opt_narrow_toint(ptr noundef nonnull %0, i32 noundef %i.e) #8 ; 2 uses
  %i.i = and i32 %i.h, 32768
  %.not27.not = icmp eq i32 %i.i, 0
  br i1 %.not27.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.l = and i32 %i.h, 32767
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 8, !tbaa !9
  %.not28 = icmp eq i32 %i.o, 10
  br i1 %.not28, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %i.t = add i32 %i.s, 32768
  %i.u = icmp ult i32 %i.q, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @lj_trace_err_info(ptr noundef nonnull %0, i32 noundef 1) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.w = load i32, ptr %i.v, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !9  ; 2 uses
  %i.ad = and i64 %i.ac, 3
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.af = inttoptr i64 %i.ac to ptr
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %.fr21.i = freeze i32 %i.ag                     ; 2 uses
  %i.ah = and i32 %.fr21.i, 253
  %or.cond.i = icmp eq i32 %i.ah, 65
  br i1 %or.cond.i, label %.thread.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.h
  %trunc.i = trunc i32 %.fr21.i to i8
  switch i8 %trunc.i, label %bb.i [
    i8 73, label %.thread.i
    i8 63, label %.thread.i
  ]

bb.i:                                             ; preds = %switch.early.test.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
end_hunk_0
