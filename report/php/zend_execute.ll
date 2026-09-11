Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_execute?download=true
inline.NumInlined: 310
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@ZEND_TYPE_CHECK_SPEC_TMPVAR_HANDLER:bb.a
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.034 = phi ptr [ %i.d, %bb.a ], [ %i.p, %bb.f ]
  %.not39 = icmp eq i32 %i.f, 512
  br i1 %.not39, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.034, align 8, !tbaa !75
  %i.m = tail call ptr @zend_rsrc_list_get_rsrc_type(ptr noundef %i.l) #34
  %.not40 = icmp eq ptr %i.m, null
  br i1 %.not40, label %bb.g, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.n = icmp eq i8 %i.h, 10
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !75
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw i32 1, %i.s
  %i.u = and i32 %i.t, %i.f
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %.not42 = phi i32 [ 3, %bb.d ], [ 2, %bb.c ], [ 2, %bb.f ], [ 2, %bb.e ]
  %.not43 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.f ], [ true, %bb.e ] ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.v = load i32, ptr %i.a, align 8, !tbaa !75
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.z = load i8, ptr %i.y, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !75  ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !76 ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !76
  %.not3.i = icmp eq i32 %i.ad, 0
  br i1 %.not3.i, label %bb.i, label %zval_ptr_dtor_nogc.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !75
  tail call void @rc_dtor_func(ptr noundef %i.ae) #34
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %bb.g, %bb.h, %bb.i
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !82
  %.not41 = icmp eq ptr %i.af, null
  br i1 %.not41, label %bb.k, label %bb.j, !prof !69

bb.j:                                             ; preds = %zval_ptr_dtor_nogc.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !78
  br label %bb.u

bb.k:                                             ; preds = %zval_ptr_dtor_nogc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !213
  switch i8 %i.ai, label %bb.t [
    i8 18, label %bb.l
    i8 34, label %bb.p
  ], !prof !154

bb.l:                                             ; preds = %bb.k
  br i1 %.not43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %bb.u, !prof !80

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call fastcc ptr @zend_interrupt_helper_SPEC(ptr noundef nonnull %0)
  br label %bb.u

bb.p:                                             ; preds = %bb.k
  br i1 %.not43, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.s, label %bb.u, !prof !80

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call fastcc ptr @zend_interrupt_helper_SPEC(ptr noundef nonnull %0)
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !75
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %.not42, ptr %i.bf, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.t, %bb.r, %bb.q, %bb.m, %bb.n, %bb.s, %bb.o
  %.036 = phi ptr [ %i.ba, %bb.s ], [ %i.ar, %bb.o ], [ %i.ag, %bb.j ], [ %i.aj, %bb.m ], [ %i.ao, %bb.n ], [ %i.ax, %bb.r ], [ %i.as, %bb.q ], [ %i.bg, %bb.t ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal ptr @ZEND_TYPE_CHECK_SPEC_CV_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !135  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !75    ; 2 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw i32 1, %i.i
  %i.k = and i32 %i.j, %i.f
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.038 = phi ptr [ %i.d, %bb.a ], [ %i.o, %bb.f ]
  %.not44 = icmp eq i32 %i.f, 512
  br i1 %.not44, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.038, align 8, !tbaa !75
  %i.m = tail call ptr @zend_rsrc_list_get_rsrc_type(ptr noundef %i.l) #34
  %.not45 = icmp eq ptr %i.m, null
  br i1 %.not45, label %bb.i, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  switch i8 %i.h, label %bb.i [
    i8 10, label %bb.f
    i8 0, label %bb.g
  ], !prof !260

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !75
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl nuw i32 1, %i.r
  %i.t = and i32 %i.s, %i.f
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %bb.i, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.f, 1
  %.lobit = and i32 %i.u, 1
  store ptr %1, ptr %0, align 8, !tbaa !78
  tail call fastcc void @_zval_undefined_op1(ptr noundef nonnull %0)
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !82
  %.not42 = icmp eq ptr %i.v, null
  br i1 %.not42, label %bb.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !75
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !75
  %i.ab = load ptr, ptr %0, align 8, !tbaa !78
  br label %bb.s

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.f
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ %.lobit, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !213
  switch i8 %i.ad, label %bb.r [
    i8 18, label %bb.j
    i8 34, label %bb.n
  ], !prof !154

bb.j:                                             ; preds = %bb.i
  %.not48 = icmp eq i32 %.0, 0
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !75
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.m, label %bb.s, !prof !80

bb.m:                                             ; preds = %bb.l
  %i.am = tail call fastcc ptr @zend_interrupt_helper_SPEC(ptr noundef nonnull %0)
  br label %bb.s

bb.n:                                             ; preds = %bb.i
  %.not47 = icmp eq i32 %.0, 0
  br i1 %.not47, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !75
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.q, label %bb.s, !prof !80

bb.q:                                             ; preds = %bb.p
  %i.av = tail call fastcc ptr @zend_interrupt_helper_SPEC(ptr noundef nonnull %0)
  br label %bb.s

bb.r:                                             ; preds = %bb.i
  %2 = or disjoint i32 %.0, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !75
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %2, ptr %i.ba, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.k, %bb.o, %bb.p, %bb.r, %bb.q, %bb.m, %bb.h
  %.040 = phi ptr [ %i.ab, %bb.h ], [ %i.am, %bb.m ], [ %i.av, %bb.q ], [ %i.ae, %bb.k ], [ %i.aj, %bb.l ], [ %i.as, %bb.p ], [ %i.an, %bb.o ], [ %i.bb, %bb.r ]
  ret ptr %.040
}

