Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hexxagonboard?download=true
inline.NumInlined: 69
inline.NumDeleted: 12
begin_hunk_0
@_ZN13HexxagonBoardC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13HexxagonBoardC2ERKS_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -20, 81) i32 @_Z16getHexxagonIndexii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 9
  %i.b = add i32 %1, -1
  %i.c = icmp ult i32 %i.b, 9
  %or.cond5 = and i1 %or.cond, %i.c
  br i1 %or.cond5, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 5
  %i.e = add nuw nsw i32 %1, 4
  %i.f = icmp samesign ugt i32 %0, %i.e
  %or.cond39 = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %1, 6              ; 2 uses
  %i.h = add nsw i32 %1, -5
  %.not = icmp samesign ugt i32 %0, %i.h
  %or.cond41 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = mul nuw nsw i32 %1, 9
  %i.j = add nuw nsw i32 %i.i, %0
  %i.k = icmp samesign ugt i32 %1, 1
  %spec.select.v = select i1 %i.k, i32 -14, i32 -10
  %spec.select = add nsw i32 %i.j, %spec.select.v ; 2 uses
  %i.l = icmp samesign ugt i32 %1, 2
  %i.m = add nsw i32 %spec.select, -3
  %.1 = select i1 %i.l, i32 %i.m, i32 %spec.select ; 2 uses
  %i.n = icmp samesign ugt i32 %1, 3
  %i.o = add nsw i32 %.1, -2
  %.2 = select i1 %i.n, i32 %i.o, i32 %.1
  %i.p = icmp samesign ugt i32 %1, 4
  %i.q = sext i1 %i.p to i32
  %not. = xor i1 %i.g, true
  %i.r = sext i1 %not. to i32
  %.3 = add nsw i32 %i.r, %i.q
  %.4 = add nsw i32 %.3, %.2                      ; 2 uses
  %i.s = icmp samesign ugt i32 %1, 6
  %i.t = add nsw i32 %.4, -2
  %.5 = select i1 %i.s, i32 %i.t, i32 %.4         ; 2 uses
  %i.u = icmp samesign ugt i32 %1, 7
  %i.v = add nsw i32 %.5, -3
  %.6 = select i1 %i.u, i32 %i.v, i32 %.5         ; 2 uses
  %i.w = icmp samesign ugt i32 %1, 8
  %i.x = add nsw i32 %.6, -4
  %.7 = select i1 %i.w, i32 %i.x, i32 %.6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.d
  %.035 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %.7, %bb.d ], [ -1, %bb.a ]
  ret i32 %.035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z16initCloneLookupsv() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.BitBoard64, align 4          ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(488) ptr @_Znam(i64 noundef 488) #9
  store ptr %i.a, ptr @clone_lookups, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i32 0, ptr %0, align 4, !tbaa !11
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.c = load ptr, ptr @clone_lookups, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 61
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !14

.preheader:                                       ; preds = %bb.b, %bb.d
  %.043145 = phi i32 [ %i.ae, %bb.d ], [ 1, %bb.b ] ; 22 uses
  %.044144 = phi i32 [ %.2, %bb.d ], [ 0, %bb.b ]
  %i.f = icmp samesign ult i32 %.043145, 5        ; 5 uses
  %i.g = add nuw nsw i32 %.043145, 4              ; 3 uses
  %i.h = icmp samesign ugt i32 %.043145, 5        ; 4 uses
  %i.i = add nsw i32 %.043145, -5                 ; 3 uses
  %i.j = icmp samesign ult i32 %.043145, 2        ; 2 uses
  %i.k = icmp samesign ult i32 %.043145, 6        ; 5 uses
  %i.l = add nuw nsw i32 %.043145, 3              ; 2 uses
  %i.m = icmp samesign ult i32 %.043145, 7        ; 3 uses
  %i.n = add nsw i32 %.043145, -6                 ; 2 uses
  %i.o = mul i32 %.043145, 9
  %i.p = add i32 %i.o, -9
  %i.q = icmp samesign ugt i32 %.043145, 2        ; 5 uses
  %spec.select.v.i = select i1 %i.q, i32 -14, i32 -10
  %i.r = add nsw i32 %spec.select.v.i, %i.p       ; 2 uses
  %i.s = icmp samesign ugt i32 %.043145, 3        ; 7 uses
  %i.t = icmp samesign ugt i32 %.043145, 4        ; 3 uses
  %i.u = sext i1 %i.h to i32
  %not..i = xor i1 %i.m, true
  %i.v = sext i1 %not..i to i32
  %.3.i = add nsw i32 %i.v, %i.u                  ; 2 uses
  %i.w = icmp samesign ugt i32 %.043145, 7        ; 6 uses
  %i.x = icmp eq i32 %.043145, 9                  ; 4 uses
  %i.y = mul nuw nsw i32 %.043145, 9
  %i.z = icmp samesign ugt i32 %.043145, 1        ; 2 uses
  %spec.select.v.i74 = select i1 %i.z, i32 -14, i32 -10
  %i.aa = add nsw i32 %spec.select.v.i74, %i.y    ; 2 uses
  %i.ab = sext i1 %i.t to i32
  %not..i78 = xor i1 %i.k, true
  %i.ac = sext i1 %not..i78 to i32
  %.3.i79 = add nsw i32 %i.ac, %i.ab              ; 2 uses
  %i.ad = icmp samesign ugt i32 %.043145, 6       ; 4 uses
  %i.ae = add nuw nsw i32 %.043145, 1             ; 3 uses
  %i.af = icmp ne i32 %.043145, 9                 ; 2 uses
  %i.ag = add nuw nsw i32 %.043145, 5             ; 2 uses
  %i.ah = add nsw i32 %.043145, -4                ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ae, 9
  %.1.i110.v = select i1 %i.z, i32 -17, i32 -14
  %i.aj = add nsw i32 %.1.i110.v, %i.ai           ; 2 uses
  %i.ak = sext i1 %i.s to i32
  %not..i112 = xor i1 %i.f, true                  ; 2 uses
  %i.al = sext i1 %not..i112 to i32
  %.3.i113 = add nsw i32 %i.al, %i.ak             ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  ret void

