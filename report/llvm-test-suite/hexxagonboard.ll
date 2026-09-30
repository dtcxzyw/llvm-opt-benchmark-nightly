Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hexxagonboard?download=true
inline.NumInlined: 69
inline.NumDeleted: 12
begin_hunk_0_@_Z16initCloneLookupsv:bb.a
  %or.cond136 = select i1 %or.cond.i, i1 true, i1 %or.cond39.i71
  %or.cond136.not = xor i1 %or.cond136, true
  %.not.i72 = icmp samesign ugt i32 %i.aq, %i.i
  %or.cond41.i73 = select i1 %i.k, i1 true, i1 %.not.i72
  %or.cond151 = select i1 %or.cond136.not, i1 %or.cond41.i73, i1 false
  br i1 %or.cond151, label %bb.i, label %_Z16getHexxagonIndexii.exit84

bb.i:                                             ; preds = %_Z16getHexxagonIndexii.exit67
  %spec.select.i75 = add nsw i32 %i.aa, %i.aq     ; 2 uses
  %i.bg = add nsw i32 %spec.select.i75, -3
  %.1.i76 = select i1 %i.q, i32 %i.bg, i32 %spec.select.i75 ; 2 uses
  %i.bh = add nsw i32 %.1.i76, -2
  %.2.i77 = select i1 %i.s, i32 %i.bh, i32 %.1.i76
  %.4.i80 = add nsw i32 %.3.i79, %.2.i77          ; 2 uses
  %i.bi = add nsw i32 %.4.i80, -2
  %.5.i81 = select i1 %i.ad, i32 %i.bi, i32 %.4.i80 ; 2 uses
  %i.bj = add nsw i32 %.5.i81, -3
  %.6.i82 = select i1 %i.w, i32 %i.bj, i32 %.5.i81 ; 2 uses
  %i.bk = add nsw i32 %.6.i82, -4
  %.7.i83 = select i1 %i.x, i32 %i.bk, i32 %.6.i82
  br label %_Z16getHexxagonIndexii.exit84

_Z16getHexxagonIndexii.exit84:                    ; preds = %_Z16getHexxagonIndexii.exit67, %bb.i
  %.035.i70 = phi i32 [ %.7.i83, %bb.i ], [ -1, %_Z16getHexxagonIndexii.exit67 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.be, i32 noundef %.035.i70)
  %i.bl = load ptr, ptr @clone_lookups, align 8, !tbaa !11
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.ao
  %i.bn = add nuw nsw i32 %.042142, 1             ; 3 uses
  %or.cond.i85 = icmp ne i32 %.042142, 9          ; 2 uses
  %i.bo = icmp samesign ult i32 %.042142, %i.g
  %or.cond39.i88 = select i1 %not..i112, i1 true, i1 %i.bo
  %or.cond137.not = select i1 %or.cond.i85, i1 %or.cond39.i88, i1 false
  %.not.i89 = icmp uge i32 %.042142, %i.i
  %or.cond41.i90 = select i1 %i.k, i1 true, i1 %.not.i89
  %or.cond152 = select i1 %or.cond137.not, i1 %or.cond41.i90, i1 false
  br i1 %or.cond152, label %bb.j, label %_Z16getHexxagonIndexii.exit101

bb.j:                                             ; preds = %_Z16getHexxagonIndexii.exit84
  %spec.select.i92 = add i32 %i.aa, %i.bn         ; 2 uses
  %i.bp = add nsw i32 %spec.select.i92, -3
  %.1.i93 = select i1 %i.q, i32 %i.bp, i32 %spec.select.i92 ; 2 uses
  %i.bq = add nsw i32 %.1.i93, -2
  %.2.i94 = select i1 %i.s, i32 %i.bq, i32 %.1.i93
  %.4.i97 = add nsw i32 %.3.i79, %.2.i94          ; 2 uses
  %i.br = add nsw i32 %.4.i97, -2
  %.5.i98 = select i1 %i.ad, i32 %i.br, i32 %.4.i97 ; 2 uses
  %i.bs = add nsw i32 %.5.i98, -3
  %.6.i99 = select i1 %i.w, i32 %i.bs, i32 %.5.i98 ; 2 uses
  %i.bt = add nsw i32 %.6.i99, -4
  %.7.i100 = select i1 %i.x, i32 %i.bt, i32 %.6.i99
  br label %_Z16getHexxagonIndexii.exit101