; Function Attrs: nounwind uwtable
define internal ptr @ZEND_VERIFY_RETURN_TYPE_SPEC_CONST_UNUSED_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !75   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !75
  %i.q = and i32 %i.o, 65280
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.m, align 4, !tbaa !76
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.m, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load i32, ptr %i.i, align 8, !tbaa !75
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 9 uses
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !233  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !75
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %i.y
  %.not67 = icmp eq i32 %i.ad, 0
  br i1 %.not67, label %bb.e, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.af = and i32 %i.y, 29360128
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %zend_fetch_ce_from_type.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.z, align 8, !tbaa !75
  %i.ah = icmp eq i8 %i.ag, 8
  br i1 %i.ah, label %bb.g, label %zend_fetch_ce_from_type.exit.thread, !prof !69

bb.g:                                             ; preds = %bb.f
  %i.ai = and i32 %i.y, 4194304
  %.not52.i = icmp eq i32 %i.ai, 0
  br i1 %.not52.i, label %bb.o, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.aj = and i32 %i.y, 524288
  %.not54.i = icmp eq i32 %i.aj, 0
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !115 ; 3 uses
  br i1 %.not54.i, label %bb.i, label %.thread89

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !117 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.idx = shl nuw nsw i64 %i.an, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %.not58.i97.not = icmp eq i32 %i.am, 0
  br i1 %.not58.i97.not, label %zend_fetch_ce_from_type.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %zend_fetch_ce_from_type.exit78.thread
  %.0.i98 = phi ptr [ %i.bt, %zend_fetch_ce_from_type.exit78.thread ], [ %i.al, %bb.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i98, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !114 ; 2 uses
  %i.ar = and i32 %i.aq, 524288
  %.not55.i = icmp eq i32 %i.ar, 0
  br i1 %.not55.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %.0.i98, align 8, !tbaa !115
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !113
  %i.aw = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.as, ptr noundef %i.av)
  br i1 %i.aw, label %zend_check_type_slow.exit.thread, label %zend_fetch_ce_from_type.exit78.thread

bb.k:                                             ; preds = %.lr.ph
  %i.ax = and i32 %i.aq, 4194304
  %.not56.i = icmp eq i32 %i.ax, 0
  tail call void @llvm.assume(i1 %.not56.i)
  %i.ay = load ptr, ptr %.0.i98, align 8, !tbaa !115 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !75
  %i.bb = and i32 %i.ba, 32
  %.not.i72 = icmp eq i32 %i.bb, 0
  br i1 %.not.i72, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !76 ; 2 uses
  %i.bd = add i32 %i.bc, -1
  %i.be = lshr i32 %i.bd, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.bh = icmp ugt i64 %i.bg, %i.bf
  br i1 %i.bh, label %bb.m, label %.thread, !prof !69

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.bj = zext i32 %i.bc to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !109 ; 2 uses
  %.not14.i73 = icmp eq ptr %i.bl, null
  br i1 %.not14.i73, label %.thread, label %zend_fetch_ce_from_type.exit78