bb.d:                                             ; preds = %bb.m
  %exitcond170.not = icmp eq i32 %i.ae, 10
  br i1 %exitcond170.not, label %bb.c, label %.preheader, !llvm.loop !16

bb.e:                                             ; preds = %.preheader, %bb.m
  %.042142 = phi i32 [ 1, %.preheader ], [ %.pre-phi, %bb.m ] ; 17 uses
  %.145141 = phi i32 [ %.044144, %.preheader ], [ %.2, %bb.m ] ; 3 uses
  %i.am = icmp samesign ugt i32 %.042142, %i.g
  %or.cond = select i1 %i.f, i1 %i.am, i1 false
  %.not = icmp sle i32 %.042142, %i.i
  %or.cond50.not = select i1 %i.h, i1 %.not, i1 false
  %narrow = select i1 %or.cond50.not, i1 true, i1 %or.cond
  br i1 %narrow, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = add nuw nsw i32 %.042142, 1
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr @clone_lookups, align 8, !tbaa !8
  %i.ao = sext i32 %.145141 to i64                ; 6 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = add nsw i32 %.042142, -1                ; 6 uses
  %or.cond.i = icmp ult i32 %.042142, 2           ; 2 uses
  %or.cond5.i.not159 = or i1 %i.j, %or.cond.i
  %i.ar = icmp samesign ugt i32 %i.aq, %i.l
  %or.cond39.i = select i1 %i.k, i1 %i.ar, i1 false
  %or.cond146 = select i1 %or.cond5.i.not159, i1 true, i1 %or.cond39.i
  %or.cond146.not = xor i1 %or.cond146, true
  %.not.i = icmp samesign ugt i32 %i.aq, %i.n
  %or.cond41.i = select i1 %i.m, i1 true, i1 %.not.i
  %or.cond147 = select i1 %or.cond146.not, i1 %or.cond41.i, i1 false
  br i1 %or.cond147, label %bb.g, label %_Z16getHexxagonIndexii.exit

bb.g:                                             ; preds = %bb.f
  %spec.select.i = add nsw i32 %i.r, %i.aq        ; 2 uses
  %i.as = add nsw i32 %spec.select.i, -3
  %.1.i = select i1 %i.s, i32 %i.as, i32 %spec.select.i ; 2 uses
  %i.at = add nsw i32 %.1.i, -2
  %.2.i = select i1 %i.t, i32 %i.at, i32 %.1.i
  %.4.i = add nsw i32 %.3.i, %.2.i                ; 2 uses
  %i.au = add nsw i32 %.4.i, -2
  %.5.i = select i1 %i.w, i32 %i.au, i32 %.4.i    ; 2 uses
  %i.av = add nsw i32 %.5.i, -3
  %.6.i = select i1 %i.x, i32 %i.av, i32 %.5.i
  br label %_Z16getHexxagonIndexii.exit

_Z16getHexxagonIndexii.exit:                      ; preds = %bb.f, %bb.g
  %.035.i = phi i32 [ %.6.i, %bb.g ], [ -1, %bb.f ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.ap, i32 noundef %.035.i)
  %i.aw = load ptr, ptr @clone_lookups, align 8, !tbaa !8
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ao
  %i.ay = icmp samesign ugt i32 %.042142, %i.l
  %or.cond39.i54 = select i1 %i.k, i1 %i.ay, i1 false
  %or.cond149 = select i1 %i.j, i1 true, i1 %or.cond39.i54
  %or.cond149.not = xor i1 %or.cond149, true
  %.not.i55 = icmp samesign ugt i32 %.042142, %i.n
  %or.cond41.i56 = select i1 %i.m, i1 true, i1 %.not.i55
  %or.cond150 = select i1 %or.cond149.not, i1 %or.cond41.i56, i1 false
  br i1 %or.cond150, label %bb.h, label %_Z16getHexxagonIndexii.exit67

bb.h:                                             ; preds = %_Z16getHexxagonIndexii.exit
  %spec.select.i58 = add nsw i32 %i.r, %.042142   ; 2 uses
  %i.az = add nsw i32 %spec.select.i58, -3
  %.1.i59 = select i1 %i.s, i32 %i.az, i32 %spec.select.i58 ; 2 uses
  %i.ba = add nsw i32 %.1.i59, -2
  %.2.i60 = select i1 %i.t, i32 %i.ba, i32 %.1.i59
  %.4.i63 = add nsw i32 %.3.i, %.2.i60            ; 2 uses
  %i.bb = add nsw i32 %.4.i63, -2
  %.5.i64 = select i1 %i.w, i32 %i.bb, i32 %.4.i63 ; 2 uses
  %i.bc = add nsw i32 %.5.i64, -3
  %.6.i65 = select i1 %i.x, i32 %i.bc, i32 %.5.i64
  br label %_Z16getHexxagonIndexii.exit67