_Z16getHexxagonIndexii.exit101:                   ; preds = %_Z16getHexxagonIndexii.exit84, %bb.j
  %.035.i87 = phi i32 [ %.7.i100, %bb.j ], [ -1, %_Z16getHexxagonIndexii.exit84 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.bm, i32 noundef %.035.i87)
  %i.bu = load ptr, ptr @clone_lookups, align 8, !tbaa !11
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ao
  %i.bw = icmp samesign ule i32 %.042142, %i.ag
  %or.cond39.i105.not163 = select i1 %i.s, i1 true, i1 %i.bw
  %or.cond154.not160 = select i1 %i.af, i1 %or.cond39.i105.not163, i1 false
  %.not.i106 = icmp samesign ugt i32 %.042142, %i.ah
  %or.cond41.i107 = select i1 %i.f, i1 true, i1 %.not.i106
  %or.cond155 = select i1 %or.cond154.not160, i1 %or.cond41.i107, i1 false
  br i1 %or.cond155, label %bb.k, label %_Z16getHexxagonIndexii.exit118

bb.k:                                             ; preds = %_Z16getHexxagonIndexii.exit101
  %.1.i110 = add i32 %i.aj, %.042142              ; 2 uses
  %i.bx = add nsw i32 %.1.i110, -2
  %.2.i111 = select i1 %i.q, i32 %i.bx, i32 %.1.i110
  %.4.i114 = add nsw i32 %.3.i113, %.2.i111       ; 2 uses
  %i.by = add nsw i32 %.4.i114, -2
  %.5.i115 = select i1 %i.h, i32 %i.by, i32 %.4.i114 ; 2 uses
  %i.bz = add nsw i32 %.5.i115, -3
  %.6.i116 = select i1 %i.ad, i32 %i.bz, i32 %.5.i115 ; 2 uses
  %i.ca = add nsw i32 %.6.i116, -4
  %.7.i117 = select i1 %i.w, i32 %i.ca, i32 %.6.i116
  br label %_Z16getHexxagonIndexii.exit118

_Z16getHexxagonIndexii.exit118:                   ; preds = %_Z16getHexxagonIndexii.exit101, %bb.k
  %.035.i104 = phi i32 [ %.7.i117, %bb.k ], [ -1, %_Z16getHexxagonIndexii.exit101 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.bv, i32 noundef %.035.i104)
  %i.cb = load ptr, ptr @clone_lookups, align 8, !tbaa !11
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.ao
  %or.cond5.i120 = and i1 %i.af, %or.cond.i85
  %i.cd = icmp samesign ult i32 %.042142, %i.ag
  %or.cond39.i122.not167 = select i1 %i.s, i1 true, i1 %i.cd
  %or.cond156.not164 = select i1 %or.cond5.i120, i1 %or.cond39.i122.not167, i1 false
  %.not.i123 = icmp uge i32 %.042142, %i.ah
  %or.cond41.i124 = select i1 %i.f, i1 true, i1 %.not.i123
  %or.cond157 = select i1 %or.cond156.not164, i1 %or.cond41.i124, i1 false
  br i1 %or.cond157, label %bb.l, label %_Z16getHexxagonIndexii.exit135

bb.l:                                             ; preds = %_Z16getHexxagonIndexii.exit118
  %.1.i127 = add i32 %i.aj, %i.bn                 ; 2 uses
  %i.ce = add nsw i32 %.1.i127, -2
  %.2.i128 = select i1 %i.q, i32 %i.ce, i32 %.1.i127
  %.4.i131 = add nsw i32 %.3.i113, %.2.i128       ; 2 uses
  %i.cf = add nsw i32 %.4.i131, -2
  %.5.i132 = select i1 %i.h, i32 %i.cf, i32 %.4.i131 ; 2 uses
  %i.cg = add nsw i32 %.5.i132, -3
  %.6.i133 = select i1 %i.ad, i32 %i.cg, i32 %.5.i132 ; 2 uses
  %i.ch = add nsw i32 %.6.i133, -4
  %.7.i134 = select i1 %i.w, i32 %i.ch, i32 %.6.i133
  br label %_Z16getHexxagonIndexii.exit135

