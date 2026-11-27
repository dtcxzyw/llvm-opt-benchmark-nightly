Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/machine?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0
@.compoundliteral.394 = internal global [3 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.392, i64 28040, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.393, i64 28048, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@.compoundliteral.395 = internal constant [2 x ptr] [ptr @vmstate_shstk, ptr null], align 8
@vmstate_cet = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.391, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cet_needed, ptr null, ptr @.compoundliteral.394, ptr @.compoundliteral.395 }, align 8
@.str.397 = private unnamed_addr constant [14 x i8] c"cpu/cet_shstk\00", align 1
@.str.398 = private unnamed_addr constant [12 x i8] c"env.pl1_ssp\00", align 1
@.str.399 = private unnamed_addr constant [12 x i8] c"env.pl2_ssp\00", align 1
@.str.400 = private unnamed_addr constant [12 x i8] c"env.pl3_ssp\00", align 1
@.str.401 = private unnamed_addr constant [18 x i8] c"env.int_ssp_table\00", align 1
@.str.402 = private unnamed_addr constant [14 x i8] c"env.guest_ssp\00", align 1
@.compoundliteral.403 = internal global [6 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.398, i64 28064, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.399, i64 28072, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.400, i64 28080, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.401, i64 28088, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.402, i64 28096, i64 8, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 1, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_shstk = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.397, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shstk_needed, ptr null, ptr @.compoundliteral.403, ptr null }, align 8
@.str.405 = private unnamed_addr constant [8 x i8] c"cpu/apx\00", align 1
@.compoundliteral.406 = internal global [2 x { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr }] [{ ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr @.str.1, i64 16624, i64 8, i64 0, i64 0, i32 16, [4 x i8] zeroinitializer, i64 0, ptr @vmstate_info_uint64, i32 4, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }, { ptr, i64, i64, i64, i64, i32, [4 x i8], i64, ptr, i32, [4 x i8], ptr, i32, i32, ptr } { ptr null, i64 0, i64 0, i64 0, i64 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i32 131072, [4 x i8] zeroinitializer, ptr null, i32 0, i32 0, ptr null }], align 8
@vmstate_apx = internal constant { ptr, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.405, i8 0, i8 0, [2 x i8] zeroinitializer, i32 1, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @apx_needed, ptr null, ptr @.compoundliteral.406, ptr null }, align 8

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @cpu_post_load(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 31344
  %i.c = load i64, ptr %i.b, align 16             ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31352
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not56 = icmp eq i64 %i.e, 0
  %.not57 = icmp eq i64 %i.c, %i.e
  %or.cond = or i1 %.not56, %.not57
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.67) #9
  br label %bb.s

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 31956
  %i.g = load i16, ptr %i.f, align 4
  %.not58 = icmp eq i16 %i.g, 0
  br i1 %.not58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.68) #9
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17048
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1
  %.not59 = icmp eq i64 %i.j, 0
  br i1 %.not59, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16852 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = and i32 %i.l, 24576
  %.not60 = icmp eq i32 %i.m, 0
  br i1 %.not60, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %i.l, -24577
  store i32 %i.n, ptr %i.k, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16900 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, -24577
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16828 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, -24577
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16924 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -24577
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16948 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, -24577
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16876 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, -24577
  store i32 %i.ac, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16800 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 16           ; 2 uses
  %i.af = and i32 %i.ae, -4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16876
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = lshr i32 %i.ah, 13
  %i.aj = and i32 %i.ai, 3
  %i.ak = or disjoint i32 %i.aj, %i.af
  store i32 %i.ak, ptr %i.ad, align 16
  %i.al = and i32 %i.ae, 2097152
  %.not61 = icmp eq i32 %i.al, 0
  br i1 %.not61, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 31392
  %i.an = load ptr, ptr %i.am, align 16           ; 2 uses
  %.not62 = icmp eq ptr %i.an, null
  br i1 %.not62, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = and i16 %i.ao, 1
  %.not63 = icmp eq i16 %i.ap, 0
  br i1 %.not63, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.69) #9
  br label %bb.s

