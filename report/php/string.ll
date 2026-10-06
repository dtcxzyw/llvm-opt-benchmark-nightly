Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/string?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@zif_strtok:bb.a
  %i.e = add i32 %i.d, -3
  %or.cond = icmp ult i32 %i.e, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #26
  br label %.thread117

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !32
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.j, ptr %i.a, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.k = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 1) #26
  br i1 %i.k, label %bb.d, label %.thread117, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.l = icmp eq i32 %i.d, 1
  br i1 %i.l, label %.critedgethread-pre-split, label %bb.e, !prof !45

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !32
  switch i8 %i.o, label %zend_parse_arg_str_ex.exit101 [
    i8 6, label %bb.f
    i8 1, label %.split127.thread
  ], !prof !48

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !32
  br label %.split127.thread

.split127.thread:                                 ; preds = %bb.e, %bb.f
  %storemerge.i = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ] ; 2 uses
  store ptr %storemerge.i, ptr %i.b, align 8, !tbaa !36
  br label %.critedge

zend_parse_arg_str_ex.exit101:                    ; preds = %bb.e
  %i.q = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef 2) #26
  %cond.fr107 = freeze i1 %i.q
  br i1 %cond.fr107, label %.critedgethread-pre-split, label %.thread117, !prof !37

.thread117:                                       ; preds = %zend_parse_arg_str_ex.exit101, %zend_parse_arg_str_ex.exit, %bb.b
  %.074126 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_str_ex.exit101 ]
  %.075125 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit ], [ 5, %zend_parse_arg_str_ex.exit101 ]
  %.076124 = phi ptr [ null, %bb.b ], [ %i.f, %zend_parse_arg_str_ex.exit ], [ %i.m, %zend_parse_arg_str_ex.exit101 ]
  %.077123 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_str_ex.exit101 ]
  call void @zend_wrong_parameter_error(i32 noundef %.074126, i32 noundef %.077123, ptr noundef null, i32 noundef %.075125, ptr noundef %.076124) #26
  br label %.loopexit

.critedgethread-pre-split:                        ; preds = %zend_parse_arg_str_ex.exit101, %bb.d
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %.split127.thread
  %i.r = phi ptr [ %.pr, %.critedgethread-pre-split ], [ %storemerge.i, %.split127.thread ]
  %.not89 = icmp eq ptr %i.r, null
  br i1 %.not89, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), align 8, !tbaa !149 ; 6 uses
  %.not90 = icmp eq ptr %i.s, null
  br i1 %.not90, label %zend_string_release.exit104, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32   ; 2 uses
  %i.v = and i32 %i.u, 64
  %.not.i102 = icmp eq i32 %i.v, 0
  br i1 %.not.i102, label %bb.i, label %zend_string_release.exit104

bb.i:                                             ; preds = %bb.h
  %i.w = load i32, ptr %i.s, align 4, !tbaa !42   ; 2 uses
  %i.x = icmp ne i32 %i.w, 0
  call void @llvm.assume(i1 %i.x)
  %i.y = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.y, ptr %i.s, align 4, !tbaa !42
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %zend_string_release.exit104

bb.j:                                             ; preds = %bb.i
  %i.aa = and i32 %i.u, 128
  %.not5.i103 = icmp eq i32 %i.aa, 0
  br i1 %.not5.i103, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.s) #26
  br label %zend_string_release.exit104

bb.l:                                             ; preds = %bb.j
  call void @_efree(ptr noundef nonnull %i.s) #26
  br label %zend_string_release.exit104

zend_string_release.exit104:                      ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !36  ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32
  %i.ae = and i32 %i.ad, 64
  %.not.i105 = icmp eq i32 %i.ae, 0
  br i1 %.not.i105, label %bb.m, label %.thread

bb.m:                                             ; preds = %zend_string_release.exit104
  %i.af = load i32, ptr %i.ab, align 4, !tbaa !42
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !42
  br label %.thread

.thread:                                          ; preds = %bb.m, %zend_string_release.exit104
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), align 8, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 88), align 8, !tbaa !150
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41
  store i64 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 352), align 8, !tbaa !151
  br label %bb.p

bb.n:                                             ; preds = %.critedge
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !36
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !36
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), align 8, !tbaa !149 ; 2 uses
  %.not91 = icmp eq ptr %.pre, null
  br i1 %.not91, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.7) #26
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.al, align 8, !tbaa !32
  br label %.loopexit

