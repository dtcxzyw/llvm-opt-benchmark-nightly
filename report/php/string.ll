Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@php_strip_tags_ex:bb.a
  %.not337 = icmp eq i32 %.6511, 0
  br i1 %.not337, label %bb.bi, label %.critedge350

bb.bi:                                            ; preds = %bb.bh
  %.3245.add298 = add nuw nsw i64 %.3245.idx.in509, 2
  br label %.outer372.backedge

bb.bj:                                            ; preds = %.lr.ph514, %.lr.ph514
  %i.cp = getelementptr inbounds i8, ptr %i.a, i64 %.3245.idx.in509
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !32
  %.not334 = icmp eq i8 %i.cq, 92
  br i1 %.not334, label %.critedge350, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not335 = icmp eq i32 %.6511, 0
  %i.cr = zext nneg i8 %i.cn to i32               ; 2 uses
  br i1 %.not335, label %.critedge350, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not356 = icmp eq i32 %.6511, %i.cr
  %.6.mux = select i1 %.not356, i32 0, i32 %.6511
  br label %.critedge350

bb.bm:                                            ; preds = %.lr.ph514
  %i.cs = getelementptr inbounds i8, ptr %i.a, i64 %.3245.idx.in509
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  %i.cu = icmp eq i8 %i.ct, 45
  br i1 %i.cu, label %bb.bn, label %.critedge350

bb.bn:                                            ; preds = %bb.bm
  %i.cv = getelementptr inbounds i8, ptr %.3245.ptr513, i64 -2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !32
  %i.cx = icmp eq i8 %i.cw, 33
  br i1 %i.cx, label %bb.bo, label %.critedge350

bb.bo:                                            ; preds = %bb.bn
  %.3245.add306 = add nuw nsw i64 %.3245.idx.in509, 2 ; 2 uses
  %i.cy = icmp samesign ult i64 %.3245.add306, %1
  %.not611 = icmp eq i32 %.6511, 0
  %or.cond914 = select i1 %i.cy, i1 %.not611, i1 false
  br i1 %or.cond914, label %.lr.ph579.split, label %.loopexit

bb.bp:                                            ; preds = %.lr.ph514, %.lr.ph514
  %i.cz = icmp ugt i64 %.3245.idx.in509, 5
  br i1 %i.cz, label %bb.bq, label %.critedge350