_Z16getHexxagonIndexii.exit67:                    ; preds = %_Z16getHexxagonIndexii.exit, %bb.h
  %.035.i53 = phi i32 [ %.6.i65, %bb.h ], [ -1, %_Z16getHexxagonIndexii.exit ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.ax, i32 noundef %.035.i53)
  %i.bd = load ptr, ptr @clone_lookups, align 8, !tbaa !8
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ao
  %i.bf = icmp samesign ugt i32 %i.aq, %i.g
  %or.cond39.i71 = select i1 %i.f, i1 %i.bf, i1 false
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
  %i.bl = load ptr, ptr @clone_lookups, align 8, !tbaa !8
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
  %spec.select.i92 = add nsw i32 %i.aa, %i.bn     ; 2 uses
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
  %i.bu = load ptr, ptr @clone_lookups, align 8, !tbaa !8
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ao
  %i.bw = icmp samesign ule i32 %.042142, %i.ag
  %or.cond39.i105.not163 = select i1 %i.s, i1 true, i1 %i.bw
  %or.cond154.not160 = select i1 %i.af, i1 %or.cond39.i105.not163, i1 false
  %.not.i106 = icmp samesign ugt i32 %.042142, %i.ah
  %or.cond41.i107 = select i1 %i.f, i1 true, i1 %.not.i106
  %or.cond155 = select i1 %or.cond154.not160, i1 %or.cond41.i107, i1 false
  br i1 %or.cond155, label %bb.k, label %_Z16getHexxagonIndexii.exit118

bb.k:                                             ; preds = %_Z16getHexxagonIndexii.exit101
  %.1.i110 = add nsw i32 %i.aj, %.042142          ; 2 uses
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
  %i.cb = load ptr, ptr @clone_lookups, align 8, !tbaa !8
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
  %.1.i127 = add nsw i32 %i.aj, %i.bn             ; 2 uses
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
  br i1 %exitcond169.not, label %bb.d, label %bb.e, !llvm.loop !17
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
  store ptr %i.a, ptr @jump_lookups, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i32 0, ptr %0, align 4, !tbaa !11
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.c = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 61
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !18

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
  %invariant.op = add i32 %i.at, %.3.i182
  br label %bb.e

bb.c:                                             ; preds = %bb.d
  ret void

bb.d:                                             ; preds = %bb.s
  %exitcond332.not = icmp eq i32 %i.ao, 10
  br i1 %exitcond332.not, label %bb.c, label %.preheader, !llvm.loop !19

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
  %i.be = load ptr, ptr @jump_lookups, align 8, !tbaa !8
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
  %spec.select.i = add nsw i32 %i.s, %i.bh        ; 2 uses
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
  %i.bn = load ptr, ptr @jump_lookups, align 8, !tbaa !8
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
  %i.bu = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bf
  %i.bw = icmp samesign ule i32 %.060262, %i.n
  %or.cond39.i89.not300 = select i1 %i.m, i1 true, i1 %i.bw
  %or.cond270.not297 = select i1 %i.l, i1 %or.cond39.i89.not300, i1 false
  %.not.i90 = icmp samesign ugt i32 %.060262, %i.p
  %or.cond41.i91 = select i1 %i.o, i1 true, i1 %.not.i90
  %or.cond271 = select i1 %or.cond270.not297, i1 %or.cond41.i91, i1 false
  br i1 %or.cond271, label %bb.i, label %_Z16getHexxagonIndexii.exit102

bb.i:                                             ; preds = %_Z16getHexxagonIndexii.exit85
  %spec.select.i93 = add nsw i32 %i.s, %.060262   ; 2 uses
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
  %i.ca = load ptr, ptr @jump_lookups, align 8, !tbaa !8
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
  %spec.select.i110 = add nsw i32 %i.ae, %i.bh    ; 2 uses
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
  %i.ch = load ptr, ptr @jump_lookups, align 8, !tbaa !8
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
  %spec.select.i127 = add nsw i32 %i.ae, %i.cj    ; 2 uses
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
  %i.cp = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.bf
  %i.cr = icmp samesign ule i32 %i.bh, %i.g
  %or.cond39.i140 = select i1 %not..i181, i1 true, i1 %i.cr
  %or.cond256.not = select i1 %or.cond.i, i1 %or.cond39.i140, i1 false
  %.not.i141 = icmp samesign ugt i32 %i.bh, %i.i
  %or.cond41.i142 = select i1 %i.ai, i1 true, i1 %.not.i141
  %or.cond276 = select i1 %or.cond256.not, i1 %or.cond41.i142, i1 false
  br i1 %or.cond276, label %bb.l, label %_Z16getHexxagonIndexii.exit153

bb.l:                                             ; preds = %_Z16getHexxagonIndexii.exit136
  %spec.select.i144 = add nsw i32 %i.al, %i.bh    ; 2 uses
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
  %i.cx = load ptr, ptr @jump_lookups, align 8, !tbaa !8
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

bb.m:                                             ; preds = %_Z16getHexxagonIndexii.exit153
  %spec.select.i161 = add nsw i32 %i.al, %i.cz    ; 2 uses
  %i.db = add nsw i32 %spec.select.i161, -3
  %.1.i162 = select i1 %i.ad, i32 %i.db, i32 %spec.select.i161 ; 2 uses
  %i.dc = add nsw i32 %.1.i162, -2
  %.2.i163 = select i1 %i.r, i32 %i.dc, i32 %.1.i162
  %.4.i166 = add nsw i32 %.3.i148, %.2.i163       ; 2 uses
  %i.dd = add nsw i32 %.4.i166, -2
  %.5.i167 = select i1 %i.m, i32 %i.dd, i32 %.4.i166 ; 2 uses
  %i.de = add nsw i32 %.5.i167, -3
  %.6.i168 = select i1 %i.ah, i32 %i.de, i32 %.5.i167 ; 2 uses
  %i.df = add nsw i32 %.6.i168, -4
  %.7.i169 = select i1 %i.w, i32 %i.df, i32 %.6.i168
  br label %_Z16getHexxagonIndexii.exit170