bb.p:                                             ; preds = %.thread, %bb.n
  %i.am = phi ptr [ %i.ab, %.thread ], [ %.pre, %bb.n ]
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 88), align 8, !tbaa !150 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 352), align 8, !tbaa !151
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap ; 5 uses
  %.not92 = icmp ult ptr %i.an, %i.aq
  br i1 %.not92, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !32
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !36  ; 3 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !41 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 2 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %.preheader131, label %.lr.ph

.preheader131:                                    ; preds = %.lr.ph, %bb.r
  %i.ay = load i8, ptr %i.an, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !32
  %.not93139 = icmp eq i8 %i.bb, 0
  br i1 %.not93139, label %.preheader, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %.preheader131
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not96163 = icmp ult ptr %i.bc, %i.aq
  br i1 %.not96163, label %.lr.ph165, label %.loopexit132

.lr.ph:                                           ; preds = %bb.r, %.lr.ph
  %.0138 = phi ptr [ %i.bd, %.lr.ph ], [ %i.au, %bb.r ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  %i.be = load i8, ptr %.0138, align 1, !tbaa !32
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.bf
  store i8 1, ptr %i.bg, align 1, !tbaa !32
  %i.bh = icmp ult ptr %i.bd, %i.ax
  br i1 %i.bh, label %.lr.ph, label %.preheader131, !llvm.loop !144

.preheader:                                       ; preds = %.lr.ph165, %.preheader131
  %.079.lcssa = phi ptr [ %i.an, %.preheader131 ], [ %i.bl, %.lr.ph165 ] ; 3 uses
  %.078.lcssa = phi i64 [ 0, %.preheader131 ], [ %i.bm, %.lr.ph165 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 1 ; 3 uses
  %i.bj = icmp ult ptr %i.bi, %i.aq
  br i1 %i.bj, label %.lr.ph167, label %.loopexit130

.lr.ph142:                                        ; preds = %.lr.ph165
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %.not96 = icmp ult ptr %i.bk, %i.aq
  br i1 %.not96, label %.lr.ph165, label %.loopexit132, !llvm.loop !145

.lr.ph165:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %i.bl = phi ptr [ %i.bk, %.lr.ph142 ], [ %i.bc, %.lr.ph142.preheader ] ; 3 uses
  %.078141164 = phi i64 [ %i.bm, %.lr.ph142 ], [ 0, %.lr.ph142.preheader ]
  %i.bm = add i64 %.078141164, 1                  ; 2 uses
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !32
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  %.not93 = icmp eq i8 %i.bq, 0
  br i1 %.not93, label %.preheader, label %.lr.ph142, !llvm.loop !145

bb.s:                                             ; preds = %.lr.ph167
  %i.br = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 3 uses
  %i.bs = icmp ult ptr %i.br, %i.aq
  br i1 %i.bs, label %.lr.ph167, label %.loopexit130, !llvm.loop !146

.lr.ph167:                                        ; preds = %.preheader, %bb.s
  %i.bt = phi ptr [ %i.br, %bb.s ], [ %i.bi, %.preheader ] ; 5 uses
  %.180166 = phi ptr [ %i.bt, %bb.s ], [ %.079.lcssa, %.preheader ]
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !32
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %.not95 = icmp eq i8 %i.bx, 0
  br i1 %.not95, label %bb.s, label %..loopexit130_crit_edge, !llvm.loop !146

..loopexit130_crit_edge:                          ; preds = %.lr.ph167
  br label %.loopexit130, !llvm.loop !146

.loopexit130:                                     ; preds = %bb.s, %..loopexit130_crit_edge, %.preheader
  %.180.lcssa = phi ptr [ %.180166, %..loopexit130_crit_edge ], [ %.079.lcssa, %.preheader ], [ %i.bt, %bb.s ]
  %.lcssa = phi ptr [ %i.bt, %..loopexit130_crit_edge ], [ %i.bi, %.preheader ], [ %i.br, %bb.s ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 %.078.lcssa
  %i.bz = ptrtoint ptr %.lcssa to i64
  %i.ca = ptrtoint ptr %i.an to i64
  %i.cb = add i64 %.078.lcssa, %i.ca
  %i.cc = sub i64 %i.bz, %i.cb                    ; 4 uses
  %i.cd = and i64 %i.cc, -8
  %i.ce = add i64 %i.cd, 32
  %i.cf = call noalias ptr @_emalloc(i64 noundef %i.ce) #27 ; 6 uses
  store i32 1, ptr %i.cf, align 4, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 22, ptr %i.cg, align 4, !tbaa !32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 0, ptr %i.ch, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.cc, ptr %i.ci, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 1 %i.by, i64 %i.cc, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cc
  store i8 0, ptr %i.ck, align 1, !tbaa !32
  store ptr %i.cf, ptr %1, align 8, !tbaa !32
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.cl, align 8, !tbaa !32
  %i.cm = getelementptr inbounds nuw i8, ptr %.180.lcssa, i64 2
  store ptr %i.cm, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 88), align 8, !tbaa !150
  br label %bb.x

.loopexit132:                                     ; preds = %.lr.ph142, %.lr.ph142.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.cn, align 8, !tbaa !32
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), align 8, !tbaa !149 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32 ; 2 uses
  %i.cr = and i32 %i.cq, 64
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %bb.t, label %zend_string_release.exit

bb.t:                                             ; preds = %.loopexit132
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !42 ; 2 uses
  %i.ct = icmp ne i32 %i.cs, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.co, align 4, !tbaa !42
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.u, label %zend_string_release.exit

bb.u:                                             ; preds = %bb.t
  %i.cw = and i32 %i.cq, 128
  %.not5.i = icmp eq i32 %i.cw, 0
  br i1 %.not5.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.co) #26
  br label %zend_string_release.exit