bb.bq:                                            ; preds = %bb.bp
  %i.da = getelementptr inbounds i8, ptr %i.a, i64 %.3245.idx.in509
  %i.db = load i8, ptr %i.da, align 1, !tbaa !32
  switch i8 %i.db, label %.critedge350 [
    i8 112, label %bb.br
    i8 80, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.dc = getelementptr inbounds i8, ptr %.3245.ptr513, i64 -2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !32
  switch i8 %i.dd, label %.critedge350 [
    i8 121, label %bb.bs
    i8 89, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %i.de = getelementptr inbounds i8, ptr %.3245.ptr513, i64 -3
  %i.df = load i8, ptr %i.de, align 1, !tbaa !32
  switch i8 %i.df, label %.critedge350 [
    i8 116, label %bb.bt
    i8 84, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs, %bb.bs
  %i.dg = getelementptr inbounds i8, ptr %.3245.ptr513, i64 -4
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !32
  switch i8 %i.dh, label %.critedge350 [
    i8 99, label %bb.bu
    i8 67, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  %i.di = getelementptr inbounds i8, ptr %.3245.ptr513, i64 -5
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !32
  switch i8 %i.dj, label %.critedge350 [
    i8 111, label %bb.bv
    i8 79, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.dk = getelementptr inbounds i8, ptr %.3245.ptr513, i64 -6
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !32
  switch i8 %i.dl, label %.critedge350 [
    i8 100, label %bb.bw
    i8 68, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %.3245.add = add nuw nsw i64 %.3245.idx.in509, 2 ; 2 uses
  %.not295 = icmp samesign ult i64 %.3245.add, %1
  br i1 %.not295, label %bb.q, label %.loopexit

.critedge350:                                     ; preds = %bb.bk, %bb.bl, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %.lr.ph514, %bb.bp, %bb.bm, %bb.bn, %bb.bj, %bb.bh, %bb.bg
  %.7239 = phi i32 [ %.6238510, %.lr.ph514 ], [ %i.co, %bb.bg ], [ 0, %bb.bh ], [ %.6238510, %bb.br ], [ %.6238510, %bb.bs ], [ %.6238510, %bb.bl ], [ %.6238510, %bb.bj ], [ %.6238510, %bb.bq ], [ %.6238510, %bb.bn ], [ %.6238510, %bb.bm ], [ %.6238510, %bb.bp ], [ %.6238510, %bb.bv ], [ %.6238510, %bb.bu ], [ %.6238510, %bb.bt ], [ %.6238510, %bb.bk ]
  %.7 = phi i32 [ %.6511, %.lr.ph514 ], [ %.6511, %bb.bg ], [ %.6511, %bb.bh ], [ %.6511, %bb.br ], [ %.6511, %bb.bs ], [ %.6.mux, %bb.bl ], [ %.6511, %bb.bj ], [ %.6511, %bb.bq ], [ %.6511, %bb.bn ], [ %.6511, %bb.bm ], [ %.6511, %bb.bp ], [ %.6511, %bb.bv ], [ %.6511, %bb.bu ], [ %.6511, %bb.bt ], [ %i.cr, %bb.bk ]
  %.3245.idx = add i64 %.3245.idx512, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %.3245.idx, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph514

.lr.ph579.split:                                  ; preds = %bb.bo, %bb.ca
  %.4246.idx577 = phi i64 [ %.4246.add305, %bb.ca ], [ %.3245.add306, %bb.bo ] ; 3 uses
  %.4246.ptr578 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4246.idx577 ; 3 uses
  %i.dm = load i8, ptr %.4246.ptr578, align 1, !tbaa !32
  %.not612 = icmp eq i8 %i.dm, 62
  br i1 %.not612, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %.lr.ph579.split
  %i.dn = getelementptr inbounds i8, ptr %.4246.ptr578, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !32
  %i.dp = icmp eq i8 %i.do, 45
  br i1 %i.dp, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.dq = getelementptr inbounds i8, ptr %.4246.ptr578, i64 -2
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !32
  %i.ds = icmp eq i8 %i.dr, 45
  br i1 %i.ds, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %.4246.add = add nuw nsw i64 %.4246.idx577, 1
  br label %.outer372.backedge

bb.ca:                                            ; preds = %bb.bx, %bb.by, %.lr.ph579.split
  %.4246.add305 = add i64 %.4246.idx577, 1        ; 2 uses
  %exitcond764.not = icmp eq i64 %.4246.add305, %1
  br i1 %exitcond764.not, label %.loopexit, label %.lr.ph579.split, !llvm.loop !283

.loopexit:                                        ; preds = %.outer372.backedge, %bb.k, %bb.bo, %bb.p, %.outer, %bb.ca, %.outer364, %.preheader358, %bb.bw, %.preheader, %.critedge348, %.critedge350, %bb.c
  %.0252375 = phi ptr [ %.0252500, %bb.bw ], [ %.0252500, %.critedge350 ], [ %0, %bb.c ], [ %.0252500, %.critedge348 ], [ %.0252500, %bb.ca ], [ %.0252500, %.outer ], [ %.1253, %bb.p ], [ %.0252500, %.outer364 ], [ %.0252500, %.preheader ], [ %.0252500, %.preheader358 ], [ %.0252.ph.be, %.outer372.backedge ], [ %.0252500, %bb.k ], [ %.0252500, %bb.bo ] ; 3 uses
  %.9 = phi ptr [ %.4268.ph560, %bb.bw ], [ %.4268.ph560, %.critedge350 ], [ %.0256, %bb.c ], [ %.4268.ph560, %.critedge348 ], [ %.4268.ph560, %bb.ca ], [ %.8272, %.outer ], [ %.1265.ph603, %bb.p ], [ %.4268.ph560, %.outer364 ], [ %.4268.ph560, %.preheader ], [ %.4268.ph560, %.preheader358 ], [ %.1265.ph.be, %.outer372.backedge ], [ %.3267, %bb.k ], [ %.4268.ph560, %bb.bo ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.du = icmp ult ptr %.0252375, %i.dt
  br i1 %i.du, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.loopexit
  store i8 0, ptr %.0252375, align 1, !tbaa !32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit
  tail call void @_efree(ptr noundef %i.a) #26
  %.not345 = icmp eq ptr %.9, null
  br i1 %.not345, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @_efree(ptr noundef nonnull %.9) #26
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.not346 = icmp eq ptr %.0229, null
  br i1 %.not346, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @_efree(ptr noundef nonnull %.0229) #26
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.dv = ptrtoint ptr %.0252375 to i64
  %i.dw = ptrtoint ptr %0 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  ret i64 %i.dx
}

; Function Attrs: nounwind uwtable
define hidden void @zif_setlocale(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 3 uses
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef -1) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !32
  %i.h = icmp eq i8 %i.g, 4
  br i1 %i.h, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !34

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.c
  %i.i = load i64, ptr %i.e, align 8, !tbaa !32
  store i64 %i.i, ptr %i.a, align 8, !tbaa !46
  br label %bb.d

zend_parse_arg_long_ex.exit:                      ; preds = %bb.c
  %i.j = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 1) #26
  br i1 %i.j, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %2 = add i32 %i.c, -1                           ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !32
  %i.n = and i32 %i.m, 134217728
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %bb.e, !prof !34

bb.e:                                             ; preds = %bb.b, %bb.d, %zend_parse_arg_long_ex.exit
  %.1148.ph = phi i32 [ 1, %zend_parse_arg_long_ex.exit ], [ %i.c, %bb.d ], [ 0, %bb.b ]
  %.0146.ph = phi ptr [ %i.e, %zend_parse_arg_long_ex.exit ], [ %i.e, %bb.d ], [ null, %bb.b ]
  %.1144.ph = phi i32 [ 9, %zend_parse_arg_long_ex.exit ], [ 11, %bb.d ], [ 1, %bb.b ]
  call void @zend_wrong_parameter_error(i32 noundef %.1144.ph, i32 noundef %.1148.ph, ptr noundef null, i32 noundef 0, ptr noundef %.0146.ph) #26
  br label %bb.w

.critedge:                                        ; preds = %bb.d
  %i.o = zext i32 %2 to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.q = icmp ugt i32 %2, 4096                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !45

bb.f:                                             ; preds = %.critedge
  %i.r = call noalias ptr @_emalloc(i64 noundef %i.p) #27
  br label %.lr.ph.preheader

bb.g:                                             ; preds = %.critedge
  %i.s = alloca i8, i64 %i.p, align 16
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.f
  %i.t = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ] ; 3 uses
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph202.preheader:                              ; preds = %.critedge163
  %umax211 = call i32 @llvm.umax.i32(i32 %2, i32 1)
  %wide.trip.count212 = zext i32 %umax211 to i64
  br label %.lr.ph202

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge163
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge163 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32    ; 2 uses
  %.not154 = icmp eq i8 %i.w, 7
  br i1 %.not154, label %.critedge163, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  switch i8 %i.w, label %zend_parse_arg_str_ex.exit [
    i8 6, label %bb.i
    i8 1, label %zend_parse_arg_str_ex.exit.thread
  ], !prof !48

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !32
  br label %zend_parse_arg_str_ex.exit.thread

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.h, %bb.i
  %storemerge.i = phi ptr [ %i.y, %bb.i ], [ null, %bb.h ]
  store ptr %storemerge.i, ptr %i.x, align 8, !tbaa !36
  br label %.critedge163

zend_parse_arg_str_ex.exit:                       ; preds = %bb.h
  %i.z = trunc i64 %indvars.iv to i32
  %i.aa = add i32 %i.z, 2                         ; 2 uses
  %i.ab = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.u, ptr noundef %i.x, i32 noundef range(i32 1, 0) %i.aa) #26
  br i1 %i.ab, label %.critedge163, label %.thread178, !prof !37

.thread178:                                       ; preds = %zend_parse_arg_str_ex.exit
  call void @zend_wrong_parameter_type_error(i32 noundef %i.aa, i32 noundef 27, ptr noundef nonnull %i.u) #26
  br label %.loopexit191

.critedge163:                                     ; preds = %zend_parse_arg_str_ex.exit.thread, %.lr.ph, %zend_parse_arg_str_ex.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph202.preheader, label %.lr.ph, !llvm.loop !284

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %.loopexit
  %indvars.iv210 = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next211, %.loopexit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv210 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !32
  switch i8 %i.ae, label %bb.r [
    i8 7, label %bb.j
    i8 1, label %bb.q
  ]

bb.j:                                             ; preds = %.lr.ph202
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !32
  %i.ak = shl i32 %i.aj, 2
  %i.al = and i32 %i.ak, 16
  %narrow = sub nuw nsw i32 32, %i.al
  %i.am = zext nneg i32 %narrow to i64
  %.not158196 = icmp eq i32 %i.ah, 0
  br i1 %.not158196, label %.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  br label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.thread183
  %.0136198 = phi ptr [ %i.bn, %.thread183 ], [ %i.ao, %.lr.ph200.preheader ] ; 4 uses
  %.0137197 = phi i32 [ %i.bo, %.thread183 ], [ %i.ah, %.lr.ph200.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0136198, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !32  ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.thread183, label %bb.k, !prof !45

bb.k:                                             ; preds = %.lr.ph200
  %i.as = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.at = icmp eq i8 %i.aq, 6
  br i1 %i.at, label %.thread.i, label %zval_try_get_tmp_string.exit.i, !prof !34

.thread.i:                                        ; preds = %bb.k
  %i.au = load ptr, ptr %.0136198, align 8, !tbaa !32, !nonnull !53, !noundef !53
  %i.av = call fastcc ptr @try_setlocale_str(i64 noundef %i.as, ptr noundef nonnull %i.au)
  br label %try_setlocale_zval.exit

zval_try_get_tmp_string.exit.i:                   ; preds = %bb.k
  %i.aw = call ptr @zval_try_get_string_func(ptr noundef nonnull %.0136198) #26 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %try_setlocale_zval.exit.thread, label %bb.l, !prof !54

bb.l:                                             ; preds = %zval_try_get_tmp_string.exit.i
  %i.ay = call fastcc ptr @try_setlocale_str(i64 noundef %i.as, ptr noundef nonnull %i.aw) ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %i.bb = and i32 %i.ba, 64
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.m, label %try_setlocale_zval.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !42 ; 2 uses
  %i.bd = icmp ne i32 %i.bc, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !42
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %try_setlocale_zval.exit

bb.n:                                             ; preds = %bb.m
  call void @_efree(ptr noundef nonnull %i.aw) #26
  br label %try_setlocale_zval.exit

try_setlocale_zval.exit:                          ; preds = %.thread.i, %bb.l, %bb.m, %bb.n
  %.0.i166 = phi ptr [ %i.ay, %bb.l ], [ %i.av, %.thread.i ], [ %i.ay, %bb.n ], [ %i.ay, %bb.m ] ; 3 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !121
  %.not159 = icmp eq ptr %i.bg, null
  br i1 %.not159, label %bb.o, label %.loopexit191

try_setlocale_zval.exit.thread:                   ; preds = %zval_try_get_tmp_string.exit.i
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !121
  %.not159181 = icmp eq ptr %i.bh, null
  br i1 %.not159181, label %.thread183, label %.loopexit191

bb.o:                                             ; preds = %try_setlocale_zval.exit
  %.not160 = icmp eq ptr %.0.i166, null
  br i1 %.not160, label %.thread183, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.0.i166, ptr %1, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i166, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %i.bk = and i32 %i.bj, 64
  %.not161 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not161, i32 262, i32 6
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !32
  br label %.loopexit191

.thread183:                                       ; preds = %try_setlocale_zval.exit.thread, %bb.o, %.lr.ph200
  %i.bn = getelementptr inbounds nuw i8, ptr %.0136198, i64 %i.am
  %i.bo = add i32 %.0137197, -1                   ; 2 uses
  %.not158 = icmp eq i32 %i.bo, 0
  br i1 %.not158, label %.loopexit, label %.lr.ph200, !llvm.loop !285

bb.q:                                             ; preds = %.lr.ph202
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !46
  %i.bq = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  %i.br = call fastcc ptr @try_setlocale_str(i64 noundef %i.bp, ptr noundef %i.bq)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph202
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv210
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36
  %i.bv = call fastcc ptr @try_setlocale_str(i64 noundef %i.bs, ptr noundef %i.bu)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.0138 = phi ptr [ %i.br, %bb.q ], [ %i.bv, %bb.r ] ; 3 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !121
  %.not155 = icmp eq ptr %i.bw, null
  br i1 %.not155, label %bb.t, label %.loopexit191

bb.t:                                             ; preds = %bb.s
  %.not156 = icmp eq ptr %.0138, null
  br i1 %.not156, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %.0138, ptr %1, align 8, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %.0138, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = and i32 %i.by, 64
  %.not157 = icmp eq i32 %i.bz, 0
  %i.ca = select i1 %.not157, i32 262, i32 6
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !32
  br label %.loopexit191

.loopexit:                                        ; preds = %.thread183, %bb.j, %bb.t
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count212
  br i1 %exitcond214.not, label %._crit_edge, label %.lr.ph202, !llvm.loop !286

._crit_edge:                                      ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.cc, align 8, !tbaa !32
  br label %.loopexit191

.loopexit191:                                     ; preds = %bb.s, %try_setlocale_zval.exit.thread, %try_setlocale_zval.exit, %bb.p, %bb.u, %.thread178, %._crit_edge
  br i1 %i.q, label %bb.v, label %bb.w, !prof !45

bb.v:                                             ; preds = %.loopexit191
  call void @_efree(ptr noundef %i.t) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %.loopexit191, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @try_setlocale_str(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %zend_string_equals_cstr.exit51, label %bb.b

zend_string_equals_cstr.exit51:                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %lhsc = load i8, ptr %i.d, align 8
  %.not.i50 = icmp eq i8 %lhsc, 48
  %spec.select = select i1 %.not.i50, ptr null, ptr %1
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 254
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.57) #26
  br label %zend_string_copy.exit38.thread

.thread:                                          ; preds = %zend_string_equals_cstr.exit51, %bb.b
  %.026 = phi ptr [ %1, %bb.b ], [ %spec.select, %zend_string_equals_cstr.exit51 ] ; 18 uses
  %i.f = trunc i64 %0 to i32
  %.not = icmp eq ptr %.026, null                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.026, i64 24 ; 4 uses
  %i.h = select i1 %.not, ptr null, ptr %i.g
  %i.i = tail call ptr @setlocale(i32 noundef %i.f, ptr noundef %i.h) #26 ; 8 uses
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %zend_string_copy.exit38.thread, label %bb.d

bb.d:                                             ; preds = %.thread
  br i1 %.not, label %zend_string_copy.exit38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #28 ; 9 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 80), align 8, !tbaa !287
  switch i64 %0, label %bb.o [
    i64 6, label %bb.f
    i64 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  tail call void @zend_update_current_locale() #26
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !288 ; 5 uses
  %.not33 = icmp eq ptr %i.k, null
  br i1 %.not33, label %zend_string_release_ex.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = and i32 %i.m, 64
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.h, label %zend_string_release_ex.exit

bb.h:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.k, align 4, !tbaa !42   ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.q, ptr %i.k, align 4, !tbaa !42
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %zend_string_release_ex.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_efree(ptr noundef nonnull %i.k) #26
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.s = icmp eq i64 %i.j, 1
  br i1 %i.s, label %bb.j, label %.split

.split:                                           ; preds = %zend_string_release_ex.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %.split53, label %zend_string_equals_cstr.exit45.thread

.split53:                                         ; preds = %.split
  %bcmp.i43 = tail call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %i.i, i64 %i.j)
  %.not.i44 = icmp eq i32 %bcmp.i43, 0
  br i1 %.not.i44, label %bb.l, label %zend_string_equals_cstr.exit45.thread

bb.j:                                             ; preds = %zend_string_release_ex.exit
  %i.w = load i8, ptr %i.i, align 1, !tbaa !32    ; 2 uses
  %i.x = icmp eq i8 %i.w, 67
  br i1 %i.x, label %bb.k, label %.split28

.split28:                                         ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %zend_string_equals_cstr.exit45, label %zend_string_equals_cstr.exit45.thread

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !288
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_one_char_string, i64 536), align 8, !tbaa !36
  br label %zend_string_copy.exit38.thread

zend_string_equals_cstr.exit45:                   ; preds = %.split28
  %lhsc56 = load i8, ptr %i.g, align 8
  %.not.i42 = icmp eq i8 %lhsc56, %i.w
  br i1 %.not.i42, label %bb.l, label %zend_string_equals_cstr.exit45.thread

bb.l:                                             ; preds = %.split53, %zend_string_equals_cstr.exit45
  %i.ac = getelementptr inbounds nuw i8, ptr %.026, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = and i32 %i.ad, 64
  %.not.i39 = icmp eq i32 %i.ae, 0
  br i1 %.not.i39, label %bb.m, label %zend_string_copy.exit40

bb.m:                                             ; preds = %bb.l
  %i.af = load i32, ptr %.026, align 4, !tbaa !42
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %.026, align 4, !tbaa !42
  br label %zend_string_copy.exit40

zend_string_copy.exit40:                          ; preds = %bb.l, %bb.m
  store ptr %.026, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !288
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ai = and i32 %i.ah, 64
  %.not.i37 = icmp eq i32 %i.ai, 0
  br i1 %.not.i37, label %bb.n, label %zend_string_copy.exit38.thread

bb.n:                                             ; preds = %zend_string_copy.exit40
  %i.aj = load i32, ptr %.026, align 4, !tbaa !42
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %.026, align 4, !tbaa !42
  br label %zend_string_copy.exit38.thread

zend_string_equals_cstr.exit45.thread:            ; preds = %zend_string_equals_cstr.exit45, %.split53, %.split, %.split28
  %i.al = and i64 %i.j, -8
  %i.am = add i64 %i.al, 32
  %i.an = tail call noalias ptr @_emalloc(i64 noundef %i.am) #27 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 22, ptr %i.ao, align 4, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.j, ptr %i.aq, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.j
  store i8 0, ptr %i.as, align 1, !tbaa !32
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 72), align 8, !tbaa !288
  store i32 2, ptr %i.an, align 8, !tbaa !42
  br label %zend_string_copy.exit38.thread

bb.o:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !41
  %i.av = icmp eq i64 %i.au, %i.j
  br i1 %i.av, label %zend_string_equals_cstr.exit48, label %zend_string_copy.exit38

zend_string_equals_cstr.exit48:                   ; preds = %bb.o
  %bcmp.i46 = tail call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %i.i, i64 %i.j)
  %.not.i47 = icmp eq i32 %bcmp.i46, 0
  br i1 %.not.i47, label %bb.p, label %zend_string_copy.exit38

bb.p:                                             ; preds = %zend_string_equals_cstr.exit48
  %i.aw = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = and i32 %i.ax, 64
  %.not.i34 = icmp eq i32 %i.ay, 0
  br i1 %.not.i34, label %bb.q, label %zend_string_copy.exit38.thread

bb.q:                                             ; preds = %bb.p
  %i.az = load i32, ptr %.026, align 8, !tbaa !42
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %.026, align 8, !tbaa !42
  br label %zend_string_copy.exit38.thread

zend_string_copy.exit38:                          ; preds = %bb.o, %zend_string_equals_cstr.exit48, %bb.d
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #28 ; 4 uses
  %i.bc = and i64 %i.bb, -8
  %i.bd = add i64 %i.bc, 32
  %i.be = tail call noalias ptr @_emalloc(i64 noundef %i.bd) #27 ; 6 uses
  store i32 1, ptr %i.be, align 4, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
end_hunk_0
begin_hunk_1_@php_str_to_str_i_ex:bb.a
  br i1 %i.fs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.by, ptr nonnull %i.ft, i64 %i.fm)
  %.not44.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not44.i, label %zend_memnstr.exit.thread163, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  %.not.i = icmp ugt ptr %i.fu, %i.fh
  br i1 %.not.i, label %zend_memnstr.exit.thread, label %bb.al, !llvm.loop !8

