inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@monkey:bb.a
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ab, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = icmp eq i64 %indvars.iv.next, %zext
  br i1 %i.aj, label %.thread, label %bb.b, !llvm.loop !72

bb.d:                                             ; preds = %bb.b
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = icmp eq i32 %1, %i.ak
  br i1 %i.al, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.d
  %.not43 = icmp ult ptr %.1.lcssa, %3
  br i1 %.not43, label %bb.e, label %._crit_edge62

bb.e:                                             ; preds = %.thread
  %i.am = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr @num_of_matched, align 4, !tbaa !4
  %i.ao = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not44 = icmp eq i32 %i.ao, 0
  br i1 %.not44, label %bb.f, label %._crit_edge62

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not45 = icmp eq i32 %i.ap, 0
  br i1 %.not45, label %bb.h, label %.preheader50

.preheader50:                                     ; preds = %bb.f, %.preheader50
  %.2 = phi ptr [ %i.ar, %.preheader50 ], [ %.1.lcssa, %bb.f ] ; 3 uses
  %i.aq = load i8, ptr %.2, align 1, !tbaa !8
  %.not49 = icmp eq i8 %i.aq, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br i1 %.not49, label %bb.g, label %.preheader50, !llvm.loop !73

bb.g:                                             ; preds = %.preheader50
  %i.as = getelementptr inbounds i8, ptr %.2, i64 -1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.at = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not46 = icmp eq i32 %i.at, 0
  br i1 %.not46, label %.preheader79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader79