.thread:                                          ; preds = %bb.l, %bb.m
  %i.bm = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.ay, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i76 = icmp eq ptr %i.bm, null
  br i1 %.not15.i76, label %zend_fetch_ce_from_type.exit78.thread, label %zend_fetch_ce_from_type.exit78, !prof !80

bb.n:                                             ; preds = %bb.k
  %i.bn = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.ay, i32 noundef 388) #34 ; 2 uses
  %.not13.i77 = icmp eq ptr %i.bn, null
  br i1 %.not13.i77, label %zend_fetch_ce_from_type.exit78.thread, label %zend_fetch_ce_from_type.exit78, !prof !80

zend_fetch_ce_from_type.exit78:                   ; preds = %bb.n, %.thread, %bb.m
  %.0.i74 = phi ptr [ %i.bl, %bb.m ], [ %i.bm, %.thread ], [ %i.bn, %bb.n ] ; 2 uses
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !113 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %.0.i74
  br i1 %i.br, label %zend_check_type_slow.exit.thread, label %instanceof_function.exit79

instanceof_function.exit79:                       ; preds = %zend_fetch_ce_from_type.exit78
  %i.bs = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.bq, ptr noundef nonnull %.0.i74) #34
  br i1 %i.bs, label %zend_check_type_slow.exit.thread, label %zend_fetch_ce_from_type.exit78.thread

zend_fetch_ce_from_type.exit78.thread:            ; preds = %bb.n, %.thread, %instanceof_function.exit79, %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i98, i64 16 ; 2 uses
  %.not58.i = icmp ult ptr %i.bt, %i.ao
  br i1 %.not58.i, label %.lr.ph, label %zend_fetch_ce_from_type.exit.thread, !llvm.loop !0

bb.o:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !115 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !75
  %i.bx = and i32 %i.bw, 32
  %.not.i70 = icmp eq i32 %i.bx, 0
  br i1 %.not.i70, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.bu, align 4, !tbaa !76 ; 2 uses
  %i.bz = add i32 %i.by, -1
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.cd = icmp ugt i64 %i.cc, %i.cb
  br i1 %i.cd, label %bb.q, label %.thread85, !prof !69

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.cf = zext i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !109 ; 2 uses
  %.not14.i = icmp eq ptr %i.ch, null
  br i1 %.not14.i, label %.thread85, label %zend_fetch_ce_from_type.exit

.thread85:                                        ; preds = %bb.p, %bb.q
  %i.ci = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.bu, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i = icmp eq ptr %i.ci, null
  br i1 %.not15.i, label %zend_fetch_ce_from_type.exit.thread, label %zend_fetch_ce_from_type.exit, !prof !80

bb.r:                                             ; preds = %bb.o
  %i.cj = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.bu, i32 noundef 388) #34 ; 2 uses
  %.not13.i = icmp eq ptr %i.cj, null
  br i1 %.not13.i, label %zend_fetch_ce_from_type.exit.thread, label %zend_fetch_ce_from_type.exit, !prof !80