bb.w:                                             ; preds = %bb.u
  call void @_efree(ptr noundef nonnull %i.co) #26
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %.loopexit132, %bb.t, %bb.v, %bb.w
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 64), align 8, !tbaa !149
  br label %bb.x

bb.x:                                             ; preds = %zend_string_release.exit, %.loopexit130
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !36  ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  %i.cz = icmp ult ptr %i.cy, %i.ax
  br i1 %i.cz, label %.lr.ph145.preheader, label %.loopexit

.lr.ph145.preheader:                              ; preds = %bb.x
  %i.da = ptrtoaddr ptr %i.cx to i64              ; 3 uses
  %i.db = add i64 %i.aw, %i.at                    ; 3 uses
  %i.dc = add i64 %i.db, 24
  %i.dd = sub i64 %i.dc, %i.da
  %scevgep = getelementptr i8, ptr %i.cx, i64 %i.dd
  %i.de = sub i64 %i.db, %i.da
  %xtraiter = and i64 %i.de, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph145.prol.loopexit, label %.lr.ph145.prol

.lr.ph145.prol:                                   ; preds = %.lr.ph145.preheader, %.lr.ph145.prol
  %.1144.prol = phi ptr [ %i.df, %.lr.ph145.prol ], [ %i.cy, %.lr.ph145.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph145.prol ], [ 0, %.lr.ph145.preheader ]
  %i.df = getelementptr inbounds nuw i8, ptr %.1144.prol, i64 1 ; 2 uses
  %i.dg = load i8, ptr %.1144.prol, align 1, !tbaa !32
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.dh
  store i8 0, ptr %i.di, align 1, !tbaa !32
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph145.prol.loopexit, label %.lr.ph145.prol, !llvm.loop !147