_Z16getHexxagonIndexii.exit135:                   ; preds = %_Z16getHexxagonIndexii.exit118, %bb.l
  %.035.i121 = phi i32 [ %.7.i134, %bb.l ], [ -1, %_Z16getHexxagonIndexii.exit118 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.cc, i32 noundef %.035.i121)
  %i.ci = add nsw i32 %.145141, 1
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_Z16getHexxagonIndexii.exit135
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.bn, %_Z16getHexxagonIndexii.exit135 ] ; 2 uses
  %.2 = phi i32 [ %.145141, %._crit_edge ], [ %i.ci, %_Z16getHexxagonIndexii.exit135 ] ; 2 uses
  %exitcond169.not = icmp eq i32 %.pre-phi, 10
  br i1 %exitcond169.not, label %bb.d, label %bb.e, !llvm.loop !24
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15initJumpLookupsv() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.BitBoard64, align 4          ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(488) ptr @_Znam(i64 noundef 488) #9
  store ptr %i.a, ptr @jump_lookups, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i32 0, ptr %0, align 4, !tbaa !13
  store i32 0, ptr %i.b, align 4, !tbaa !14
  %i.c = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 61
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !25

.preheader:                                       ; preds = %bb.b, %bb.d
  %.061264 = phi i32 [ %i.ao, %bb.d ], [ 1, %bb.b ] ; 30 uses
  %.062263 = phi i32 [ %.2, %bb.d ], [ 0, %bb.b ]
  %i.f = icmp samesign ult i32 %.061264, 5        ; 4 uses
  %i.g = add nuw nsw i32 %.061264, 4              ; 3 uses
  %i.h = icmp samesign ugt i32 %.061264, 5        ; 12 uses
  %i.i = add nsw i32 %.061264, -5                 ; 3 uses
  %i.j = add nsw i32 %.061264, -2                 ; 2 uses
  %i.k = add nsw i32 %.061264, -3                 ; 4 uses
  %i.l = icmp ult i32 %i.k, 9                     ; 3 uses
  %i.m = icmp samesign ugt i32 %.061264, 6        ; 10 uses
  %i.n = add nuw nsw i32 %.061264, 2              ; 4 uses
  %i.o = icmp samesign ult i32 %.061264, 8        ; 6 uses
  %i.p = add nsw i32 %.061264, -7                 ; 3 uses
  %i.q = mul nuw nsw i32 %i.j, 9
  %i.r = icmp samesign ugt i32 %.061264, 3        ; 8 uses
  %spec.select.v.i = select i1 %i.r, i32 -14, i32 -10
  %i.s = add nsw i32 %spec.select.v.i, %i.q       ; 3 uses
  %i.t = icmp samesign ugt i32 %.061264, 4        ; 9 uses
  %i.u = sext i1 %i.m to i32
  %not..i = xor i1 %i.o, true
  %i.v = sext i1 %not..i to i32
  %.3.i = add nsw i32 %i.v, %i.u                  ; 3 uses
  %i.w = icmp eq i32 %.061264, 9                  ; 7 uses
  %i.x = icmp ult i32 %i.j, 9                     ; 2 uses
  %i.y = add nuw nsw i32 %.061264, 3              ; 2 uses
  %i.z = icmp samesign ult i32 %.061264, 7        ; 3 uses
  %i.aa = add nsw i32 %.061264, -6                ; 2 uses
  %i.ab = mul i32 %.061264, 9
  %i.ac = add i32 %i.ab, -9
  %i.ad = icmp samesign ugt i32 %.061264, 2       ; 9 uses
  %spec.select.v.i109 = select i1 %i.ad, i32 -14, i32 -10
  %i.ae = add nsw i32 %spec.select.v.i109, %i.ac  ; 2 uses
  %i.af = sext i1 %i.h to i32
  %not..i113 = xor i1 %i.z, true
  %i.ag = sext i1 %not..i113 to i32
  %.3.i114 = add nsw i32 %i.ag, %i.af             ; 2 uses
  %i.ah = icmp samesign ugt i32 %.061264, 7       ; 6 uses
  %i.ai = icmp samesign ult i32 %.061264, 6       ; 3 uses
  %i.aj = mul nuw nsw i32 %.061264, 9
  %i.ak = icmp samesign ugt i32 %.061264, 1       ; 3 uses
  %spec.select.v.i143 = select i1 %i.ak, i32 -14, i32 -10
  %i.al = add nsw i32 %spec.select.v.i143, %i.aj  ; 2 uses
  %i.am = sext i1 %i.t to i32
  %not..i147 = xor i1 %i.ai, true
  %i.an = sext i1 %not..i147 to i32
  %.3.i148 = add nsw i32 %i.an, %i.am             ; 2 uses
  %i.ao = add nuw nsw i32 %.061264, 1             ; 3 uses
  %i.ap = icmp ne i32 %.061264, 9                 ; 2 uses
  %i.aq = add nuw nsw i32 %.061264, 5             ; 2 uses
  %i.ar = add nsw i32 %.061264, -4                ; 2 uses
  %i.as = mul nuw nsw i32 %i.ao, 9
  %.1.i179.v = select i1 %i.ak, i32 -17, i32 -14
  %i.at = add nsw i32 %.1.i179.v, %i.as           ; 2 uses
  %i.au = sext i1 %i.r to i32
  %not..i181 = xor i1 %i.f, true                  ; 3 uses
  %i.av = sext i1 %not..i181 to i32
  %.3.i182 = add nsw i32 %i.av, %i.au             ; 2 uses
  %i.aw = add nuw nsw i32 %.061264, 6             ; 3 uses
  %i.ax = icmp samesign ult i32 %.061264, 4       ; 4 uses
  %i.ay = mul nuw nsw i32 %i.n, 9
  %.2.i214.v = select i1 %i.ak, i32 -19, i32 -17
  %i.az = sext i1 %i.ad to i32
  %not..i215 = xor i1 %i.ax, true
  %i.ba = sext i1 %not..i215 to i32
  %i.bb = add nsw i32 %i.ba, %i.az
  %.2.i214 = add nsw i32 %i.bb, %i.ay
  %.3.i216 = add nsw i32 %.2.i214, %.2.i214.v     ; 3 uses
  %i.bc = icmp eq i32 %.061264, 7
  %invariant.op.a = add i32 %i.at, %.3.i182
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  ret void