.preheader79:                                     ; preds = %bb.i, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.preheader79, %bb.j
  %.3 = phi ptr [ %i.av, %bb.j ], [ %.1.lcssa, %.preheader79 ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.3, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %.not47 = icmp eq i8 %i.aw, 10
  br i1 %.not47, label %.preheader, label %bb.j, !llvm.loop !74

.preheader:                                       ; preds = %bb.j
  %i.ax = load i8, ptr %.3, align 1, !tbaa !8     ; 2 uses
  %.not4856 = icmp eq i8 %i.ax, 10
  br i1 %.not4856, label %._crit_edge, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader, %.lr.ph57
  %i.ay = phi i8 [ %i.be, %.lr.ph57 ], [ %i.ax, %.preheader ]
  %i.az = phi ptr [ %i.bd, %.lr.ph57 ], [ %.3, %.preheader ] ; 2 uses
  %i.ba = zext i8 %i.ay to i32
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bc = tail call noundef i32 @putc(i32 noundef %i.ba, ptr noundef %i.bb), !inline_history !20 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8   ; 2 uses
  %.not48 = icmp eq i8 %i.be, 10
  br i1 %.not48, label %._crit_edge, label %.lr.ph57, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph57, %.preheader
  %.4.lcssa = phi ptr [ %i.av, %.preheader ], [ %i.az, %.lr.ph57 ]
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bg = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bf), !inline_history !20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %._crit_edge, %bb.d
  %.5 = phi ptr [ %i.as, %bb.g ], [ %.4.lcssa, %._crit_edge ], [ %.1.lcssa, %bb.d ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %3
  br i1 %i.bi, label %.lr.ph61, label %._crit_edge62, !llvm.loop !76

._crit_edge62:                                    ; preds = %.thread, %bb.e, %bb.k, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @am_preprocess(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
.preheader17:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  store i32 65535, ptr @Hashmask, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @MEMBER_1, i8 0, i64 65536, i1 false), !tbaa !8
  %i.b = trunc i64 %i.a to i32                    ; 4 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader17
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %xtraiter = and i64 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.h
  store i8 1, ptr %i.i, align 1, !tbaa !8
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !77

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.j = icmp ult i32 %i.b, 4
  br i1 %i.j, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.not28 = icmp eq i32 %i.b, 1
  br i1 %.not28, label %._crit_edge, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %.preheader
  %i.k = zext nneg i32 %i.c to i64
  br label %.lr.ph22

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.n
  store i8 1, ptr %i.o, align 1, !tbaa !8
  %i.p = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.s
  store i8 1, ptr %i.t, align 1, !tbaa !8
  %i.u = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.x
  store i8 1, ptr %i.y, align 1, !tbaa !8
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.ab
  store i8 1, ptr %i.ac, align 1, !tbaa !8
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %.preheader, label %.lr.ph, !llvm.loop !78

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.lr.ph22
  %indvars.iv25 = phi i64 [ %i.k, %.lr.ph22.preheader ], [ %indvars.iv.next26, %.lr.ph22 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = getelementptr i8, ptr %i.ad, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 1, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  %i.am = icmp samesign ugt i64 %indvars.iv25, 1
  br i1 %i.am, label %.lr.ph22, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph22, %.preheader17, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @m_preprocess(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  %i.b = trunc i64 %i.a to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %i.b, i64 4096, i1 false), !tbaa !8
  %i.c = trunc i64 %i.a to i32                    ; 4 uses
  %i.d = add i32 %i.c, -1                         ; 9 uses
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge44.sink.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc i32 %i.d to i8                     ; 16 uses
  %i.g = zext nneg i32 %i.d to i64
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph, %bb.c
  %indvars.iv47 = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next48, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv47 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 3                  ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.l ; 16 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue83, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue83 ] ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.m, align 8, !tbaa !8
  %i.n = zext <16 x i8> %wide.load to <16 x i32>
  %i.o = icmp eq <16 x i32> %broadcast.splat, %i.n ; 16 uses
  %i.p = extractelement <16 x i1> %i.o, i64 0
  br i1 %i.p, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.f, ptr %i.m, align 8, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.q = extractelement <16 x i1> %i.o, i64 1
  br i1 %i.q, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue
  %i.r = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.f, ptr %i.s, align 1, !tbaa !8
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue
  %i.t = extractelement <16 x i1> %i.o, i64 2
  br i1 %i.t, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.u = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.f, ptr %i.v, align 2, !tbaa !8
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.w = extractelement <16 x i1> %i.o, i64 3
  br i1 %i.w, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.x = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %i.f, ptr %i.y, align 1, !tbaa !8
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.z = extractelement <16 x i1> %i.o, i64 4
  br i1 %i.z, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.aa = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i8 %i.f, ptr %i.ab, align 4, !tbaa !8
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.ac = extractelement <16 x i1> %i.o, i64 5
  br i1 %i.ac, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.ad = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.f, ptr %i.ae, align 1, !tbaa !8
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.af = extractelement <16 x i1> %i.o, i64 6
  br i1 %i.af, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i8 %i.f, ptr %i.ah, align 2, !tbaa !8
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.ai = extractelement <16 x i1> %i.o, i64 7
  br i1 %i.ai, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 7
  store i8 %i.f, ptr %i.ak, align 1, !tbaa !8
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.al = extractelement <16 x i1> %i.o, i64 8
  br i1 %i.al, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i8 %i.f, ptr %i.an, align 8, !tbaa !8
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.ao = extractelement <16 x i1> %i.o, i64 9
  br i1 %i.ao, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  store i8 %i.f, ptr %i.aq, align 1, !tbaa !8
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.ar = extractelement <16 x i1> %i.o, i64 10
  br i1 %i.ar, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  store i8 %i.f, ptr %i.at, align 2, !tbaa !8
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.au = extractelement <16 x i1> %i.o, i64 11
  br i1 %i.au, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 11
  store i8 %i.f, ptr %i.aw, align 1, !tbaa !8
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.ax = extractelement <16 x i1> %i.o, i64 12
  br i1 %i.ax, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.ay = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i8 %i.f, ptr %i.az, align 4, !tbaa !8
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.ba = extractelement <16 x i1> %i.o, i64 13
  br i1 %i.ba, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 13
  store i8 %i.f, ptr %i.bc, align 1, !tbaa !8
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bd = extractelement <16 x i1> %i.o, i64 14
  br i1 %i.bd, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  store i8 %i.f, ptr %i.bf, align 2, !tbaa !8
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bg = extractelement <16 x i1> %i.o, i64 15
  br i1 %i.bg, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15
  store i8 %i.f, ptr %i.bi, align 1, !tbaa !8
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, 256
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %pred.store.continue83
  %i.bk = getelementptr i8, ptr %i.h, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.k, %i.bm
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
  %i.br = zext i8 %i.bq to i32
  %.not = icmp sgt i32 %i.d, %i.br
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %middle.block
  %i.bs = trunc i64 %indvars.iv47 to i32
  %i.bt = sub i32 %i.d, %i.bs
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.bp, align 1, !tbaa !8
end_hunk_0
begin_hunk_1_@prep4:bb.a
  store i8 0, ptr %i.ab, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ac = load i32, ptr @Hashmask, align 4, !tbaa !4
  %i.ad = zext i32 %i.ac to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.ad
  br i1 %.not.not, label %bb.c, label %.preheader28, !llvm.loop !94

.preheader27:                                     ; preds = %.preheader27.lr.ph, %._crit_edge38
  %i.ae = phi i8 [ %i.y, %.preheader27.lr.ph ], [ %i.cc, %._crit_edge38 ]
  %indvars.iv57 = phi i64 [ 0, %.preheader27.lr.ph ], [ %indvars.iv.next58, %._crit_edge38 ] ; 4 uses
  %indvars.iv55 = phi i64 [ 1, %.preheader27.lr.ph ], [ %indvars.iv.next56, %._crit_edge38 ] ; 3 uses
  %.not25.not36 = icmp slt i64 %indvars.iv57, %i.z
  br i1 %.not25.not36, label %.preheader.preheader, label %._crit_edge38

.preheader.preheader:                             ; preds = %.preheader27
  %xtraiter78 = and i64 %indvars.iv55, 3          ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv57, 3
  %unroll_iter83 = and i64 %indvars.iv55, 9223372036854775804
  %lcmp.mod80.not = icmp eq i64 %xtraiter78, 0
  %lcmp.mod82 = icmp ne i64 %xtraiter78, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.epilog-lcssa
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.epilog-lcssa ], [ %i.z, %.preheader.preheader ]
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 7 uses
  br i1 %i.af, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %i.ag = getelementptr i8, ptr %0, i64 %indvars.iv.next53
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.new
  %indvars.iv46 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next47.3, %bb.d ] ; 5 uses
  %.034 = phi i32 [ 0, %.preheader.new ], [ %i.bp, %bb.d ]
  %niter84 = phi i64 [ 0, %.preheader.new ], [ %niter84.next.3, %bb.d ]
  %i.ah = sub nsw i64 %indvars.iv.next53, %indvars.iv46
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr @char_map, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = zext i8 %i.am to i32
  %indvars.iv.next47.neg = xor i64 %indvars.iv46, -1
  %i.ao = shl i32 %.034, 6
  %i.ap = shl nuw nsw i32 %i.an, 3
  %i.aq = add i32 %i.ao, %i.ap
  %i.ar = getelementptr i8, ptr %i.ag, i64 %indvars.iv.next47.neg
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr @char_map, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.aq, %i.aw
  %indvars.iv.next47.1 = or disjoint i64 %indvars.iv46, 2
  %i.ay = sub nsw i64 %indvars.iv.next53, %indvars.iv.next47.1
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr @char_map, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = zext i8 %i.bd to i32
  %indvars.iv.next47.2 = or disjoint i64 %indvars.iv46, 3
  %i.bf = shl i32 %i.ax, 6
  %i.bg = shl nuw nsw i32 %i.be, 3
  %i.bh = add i32 %i.bf, %i.bg
  %i.bi = sub nsw i64 %indvars.iv.next53, %indvars.iv.next47.2
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr @char_map, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %i.bh, %i.bo                    ; 3 uses
  %indvars.iv.next47.3 = add nuw nsw i64 %indvars.iv46, 4 ; 2 uses
  %niter84.next.3 = add i64 %niter84, 4           ; 2 uses
  %niter84.ncmp.3 = icmp eq i64 %niter84.next.3, %unroll_iter83
  br i1 %niter84.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !95