_Z16getHexxagonIndexii.exit170:                   ; preds = %_Z16getHexxagonIndexii.exit153, %bb.m
  %.035.i156 = phi i32 [ %.7.i169, %bb.m ], [ -1, %_Z16getHexxagonIndexii.exit153 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.cy, i32 noundef %.035.i156)
  %i.dg = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.bf
  %or.cond5.i172 = and i1 %i.ap, %or.cond.i69
  %i.di = icmp samesign ule i32 %i.bp, %i.aq
  %or.cond39.i174.not313 = select i1 %i.r, i1 true, i1 %i.di
  %or.cond278.not310 = select i1 %or.cond5.i172, i1 %or.cond39.i174.not313, i1 false
  %.not.i175 = icmp samesign ugt i32 %i.bp, %i.ar
  %or.cond41.i176 = select i1 %i.f, i1 true, i1 %.not.i175
  %or.cond279 = select i1 %or.cond278.not310, i1 %or.cond41.i176, i1 false
  br i1 %or.cond279, label %bb.n, label %_Z16getHexxagonIndexii.exit187

bb.n:                                             ; preds = %_Z16getHexxagonIndexii.exit170
  %.1.i179 = add nsw i32 %i.at, %i.bp             ; 2 uses
  %i.dj = add nsw i32 %.1.i179, -2
  %.2.i180 = select i1 %i.ad, i32 %i.dj, i32 %.1.i179
  %.4.i183 = add nsw i32 %.3.i182, %.2.i180       ; 2 uses
  %i.dk = add nsw i32 %.4.i183, -2
  %.5.i184 = select i1 %i.h, i32 %i.dk, i32 %.4.i183 ; 2 uses
  %i.dl = add nsw i32 %.5.i184, -3
  %.6.i185 = select i1 %i.m, i32 %i.dl, i32 %.5.i184 ; 2 uses
  %i.dm = add nsw i32 %.6.i185, -4
  %.7.i186 = select i1 %i.ah, i32 %i.dm, i32 %.6.i185
  br label %_Z16getHexxagonIndexii.exit187

_Z16getHexxagonIndexii.exit187:                   ; preds = %_Z16getHexxagonIndexii.exit170, %bb.n
  %.035.i173 = phi i32 [ %.7.i186, %bb.n ], [ -1, %_Z16getHexxagonIndexii.exit170 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.dh, i32 noundef %.035.i173)
  %i.dn = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.bf
  %or.cond5.i189 = and i1 %i.ap, %or.cond.i154
  %i.dp = icmp samesign ule i32 %i.cz, %i.aq
  %or.cond39.i191.not317 = select i1 %i.r, i1 true, i1 %i.dp
  %or.cond280.not314 = select i1 %or.cond5.i189, i1 %or.cond39.i191.not317, i1 false
  %.not.i192 = icmp samesign ugt i32 %i.cz, %i.ar
  %or.cond41.i193 = select i1 %i.f, i1 true, i1 %.not.i192
  %or.cond281 = select i1 %or.cond280.not314, i1 %or.cond41.i193, i1 false
  br i1 %or.cond281, label %bb.o, label %_Z16getHexxagonIndexii.exit204

bb.o:                                             ; preds = %_Z16getHexxagonIndexii.exit187
  %.2.i197.v = select i1 %i.ad, i32 %.060262, i32 %i.cz
  %.4.i200.reass = add i32 %.2.i197.v, %invariant.op ; 2 uses
  %i.dq = add nsw i32 %.4.i200.reass, -2
  %.5.i201 = select i1 %i.h, i32 %i.dq, i32 %.4.i200.reass ; 2 uses
  %i.dr = add nsw i32 %.5.i201, -3
  %.6.i202 = select i1 %i.m, i32 %i.dr, i32 %.5.i201 ; 2 uses
  %i.ds = add nsw i32 %.6.i202, -4
  %.7.i203 = select i1 %i.ah, i32 %i.ds, i32 %.6.i202
  br label %_Z16getHexxagonIndexii.exit204

_Z16getHexxagonIndexii.exit204:                   ; preds = %_Z16getHexxagonIndexii.exit187, %bb.o
  %.035.i190 = phi i32 [ %.7.i203, %bb.o ], [ -1, %_Z16getHexxagonIndexii.exit187 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.do, i32 noundef %.035.i190)
  %i.dt = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.bf
  %i.dv = icmp samesign ule i32 %.060262, %i.aw
  %or.cond39.i208.not321 = select i1 %i.ad, i1 true, i1 %i.dv
  %or.cond283.not318 = select i1 %i.o, i1 %or.cond39.i208.not321, i1 false
  %.not.i209 = icmp samesign ugt i32 %.060262, %i.k
  %or.cond41.i210 = select i1 %i.ax, i1 true, i1 %.not.i209
  %or.cond284 = select i1 %or.cond283.not318, i1 %or.cond41.i210, i1 false
  br i1 %or.cond284, label %bb.p, label %_Z16getHexxagonIndexii.exit221