bb.d:                                             ; preds = %bb.s
  %exitcond332.not = icmp eq i32 %i.ao, 10
  br i1 %exitcond332.not, label %bb.c, label %.preheader, !llvm.loop !26

bb.e:                                             ; preds = %.preheader, %bb.s
  %.060262 = phi i32 [ 1, %.preheader ], [ %.pre-phi, %bb.s ] ; 23 uses
  %.163261 = phi i32 [ %.062263, %.preheader ], [ %.2, %bb.s ] ; 3 uses
  %i.bd = icmp samesign ugt i32 %.060262, %i.g
  %or.cond = select i1 %i.f, i1 %i.bd, i1 false
  %.not = icmp sle i32 %.060262, %i.i
  %or.cond68.not = select i1 %i.h, i1 %.not, i1 false
  %narrow = select i1 %or.cond68.not, i1 true, i1 %or.cond
  br i1 %narrow, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = add nuw nsw i32 %.060262, 1
  br label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.bf = sext i32 %.163261 to i64                ; 12 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = add nsw i32 %.060262, -2                ; 10 uses
  %i.bi = add nsw i32 %.060262, -3
  %or.cond.i = icmp ult i32 %i.bi, 9              ; 3 uses
  %or.cond5.i = and i1 %i.l, %or.cond.i
  %i.bj = icmp samesign ule i32 %i.bh, %i.n
  %or.cond39.i.not292 = select i1 %i.m, i1 true, i1 %i.bj
  %or.cond265.not289 = select i1 %or.cond5.i, i1 %or.cond39.i.not292, i1 false
  %.not.i = icmp samesign ugt i32 %i.bh, %i.p
  %or.cond41.i = select i1 %i.o, i1 true, i1 %.not.i
  %or.cond266 = select i1 %or.cond265.not289, i1 %or.cond41.i, i1 false
  br i1 %or.cond266, label %bb.g, label %_Z16getHexxagonIndexii.exit