.lr.ph145.prol.loopexit:                          ; preds = %.lr.ph145.prol, %.lr.ph145.preheader
  %.1144.unr = phi ptr [ %i.cy, %.lr.ph145.preheader ], [ %i.df, %.lr.ph145.prol ]
  %i.dj = sub i64 %i.da, %i.db
  %i.dk = icmp ugt i64 %i.dj, -8
  br i1 %i.dk, label %.loopexit, label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.prol.loopexit, %.lr.ph145
  %.1144 = phi ptr [ %i.en, %.lr.ph145 ], [ %.1144.unr, %.lr.ph145.prol.loopexit ] ; 9 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1144, i64 1
  %i.dm = load i8, ptr %.1144, align 1, !tbaa !32
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.dn
  store i8 0, ptr %i.do, align 1, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %.1144, i64 2
  %i.dq = load i8, ptr %i.dl, align 1, !tbaa !32
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.dr
  store i8 0, ptr %i.ds, align 1, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %.1144, i64 3
  %i.du = load i8, ptr %i.dp, align 1, !tbaa !32
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.dv
  store i8 0, ptr %i.dw, align 1, !tbaa !32
  %i.dx = getelementptr inbounds nuw i8, ptr %.1144, i64 4
  %i.dy = load i8, ptr %i.dt, align 1, !tbaa !32
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.dz
  store i8 0, ptr %i.ea, align 1, !tbaa !32
  %i.eb = getelementptr inbounds nuw i8, ptr %.1144, i64 5
  %i.ec = load i8, ptr %i.dx, align 1, !tbaa !32
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.ed
  store i8 0, ptr %i.ee, align 1, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %.1144, i64 6
  %i.eg = load i8, ptr %i.eb, align 1, !tbaa !32
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.eh
  store i8 0, ptr %i.ei, align 1, !tbaa !32
  %i.ej = getelementptr inbounds nuw i8, ptr %.1144, i64 7
  %i.ek = load i8, ptr %i.ef, align 1, !tbaa !32
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.el
  store i8 0, ptr %i.em, align 1, !tbaa !32
  %i.en = getelementptr inbounds nuw i8, ptr %.1144, i64 8 ; 2 uses
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !32
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 96), i64 %i.ep
  store i8 0, ptr %i.eq, align 1, !tbaa !32
  %exitcond.not.7 = icmp eq ptr %i.en, %scevgep
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph145, !llvm.loop !148

.loopexit:                                        ; preds = %.lr.ph145.prol.loopexit, %.lr.ph145, %bb.x, %.thread117, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_strtoupper(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread55, !prof !33

.thread55:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #26
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !32
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %.split65.thread, label %zend_parse_arg_str_ex.exit, !prof !34

.split65.thread:                                  ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@zif_similar_text:bb.a

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !32
  %i.j = icmp eq i8 %i.i, 6
  br i1 %i.j, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.k, ptr %i.a, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.l = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 1) #26
  br i1 %i.l, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8, !tbaa !32
  %i.p = icmp eq i8 %i.o, 6
  br i1 %i.p, label %zend_parse_arg_str_ex.exit101.thread, label %zend_parse_arg_str_ex.exit101, !prof !34

zend_parse_arg_str_ex.exit101.thread:             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !36
  br label %.critedge

zend_parse_arg_str_ex.exit101:                    ; preds = %bb.d
  %i.r = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i32 noundef 2) #26
  br i1 %i.r, label %zend_parse_arg_str_ex.exit101..critedge_crit_edge, label %bb.e, !prof !37

zend_parse_arg_str_ex.exit101..critedge_crit_edge: ; preds = %zend_parse_arg_str_ex.exit101
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit101..critedge_crit_edge, %zend_parse_arg_str_ex.exit101.thread
  %i.s = phi ptr [ %.pre, %zend_parse_arg_str_ex.exit101..critedge_crit_edge ], [ %i.q, %zend_parse_arg_str_ex.exit101.thread ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !41   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !41   ; 3 uses
  %i.z = sub i64 0, %i.y
  %i.aa = icmp eq i64 %i.w, %i.z
  br i1 %i.aa, label %bb.f, label %bb.k

bb.e:                                             ; preds = %bb.b, %zend_parse_arg_str_ex.exit, %zend_parse_arg_str_ex.exit101
  %.095 = phi i32 [ 0, %bb.b ], [ 2, %zend_parse_arg_str_ex.exit101 ], [ 1, %zend_parse_arg_str_ex.exit ]
  %.094 = phi ptr [ null, %bb.b ], [ %i.m, %zend_parse_arg_str_ex.exit101 ], [ %i.g, %zend_parse_arg_str_ex.exit ]
  %.093 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit101 ], [ 4, %zend_parse_arg_str_ex.exit ]
  %.092 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit101 ], [ 9, %zend_parse_arg_str_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.092, i32 noundef %.095, ptr noundef null, i32 noundef %.093, ptr noundef %.094) #26
  br label %bb.p

bb.f:                                             ; preds = %.critedge
  br i1 %i.e, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !32  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %.not98 = icmp eq ptr %i.ad, null
  br i1 %.not98, label %bb.i, label %bb.h, !prof !34

bb.h:                                             ; preds = %bb.g
  %i.ae = call i32 @zend_try_assign_typed_ref_double(ptr noundef nonnull %i.ab, double noundef 0.000000e+00) #26 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.af) #26
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 5, ptr %i.ag, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  store i64 0, ptr %1, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.ah, align 8, !tbaa !32
  br label %bb.p