bb.ap:                                            ; preds = %bb.aj
  %i.fv = tail call ptr @zend_memnstr_ex(ptr noundef %.1100, ptr noundef nonnull %i.bv, i64 noundef %i.eq, ptr noundef %i.em) #26
  br label %zend_memnstr.exit

zend_memnstr.exit:                                ; preds = %bb.ag, %bb.ah, %bb.ap
  %.1.i = phi ptr [ %i.ew, %bb.ah ], [ %i.fv, %bb.ap ], [ %.1100, %bb.ag ] ; 2 uses
  %.not119 = icmp eq ptr %.1.i, null
  br i1 %.not119, label %zend_memnstr.exit.thread, label %zend_memnstr.exit.zend_memnstr.exit.thread163_crit_edge

zend_memnstr.exit.zend_memnstr.exit.thread163_crit_edge: ; preds = %zend_memnstr.exit
  %.pre234 = ptrtoint ptr %.1100 to i64
  br label %zend_memnstr.exit.thread163

zend_memnstr.exit.thread163:                      ; preds = %bb.an, %zend_memnstr.exit.zend_memnstr.exit.thread163_crit_edge
  %.pre-phi = phi i64 [ %.pre234, %zend_memnstr.exit.zend_memnstr.exit.thread163_crit_edge ], [ %i.ex, %bb.an ] ; 2 uses
  %.1.i166 = phi ptr [ %.1.i, %zend_memnstr.exit.zend_memnstr.exit.thread163_crit_edge ], [ %i.fp, %bb.an ] ; 2 uses
  %i.fw = sub i64 %.pre-phi, %i.ep
  %i.fx = getelementptr inbounds i8, ptr %i.eo, i64 %i.fw
  %i.fy = ptrtoint ptr %.1.i166 to i64
  %i.fz = sub i64 %i.fy, %.pre-phi                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.097, ptr nonnull align 1 %i.fx, i64 %i.fz, i1 false)
  %i.ga = getelementptr inbounds i8, ptr %.097, i64 %i.fz ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr align 1 %3, i64 %4, i1 false)
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %4
  %i.gc = load i64, ptr %5, align 8, !tbaa !46
  %i.gd = add nsw i64 %i.gc, 1
  store i64 %i.gd, ptr %5, align 8, !tbaa !46
  %i.ge = load i64, ptr %i.bw, align 8, !tbaa !41 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1.i166, i64 %i.ge
  br label %bb.ag, !llvm.loop !329

