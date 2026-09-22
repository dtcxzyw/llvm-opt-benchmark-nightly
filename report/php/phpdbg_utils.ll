Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_utils?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@phpdbg_check_caught_ex:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !128
  %.not57 = icmp ugt i32 %i.s, %i.m
  br i1 %.not57, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130  ; 2 uses
  %.not58 = icmp ult i32 %i.u, %i.m
  %.not59 = icmp ult i32 %i.w, %i.m
  %or.cond64 = select i1 %.not58, i1 %.not59, i1 false
  br i1 %or.cond64, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not60 = icmp eq i32 %i.w, 0
  br i1 %.not60, label %bb.i, label %.thread69

bb.i:                                             ; preds = %bb.h
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %bb.i
  %.047 = phi ptr [ %i.y, %bb.i ], [ %i.be, %bb.o ] ; 5 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %.047, i64 20 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !132 ; 2 uses
  %i.ae = and i32 %i.ad, -2
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !133 ; 2 uses
  %.not61 = icmp eq ptr %i.ah, null
  br i1 %.not61, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.047, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !12
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %.047, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12
  %i.ap = tail call ptr @zend_fetch_class_by_name(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 128) #23 ; 2 uses
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !132 ; 2 uses
  %i.as = and i32 %i.ar, -2
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  store ptr %i.ap, ptr %i.au, align 8, !tbaa !133
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = phi i32 [ %i.ad, %bb.j ], [ %i.ar, %bb.k ]
  %.0 = phi ptr [ %i.ah, %bb.j ], [ %i.ap, %bb.k ] ; 3 uses
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !89 ; 2 uses
  %i.ax = icmp eq ptr %.0, %i.aw
  br i1 %i.ax, label %.thread69, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not62 = icmp eq ptr %.0, null
  br i1 %.not62, label %bb.n, label %instanceof_function.exit

instanceof_function.exit:                         ; preds = %bb.m
  %i.ay = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.aw, ptr noundef nonnull %.0) #23
  br i1 %i.ay, label %.thread69, label %instanceof_function.exit._crit_edge

instanceof_function.exit._crit_edge:              ; preds = %instanceof_function.exit
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !132
  br label %bb.n

bb.n:                                             ; preds = %instanceof_function.exit._crit_edge, %bb.m
  %i.az = phi i32 [ %.pre, %instanceof_function.exit._crit_edge ], [ %i.av, %bb.m ]
  %i.ba = and i32 %i.az, 1
  %.not63 = icmp eq i32 %i.ba, 0
  br i1 %.not63, label %bb.o, label %.thread69

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.047, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %.047, i64 %i.bd
  br label %bb.j

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.049, i64 28
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !134
  %i.bh = icmp eq i8 %i.bg, 107
  br label %.thread69

.thread69:                                        ; preds = %bb.n, %instanceof_function.exit, %bb.l, %bb.h, %.critedge
  %.4 = phi i1 [ %i.bh, %.critedge ], [ true, %bb.h ], [ true, %bb.l ], [ true, %instanceof_function.exit ], [ false, %bb.n ]
  ret i1 %.4
}

declare ptr @zend_fetch_class_by_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @phpdbg_short_zval_print(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12    ; 2 uses
  switch i8 %i.c, label %bb.w [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.j
    i8 9, label %bb.q
    i8 7, label %bb.r
    i8 8, label %bb.s
    i8 11, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.5) #23
  store ptr %i.d, ptr %i.a, align 8, !tbaa !20
  br label %zend_string_release.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.18) #23
  store ptr %i.e, ptr %i.a, align 8, !tbaa !20
  br label %zend_string_release.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.19) #23
  store ptr %i.f, ptr %i.a, align 8, !tbaa !20
  br label %zend_string_release.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.20) #23
  store ptr %i.g, ptr %i.a, align 8, !tbaa !20
  br label %zend_string_release.exit

bb.f:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !12
  %i.i = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef %i.h) #23 ; 0 uses
  br label %zend_string_release.exit

bb.g:                                             ; preds = %bb.a
  %i.j = load double, ptr %0, align 8, !tbaa !12
  %i.k = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef nonnull @.str.22, i32 noundef 14, double noundef %i.j) #23 ; 0 uses
  %i.l = load double, ptr %0, align 8, !tbaa !12
  %i.m = call double @llvm.fabs.f64(double %i.l)
  %i.n = fcmp ueq double %i.m, +inf
  br i1 %i.n, label %zend_string_release.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.p = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.o, i32 noundef 46) #22
  %.not86 = icmp eq ptr %i.p, null
  br i1 %.not86, label %bb.i, label %zend_string_release.exit