bb.p:                                             ; preds = %_Z16getHexxagonIndexii.exit204
  %.4.i217 = add i32 %.3.i216, %.060262           ; 2 uses
  %i.dw = add nsw i32 %.4.i217, -2
  %.5.i218 = select i1 %i.t, i32 %i.dw, i32 %.4.i217 ; 2 uses
  %i.dx = add nsw i32 %.5.i218, -3
  %.6.i219 = select i1 %i.h, i32 %i.dx, i32 %.5.i218 ; 2 uses
  %i.dy = add nsw i32 %.6.i219, -4
  %.7.i220 = select i1 %i.bc, i32 %i.dy, i32 %.6.i219
  br label %_Z16getHexxagonIndexii.exit221

_Z16getHexxagonIndexii.exit221:                   ; preds = %_Z16getHexxagonIndexii.exit204, %bb.p
  %.035.i207 = phi i32 [ %.7.i220, %bb.p ], [ -1, %_Z16getHexxagonIndexii.exit204 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.du, i32 noundef %.035.i207)
  %i.dz = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.bf
  %or.cond5.i223 = and i1 %i.o, %or.cond.i120
  %i.eb = icmp samesign ult i32 %.060262, %i.aw
  %or.cond39.i225.not325 = select i1 %i.ad, i1 true, i1 %i.eb
  %or.cond285.not322 = select i1 %or.cond5.i223, i1 %or.cond39.i225.not325, i1 false
  %.not.i226 = icmp uge i32 %.060262, %i.k
  %or.cond41.i227 = select i1 %i.ax, i1 true, i1 %.not.i226
  %or.cond286 = select i1 %or.cond285.not322, i1 %or.cond41.i227, i1 false
  br i1 %or.cond286, label %bb.q, label %_Z16getHexxagonIndexii.exit238

bb.q:                                             ; preds = %_Z16getHexxagonIndexii.exit221
  %.4.i234 = add i32 %.3.i216, %i.cj              ; 2 uses
  %i.ec = add nsw i32 %.4.i234, -2
  %.5.i235 = select i1 %i.t, i32 %i.ec, i32 %.4.i234 ; 2 uses
  %i.ed = add nsw i32 %.5.i235, -3
  %.6.i236 = select i1 %i.h, i32 %i.ed, i32 %.5.i235 ; 2 uses
  %i.ee = add nsw i32 %.6.i236, -4
  %.7.i237 = select i1 %i.m, i32 %i.ee, i32 %.6.i236
  br label %_Z16getHexxagonIndexii.exit238

_Z16getHexxagonIndexii.exit238:                   ; preds = %_Z16getHexxagonIndexii.exit221, %bb.q
  %.035.i224 = phi i32 [ %.7.i237, %bb.q ], [ -1, %_Z16getHexxagonIndexii.exit221 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.ea, i32 noundef %.035.i224)
  %i.ef = load ptr, ptr @jump_lookups, align 8, !tbaa !8
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.bf
  %i.eh = or i32 %.060262, %.061264
  %or.cond5.i240 = icmp samesign ult i32 %i.eh, 8
  %i.ei = icmp samesign ule i32 %i.cz, %i.aw
  %or.cond39.i242.not329 = select i1 %i.ad, i1 true, i1 %i.ei
  %or.cond287.not326 = select i1 %or.cond5.i240, i1 %or.cond39.i242.not329, i1 false
  %.not.i243 = icmp samesign ugt i32 %i.cz, %i.k
  %or.cond41.i244 = select i1 %i.ax, i1 true, i1 %.not.i243
  %or.cond288 = select i1 %or.cond287.not326, i1 %or.cond41.i244, i1 false
  br i1 %or.cond288, label %bb.r, label %_Z16getHexxagonIndexii.exit255

bb.r:                                             ; preds = %_Z16getHexxagonIndexii.exit238
  %.5.i252.v = select i1 %i.t, i32 %.060262, i32 %i.cz
  %.5.i252 = add nsw i32 %.3.i216, %.5.i252.v     ; 2 uses
  %i.ej = add nsw i32 %.5.i252, -3
  %.6.i253 = select i1 %i.h, i32 %i.ej, i32 %.5.i252 ; 2 uses
  %i.ek = add nsw i32 %.6.i253, -4
  %.7.i254 = select i1 %i.m, i32 %i.ek, i32 %.6.i253
  br label %_Z16getHexxagonIndexii.exit255

_Z16getHexxagonIndexii.exit255:                   ; preds = %_Z16getHexxagonIndexii.exit238, %bb.r
  %.035.i241 = phi i32 [ %.7.i254, %bb.r ], [ -1, %_Z16getHexxagonIndexii.exit238 ]
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.eg, i32 noundef %.035.i241)
  %i.el = add nsw i32 %.163261, 1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %_Z16getHexxagonIndexii.exit255
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.cj, %_Z16getHexxagonIndexii.exit255 ] ; 2 uses
  %.2 = phi i32 [ %.163261, %._crit_edge ], [ %i.el, %_Z16getHexxagonIndexii.exit255 ] ; 2 uses
  %exitcond331.not = icmp eq i32 %.pre-phi, 10
  br i1 %exitcond331.not, label %bb.d, label %bb.e, !llvm.loop !20
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13HexxagonBoardC2ERKS_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %i.c) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13HexxagonBoardaSERKS_(ptr dead_on_unwind noalias writable sret(%class.HexxagonBoard) align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = tail call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %i.a) ; 0 uses
  %i.d = tail call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) ; 0 uses
  %i.g = tail call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13HexxagonBoard4initEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %class.BitBoard64, align 4          ; 5 uses
  %2 = alloca %class.BitBoard64, align 4          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i32 0, ptr %1, align 4, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !13
  %i.b = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 0)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef 0)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 34)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef 34)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 56)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef 56)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 4)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 26)
  call void @_ZN10BitBoard646setBitEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef 60)
  ret void