bb.m:                                             ; preds = %bb.k, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 31300
  %i.ar = load i32, ptr %i.aq, align 4
  %.not64 = icmp eq i32 %i.ar, -1
  br i1 %.not64, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 31309
  %i.at = load i8, ptr %i.as, align 1
  %.not65 = icmp eq i8 %i.at, 0
  br i1 %.not65, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 31310 ; 2 uses
  %i.av = load i8, ptr %i.au, align 2
  %.not66 = icmp eq i8 %i.av, 0
  br i1 %.not66, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.au, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 31952
  %i.ax = load i16, ptr %i.aw, align 16           ; 2 uses
  %i.ay = lshr i16 %i.ax, 11
  %i.az = and i16 %i.ay, 7
  %i.ba = zext nneg i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 17232
  store i32 %i.ba, ptr %i.bb, align 16
  %i.bc = and i16 %i.ax, -14337
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 17236
  store i16 %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 31954 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = xor i16 %i.bf, 255                      ; 2 uses
  store i16 %i.bg, ptr %i.be, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 17240
  %i.bi = trunc i16 %i.bg to i8
  %i.bj = insertelement <8 x i8> poison, i8 %i.bi, i64 0
  %i.bk = shufflevector <8 x i8> %i.bj, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bl = lshr <8 x i8> %i.bk, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  %i.bm = and <8 x i8> %i.bl, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -1>
  store <8 x i8> %i.bm, ptr %i.bh, align 8
  %i.bn = load i8, ptr @tcg_allowed, align 1, !range !7, !noundef !8
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @update_fp_status(ptr noundef nonnull %i.a) #9
  tail call void @update_mxcsr_status(ptr noundef nonnull %i.a) #9
  tail call void @cpu_breakpoint_remove_all(ptr noundef nonnull %0, i32 noundef 32) #9
  tail call void @cpu_watchpoint_remove_all(ptr noundef nonnull %0, i32 noundef 32) #9
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 30008 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = and i64 %i.bq, -256
  store i64 %i.br, ptr %i.bp, align 8
  %i.bs = trunc i64 %i.bq to i32
  tail call void @cpu_x86_update_dr7(ptr noundef nonnull %i.a, i32 noundef %i.bs) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.l, %bb.e, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.e ], [ -22, %bb.l ], [ 0, %bb.r ], [ 0, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @cpu_pre_save(ptr nofree noundef captures(none) initializes((30108, 30109), (31952, 31958)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30112
  %i.b = load i32, ptr %i.a, align 16
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30108
  store i8 %i.d, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17236
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, -14337
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 17232
  %i.j = load i32, ptr %i.i, align 16
  %.tr = trunc i32 %i.j to i16
  %i.k = shl i16 %.tr, 11
  %i.l = and i16 %i.k, 14336
  %i.m = or disjoint i16 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 31952
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 31954
  %2 = freeze i16 %i.m
  %3 = zext i16 %2 to i32
  store i32 %3, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 17240
  %i.p = load <8 x i8>, ptr %i.o, align 8
  %i.q = icmp eq <8 x i8> %i.p, zeroinitializer   ; 8 uses
  %i.r = extractelement <8 x i1> %i.q, i64 0
  %i.s = zext i1 %i.r to i16
  %i.t = extractelement <8 x i1> %i.q, i64 1
  %i.u = select i1 %i.t, i16 2, i16 0
  %i.v = or disjoint i16 %i.u, %i.s
  %i.w = extractelement <8 x i1> %i.q, i64 2
  %i.x = select i1 %i.w, i16 4, i16 0
  %i.y = or disjoint i16 %i.v, %i.x
  %i.z = extractelement <8 x i1> %i.q, i64 3
  %i.aa = select i1 %i.z, i16 8, i16 0
  %i.ab = or disjoint i16 %i.y, %i.aa
  %i.ac = extractelement <8 x i1> %i.q, i64 4
  %i.ad = select i1 %i.ac, i16 16, i16 0
  %i.ae = or disjoint i16 %i.ab, %i.ad
  %i.af = extractelement <8 x i1> %i.q, i64 5
  %i.ag = select i1 %i.af, i16 32, i16 0
  %i.ah = or disjoint i16 %i.ae, %i.ag
  %i.ai = extractelement <8 x i1> %i.q, i64 6
  %i.aj = select i1 %i.ai, i16 64, i16 0
  %i.ak = or i16 %i.ah, %i.aj
  %i.al = extractelement <8 x i1> %i.q, i64 7
  %i.am = select i1 %i.al, i16 128, i16 0
  %i.an = or i16 %i.ak, %i.am
  store i16 %i.an, ptr %1, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 31956
  store i16 0, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 17048
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 1
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16852 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = and i32 %i.at, 24576
  %.not46 = icmp eq i32 %i.au, 0
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = and i32 %i.at, -24577
  store i32 %i.av, ptr %i.as, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16900 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, -24577
  store i32 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16828 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, -24577
  store i32 %i.bb, ptr %i.az, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16924 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = and i32 %i.bd, -24577
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16948 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, -24577
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16876 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, -24577
  store i32 %i.bk, ptr %i.bi, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bl = load i8, ptr @kvm_allowed, align 1, !range !7, !noundef !8
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.e, label %cpu_vmx_maybe_enabled.exit.thread54

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr i8, ptr %0, i64 30216
  %.val.i = load i64, ptr %i.bn, align 8
  %i.bo = and i64 %.val.i, 32
  %.not3.i = icmp eq i64 %i.bo, 0
  br i1 %.not3.i, label %cpu_vmx_maybe_enabled.exit.thread54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 17080
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = and i64 %i.bq, 8192
  %.not.i = icmp eq i64 %i.br, 0
  br i1 %.not.i, label %cpu_vmx_maybe_enabled.exit, label %cpu_vmx_maybe_enabled.exit.thread

cpu_vmx_maybe_enabled.exit:                       ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16800
  %i.bt = load i32, ptr %i.bs, align 16
  %i.bu = and i32 %i.bt, 524288
  %.not55 = icmp eq i32 %i.bu, 0
  br i1 %.not55, label %cpu_vmx_maybe_enabled.exit.thread54, label %cpu_vmx_maybe_enabled.exit.thread

cpu_vmx_maybe_enabled.exit.thread:                ; preds = %bb.f, %cpu_vmx_maybe_enabled.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 31392
  %i.bw = load ptr, ptr %i.bv, align 16
  %.not47 = icmp eq ptr %i.bw, null
  br i1 %.not47, label %bb.j, label %bb.g

bb.g:                                             ; preds = %cpu_vmx_maybe_enabled.exit.thread
  %i.bx = tail call zeroext i1 @kvm_has_exception_payload() #9
  br i1 %i.bx, label %cpu_vmx_maybe_enabled.exit.thread54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16800
  %i.bz = load i32, ptr %i.by, align 16
  %i.ca = and i32 %i.bz, 2097152
  %.not48 = icmp eq i32 %i.ca, 0
  br i1 %.not48, label %cpu_vmx_maybe_enabled.exit.thread54, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 31310
  %i.cc = load i8, ptr %i.cb, align 2
  %.not49 = icmp eq i8 %i.cc, 0
  br i1 %.not49, label %cpu_vmx_maybe_enabled.exit.thread54, label %bb.j

bb.j:                                             ; preds = %bb.i, %cpu_vmx_maybe_enabled.exit.thread
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.70) #9
  br label %bb.p

cpu_vmx_maybe_enabled.exit.thread54:              ; preds = %bb.e, %bb.i, %bb.h, %bb.g, %cpu_vmx_maybe_enabled.exit, %bb.d
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 31309 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1
  %.not50 = icmp eq i8 %i.ce, 0
  br i1 %.not50, label %bb.p, label %bb.k

bb.k:                                             ; preds = %cpu_vmx_maybe_enabled.exit.thread54
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16800
  %i.cg = load i32, ptr %i.cf, align 16
  %i.ch = and i32 %i.cg, 2097152
  %.not51 = icmp eq i32 %i.ch, 0
  br i1 %.not51, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.cd, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 31310
  store i8 1, ptr %i.ci, align 2
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 31312
  %i.ck = load i8, ptr %i.cj, align 16
  %.not52 = icmp eq i8 %i.ck, 0
  br i1 %.not52, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 31300
  %i.cm = load i32, ptr %i.cl, align 4
  switch i32 %i.cm, label %bb.p [
    i32 1, label %bb.n
    i32 14, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 31320
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 30000
  store i64 %i.co, ptr %i.cp, align 16
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 31320
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 17064
  store i64 %i.cr, ptr %i.cs, align 8
  br label %bb.p

bb.p:                                             ; preds = %cpu_vmx_maybe_enabled.exit.thread54, %bb.k, %bb.n, %bb.o, %bb.l, %bb.m, %bb.j
  %.044 = phi i32 [ -22, %bb.j ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %cpu_vmx_maybe_enabled.exit.thread54 ]
  ret i32 %.044
}

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

declare void @update_fp_status(ptr noundef) local_unnamed_addr #1

declare void @update_mxcsr_status(ptr noundef) local_unnamed_addr #1

declare void @cpu_breakpoint_remove_all(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @cpu_watchpoint_remove_all(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @cpu_x86_update_dr7(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @kvm_has_exception_payload() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fpreg_post_load(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i16, ptr %i.d, align 8
  store i64 %i.c, ptr %i.a, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fpreg_pre_save(ptr nofree noundef captures(none) initializes((8, 18)) %0) #3 {
bb.a:
end_hunk_0