.unr-lcssa:                                       ; preds = %bb.d
  br i1 %lcmp.mod80.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv46.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next47.3, %.unr-lcssa ]
  %.034.epil.init = phi i32 [ 0, %.preheader ], [ %i.bp, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv46.epil = phi i64 [ %indvars.iv46.epil.init, %.epil.preheader ], [ %indvars.iv.next47.epil, %bb.e ] ; 2 uses
  %.034.epil = phi i32 [ %.034.epil.init, %.epil.preheader ], [ %i.by, %bb.e ]
  %epil.iter79 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter79.next, %bb.e ]
  %i.bq = shl i32 %.034.epil, 3
  %i.br = sub nsw i64 %indvars.iv.next53, %indvars.iv46.epil
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr @char_map, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i32
  %i.by = add i32 %i.bq, %i.bx                    ; 2 uses
  %indvars.iv.next47.epil = add nuw nsw i64 %indvars.iv46.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !96

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa = phi i32 [ %i.bp, %.unr-lcssa ], [ %i.by, %bb.e ]
  %i.bz = load ptr, ptr @MEMBER_D, align 8, !tbaa !83
  %i.ca = zext i32 %.lcssa to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 1, ptr %i.cb, align 1, !tbaa !8
  %.not25.not = icmp sgt i64 %indvars.iv.next53, %indvars.iv57
  br i1 %.not25.not, label %.preheader, label %._crit_edge38.loopexit, !llvm.loop !97