end_hunk_0
begin_hunk_1_@_ZN13HexxagonBoard16generateMoveListEv:bb.a
; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN16HexxagonMoveList7addMoveER12HexxagonMove(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN16HexxagonMoveList10getNrMovesEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN13HexxagonBoard9endOfGameEv(ptr noundef nonnull align 4 dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN13HexxagonBoard16generateMoveListEv(ptr noundef nonnull align 4 dereferenceable(16) %0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN16HexxagonMoveListD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #11
  br label %_ZN16HexxagonMoveListD2Ev.exit

_ZN16HexxagonMoveListD2Ev.exit:                   ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN16HexxagonMoveListD2Ev.exit
  %.0 = phi i32 [ 0, %_ZN16HexxagonMoveListD2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZN13HexxagonBoard12computerMoveEiPFvvEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %class.HexxagonBoard, align 4       ; 3 uses
  %i.a = tail call noundef ptr @_ZN13HexxagonBoard16generateMoveListEv(ptr noundef nonnull align 4 dereferenceable(16) %0) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %i.d) ; 0 uses
  call void @_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull dead_on_return %4, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %i.f = call noundef ptr @_ZN16HexxagonMoveList11getBestMoveEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.g = call noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN16HexxagonMoveListD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 8) #11
  br label %_ZN16HexxagonMoveListD2Ev.exit

_ZN16HexxagonMoveListD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #11
  br label %bb.e

bb.e:                                             ; preds = %_ZN16HexxagonMoveListD2Ev.exit, %bb.b
  %.0 = phi i32 [ 0, %_ZN16HexxagonMoveListD2Ev.exit ], [ -1, %bb.b ]
  ret i32 %.0
}

declare void @_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN16HexxagonMoveList11getBestMoveEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZN13HexxagonBoard12readFromFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i32 @_ZN10BitBoard6412readFromFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(8) %i.a, ptr noundef %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN10BitBoard6412readFromFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef %1)
  %.not3 = icmp ne i32 %i.c, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

declare noundef i32 @_ZN10BitBoard6412readFromFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZN13HexxagonBoard11writeToFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i32 @_ZN10BitBoard6411writeToFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(8) %i.a, ptr noundef %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN10BitBoard6411writeToFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef %1)
  %.not3 = icmp ne i32 %i.c, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

declare noundef i32 @_ZN10BitBoard6411writeToFileEP8_IO_FILE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13HexxagonBoard16displayBoardTextEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.BitBoard64, align 8          ; 6 uses
  %3 = alloca %class.BitBoard64, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load i64, ptr %i.a, align 4
  store i64 %i.b, ptr %2, align 8
  %.not = icmp eq i32 %1, 0                       ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = call i64 @_ZN10BitBoard64coEv(ptr noundef nonnull align 4 dereferenceable(8) %2)
  store i64 %i.c, ptr %3, align 8
  %i.d = call i64 @_ZN10BitBoard64aSERKS_(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 27) ; 0 uses
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 26) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  br i1 %.not, label %.preheader125, label %.preheader126

bb.e:                                             ; preds = %bb.c, %bb.f
  %indvars.iv = phi i32 [ 4, %bb.c ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.022132 = phi i32 [ 1, %bb.c ], [ %i.z, %bb.f ] ; 13 uses
  %umax = call i32 @llvm.umax.i32(i32 %indvars.iv, i32 1)
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.022132)
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  %i.i = icmp samesign ugt i32 %.022132, 4        ; 3 uses
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.021129 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.e ]
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.k = add nuw i32 %.021129, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph, %bb.e
  %i.l = add nuw nsw i32 %.022132, 4
  %i.m = icmp samesign ult i32 %.022132, 6        ; 2 uses
  %i.n = add nsw i32 %.022132, -5
  %i.o = mul nuw nsw i32 %.022132, 9
  %i.p = icmp samesign ugt i32 %.022132, 1
  %spec.select.v.i = select i1 %i.p, i32 -14, i32 -10
  %i.q = add nsw i32 %spec.select.v.i, %i.o
  %i.r = icmp samesign ugt i32 %.022132, 2
  %i.s = icmp samesign ugt i32 %.022132, 3
  %i.t = sext i1 %i.i to i32
  %not..i = xor i1 %i.m, true
  %i.u = sext i1 %not..i to i32
  %.3.i = add nsw i32 %i.u, %i.t
  %i.v = icmp samesign ugt i32 %.022132, 6
  %i.w = icmp samesign ugt i32 %.022132, 7
  %i.x = icmp eq i32 %.022132, 9
  br label %bb.g

bb.f:                                             ; preds = %bb.l
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.z = add nuw nsw i32 %.022132, 1              ; 2 uses
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %exitcond142.not = icmp eq i32 %i.z, 10
  br i1 %exitcond142.not, label %bb.d, label %bb.e, !llvm.loop !33

bb.g:                                             ; preds = %.loopexit, %bb.l
  %.0130 = phi i32 [ 1, %.loopexit ], [ %i.an, %bb.l ] ; 4 uses
  %i.aa = icmp samesign ule i32 %.0130, %i.l
  %or.cond39.i = select i1 %i.i, i1 true, i1 %i.aa
  %.not.i = icmp samesign ugt i32 %.0130, %i.n
  %or.cond41.i = select i1 %i.m, i1 true, i1 %.not.i
  %or.cond = select i1 %or.cond39.i, i1 %or.cond41.i, i1 false
  br i1 %or.cond, label %_Z16getHexxagonIndexii.exit, label %_Z16getHexxagonIndexii.exit.thread