bb.i:                                             ; preds = %bb.h
  %i.q = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #22 ; 3 uses
  %i.r = add i64 %i.q, 3
  %i.s = call noalias ptr @_emalloc(i64 noundef %i.r) #24 ; 3 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.t, i64 %i.q, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q ; 3 uses
  store i8 46, ptr %i.u, align 1, !tbaa !12
  %i.v = getelementptr i8, ptr %i.u, i64 1
  store i8 48, ptr %i.v, align 1, !tbaa !12
  %i.w = getelementptr i8, ptr %i.u, i64 2
  store i8 0, ptr %i.w, align 1, !tbaa !12
  call void @_efree(ptr noundef %i.t) #23
  store ptr %i.s, ptr %i.a, align 8, !tbaa !20
  br label %zend_string_release.exit

bb.j:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !12
  %i.y = tail call ptr @php_addcslashes(ptr noundef %i.x, ptr noundef nonnull @.str.23, i64 noundef 5) #23 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26  ; 11 uses
  %.not88 = icmp eq i64 %i.aa, 0
  br i1 %.not88, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 41 uses
  %min.iters.check = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue155, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue155 ] ; 33 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !12
  %wide.load93 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !12
  %i.af = icmp slt <16 x i8> %wide.load, splat (i8 32) ; 16 uses
  %i.ag = icmp slt <16 x i8> %wide.load93, splat (i8 32) ; 16 uses
  %i.ah = extractelement <16 x i1> %i.af, i64 0
  br i1 %i.ah, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %i.ad, align 1, !tbaa !12
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ai = extractelement <16 x i1> %i.af, i64 1
  br i1 %i.ai, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 32, ptr %i.ak, align 1, !tbaa !12
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue
  %i.al = extractelement <16 x i1> %i.af, i64 2
  br i1 %i.al, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 32, ptr %i.an, align 1, !tbaa !12
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.ao = extractelement <16 x i1> %i.af, i64 3
  br i1 %i.ao, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  store i8 32, ptr %i.aq, align 1, !tbaa !12
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.ar = extractelement <16 x i1> %i.af, i64 4
  br i1 %i.ar, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i8 32, ptr %i.at, align 1, !tbaa !12
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.au = extractelement <16 x i1> %i.af, i64 5
  br i1 %i.au, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 5
  store i8 32, ptr %i.aw, align 1, !tbaa !12
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.ax = extractelement <16 x i1> %i.af, i64 6
  br i1 %i.ax, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  store i8 32, ptr %i.az, align 1, !tbaa !12
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.ba = extractelement <16 x i1> %i.af, i64 7
  br i1 %i.ba, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 7
  store i8 32, ptr %i.bc, align 1, !tbaa !12
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.bd = extractelement <16 x i1> %i.af, i64 8
  br i1 %i.bd, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 32, ptr %i.bf, align 1, !tbaa !12
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.bg = extractelement <16 x i1> %i.af, i64 9
  br i1 %i.bg, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  store i8 32, ptr %i.bi, align 1, !tbaa !12
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.bj = extractelement <16 x i1> %i.af, i64 10
  br i1 %i.bj, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  store i8 32, ptr %i.bl, align 1, !tbaa !12
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.bm = extractelement <16 x i1> %i.af, i64 11
  br i1 %i.bm, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 11
  store i8 32, ptr %i.bo, align 1, !tbaa !12
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.bp = extractelement <16 x i1> %i.af, i64 12
  br i1 %i.bp, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i8 32, ptr %i.br, align 1, !tbaa !12
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.bs = extractelement <16 x i1> %i.af, i64 13
  br i1 %i.bs, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 13
  store i8 32, ptr %i.bu, align 1, !tbaa !12
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.bv = extractelement <16 x i1> %i.af, i64 14
  br i1 %i.bv, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  store i8 32, ptr %i.bx, align 1, !tbaa !12
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.by = extractelement <16 x i1> %i.af, i64 15
  br i1 %i.by, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 15
  store i8 32, ptr %i.ca, align 1, !tbaa !12
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.cb = extractelement <16 x i1> %i.ag, i64 0
  br i1 %i.cb, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i8 32, ptr %i.cd, align 1, !tbaa !12
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.ce = extractelement <16 x i1> %i.ag, i64 1
  br i1 %i.ce, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 17
  store i8 32, ptr %i.cg, align 1, !tbaa !12
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.ch = extractelement <16 x i1> %i.ag, i64 2
  br i1 %i.ch, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 18
  store i8 32, ptr %i.cj, align 1, !tbaa !12
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.ck = extractelement <16 x i1> %i.ag, i64 3
  br i1 %i.ck, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index
end_hunk_0