._crit_edge38.loopexit:                           ; preds = %.epilog-lcssa
  %.pre = load i8, ptr @BSize, align 1, !tbaa !8
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %.preheader27
  %i.cc = phi i8 [ %.pre, %._crit_edge38.loopexit ], [ %i.ae, %.preheader27 ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.cd = zext i8 %i.cc to i64
  %i.ce = icmp samesign ult i64 %indvars.iv.next58, %i.cd
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br i1 %i.ce, label %.preheader27, label %._crit_edge40, !llvm.loop !98

._crit_edge40:                                    ; preds = %._crit_edge38, %.preheader28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local void @sgrep(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [10496 x i8], align 16            ; 10 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.c, label %bb.c [
    i8 94, label %bb.b
    i8 36, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i8 10, ptr %0, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  switch i8 %i.g, label %bb.e [
    i8 94, label %bb.d
    i8 36, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  store i8 10, ptr %i.f, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @char_tr(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2047
  store i8 10, ptr %i.h, align 1, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !8
  %i.i = load i32, ptr @WHOLELINE, align 4, !tbaa !4
  %.not = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not, i32 2048, i32 2047
  %i.j = load i32, ptr %i.a, align 4, !tbaa !4    ; 27 uses
  %i.k = icmp sgt i32 %i.j, 255
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.3, ptr noundef nonnull @Progname) #24 ; 0 uses
  tail call void @exit(i32 noundef 2) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %3, 0                        ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.o = icmp sgt i32 %i.j, 20
  br i1 %i.o, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #22 ; 2 uses
  %i.q = trunc i64 %i.p to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %i.q, i64 4096, i1 false), !tbaa !8
  %i.r = trunc i64 %i.p to i32                    ; 4 uses
  %i.s = add i32 %i.r, -1                         ; 8 uses
  %i.t = icmp sgt i32 %i.r, 1
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge44.sink.split.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = trunc i32 %i.s to i8                     ; 16 uses
  %i.v = zext nneg i32 %i.s to i64                ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.ph183

vector.ph183:                                     ; preds = %bb.k, %.lr.ph.i
  %indvars.iv47.i = phi i64 [ %i.v, %.lr.ph.i ], [ %indvars.iv.next48.i, %bb.k ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv47.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 3                  ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.aa ; 16 uses
  br label %vector.body184

vector.body184:                                   ; preds = %pred.store.continue218, %vector.ph183
  %index185 = phi i64 [ 0, %vector.ph183 ], [ %index.next219, %pred.store.continue218 ] ; 17 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185 ; 2 uses
  %wide.load186 = load <16 x i8>, ptr %i.ab, align 8, !tbaa !8
  %i.ac = zext <16 x i8> %wide.load186 to <16 x i32>
  %i.ad = icmp eq <16 x i32> %broadcast.splat, %i.ac ; 16 uses
  %i.ae = extractelement <16 x i1> %i.ad, i64 0
  br i1 %i.ae, label %pred.store.if187, label %pred.store.continue188

pred.store.if187:                                 ; preds = %vector.body184
  store i8 %i.u, ptr %i.ab, align 8, !tbaa !8
  br label %pred.store.continue188

pred.store.continue188:                           ; preds = %pred.store.if187, %vector.body184
  %i.af = extractelement <16 x i1> %i.ad, i64 1
  br i1 %i.af, label %pred.store.if189, label %pred.store.continue190

pred.store.if189:                                 ; preds = %pred.store.continue188
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.u, ptr %i.ah, align 1, !tbaa !8
  br label %pred.store.continue190

pred.store.continue190:                           ; preds = %pred.store.if189, %pred.store.continue188
  %i.ai = extractelement <16 x i1> %i.ad, i64 2
  br i1 %i.ai, label %pred.store.if191, label %pred.store.continue192

pred.store.if191:                                 ; preds = %pred.store.continue190
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.u, ptr %i.ak, align 2, !tbaa !8
  br label %pred.store.continue192

pred.store.continue192:                           ; preds = %pred.store.if191, %pred.store.continue190
  %i.al = extractelement <16 x i1> %i.ad, i64 3
  br i1 %i.al, label %pred.store.if193, label %pred.store.continue194

pred.store.if193:                                 ; preds = %pred.store.continue192
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store i8 %i.u, ptr %i.an, align 1, !tbaa !8
  br label %pred.store.continue194

pred.store.continue194:                           ; preds = %pred.store.if193, %pred.store.continue192
  %i.ao = extractelement <16 x i1> %i.ad, i64 4
  br i1 %i.ao, label %pred.store.if195, label %pred.store.continue196

pred.store.if195:                                 ; preds = %pred.store.continue194
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i8 %i.u, ptr %i.aq, align 4, !tbaa !8
  br label %pred.store.continue196

pred.store.continue196:                           ; preds = %pred.store.if195, %pred.store.continue194
  %i.ar = extractelement <16 x i1> %i.ad, i64 5
  br i1 %i.ar, label %pred.store.if197, label %pred.store.continue198

pred.store.if197:                                 ; preds = %pred.store.continue196
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  store i8 %i.u, ptr %i.at, align 1, !tbaa !8
  br label %pred.store.continue198

pred.store.continue198:                           ; preds = %pred.store.if197, %pred.store.continue196
  %i.au = extractelement <16 x i1> %i.ad, i64 6
  br i1 %i.au, label %pred.store.if199, label %pred.store.continue200

pred.store.if199:                                 ; preds = %pred.store.continue198
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store i8 %i.u, ptr %i.aw, align 2, !tbaa !8
  br label %pred.store.continue200

pred.store.continue200:                           ; preds = %pred.store.if199, %pred.store.continue198
  %i.ax = extractelement <16 x i1> %i.ad, i64 7
  br i1 %i.ax, label %pred.store.if201, label %pred.store.continue202

pred.store.if201:                                 ; preds = %pred.store.continue200
  %i.ay = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  store i8 %i.u, ptr %i.az, align 1, !tbaa !8
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.if201, %pred.store.continue200
  %i.ba = extractelement <16 x i1> %i.ad, i64 8
  br i1 %i.ba, label %pred.store.if203, label %pred.store.continue204

pred.store.if203:                                 ; preds = %pred.store.continue202
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %i.u, ptr %i.bc, align 8, !tbaa !8
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.if203, %pred.store.continue202
  %i.bd = extractelement <16 x i1> %i.ad, i64 9
  br i1 %i.bd, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue204
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  store i8 %i.u, ptr %i.bf, align 1, !tbaa !8
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue204
  %i.bg = extractelement <16 x i1> %i.ad, i64 10
  br i1 %i.bg, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue206
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  store i8 %i.u, ptr %i.bi, align 2, !tbaa !8
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue206
  %i.bj = extractelement <16 x i1> %i.ad, i64 11
  br i1 %i.bj, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  %i.bk = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  store i8 %i.u, ptr %i.bl, align 1, !tbaa !8
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.bm = extractelement <16 x i1> %i.ad, i64 12
  br i1 %i.bm, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.bn = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i8 %i.u, ptr %i.bo, align 4, !tbaa !8
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.bp = extractelement <16 x i1> %i.ad, i64 13
  br i1 %i.bp, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.bq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 13
  store i8 %i.u, ptr %i.br, align 1, !tbaa !8
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.bs = extractelement <16 x i1> %i.ad, i64 14
  br i1 %i.bs, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.bt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  store i8 %i.u, ptr %i.bu, align 2, !tbaa !8
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.bv = extractelement <16 x i1> %i.ad, i64 15
  br i1 %i.bv, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %i.bw = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 15
  store i8 %i.u, ptr %i.bx, align 1, !tbaa !8
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %index.next219 = add nuw i64 %index185, 16      ; 2 uses
  %i.by = icmp eq i64 %index.next219, 256
  br i1 %i.by, label %middle.block220, label %vector.body184, !llvm.loop !99

middle.block220:                                  ; preds = %pred.store.continue218
  %i.bz = getelementptr i8, ptr %i.w, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.z, %i.cb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = zext i8 %i.cf to i32
  %.not.i = icmp sgt i32 %i.s, %i.cg
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %middle.block220
  %i.ch = trunc i64 %indvars.iv47.i to i32
  %i.ci = sub i32 %i.s, %i.ch
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %i.ce, align 1, !tbaa !8
end_hunk_1