bb.k:                                             ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ak = call fastcc i64 @php_similar_char(ptr noundef nonnull %i.ai, i64 noundef %i.w, ptr noundef nonnull %i.aj, i64 noundef %i.y) ; 3 uses
  br i1 %i.e, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !32  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %.not97 = icmp eq ptr %i.an, null
  br i1 %.not97, label %bb.n, label %bb.m, !prof !34

bb.m:                                             ; preds = %bb.l
  %i.ao = uitofp i64 %i.ak to double
  %i.ap = fmul nnan double %i.ao, 2.000000e+02
  %i.aq = add i64 %i.y, %i.w
  %i.ar = uitofp i64 %i.aq to double
  %i.as = fdiv double %i.ap, %i.ar
  %i.at = call i32 @zend_try_assign_typed_ref_double(ptr noundef nonnull %i.al, double noundef %i.as) #26 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @zval_ptr_safe_dtor(ptr noundef nonnull %i.au) #26
  %i.av = uitofp i64 %i.ak to double
  %i.aw = fmul nnan double %i.av, 2.000000e+02
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !41
  %i.bd = add i64 %i.bc, %i.az
  %i.be = uitofp i64 %i.bd to double
  %i.bf = fdiv double %i.aw, %i.be
  store double %i.bf, ptr %i.au, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 5, ptr %i.bg, align 8, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  store i64 %i.ak, ptr %1, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.bh, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.o, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @zend_try_assign_typed_ref_double(ptr noundef, double noundef) local_unnamed_addr #3