bb.g:                                             ; preds = %bb.f
  %spec.select.i = add i32 %i.s, %i.bh            ; 2 uses
  %i.bk = add nsw i32 %spec.select.i, -3
  %.1.i = select i1 %i.t, i32 %i.bk, i32 %spec.select.i ; 2 uses
  %i.bl = add nsw i32 %.1.i, -2
  %.2.i = select i1 %i.h, i32 %i.bl, i32 %.1.i
  %.4.i = add nsw i32 %.3.i, %.2.i                ; 2 uses
  %i.bm = add nsw i32 %.4.i, -2
  %.5.i = select i1 %i.w, i32 %i.bm, i32 %.4.i
  br label %_Z16getHexxagonIndexii.exit

_Z16getHexxagonIndexii.exit:                      ; preds = %bb.f, %bb.g
  %.035.i = phi i32 [ %.5.i, %bb.g ], [ -1, %bb.f ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.bg, i32 noundef %.035.i)
  %i.bn = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bf
  %i.bp = add nsw i32 %.060262, -1                ; 6 uses
  %or.cond.i69 = icmp ult i32 %i.bh, 9            ; 2 uses
  %or.cond5.i70 = and i1 %i.l, %or.cond.i69
  %i.bq = icmp samesign ule i32 %i.bp, %i.n
  %or.cond39.i72.not296 = select i1 %i.m, i1 true, i1 %i.bq
  %or.cond267.not293 = select i1 %or.cond5.i70, i1 %or.cond39.i72.not296, i1 false
  %.not.i73 = icmp samesign ugt i32 %i.bp, %i.p
  %or.cond41.i74 = select i1 %i.o, i1 true, i1 %.not.i73
  %or.cond268 = select i1 %or.cond267.not293, i1 %or.cond41.i74, i1 false
  br i1 %or.cond268, label %bb.h, label %_Z16getHexxagonIndexii.exit85

bb.h:                                             ; preds = %_Z16getHexxagonIndexii.exit
  %spec.select.i76 = add nsw i32 %i.s, %i.bp      ; 2 uses
  %i.br = add nsw i32 %spec.select.i76, -3
  %.1.i77 = select i1 %i.t, i32 %i.br, i32 %spec.select.i76 ; 2 uses
  %i.bs = add nsw i32 %.1.i77, -2
  %.2.i78 = select i1 %i.h, i32 %i.bs, i32 %.1.i77
  %.4.i81 = add nsw i32 %.3.i, %.2.i78            ; 2 uses
  %i.bt = add nsw i32 %.4.i81, -2
  %.5.i82 = select i1 %i.w, i32 %i.bt, i32 %.4.i81
  br label %_Z16getHexxagonIndexii.exit85

_Z16getHexxagonIndexii.exit85:                    ; preds = %_Z16getHexxagonIndexii.exit, %bb.h
  %.035.i71 = phi i32 [ %.5.i82, %bb.h ], [ -1, %_Z16getHexxagonIndexii.exit ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.bo, i32 noundef %.035.i71)
  %i.bu = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bf
  %i.bw = icmp samesign ule i32 %.060262, %i.n
  %or.cond39.i89.not300 = select i1 %i.m, i1 true, i1 %i.bw
  %or.cond270.not297 = select i1 %i.l, i1 %or.cond39.i89.not300, i1 false
  %.not.i90 = icmp samesign ugt i32 %.060262, %i.p
  %or.cond41.i91 = select i1 %i.o, i1 true, i1 %.not.i90
  %or.cond271 = select i1 %or.cond270.not297, i1 %or.cond41.i91, i1 false
  br i1 %or.cond271, label %bb.i, label %_Z16getHexxagonIndexii.exit102