zend_memnstr.exit.thread:                         ; preds = %bb.ai, %zend_memnstr.exit, %bb.ak, %bb.al, %bb.ao
  %i.gg = icmp ult ptr %.1100, %i.em
  br i1 %i.gg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %zend_memnstr.exit.thread
  %i.gh = ptrtoint ptr %.1100 to i64              ; 2 uses
  %i.gi = sub i64 %i.gh, %i.ep
  %i.gj = getelementptr inbounds i8, ptr %i.eo, i64 %i.gi
  %i.gk = sub i64 %i.en, %i.gh                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.097, ptr nonnull align 1 %i.gj, i64 %i.gk, i1 false)
  %i.gl = getelementptr inbounds i8, ptr %.097, i64 %i.gk
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %zend_memnstr.exit.thread
  %.198 = phi ptr [ %i.gl, %bb.aq ], [ %.097, %zend_memnstr.exit.thread ]
  store i8 0, ptr %.198, align 1, !tbaa !32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !32
  %i.go = and i32 %i.gn, 64
  %.not.i140 = icmp eq i32 %i.go, 0
  br i1 %.not.i140, label %bb.as, label %zend_string_copy.exit

bb.as:                                            ; preds = %bb.ar
  %i.gp = load i32, ptr %i.bu, align 8, !tbaa !42 ; 2 uses
  %i.gq = icmp ne i32 %i.gp, 0
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = add i32 %i.gp, -1                       ; 2 uses
  store i32 %i.gr, ptr %i.bu, align 8, !tbaa !42
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.at, label %zend_string_copy.exit