declare void @zval_ptr_safe_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @php_similar_char(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #15 {
bb.a:
  %.not.i56 = icmp eq i64 %1, 0
  br i1 %.not.i56, label %php_similar_str.exit.thread, label %.preheader41.lr.ph.i.preheader

.preheader41.lr.ph.i.preheader:                   ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  br label %.preheader41.lr.ph.i

.preheader41.lr.ph.i:                             ; preds = %.preheader41.lr.ph.i.preheader, %tailrecurse
  %i.c = phi ptr [ %i.ap, %tailrecurse ], [ %i.a, %.preheader41.lr.ph.i.preheader ] ; 2 uses
  %i.d = phi ptr [ %i.ao, %tailrecurse ], [ %i.b, %.preheader41.lr.ph.i.preheader ] ; 2 uses
  %.tr5561 = phi i64 [ %i.am, %tailrecurse ], [ %3, %.preheader41.lr.ph.i.preheader ] ; 3 uses
  %.tr5460 = phi ptr [ %i.al, %tailrecurse ], [ %2, %.preheader41.lr.ph.i.preheader ] ; 4 uses
  %.tr5359 = phi i64 [ %i.aj, %tailrecurse ], [ %1, %.preheader41.lr.ph.i.preheader ] ; 3 uses
  %.tr58 = phi ptr [ %i.ai, %tailrecurse ], [ %0, %.preheader41.lr.ph.i.preheader ] ; 4 uses
  %accumulator.tr57 = phi i64 [ %i.an, %tailrecurse ], [ 0, %.preheader41.lr.ph.i.preheader ] ; 5 uses
  %.not51.i = icmp eq i64 %.tr5561, 0
  %i.e = ptrtoint ptr %.tr58 to i64
  %i.f = ptrtoint ptr %.tr5460 to i64
  br i1 %.not51.i, label %php_similar_str.exit.thread.loopexit, label %.preheader41.i

.preheader41.i:                                   ; preds = %.preheader41.lr.ph.i, %._crit_edge.i
  %.043 = phi i64 [ %.144, %._crit_edge.i ], [ 0, %.preheader41.lr.ph.i ] ; 2 uses
  %.038 = phi i64 [ %.139, %._crit_edge.i ], [ 0, %.preheader41.lr.ph.i ] ; 2 uses
  %.033 = phi i64 [ %.134, %._crit_edge.i ], [ 0, %.preheader41.lr.ph.i ] ; 2 uses
  %.031 = phi i64 [ %.132, %._crit_edge.i ], [ 0, %.preheader41.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %.tr5359, %.preheader41.lr.ph.i ] ; 3 uses
  %.03648.i = phi ptr [ %i.w, %._crit_edge.i ], [ %.tr58, %.preheader41.lr.ph.i ] ; 4 uses
  %i.g = icmp ult ptr %.03648.i, %i.d
  %i.h = ptrtoint ptr %.03648.i to i64
  %i.i = sub i64 %i.h, %i.e
  br i1 %i.g, label %.preheader.us.i, label %._crit_edge.i

.preheader.us.i:                                  ; preds = %.preheader41.i, %bb.f
  %.245 = phi i64 [ %.346, %bb.f ], [ %.043, %.preheader41.i ]
  %.240 = phi i64 [ %.341, %bb.f ], [ %.038, %.preheader41.i ]
  %.235 = phi i64 [ %.336, %bb.f ], [ %.033, %.preheader41.i ] ; 2 uses
  %.2 = phi i64 [ %.3, %bb.f ], [ %.031, %.preheader41.i ] ; 2 uses
  %.03547.us.i = phi ptr [ %i.u, %bb.f ], [ %.tr5460, %.preheader41.i ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.us.i
  %.042.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.p, %bb.d ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.03547.us.i, i64 %.042.us.i ; 2 uses
  %i.k = icmp ult ptr %i.j, %i.c
  br i1 %i.k, label %bb.c, label %.critedge.us.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.03648.i, i64 %.042.us.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %i.n = load i8, ptr %i.j, align 1, !tbaa !32
  %i.o = icmp eq i8 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.us.i

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %.042.us.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %indvars.iv.i
  br i1 %exitcond.not.i, label %.critedge.us.i, label %bb.b, !llvm.loop !227

.critedge.us.i:                                   ; preds = %bb.d, %bb.c, %bb.b
  %.0.lcssa.us.i = phi i64 [ %indvars.iv.i, %bb.d ], [ %.042.us.i, %bb.b ], [ %.042.us.i, %bb.c ] ; 2 uses
  %i.q = icmp ugt i64 %.0.lcssa.us.i, %.235
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.us.i
  %i.r = add i64 %.2, 1
  %i.s = ptrtoint ptr %.03547.us.i to i64
  %i.t = sub i64 %i.s, %i.f
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge.us.i
  %.346 = phi i64 [ %i.i, %bb.e ], [ %.245, %.critedge.us.i ] ; 2 uses
  %.341 = phi i64 [ %i.t, %bb.e ], [ %.240, %.critedge.us.i ] ; 2 uses
  %.336 = phi i64 [ %.0.lcssa.us.i, %bb.e ], [ %.235, %.critedge.us.i ] ; 2 uses
  %.3 = phi i64 [ %i.r, %bb.e ], [ %.2, %.critedge.us.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03547.us.i, i64 1 ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.c
  br i1 %i.v, label %.preheader.us.i, label %._crit_edge.i, !llvm.loop !228

._crit_edge.i:                                    ; preds = %bb.f, %.preheader41.i
  %.144 = phi i64 [ %.043, %.preheader41.i ], [ %.346, %bb.f ] ; 5 uses
  %.139 = phi i64 [ %.038, %.preheader41.i ], [ %.341, %bb.f ] ; 5 uses
  %.134 = phi i64 [ %.033, %.preheader41.i ], [ %.336, %bb.f ] ; 8 uses
  %.132 = phi i64 [ %.031, %.preheader41.i ], [ %.3, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03648.i, i64 1 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.d
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  br i1 %i.x, label %.preheader41.i, label %php_similar_str.exit, !llvm.loop !229

php_similar_str.exit:                             ; preds = %._crit_edge.i
  %.not = icmp eq i64 %.134, 0
  br i1 %.not, label %php_similar_str.exit.thread.loopexit, label %bb.g

bb.g:                                             ; preds = %php_similar_str.exit
  %i.y = icmp ne i64 %.144, 0
  %i.z = icmp ne i64 %.139, 0
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = icmp ugt i64 %.132, 1
  %or.cond3 = select i1 %or.cond, i1 %i.aa, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call fastcc i64 @php_similar_char(ptr noundef %.tr58, i64 noundef %.144, ptr noundef %.tr5460, i64 noundef %.139)
  %i.ac = add i64 %i.ab, %.134
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.ac, %bb.h ], [ %.134, %bb.g ] ; 3 uses
  %i.ad = add i64 %.134, %.144                    ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.tr5359
  br i1 %i.ae, label %bb.j, label %php_similar_str.exit.thread.loopexit

bb.j:                                             ; preds = %bb.i
  %i.af = add i64 %.134, %.139                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %.tr5561
  br i1 %i.ag, label %tailrecurse, label %php_similar_str.exit.thread.loopexit

tailrecurse:                                      ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr58, i64 %.144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.134 ; 2 uses
  %i.aj = sub nuw i64 %.tr5359, %i.ad             ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr5460, i64 %.139
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.134 ; 2 uses
  %i.am = sub nuw i64 %.tr5561, %i.af             ; 2 uses
  %i.an = add i64 %.0, %accumulator.tr57          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %php_similar_str.exit.thread.loopexit, label %.preheader41.lr.ph.i

php_similar_str.exit.thread.loopexit:             ; preds = %.preheader41.lr.ph.i, %tailrecurse, %bb.i, %bb.j, %php_similar_str.exit
  %accumulator.tr.lcssa.ph = phi i64 [ %accumulator.tr57, %php_similar_str.exit ], [ %accumulator.tr57, %bb.j ], [ %accumulator.tr57, %bb.i ], [ %i.an, %tailrecurse ], [ %accumulator.tr57, %.preheader41.lr.ph.i ]
  %.1.ph = phi i64 [ 0, %php_similar_str.exit ], [ %.0, %bb.j ], [ %.0, %bb.i ], [ 0, %tailrecurse ], [ 0, %.preheader41.lr.ph.i ]
  %i.aq = add i64 %.1.ph, %accumulator.tr.lcssa.ph
  br label %php_similar_str.exit.thread

php_similar_str.exit.thread:                      ; preds = %php_similar_str.exit.thread.loopexit, %bb.a
  %accumulator.ret.tr = phi i64 [ 0, %bb.a ], [ %i.aq, %php_similar_str.exit.thread.loopexit ]
  ret i64 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define hidden void @zif_addcslashes(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %.not = icmp eq i32 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 2, i32 noundef 2) #26
  br label %.thread86

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !32
  %i.h = icmp eq i8 %i.g, 6
  br i1 %i.h, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !34

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !32
  store ptr %i.i, ptr %i.a, align 8, !tbaa !36
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.j = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 1) #26
  br i1 %i.j, label %bb.d, label %.thread86, !prof !37

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !32
  %i.n = icmp eq i8 %i.m, 6
  br i1 %i.n, label %.split96.thread, label %zend_parse_arg_str_ex.exit74, !prof !34

.split96.thread:                                  ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !32
  store ptr %i.o, ptr %i.b, align 8, !tbaa !36
  br label %.critedge

zend_parse_arg_str_ex.exit74:                     ; preds = %bb.d
  %i.p = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.k, ptr noundef nonnull %i.b, i32 noundef 2) #26
  %cond.fr76 = freeze i1 %i.p
  br i1 %cond.fr76, label %.critedge, label %.thread86, !prof !37

.thread86:                                        ; preds = %zend_parse_arg_str_ex.exit74, %zend_parse_arg_str_ex.exit, %bb.b
  %.06195 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_str_ex.exit74 ]
  %.06294 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit ], [ 4, %zend_parse_arg_str_ex.exit74 ]
  %.06393 = phi ptr [ null, %bb.b ], [ %i.e, %zend_parse_arg_str_ex.exit ], [ %i.k, %zend_parse_arg_str_ex.exit74 ]
  %.06492 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_str_ex.exit74 ]
  call void @zend_wrong_parameter_error(i32 noundef %.06195, i32 noundef %.06492, ptr noundef null, i32 noundef %.06294, ptr noundef %.06393) #26
  br label %bb.k

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit74, %.split96.thread
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.u = load ptr, ptr @zend_empty_string, align 8, !tbaa !36
  store ptr %i.u, ptr %1, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.v, align 8, !tbaa !32
  br label %bb.k

bb.f:                                             ; preds = %.critedge
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !41   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  store ptr %i.q, ptr %1, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = and i32 %i.ab, 64
  %.not70 = icmp eq i32 %i.ac, 0
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 6, ptr %i.ad, align 8, !tbaa !32
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !42
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.q, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.ag, align 8, !tbaa !32
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aj = call ptr @php_addcslashes_str(ptr noundef nonnull %i.ah, i64 noundef %i.s, ptr noundef nonnull %i.ai, i64 noundef %i.y) ; 2 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = and i32 %i.al, 64
  %.not69 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not69, i32 262, i32 6
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %.thread86, %bb.h, %bb.i, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
end_hunk_1