bb.i:                                             ; preds = %_Z16getHexxagonIndexii.exit85
  %spec.select.i93 = add i32 %i.s, %.060262       ; 2 uses
  %i.bx = add nsw i32 %spec.select.i93, -3
  %.1.i94 = select i1 %i.t, i32 %i.bx, i32 %spec.select.i93 ; 2 uses
  %i.by = add nsw i32 %.1.i94, -2
  %.2.i95 = select i1 %i.h, i32 %i.by, i32 %.1.i94
  %.4.i98 = add nsw i32 %.3.i, %.2.i95            ; 2 uses
  %i.bz = add nsw i32 %.4.i98, -2
  %.5.i99 = select i1 %i.w, i32 %i.bz, i32 %.4.i98
  br label %_Z16getHexxagonIndexii.exit102

_Z16getHexxagonIndexii.exit102:                   ; preds = %_Z16getHexxagonIndexii.exit85, %bb.i
  %.035.i88 = phi i32 [ %.5.i99, %bb.i ], [ -1, %_Z16getHexxagonIndexii.exit85 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.bv, i32 noundef %.035.i88)
  %i.ca = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bf
  %or.cond5.i104 = and i1 %i.x, %or.cond.i
  %i.cc = icmp samesign ule i32 %i.bh, %i.y
  %or.cond39.i106.not304 = select i1 %i.h, i1 true, i1 %i.cc
  %or.cond272.not301 = select i1 %or.cond5.i104, i1 %or.cond39.i106.not304, i1 false
  %.not.i107 = icmp samesign ugt i32 %i.bh, %i.aa
  %or.cond41.i108 = select i1 %i.z, i1 true, i1 %.not.i107
  %or.cond273 = select i1 %or.cond272.not301, i1 %or.cond41.i108, i1 false
  br i1 %or.cond273, label %bb.j, label %_Z16getHexxagonIndexii.exit119

bb.j:                                             ; preds = %_Z16getHexxagonIndexii.exit102
  %spec.select.i110 = add i32 %i.ae, %i.bh        ; 2 uses
  %i.cd = add nsw i32 %spec.select.i110, -3
  %.1.i111 = select i1 %i.r, i32 %i.cd, i32 %spec.select.i110 ; 2 uses
  %i.ce = add nsw i32 %.1.i111, -2
  %.2.i112 = select i1 %i.t, i32 %i.ce, i32 %.1.i111
  %.4.i115 = add nsw i32 %.3.i114, %.2.i112       ; 2 uses
  %i.cf = add nsw i32 %.4.i115, -2
  %.5.i116 = select i1 %i.ah, i32 %i.cf, i32 %.4.i115 ; 2 uses
  %i.cg = add nsw i32 %.5.i116, -3
  %.6.i117 = select i1 %i.w, i32 %i.cg, i32 %.5.i116
  br label %_Z16getHexxagonIndexii.exit119

_Z16getHexxagonIndexii.exit119:                   ; preds = %_Z16getHexxagonIndexii.exit102, %bb.j
  %.035.i105 = phi i32 [ %.6.i117, %bb.j ], [ -1, %_Z16getHexxagonIndexii.exit102 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.cb, i32 noundef %.035.i105)
  %i.ch = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.bf
  %i.cj = add nuw nsw i32 %.060262, 1             ; 3 uses
  %or.cond.i120 = icmp ne i32 %.060262, 9         ; 2 uses
  %or.cond5.i121 = and i1 %i.x, %or.cond.i120
  %i.ck = icmp samesign ult i32 %.060262, %i.y
  %or.cond39.i123.not308 = select i1 %i.h, i1 true, i1 %i.ck
  %or.cond274.not305 = select i1 %or.cond5.i121, i1 %or.cond39.i123.not308, i1 false
  %.not.i124 = icmp uge i32 %.060262, %i.aa
  %or.cond41.i125 = select i1 %i.z, i1 true, i1 %.not.i124
  %or.cond275 = select i1 %or.cond274.not305, i1 %or.cond41.i125, i1 false
  br i1 %or.cond275, label %bb.k, label %_Z16getHexxagonIndexii.exit136