bb.at:                                            ; preds = %bb.as
  tail call void @_efree(ptr noundef nonnull %i.bu) #26
  br label %zend_string_copy.exit

zend_string_release_ex.exit143:                   ; preds = %bb.p, %bb.o, %zend_memnstr.exit136.thread
  %.not121 = icmp eq ptr %.0101, null
  br i1 %.not121, label %zend_string_release_ex.exit139, label %zend_string_copy.exit

bb.au:                                            ; preds = %bb.a
  %i.gt = icmp ugt i64 %i.b, %i.d
  br i1 %i.gt, label %zend_string_release_ex.exit139, label %bb.aw

zend_string_release_ex.exit139.sink.split:        ; preds = %bb.ac, %bb.ay
  %.sink280 = phi ptr [ %i.gz, %bb.ay ], [ %i.bu, %bb.ac ]
  tail call void @_efree(ptr noundef nonnull %.sink280) #26
  br label %zend_string_release_ex.exit139

zend_string_release_ex.exit139:                   ; preds = %zend_string_release_ex.exit139.sink.split, %bb.ac, %bb.ab, %bb.ay, %bb.ax, %bb.au, %zend_string_release_ex.exit143
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !32
  %i.gw = and i32 %i.gv, 64
  %.not.i146 = icmp eq i32 %i.gw, 0
  br i1 %.not.i146, label %bb.av, label %zend_string_copy.exit