_Z16getHexxagonIndexii.exit:                      ; preds = %bb.g
  %spec.select.i = add nsw i32 %i.q, %.0130       ; 2 uses
  %i.ab = add nsw i32 %spec.select.i, -3
  %.1.i = select i1 %i.r, i32 %i.ab, i32 %spec.select.i ; 2 uses
  %i.ac = add nsw i32 %.1.i, -2
  %.2.i = select i1 %i.s, i32 %i.ac, i32 %.1.i
  %.4.i = add nsw i32 %.3.i, %.2.i                ; 2 uses
  %i.ad = add nsw i32 %.4.i, -2
  %.5.i = select i1 %i.v, i32 %i.ad, i32 %.4.i    ; 2 uses
  %i.ae = add nsw i32 %.5.i, -3
  %.6.i = select i1 %i.w, i32 %i.ae, i32 %.5.i    ; 2 uses
  %i.af = add nsw i32 %.6.i, -4
  %.7.i = select i1 %i.x, i32 %i.af, i32 %.6.i    ; 3 uses
  %i.ag = icmp eq i32 %.7.i, -1
  br i1 %i.ag, label %_Z16getHexxagonIndexii.exit.thread, label %bb.h

_Z16getHexxagonIndexii.exit.thread:               ; preds = %bb.g, %_Z16getHexxagonIndexii.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %_Z16getHexxagonIndexii.exit
  %i.ai = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %.7.i)
  %.not25 = icmp eq i32 %i.ai, 0
  br i1 %.not25, label %bb.k, label %_Z16getHexxagonIndexii.exit43

_Z16getHexxagonIndexii.exit43:                    ; preds = %bb.h
  %i.aj = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %.7.i)
  %.not26 = icmp eq i32 %i.aj, 0
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_Z16getHexxagonIndexii.exit43
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %_Z16getHexxagonIndexii.exit43
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 2) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %_Z16getHexxagonIndexii.exit.thread
  %i.an = add nuw nsw i32 %.0130, 1               ; 2 uses
  %exitcond141.not = icmp eq i32 %i.an, 10
  br i1 %exitcond141.not, label %bb.f, label %bb.g, !llvm.loop !34

.preheader126:                                    ; preds = %bb.d, %bb.n
  %.022.i = phi i32 [ %i.ar, %bb.n ], [ 0, %bb.d ] ; 3 uses
  %.01520.i = phi i32 [ %.116.i, %bb.n ], [ 0, %bb.d ] ; 2 uses
  %i.ao = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %.022.i)
  %.not.i44 = icmp eq i32 %i.ao, 0
  br i1 %.not.i44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader126
  %i.ap = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.022.i)
  %.not19.i = icmp ne i32 %i.ap, 0
  %i.aq = zext i1 %.not19.i to i32
  %spec.select = add nsw i32 %.01520.i, %i.aq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader126
  %.116.i = phi i32 [ %spec.select, %bb.m ], [ %.01520.i, %.preheader126 ] ; 2 uses
  %i.ar = add nuw nsw i32 %.022.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ar, 61
  br i1 %exitcond.not.i, label %_ZN13HexxagonBoard11countBricksEi.exit, label %.preheader126, !llvm.loop !21

.preheader125:                                    ; preds = %bb.d, %bb.p
  %.022.i46 = phi i32 [ %i.av, %bb.p ], [ 0, %bb.d ] ; 3 uses
  %.01421.i47 = phi i32 [ %.1.i52, %bb.p ], [ 0, %bb.d ] ; 2 uses
  %i.as = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %.022.i46)
  %.not.i49 = icmp eq i32 %i.as, 0
  br i1 %.not.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader125
  %i.at = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.022.i46)
  %.not19.i50 = icmp eq i32 %i.at, 0
  %i.au = zext i1 %.not19.i50 to i32
  %spec.select158 = add nsw i32 %.01421.i47, %i.au
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader125
  %.1.i52 = phi i32 [ %.01421.i47, %.preheader125 ], [ %spec.select158, %bb.o ] ; 2 uses
  %i.av = add nuw nsw i32 %.022.i46, 1            ; 2 uses
  %exitcond.not.i53 = icmp eq i32 %i.av, 61
  br i1 %exitcond.not.i53, label %_ZN13HexxagonBoard11countBricksEi.exit, label %.preheader125, !llvm.loop !21

_ZN13HexxagonBoard11countBricksEi.exit:           ; preds = %bb.n, %bb.p
  %i.aw = phi i32 [ %.1.i52, %bb.p ], [ %.116.i, %bb.n ]
  br i1 %.not, label %.preheader122, label %.preheader123

.preheader123:                                    ; preds = %_ZN13HexxagonBoard11countBricksEi.exit, %bb.r
  %.022.i55 = phi i32 [ %i.ba, %bb.r ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit ] ; 3 uses
  %.01421.i56 = phi i32 [ %.1.i61, %bb.r ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit ] ; 2 uses
  %i.ax = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %.022.i55)
  %.not.i58 = icmp eq i32 %i.ax, 0
  br i1 %.not.i58, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader123
  %i.ay = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.022.i55)
  %.not19.i59 = icmp eq i32 %i.ay, 0
  %i.az = zext i1 %.not19.i59 to i32
  %spec.select159 = add nsw i32 %.01421.i56, %i.az
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader123
  %.1.i61 = phi i32 [ %.01421.i56, %.preheader123 ], [ %spec.select159, %bb.q ] ; 2 uses
  %i.ba = add nuw nsw i32 %.022.i55, 1            ; 2 uses
  %exitcond.not.i62 = icmp eq i32 %i.ba, 61
  br i1 %exitcond.not.i62, label %_ZN13HexxagonBoard11countBricksEi.exit63, label %.preheader123, !llvm.loop !21

