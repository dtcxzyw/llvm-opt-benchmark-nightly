Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/iptc?download=true
inline.NumInlined: 15
inline.NumDeleted: 2
begin_hunk_0_@php_iptc_skip_variable:bb.a
  %.031.us = phi i32 [ %i.aj, %php_iptc_get1.exit26.us ], [ %i.u, %.lr.ph.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ah = call i32 @getc(ptr noundef nonnull %0)
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %php_iptc_get1.exit26.thread, label %php_iptc_get1.exit26.us

php_iptc_get1.exit26.us:                          ; preds = %.lr.ph.split.us.split
  %i.aj = add i32 %.031.us, -1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not.us = icmp eq i32 %i.aj, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !0

.lr.ph.split:                                     ; preds = %.thread
  br i1 %i.f, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %php_iptc_get1.exit26.us33
  %.031.us32 = phi i32 [ %i.ak, %php_iptc_get1.exit26.us33 ], [ %i.ab, %.lr.ph.split ]
  %i.ak = add i32 %.031.us32, -1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.al = call i32 @getc(ptr noundef nonnull %0)  ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %php_iptc_get1.exit26.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.us
  %i.an = trunc i32 %i.al to i8                   ; 2 uses
  store i8 %i.an, ptr %i.a, align 1, !tbaa !17
  %i.ao = call i64 @php_output_write(ptr noundef nonnull %i.a, i64 noundef 1) #9 ; 0 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !16    ; 3 uses
  %.not13.i24.us = icmp ult ptr %i.ap, %3
  br i1 %.not13.i24.us, label %php_iptc_get1.exit26.us33, label %php_iptc_get1.exit26.thread, !prof !19

php_iptc_get1.exit26.us33:                        ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %2, align 8, !tbaa !16
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not.us34 = icmp eq i32 %i.ak, 0
  br i1 %.not.us34, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !0

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %php_iptc_get1.exit26
  %.031 = phi i32 [ %i.ar, %php_iptc_get1.exit26 ], [ %i.ab, %.lr.ph.split ]
  %i.ar = add i32 %.031, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.as = call i32 @getc(ptr noundef nonnull %0)  ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %php_iptc_get1.exit26.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %i.au = load ptr, ptr %2, align 8, !tbaa !16    ; 3 uses
  %.not13.i24 = icmp ult ptr %i.au, %3
  br i1 %.not13.i24, label %php_iptc_get1.exit26, label %php_iptc_get1.exit26.thread, !prof !19

php_iptc_get1.exit26:                             ; preds = %bb.n
  %i.av = trunc i32 %i.as to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.aw, ptr %2, align 8, !tbaa !16
  store i8 %i.av, ptr %i.au, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.split.split, !llvm.loop !0

php_iptc_get1.exit26.thread:                      ; preds = %bb.n, %.lr.ph.split.split, %bb.m, %.lr.ph.split.split.us, %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit

.loopexit:                                        ; preds = %php_iptc_get1.exit26, %php_iptc_get1.exit26.us33, %php_iptc_get1.exit26.us, %php_iptc_get1.exit26.us.us, %.thread, %bb.l, %php_iptc_get1.exit26.thread, %php_iptc_get1.exit22.thread, %php_iptc_get1.exit.thread
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @php_iptc_read_remaining(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @getc(ptr noundef nonnull %0) ; 4 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.d, label %php_iptc_get1.exit.us.us, label %php_iptc_get1.exit.us

php_iptc_get1.exit.us.us:                         ; preds = %.lr.ph.split.us, %php_iptc_get1.exit.us.us
  %i.e = phi i32 [ %i.h, %php_iptc_get1.exit.us.us ], [ %i.b, %.lr.ph.split.us ]
  %i.f = trunc i32 %i.e to i8
  store i8 %i.f, ptr %i.a, align 1, !tbaa !17
  %i.g = call i64 @php_output_write(ptr noundef nonnull %i.a, i64 noundef 1) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.h = call i32 @getc(ptr noundef nonnull %0)   ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %._crit_edge, label %php_iptc_get1.exit.us.us, !llvm.loop !40

php_iptc_get1.exit.us:                            ; preds = %.lr.ph.split.us, %php_iptc_get1.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.j = tail call i32 @getc(ptr noundef nonnull %0)
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %._crit_edge, label %php_iptc_get1.exit.us, !llvm.loop !40

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.d, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %php_iptc_get1.exit.us6
  %i.l = phi i32 [ %i.q, %php_iptc_get1.exit.us6 ], [ %i.b, %.lr.ph.split ]
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  store i8 %i.m, ptr %i.a, align 1, !tbaa !17
  %i.n = call i64 @php_output_write(ptr noundef nonnull %i.a, i64 noundef 1) #9 ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %.not13.i.us = icmp ult ptr %i.o, %3
  br i1 %.not13.i.us, label %php_iptc_get1.exit.us6, label %._crit_edge, !prof !19

php_iptc_get1.exit.us6:                           ; preds = %.lr.ph.split.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %2, align 8, !tbaa !16
  store i8 %i.m, ptr %i.o, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.q = call i32 @getc(ptr noundef nonnull %0)   ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !40

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %php_iptc_get1.exit
  %i.s = phi i32 [ %i.w, %php_iptc_get1.exit ], [ %i.b, %.lr.ph.split ]
  %i.t = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %.not13.i = icmp ult ptr %i.t, %3
  br i1 %.not13.i, label %php_iptc_get1.exit, label %._crit_edge, !prof !19

php_iptc_get1.exit:                               ; preds = %.lr.ph.split.split
  %i.u = trunc i32 %i.s to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.v, ptr %2, align 8, !tbaa !16
  store i8 %i.u, ptr %i.t, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.w = tail call i32 @getc(ptr noundef nonnull %0) ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !40

._crit_edge:                                      ; preds = %php_iptc_get1.exit, %.lr.ph.split.split, %php_iptc_get1.exit.us6, %.lr.ph.split.split.us, %php_iptc_get1.exit.us, %php_iptc_get1.exit.us.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_iptcparse(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %2 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %cond = icmp eq i32 %i.d, 1
  br i1 %cond, label %bb.b, label %.thread, !prof !18

.thread:                                          ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #9
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !17
  %i.h = icmp eq i8 %i.g, 6
  br i1 %i.h, label %.critedge, label %zend_parse_arg_str_ex.exit, !prof !19

zend_parse_arg_str_ex.exit:                       ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 1) #9
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %zend_parse_arg_str_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.091130 = phi i32 [ 1, %.thread ], [ 9, %bb.c ]
  %.092129 = phi i32 [ 0, %.thread ], [ 4, %bb.c ]
  %.093128 = phi ptr [ null, %.thread ], [ %i.e, %bb.c ]
  %.094127 = phi i32 [ 0, %.thread ], [ 1, %bb.c ]
  call void @zend_wrong_parameter_error(i32 noundef %.091130, i32 noundef %.094127, ptr noundef null, i32 noundef %.092129, ptr noundef %.093128) #9
  br label %bb.s

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit, %bb.b
  %.in = phi ptr [ %i.e, %bb.b ], [ %i.a, %zend_parse_arg_str_ex.exit ]
  %i.j = load ptr, ptr %.in, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22   ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge146.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %.0139 = phi i64 [ %i.s, %bb.f ], [ 0, %.critedge ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0139 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  %i.p = icmp eq i8 %i.o, 28
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr i8, ptr %i.n, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !17
  %.off = add i8 %i.r, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.s = add nuw i64 %.0139, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.m
  br i1 %exitcond.not, label %._crit_edge146.thread, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.e
  %i.t = icmp ult i64 %.0139, %i.m
  br i1 %i.t, label %.lr.ph145, label %._crit_edge146.thread

.lr.ph145:                                        ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph145, %bb.r
  %.1143 = phi i64 [ %.0139, %.lr.ph145 ], [ %i.bb, %bb.r ] ; 3 uses
  %.089142 = phi i32 [ 0, %.lr.ph145 ], [ %i.bs, %bb.r ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %.1143 ; 8 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %.not104 = icmp eq i8 %i.x, 28
  %i.y = add i64 %.1143, 5                        ; 2 uses
  %.not105 = icmp ult i64 %i.y, %i.m
  %or.cond = and i1 %.not105, %.not104
  br i1 %or.cond, label %bb.h, label %._crit_edge146

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  %i.ab = getelementptr i8, ptr %i.w, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = getelementptr i8, ptr %i.w, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17  ; 2 uses
  %.not106 = icmp sgt i8 %i.ae, -1
  br i1 %.not106, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i64 %.1143, 9                       ; 2 uses
  %.not107 = icmp ult i64 %i.af, %i.m
  br i1 %.not107, label %bb.j, label %._crit_edge146

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.w, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 24
  %i.ak = getelementptr i8, ptr %i.w, i64 6
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 16
  %i.ao = or disjoint i64 %i.an, %i.aj
  %i.ap = getelementptr i8, ptr %i.w, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 8
  %i.at = or disjoint i64 %i.ao, %i.as
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.au = zext nneg i8 %i.ae to i64
  %i.av = shl nuw nsw i64 %i.au, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink171 = phi i64 [ 4, %bb.k ], [ 8, %bb.j ]
  %.sink = phi i64 [ %i.av, %bb.k ], [ %i.at, %bb.j ]
  %.2 = phi i64 [ %i.y, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  %i.aw = getelementptr i8, ptr %i.w, i64 %.sink171
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %.sink, %i.ay           ; 3 uses
  %i.ba = icmp ugt i64 %i.az, %i.m
  br i1 %i.ba, label %._crit_edge146, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add i64 %.2, %i.az                      ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.m
  br i1 %i.bc, label %._crit_edge146, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = zext i8 %i.aa to i32
  %i.be = zext i8 %i.ac to i32
  %i.bf = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.b, i64 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.bd, i32 noundef %i.be) #9 ; 0 uses
  %i.bg = icmp eq i32 %.089142, 0
  br i1 %i.bg, label %bb.o, label %._crit_edge156

._crit_edge156:                                   ; preds = %bb.n
  %.pre157 = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = call ptr @_zend_new_array_0() #9        ; 2 uses
  store ptr %i.bh, ptr %1, align 8, !tbaa !17
  store i32 775, ptr %i.u, align 8, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge156, %bb.o
  %i.bi = phi ptr [ %.pre157, %._crit_edge156 ], [ %i.bh, %bb.o ]
  %i.bj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #10
  %i.bk = call ptr @zend_hash_str_find(ptr noundef %i.bi, ptr noundef nonnull %i.b, i64 noundef %i.bj) #9 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = call ptr @_zend_new_array_0() #9
  store ptr %i.bm, ptr %2, align 8, !tbaa !17
  store i32 775, ptr %i.v, align 8, !tbaa !17
  %i.bn = load ptr, ptr %1, align 8, !tbaa !17
  %i.bo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #10
  %i.bp = call ptr @zend_hash_str_update(ptr noundef %i.bn, ptr noundef nonnull %i.b, i64 noundef %i.bo, ptr noundef nonnull %2) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.095 = phi ptr [ %i.bp, %bb.q ], [ %i.bk, %bb.p ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 %.2
  %i.br = call i32 @add_next_index_stringl(ptr noundef %.095, ptr noundef nonnull %i.bq, i64 noundef %i.az) #9 ; 0 uses
  %i.bs = add i32 %.089142, 1                     ; 2 uses
  %i.bt = icmp ult i64 %i.bb, %i.m
  br i1 %i.bt, label %bb.g, label %._crit_edge146, !llvm.loop !42

._crit_edge146:                                   ; preds = %bb.r, %bb.g, %bb.i, %bb.m, %bb.l
  %.089.lcssa.ph = phi i32 [ %i.bs, %bb.r ], [ %.089142, %bb.g ], [ %.089142, %bb.i ], [ %.089142, %bb.m ], [ %.089142, %bb.l ]
  %i.bu = icmp eq i32 %.089.lcssa.ph, 0
  br i1 %i.bu, label %._crit_edge146.thread, label %bb.s

._crit_edge146.thread:                            ; preds = %bb.f, %.critedge, %._crit_edge, %._crit_edge146
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.bv, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %._crit_edge146, %._crit_edge146.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @_zend_new_array_0() local_unnamed_addr #3

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @zend_hash_str_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @add_next_index_stringl(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @zend_parse_arg_long_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #5

declare i64 @php_output_write(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_efree(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !23}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"branch_weights", i32 4000000, i32 4001}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"_zend_refcounted_h", !10, i64 0, !9, i64 4}
!21 = !{!"_zend_string", !20, i64 0, !13, i64 8, !13, i64 16, !9, i64 24}
!22 = !{!21, !13, i64 16}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = !{!13, !13, i64 0}
!30 = !{!"p1 _ZTS12_zend_string", !14, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!"branch_weights", !"expected", i32 1073741824, i32 1073741824}
!34 = !{!"timespec", !13, i64 0, !13, i64 8}
!35 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !34, i64 72, !34, i64 88, !34, i64 104, !9, i64 120}
!36 = !{!35, !13, i64 48}
!37 = !{!20, !10, i64 0}
!38 = !{!21, !13, i64 8}
!39 = !{!"branch_weights", i32 2000, i32 2002}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
end_hunk_0