bb.av:                                            ; preds = %zend_string_release_ex.exit139
  %i.gx = load i32, ptr %0, align 8, !tbaa !42
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %0, align 8, !tbaa !42
  br label %zend_string_copy.exit

bb.aw:                                            ; preds = %bb.au
  %i.gz = tail call ptr @zend_string_tolower_ex(ptr noundef nonnull %2, i1 noundef zeroext false) #26 ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !41
  %bcmp = tail call i32 @bcmp(ptr %1, ptr nonnull %i.ha, i64 %i.hc)
  %.not = icmp eq i32 %bcmp, 0
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !32
  %i.hf = and i32 %i.he, 64
  %.not.i137 = icmp eq i32 %i.hf, 0               ; 2 uses
  br i1 %.not, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not.i137, label %bb.ay, label %zend_string_release_ex.exit139

bb.ay:                                            ; preds = %bb.ax
  %i.hg = load i32, ptr %i.gz, align 8, !tbaa !42 ; 2 uses
  %i.hh = icmp ne i32 %i.hg, 0
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = add i32 %i.hg, -1                       ; 2 uses
  store i32 %i.hi, ptr %i.gz, align 8, !tbaa !42
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %zend_string_release_ex.exit139.sink.split, label %zend_string_release_ex.exit139

bb.az:                                            ; preds = %bb.aw
  br i1 %.not.i137, label %bb.ba, label %zend_string_release_ex.exit

bb.ba:                                            ; preds = %bb.az
  %i.hk = load i32, ptr %i.gz, align 8, !tbaa !42 ; 2 uses
  %i.hl = icmp ne i32 %i.hk, 0
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = add i32 %i.hk, -1                       ; 2 uses
  store i32 %i.hm, ptr %i.gz, align 8, !tbaa !42
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.bb, label %zend_string_release_ex.exit

bb.bb:                                            ; preds = %bb.ba
  tail call void @_efree(ptr noundef nonnull %i.gz) #26
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.bb, %bb.ba, %bb.az
  %i.ho = and i64 %4, -8
  %i.hp = add i64 %i.ho, 32
  %i.hq = tail call noalias ptr @_emalloc(i64 noundef %i.hp) #27 ; 6 uses
  store i32 1, ptr %i.hq, align 4, !tbaa !42
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 22, ptr %i.hr, align 4, !tbaa !32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i64 0, ptr %i.hs, align 8, !tbaa !43
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store i64 %4, ptr %i.ht, align 8, !tbaa !41
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hu, ptr align 1 %3, i64 %4, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %4
  store i8 0, ptr %i.hv, align 1, !tbaa !32
  %i.hw = load i64, ptr %5, align 8, !tbaa !46
  %i.hx = add nsw i64 %i.hw, 1
  store i64 %i.hx, ptr %5, align 8, !tbaa !46
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.av, %zend_string_release_ex.exit139, %zend_string_release_ex.exit143, %zend_string_release_ex.exit
  %.2105 = phi ptr [ %0, %bb.av ], [ %.0101, %zend_string_release_ex.exit143 ], [ %i.hq, %zend_string_release_ex.exit ], [ %0, %zend_string_release_ex.exit139 ], [ %.sink279, %bb.ar ], [ %.sink279, %bb.as ], [ %.sink279, %bb.at ]
  ret ptr %.2105
}