.preheader122:                                    ; preds = %_ZN13HexxagonBoard11countBricksEi.exit, %bb.t
  %.022.i64 = phi i32 [ %i.be, %bb.t ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit ] ; 3 uses
  %.01520.i66 = phi i32 [ %.116.i69, %bb.t ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit ] ; 2 uses
  %i.bb = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %.022.i64)
  %.not.i67 = icmp eq i32 %i.bb, 0
  br i1 %.not.i67, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader122
  %i.bc = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.022.i64)
  %.not19.i68 = icmp ne i32 %i.bc, 0
  %i.bd = zext i1 %.not19.i68 to i32
  %spec.select160 = add nsw i32 %.01520.i66, %i.bd
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader122
  %.116.i69 = phi i32 [ %spec.select160, %bb.s ], [ %.01520.i66, %.preheader122 ] ; 2 uses
  %i.be = add nuw nsw i32 %.022.i64, 1            ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.be, 61
  br i1 %exitcond.not.i71, label %_ZN13HexxagonBoard11countBricksEi.exit63, label %.preheader122, !llvm.loop !21

_ZN13HexxagonBoard11countBricksEi.exit63:         ; preds = %bb.r, %bb.t
  %i.bf = phi i32 [ %.116.i69, %bb.t ], [ %.1.i61, %bb.r ]
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 11) ; 0 uses
  br i1 %.not, label %.preheader119, label %.preheader120

.preheader120:                                    ; preds = %_ZN13HexxagonBoard11countBricksEi.exit63, %bb.v
  %.022.i73 = phi i32 [ %i.bk, %bb.v ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit63 ] ; 3 uses
  %.01520.i75 = phi i32 [ %.116.i78, %bb.v ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit63 ] ; 2 uses
  %i.bh = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %.022.i73)
  %.not.i76 = icmp eq i32 %i.bh, 0
  br i1 %.not.i76, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader120
  %i.bi = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.022.i73)
  %.not19.i77 = icmp ne i32 %i.bi, 0
  %i.bj = zext i1 %.not19.i77 to i32
  %spec.select161 = add nsw i32 %.01520.i75, %i.bj
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader120
  %.116.i78 = phi i32 [ %spec.select161, %bb.u ], [ %.01520.i75, %.preheader120 ] ; 2 uses
  %i.bk = add nuw nsw i32 %.022.i73, 1            ; 2 uses
  %exitcond.not.i80 = icmp eq i32 %i.bk, 61
  br i1 %exitcond.not.i80, label %_ZN13HexxagonBoard11countBricksEi.exit81, label %.preheader120, !llvm.loop !21

.preheader119:                                    ; preds = %_ZN13HexxagonBoard11countBricksEi.exit63, %bb.x
  %.022.i82 = phi i32 [ %i.bo, %bb.x ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit63 ] ; 3 uses
  %.01421.i83 = phi i32 [ %.1.i88, %bb.x ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit63 ] ; 2 uses
  %i.bl = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %.022.i82)
  %.not.i85 = icmp eq i32 %i.bl, 0
  br i1 %.not.i85, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader119
  %i.bm = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.022.i82)
  %.not19.i86 = icmp eq i32 %i.bm, 0
  %i.bn = zext i1 %.not19.i86 to i32
  %spec.select162 = add nsw i32 %.01421.i83, %i.bn
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader119
  %.1.i88 = phi i32 [ %.01421.i83, %.preheader119 ], [ %spec.select162, %bb.w ] ; 2 uses
  %i.bo = add nuw nsw i32 %.022.i82, 1            ; 2 uses
  %exitcond.not.i89 = icmp eq i32 %i.bo, 61
  br i1 %exitcond.not.i89, label %_ZN13HexxagonBoard11countBricksEi.exit81, label %.preheader119, !llvm.loop !21

_ZN13HexxagonBoard11countBricksEi.exit81:         ; preds = %bb.v, %bb.x
  %i.bp = phi i32 [ %.1.i88, %bb.x ], [ %.116.i78, %bb.v ]
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.bp) ; 0 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 4) ; 0 uses
  br i1 %.not, label %.preheader, label %.preheader117

.preheader117:                                    ; preds = %_ZN13HexxagonBoard11countBricksEi.exit81, %bb.z
  %.022.i91 = phi i32 [ %i.bv, %bb.z ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit81 ] ; 3 uses
  %.01421.i92 = phi i32 [ %.1.i97, %bb.z ], [ 0, %_ZN13HexxagonBoard11countBricksEi.exit81 ] ; 2 uses
  %i.bs = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %.022.i91)
  %.not.i94 = icmp eq i32 %i.bs, 0
  br i1 %.not.i94, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader117
  %i.bt = call noundef i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef %.022.i91)
  %.not19.i95 = icmp eq i32 %i.bt, 0
  %i.bu = zext i1 %.not19.i95 to i32
  %spec.select163 = add nsw i32 %.01421.i92, %i.bu
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader117
  %.1.i97 = phi i32 [ %.01421.i92, %.preheader117 ], [ %spec.select163, %bb.y ] ; 2 uses
  %i.bv = add nuw nsw i32 %.022.i91, 1            ; 2 uses
  %exitcond.not.i98 = icmp eq i32 %i.bv, 61
  br i1 %exitcond.not.i98, label %_ZN13HexxagonBoard11countBricksEi.exit99, label %.preheader117, !llvm.loop !21

end_hunk_1