end_hunk_0
begin_hunk_1_@ZEND_TYPE_CHECK_SPEC_TMPVAR_TAILCALL_HANDLER:bb.a
  %.not39 = icmp eq i32 %i.f, 512
  br i1 %.not39, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.035, align 8, !tbaa !75
  %i.m = tail call ptr @zend_rsrc_list_get_rsrc_type(ptr noundef %i.l) #34
  %.not40 = icmp eq ptr %i.m, null
  br i1 %.not40, label %bb.g, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.n = icmp eq i8 %i.h, 10
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !75
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw i32 1, %i.s
  %i.u = and i32 %i.t, %i.f
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.d
  %.not42 = phi i32 [ 3, %bb.d ], [ 2, %bb.c ], [ 2, %bb.f ], [ 2, %bb.e ]
  %.not43 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.f ], [ true, %bb.e ] ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.v = load i32, ptr %i.a, align 8, !tbaa !75
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.z = load i8, ptr %i.y, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !75  ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !76 ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !76
  %.not3.i = icmp eq i32 %i.ad, 0
  br i1 %.not3.i, label %bb.i, label %zval_ptr_dtor_nogc.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !75
  tail call void @rc_dtor_func(ptr noundef %i.ae) #34
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %bb.g, %bb.h, %bb.i
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !82
  %.not41 = icmp eq ptr %i.af, null
  br i1 %.not41, label %bb.k, label %bb.j, !prof !69

bb.j:                                             ; preds = %zval_ptr_dtor_nogc.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !78
  br label %bb.u

bb.k:                                             ; preds = %zval_ptr_dtor_nogc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !213
  switch i8 %i.ai, label %bb.t [
    i8 18, label %bb.l
    i8 34, label %bb.p
  ], !prof !154

bb.l:                                             ; preds = %bb.k
  br i1 %.not43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !75
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %bb.u, !prof !80

bb.o:                                             ; preds = %bb.n
  %i.ar = musttail call preserve_nonecc ptr @zend_interrupt_TAILCALL(ptr noundef nonnull %0, ptr noundef nonnull %i.ao)
  ret ptr %i.ar

bb.p:                                             ; preds = %bb.k
  br i1 %.not43, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.s, label %bb.u, !prof !80

bb.s:                                             ; preds = %bb.r
  %i.ba = musttail call preserve_nonecc ptr @zend_interrupt_TAILCALL(ptr noundef nonnull %0, ptr noundef nonnull %i.ax)
  ret ptr %i.ba

bb.t:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !75
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %.not42, ptr %i.bf, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.m, %bb.q, %bb.r, %bb.t, %bb.j
  %.036 = phi ptr [ %i.ag, %bb.j ], [ %i.aj, %bb.m ], [ %i.ao, %bb.n ], [ %i.ax, %bb.r ], [ %i.as, %bb.q ], [ %i.bg, %bb.t ] ; 2 uses
  %i.bh = load ptr, ptr %.036, align 8, !tbaa !212
  %i.bi = musttail call preserve_nonecc ptr %i.bh(ptr noundef nonnull %0, ptr noundef nonnull %.036) #34
  ret ptr %i.bi
}

; Function Attrs: nounwind uwtable
define internal preserve_nonecc ptr @ZEND_TYPE_CHECK_SPEC_CV_TAILCALL_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !135  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !75    ; 2 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = shl nuw i32 1, %i.i
  %i.k = and i32 %i.j, %i.f
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.041 = phi ptr [ %i.d, %bb.a ], [ %i.o, %bb.f ]
  %.not46 = icmp eq i32 %i.f, 512
  br i1 %.not46, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.041, align 8, !tbaa !75
  %i.m = tail call ptr @zend_rsrc_list_get_rsrc_type(ptr noundef %i.l) #34
  %.not47 = icmp eq ptr %i.m, null
  br i1 %.not47, label %bb.i, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  switch i8 %i.h, label %bb.i [
    i8 10, label %bb.f
    i8 0, label %bb.g
  ], !prof !260

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !75
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl nuw i32 1, %i.r
  %i.t = and i32 %i.s, %i.f
  %.not45 = icmp eq i32 %i.t, 0
  br i1 %.not45, label %bb.i, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.u = lshr i32 %i.f, 1
  %.lobit = and i32 %i.u, 1
  store ptr %1, ptr %0, align 8, !tbaa !78
  tail call fastcc void @_zval_undefined_op1(ptr noundef nonnull %0)
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !82
  %.not44 = icmp eq ptr %i.v, null
  br i1 %.not44, label %bb.i, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !75
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !75
  %i.ab = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !212
  %i.ad = musttail call preserve_nonecc ptr %i.ac(ptr noundef nonnull %0, ptr noundef nonnull %i.ab) #34
  ret ptr %i.ad

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.f
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ %.lobit, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !213
  switch i8 %i.af, label %bb.r [
    i8 18, label %bb.j
    i8 34, label %bb.n
  ], !prof !154