bb.k:                                             ; preds = %_Z16getHexxagonIndexii.exit119
  %spec.select.i127 = add i32 %i.ae, %i.cj        ; 2 uses
  %i.cl = add nsw i32 %spec.select.i127, -3
  %.1.i128 = select i1 %i.r, i32 %i.cl, i32 %spec.select.i127 ; 2 uses
  %i.cm = add nsw i32 %.1.i128, -2
  %.2.i129 = select i1 %i.t, i32 %i.cm, i32 %.1.i128
  %.4.i132 = add nsw i32 %.3.i114, %.2.i129       ; 2 uses
  %i.cn = add nsw i32 %.4.i132, -2
  %.5.i133 = select i1 %i.ah, i32 %i.cn, i32 %.4.i132 ; 2 uses
  %i.co = add nsw i32 %.5.i133, -3
  %.6.i134 = select i1 %i.w, i32 %i.co, i32 %.5.i133
  br label %_Z16getHexxagonIndexii.exit136

_Z16getHexxagonIndexii.exit136:                   ; preds = %_Z16getHexxagonIndexii.exit119, %bb.k
  %.035.i122 = phi i32 [ %.6.i134, %bb.k ], [ -1, %_Z16getHexxagonIndexii.exit119 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.ci, i32 noundef %.035.i122)
  %i.cp = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.bf
  %i.cr = icmp samesign ule i32 %i.bh, %i.g
  %or.cond39.i140 = select i1 %not..i181, i1 true, i1 %i.cr
  %or.cond256.not = select i1 %or.cond.i, i1 %or.cond39.i140, i1 false
  %.not.i141 = icmp samesign ugt i32 %i.bh, %i.i
  %or.cond41.i142 = select i1 %i.ai, i1 true, i1 %.not.i141
  %or.cond276 = select i1 %or.cond256.not, i1 %or.cond41.i142, i1 false
  br i1 %or.cond276, label %bb.l, label %_Z16getHexxagonIndexii.exit153

bb.l:                                             ; preds = %_Z16getHexxagonIndexii.exit136
  %spec.select.i144 = add i32 %i.al, %i.bh        ; 2 uses
  %i.cs = add nsw i32 %spec.select.i144, -3
  %.1.i145 = select i1 %i.ad, i32 %i.cs, i32 %spec.select.i144 ; 2 uses
  %i.ct = add nsw i32 %.1.i145, -2
  %.2.i146 = select i1 %i.r, i32 %i.ct, i32 %.1.i145
  %.4.i149 = add nsw i32 %.3.i148, %.2.i146       ; 2 uses
  %i.cu = add nsw i32 %.4.i149, -2
  %.5.i150 = select i1 %i.m, i32 %i.cu, i32 %.4.i149 ; 2 uses
  %i.cv = add nsw i32 %.5.i150, -3
  %.6.i151 = select i1 %i.ah, i32 %i.cv, i32 %.5.i150 ; 2 uses
  %i.cw = add nsw i32 %.6.i151, -4
  %.7.i152 = select i1 %i.w, i32 %i.cw, i32 %.6.i151
  br label %_Z16getHexxagonIndexii.exit153

_Z16getHexxagonIndexii.exit153:                   ; preds = %_Z16getHexxagonIndexii.exit136, %bb.l
  %.035.i139 = phi i32 [ %.7.i152, %bb.l ], [ -1, %_Z16getHexxagonIndexii.exit136 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.cq, i32 noundef %.035.i139)
  %i.cx = load ptr, ptr @jump_lookups, align 8, !tbaa !11
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.bf
  %i.cz = add nuw nsw i32 %.060262, 2             ; 9 uses
  %or.cond.i154 = icmp samesign ult i32 %.060262, 8 ; 2 uses
  %i.da = icmp samesign ule i32 %i.cz, %i.g
  %or.cond39.i157 = select i1 %not..i181, i1 true, i1 %i.da
  %or.cond257.not = select i1 %or.cond.i154, i1 %or.cond39.i157, i1 false
  %.not.i158 = icmp samesign ugt i32 %i.cz, %i.i
  %or.cond41.i159 = select i1 %i.ai, i1 true, i1 %.not.i158
  %or.cond277 = select i1 %or.cond257.not, i1 %or.cond41.i159, i1 false
  br i1 %or.cond277, label %bb.m, label %_Z16getHexxagonIndexii.exit170

end_hunk_0