declare ptr @zval_try_get_string_func(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @zend_update_current_locale() local_unnamed_addr #3

declare i32 @zend_try_assign_typed_ref_arr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @strnatcmp_ex(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @add_assoc_long_ex(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @php_random_default_algo() local_unnamed_addr #3

declare ptr @php_random_default_status() local_unnamed_addr #3

declare i32 @php_next_utf8_char(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { disable_sanitizer_instrumentation nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind allocsize(0,1) }
attributes #31 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}
!llvm.errno.tbaa = !{!28}

!0 = distinct !{!0, !44}
!1 = distinct !{!1, !44}
!2 = distinct !{!2, !44}
!3 = distinct !{!3, !44}
!4 = distinct !{!4, !44}
!5 = distinct !{!5, !44}
!6 = distinct !{!6, !44}
!7 = distinct !{!7, !44}
!8 = distinct !{!8, !44}
!9 = distinct !{!9, !44}
!10 = distinct !{!10, !44}
!11 = distinct !{!11, !44}
!12 = distinct !{!12, !44}
!13 = distinct !{!13, !44}
!14 = distinct !{!14, !44}
!15 = distinct !{!15, !44}
!16 = distinct !{!16, !44}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !{!"omnipotent char", !24, i64 0}
!26 = !{!"int", !25, i64 0}
!27 = !{!"__libc_errno", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"any pointer", !25, i64 0}
!30 = !{!"p1 omnipotent char", !29, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!25, !25, i64 0}
!33 = !{!"branch_weights", i32 4000000, i32 4001}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"p1 _ZTS12_zend_string", !29, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!38 = !{!"_zend_refcounted_h", !26, i64 0, !25, i64 4}
!39 = !{!"long", !25, i64 0}
!40 = !{!"_zend_string", !38, i64 0, !39, i64 8, !39, i64 16, !25, i64 24}
!41 = !{!40, !39, i64 16}
!42 = !{!38, !26, i64 0}
!43 = !{!40, !39, i64 8}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!39, !39, i64 0}
!47 = !{!"branch_weights", i32 4001, i32 4000000}
!48 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!49 = !{!"_Bool", !25, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!55 = !{!"branch_weights", !"expected", i32 805004, i32 2146678644}
!56 = !{!"branch_weights", i32 2146410443, i32 1073205}
!57 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!58 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!59 = !{!"_zend_array", !38, i64 0, !25, i64 8, !26, i64 12, !25, i64 16, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !39, i64 40, !29, i64 48}
!60 = !{!59, !26, i64 24}
!61 = !{!59, !26, i64 28}
!62 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!63 = !{!"", !35, i64 0, !39, i64 8}
!64 = !{!63, !35, i64 0}
!65 = !{!63, !39, i64 8}
!66 = !{!"p1 _ZTS11_zend_array", !29, i64 0}
!67 = !{!"_zval_struct", !25, i64 0, !25, i64 8, !25, i64 12}
!68 = !{!"p1 _ZTS12_zval_struct", !29, i64 0}
!69 = !{!"p1 _ZTS12_zend_object", !29, i64 0}
!70 = !{!"_zend_fcall_info", !39, i64 0, !67, i64 8, !68, i64 24, !68, i64 32, !69, i64 40, !26, i64 48, !66, i64 56}
!71 = !{!"p1 _ZTS14_zend_function", !29, i64 0}
!72 = !{!"p1 _ZTS17_zend_class_entry", !29, i64 0}
!73 = !{!"_zend_fcall_info_cache", !71, i64 0, !72, i64 8, !72, i64 16, !69, i64 24, !69, i64 32}
!74 = !{!"p1 _ZTS11_zend_llist", !29, i64 0}
!75 = !{!"timespec", !39, i64 0, !39, i64 8}
!76 = !{!"stat", !39, i64 0, !39, i64 8, !39, i64 16, !26, i64 24, !26, i64 28, !26, i64 32, !26, i64 36, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !75, i64 72, !75, i64 88, !75, i64 104, !25, i64 120}
!77 = !{!"_php_stream_statbuf", !76, i64 0}
!78 = !{!"p1 _ZTS18php_serialize_data", !29, i64 0}
!79 = !{!"", !78, i64 0, !26, i64 8}
!80 = !{!"p1 _ZTS20php_unserialize_data", !29, i64 0}
!81 = !{!"", !80, i64 0, !26, i64 8}
!82 = !{!"", !63, i64 0, !63, i64 16, !63, i64 32, !63, i64 48, !63, i64 64, !63, i64 80, !63, i64 96, !26, i64 112, !30, i64 120, !26, i64 128, !26, i64 132, !63, i64 136, !26, i64 152, !26, i64 156, !66, i64 160}
!83 = !{!"_php_basic_globals", !66, i64 0, !59, i64 8, !35, i64 64, !35, i64 72, !49, i64 80, !30, i64 88, !25, i64 96, !39, i64 352, !70, i64 360, !73, i64 424, !74, i64 464, !67, i64 472, !67, i64 488, !39, i64 504, !39, i64 512, !39, i64 520, !39, i64 528, !35, i64 536, !35, i64 544, !77, i64 552, !77, i64 696, !30, i64 840, !26, i64 848, !79, i64 856, !81, i64 872, !82, i64 888, !59, i64 1056, !82, i64 1112, !59, i64 1280, !66, i64 1336, !26, i64 1344, !39, i64 1352}
!84 = !{!"branch_weights", i32 2000, i32 0, i32 0, i32 0}
!85 = !{!"_zend_stack", !26, i64 0, !26, i64 4, !26, i64 8, !29, i64 16}
!86 = !{!"any p2 pointer", !29, i64 0}
!87 = !{!"branch_weights", i32 0, i32 -290966296, i32 2001000, i32 1000}
!88 = !{!"_Bucket", !67, i64 0, !39, i64 16, !35, i64 24}
!89 = !{!88, !39, i64 16}
!90 = !{!88, !35, i64 24}
!91 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{!"branch_weights", i32 8, i32 24}
!95 = !{!"branch_weights", i32 2001, i32 2000}
!96 = !{!"p1 short", !29, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"short", !25, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!"p2 _ZTS11_zend_array", !86, i64 0}
!101 = !{!"p1 _ZTS13__jmp_buf_tag", !29, i64 0}
!102 = !{!"p1 _ZTS14_zend_vm_stack", !29, i64 0}
!103 = !{!"p1 _ZTS18_zend_execute_data", !29, i64 0}
!104 = !{!"zend_atomic_bool_s", !25, i64 0}
!105 = !{!"p1 _ZTS15_zend_ini_entry", !29, i64 0}
!106 = !{!"p2 _ZTS12_zend_object", !86, i64 0}
!107 = !{!"_zend_objects_store", !106, i64 0, !26, i64 8, !26, i64 12, !26, i64 16}
!108 = !{!"_zend_lazy_objects_store", !59, i64 0}
!109 = !{!"p1 _ZTS8_zend_op", !29, i64 0}
!110 = !{!"p1 _ZTS18_zend_module_entry", !29, i64 0}
!111 = !{!"p1 _ZTS18_HashTableIterator", !29, i64 0}
!112 = !{!"_zend_op", !29, i64 0, !25, i64 8, !25, i64 12, !25, i64 16, !26, i64 20, !26, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31}
!113 = !{!"", !68, i64 0, !68, i64 8, !68, i64 16}
!114 = !{!"p1 _ZTS19_zend_fiber_context", !29, i64 0}
!115 = !{!"p1 _ZTS11_zend_fiber", !29, i64 0}
!116 = !{!"p2 _ZTS16_zend_error_info", !86, i64 0}
!117 = !{!"_zend_call_stack", !29, i64 0, !39, i64 8}
!118 = !{!"p1 _ZTS19_zend_strtod_bigint", !29, i64 0}
!119 = !{!"_zend_strtod_state", !25, i64 0, !118, i64 64, !30, i64 72}
!120 = !{!"_zend_executor_globals", !67, i64 0, !67, i64 16, !25, i64 32, !100, i64 288, !100, i64 296, !59, i64 304, !59, i64 360, !101, i64 416, !26, i64 424, !49, i64 428, !67, i64 432, !26, i64 448, !66, i64 456, !66, i64 464, !66, i64 472, !68, i64 480, !68, i64 488, !102, i64 496, !39, i64 504, !103, i64 512, !72, i64 520, !26, i64 528, !103, i64 536, !26, i64 544, !39, i64 552, !26, i64 560, !26, i64 564, !26, i64 568, !49, i64 572, !49, i64 573, !104, i64 574, !104, i64 575, !66, i64 576, !39, i64 584, !29, i64 592, !29, i64 600, !59, i64 608, !59, i64 664, !26, i64 720, !49, i64 724, !67, i64 728, !67, i64 744, !85, i64 760, !85, i64 784, !85, i64 808, !72, i64 832, !26, i64 840, !26, i64 844, !39, i64 848, !66, i64 856, !66, i64 864, !105, i64 872, !107, i64 880, !108, i64 904, !69, i64 960, !69, i64 968, !109, i64 976, !25, i64 984, !110, i64 1080, !49, i64 1088, !25, i64 1089, !39, i64 1096, !26, i64 1104, !26, i64 1108, !111, i64 1112, !25, i64 1120, !29, i64 1376, !25, i64 1384, !112, i64 1640, !59, i64 1672, !39, i64 1728, !113, i64 1736, !114, i64 1760, !114, i64 1768, !115, i64 1776, !39, i64 1784, !49, i64 1792, !26, i64 1796, !116, i64 1800, !35, i64 1808, !39, i64 1816, !117, i64 1824, !39, i64 1840, !39, i64 1848, !119, i64 1856, !25, i64 1936}
!121 = !{!120, !69, i64 960}
!122 = !{!26, !26, i64 0}
!123 = !{!"_php_random_algo", !39, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32}
!124 = !{!123, !29, i64 16}
!125 = !{i64 0, i64 8, !31, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 8, !31, i64 32, i64 8, !31, i64 40, i64 8, !31, i64 48, i64 8, !31, i64 56, i64 8, !31, i64 64, i64 8, !31, i64 72, i64 8, !31, i64 80, i64 1, !32, i64 81, i64 1, !32, i64 82, i64 1, !32, i64 83, i64 1, !32, i64 84, i64 1, !32, i64 85, i64 1, !32, i64 86, i64 1, !32, i64 87, i64 1, !32, i64 88, i64 1, !32, i64 89, i64 1, !32, i64 90, i64 1, !32, i64 91, i64 1, !32, i64 92, i64 1, !32, i64 93, i64 1, !32}
!126 = distinct !{!126, !44}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, !51}
!129 = distinct !{!129, !51}
!130 = distinct !{!130, !44}
!131 = distinct !{!131, !44}
!132 = distinct !{!132, !44}
!133 = !{!59, !26, i64 32}
!134 = !{!59, !39, i64 40}
!135 = !{!59, !26, i64 36}
!136 = distinct !{!136, !44}
!137 = distinct !{!137, !44}
!138 = distinct !{!138, !44}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44}
!141 = distinct !{!141, !44}
!142 = !{!"branch_weights", !"expected", i32 1475653, i32 2146007995}
!143 = !{!"branch_weights", i32 2000000, i32 2002000, i32 -292967296, i32 1000}
!144 = distinct !{!144, !44}
!145 = distinct !{!145, !44}
end_hunk_1