bb.j:                                             ; preds = %bb.i
  %.not50 = icmp eq i32 %.0, 0
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !75
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak ; 2 uses
  %i.am = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %bb.s, !prof !80

bb.m:                                             ; preds = %bb.l
  %i.ao = musttail call preserve_nonecc ptr @zend_interrupt_TAILCALL(ptr noundef nonnull %0, ptr noundef nonnull %i.al)
  ret ptr %i.ao

bb.n:                                             ; preds = %bb.i
  %.not49 = icmp eq i32 %.0, 0
  br i1 %.not49, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !75
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at ; 2 uses
  %i.av = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 574) seq_cst, align 2, !range !84, !noundef !85
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.q, label %bb.s, !prof !80

bb.q:                                             ; preds = %bb.p
  %i.ax = musttail call preserve_nonecc ptr @zend_interrupt_TAILCALL(ptr noundef nonnull %0, ptr noundef nonnull %i.au)
  ret ptr %i.ax

bb.r:                                             ; preds = %bb.i
  %2 = or disjoint i32 %.0, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !75
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %2, ptr %i.bc, align 8, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.o, %bb.k, %bb.l
  %.042 = phi ptr [ %i.ag, %bb.k ], [ %i.al, %bb.l ], [ %i.au, %bb.p ], [ %i.ap, %bb.o ], [ %i.bd, %bb.r ] ; 2 uses
  %i.be = load ptr, ptr %.042, align 8, !tbaa !212
  %i.bf = musttail call preserve_nonecc ptr %i.be(ptr noundef nonnull %0, ptr noundef nonnull %.042) #34
  ret ptr %i.bf
}

; Function Attrs: nounwind uwtable
define internal preserve_nonecc ptr @ZEND_VERIFY_RETURN_TYPE_SPEC_CONST_UNUSED_TAILCALL_HANDLER(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !75
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !75   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !75
  %i.q = and i32 %i.o, 65280
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.m, align 4, !tbaa !76
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.m, align 4, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load i32, ptr %i.i, align 8, !tbaa !75
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 9 uses
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -24 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !233  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !75
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %i.y
  %.not72 = icmp eq i32 %i.ad, 0
  br i1 %.not72, label %bb.e, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !212
  %i.ag = musttail call preserve_nonecc ptr %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #34
  ret ptr %i.ag

bb.e:                                             ; preds = %bb.c
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.ah = and i32 %i.y, 29360128
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %zend_fetch_ce_from_type.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i8, ptr %i.z, align 8, !tbaa !75
  %i.aj = icmp eq i8 %i.ai, 8
  br i1 %i.aj, label %bb.g, label %zend_fetch_ce_from_type.exit.thread, !prof !69

bb.g:                                             ; preds = %bb.f
  %i.ak = and i32 %i.y, 4194304
  %.not52.i = icmp eq i32 %i.ak, 0
  br i1 %.not52.i, label %bb.o, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.al = and i32 %i.y, 524288
  %.not54.i = icmp eq i32 %i.al, 0
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !115 ; 3 uses
  br i1 %.not54.i, label %bb.i, label %.thread94

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !117 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.idx = shl nuw nsw i64 %i.ap, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %.not58.i102.not = icmp eq i32 %i.ao, 0
  br i1 %.not58.i102.not, label %zend_fetch_ce_from_type.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %zend_fetch_ce_from_type.exit83.thread
  %.0.i103 = phi ptr [ %i.bv, %zend_fetch_ce_from_type.exit83.thread ], [ %i.an, %bb.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i103, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !114 ; 2 uses
  %i.at = and i32 %i.as, 524288
  %.not55.i = icmp eq i32 %i.at, 0
  br i1 %.not55.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %.0.i103, align 8, !tbaa !115
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !113
  %i.ay = tail call fastcc zeroext i1 @zend_check_intersection_type_from_list(ptr noundef %i.au, ptr noundef %i.ax)
  br i1 %i.ay, label %zend_check_type_slow.exit.thread, label %zend_fetch_ce_from_type.exit83.thread

bb.k:                                             ; preds = %.lr.ph
  %i.az = and i32 %i.as, 4194304
  %.not56.i = icmp eq i32 %i.az, 0
  tail call void @llvm.assume(i1 %.not56.i)
  %i.ba = load ptr, ptr %.0.i103, align 8, !tbaa !115 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !75
  %i.bd = and i32 %i.bc, 32
  %.not.i77 = icmp eq i32 %i.bd, 0
  br i1 %.not.i77, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !76 ; 2 uses
  %i.bf = add i32 %i.be, -1
  %i.bg = lshr i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.bj = icmp ugt i64 %i.bi, %i.bh
  br i1 %i.bj, label %bb.m, label %.thread, !prof !69

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.bl = zext i32 %i.be to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !109 ; 2 uses
  %.not14.i78 = icmp eq ptr %i.bn, null
  br i1 %.not14.i78, label %.thread, label %zend_fetch_ce_from_type.exit83

.thread:                                          ; preds = %bb.l, %bb.m
  %i.bo = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.ba, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i81 = icmp eq ptr %i.bo, null
  br i1 %.not15.i81, label %zend_fetch_ce_from_type.exit83.thread, label %zend_fetch_ce_from_type.exit83, !prof !80

bb.n:                                             ; preds = %bb.k
  %i.bp = tail call ptr @zend_fetch_class(ptr noundef nonnull %i.ba, i32 noundef 388) #34 ; 2 uses
  %.not13.i82 = icmp eq ptr %i.bp, null
  br i1 %.not13.i82, label %zend_fetch_ce_from_type.exit83.thread, label %zend_fetch_ce_from_type.exit83, !prof !80

zend_fetch_ce_from_type.exit83:                   ; preds = %bb.n, %.thread, %bb.m
  %.0.i79 = phi ptr [ %i.bn, %bb.m ], [ %i.bo, %.thread ], [ %i.bp, %bb.n ] ; 2 uses
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !113 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %.0.i79
  br i1 %i.bt, label %zend_check_type_slow.exit.thread, label %instanceof_function.exit84

instanceof_function.exit84:                       ; preds = %zend_fetch_ce_from_type.exit83
  %i.bu = tail call zeroext i1 @instanceof_function_slow(ptr noundef %i.bs, ptr noundef nonnull %.0.i79) #34
  br i1 %i.bu, label %zend_check_type_slow.exit.thread, label %zend_fetch_ce_from_type.exit83.thread

zend_fetch_ce_from_type.exit83.thread:            ; preds = %bb.n, %.thread, %instanceof_function.exit84, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i103, i64 16 ; 2 uses
  %.not58.i = icmp ult ptr %i.bv, %i.aq
  br i1 %.not58.i, label %.lr.ph, label %zend_fetch_ce_from_type.exit.thread, !llvm.loop !0

bb.o:                                             ; preds = %bb.g
  %i.bw = load ptr, ptr %i.w, align 8, !tbaa !115 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !75
  %i.bz = and i32 %i.by, 32
  %.not.i75 = icmp eq i32 %i.bz, 0
  br i1 %.not.i75, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !76 ; 2 uses
  %i.cb = add i32 %i.ca, -1
  %i.cc = lshr i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 528), align 8, !tbaa !131
  %i.cf = icmp ugt i64 %i.ce, %i.cd
  br i1 %i.cf, label %bb.q, label %.thread90, !prof !69

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !132
  %i.ch = zext i32 %i.ca to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109 ; 2 uses
  %.not14.i = icmp eq ptr %i.cj, null
  br i1 %.not14.i, label %.thread90, label %zend_fetch_ce_from_type.exit

.thread90:                                        ; preds = %bb.p, %bb.q
  %i.ck = tail call ptr @zend_lookup_class_ex(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef 128) #34 ; 2 uses
  %.not15.i = icmp eq ptr %i.ck, null
  br i1 %.not15.i, label %zend_fetch_ce_from_type.exit.thread, label %zend_fetch_ce_from_type.exit, !prof !80

end_hunk_1
