Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sgrep?download=true
inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@monkey:bb.a
  %i.ac = sub nsw i64 0, %indvars.iv
  %i.ad = getelementptr inbounds i8, ptr %.138.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @TR, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = icmp eq i8 %i.ab, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = icmp eq i64 %indvars.iv.next, %zext
  br i1 %i.aj, label %.thread, label %bb.b, !llvm.loop !79

bb.d:                                             ; preds = %bb.b
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = icmp eq i32 %1, %i.ak
  br i1 %i.al, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.d
  %.not43 = icmp ult ptr %.138.lcssa, %3
  br i1 %.not43, label %bb.e, label %._crit_edge62

bb.e:                                             ; preds = %.thread
  %i.am = load i32, ptr @num_of_matched, align 4, !tbaa !20
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr @num_of_matched, align 4, !tbaa !20
  %i.ao = load i32, ptr @FILENAMEONLY, align 4, !tbaa !20
  %.not44 = icmp eq i32 %i.ao, 0
  br i1 %.not44, label %bb.f, label %._crit_edge62

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr @COUNT, align 4, !tbaa !20
  %.not45 = icmp eq i32 %i.ap, 0
  br i1 %.not45, label %bb.h, label %.preheader50

.preheader50:                                     ; preds = %bb.f, %.preheader50
  %.2 = phi ptr [ %i.ar, %.preheader50 ], [ %.138.lcssa, %bb.f ] ; 3 uses
  %i.aq = load i8, ptr %.2, align 1, !tbaa !21
  %.not49 = icmp eq i8 %i.aq, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br i1 %.not49, label %bb.g, label %.preheader50, !llvm.loop !80

bb.g:                                             ; preds = %.preheader50
  %i.as = getelementptr inbounds i8, ptr %.2, i64 -1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.at = load i32, ptr @FNAME, align 4, !tbaa !20
  %.not46 = icmp eq i32 %i.at, 0
  br i1 %.not46, label %.preheader79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader79

.preheader79:                                     ; preds = %bb.i, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.preheader79, %bb.j
  %.3 = phi ptr [ %i.av, %bb.j ], [ %.138.lcssa, %.preheader79 ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.3, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21
  %.not47 = icmp eq i8 %i.aw, 10
  br i1 %.not47, label %.preheader, label %bb.j, !llvm.loop !81

.preheader:                                       ; preds = %bb.j
  %i.ax = load i8, ptr %.3, align 1, !tbaa !21    ; 2 uses
  %.not4856 = icmp eq i8 %i.ax, 10
  br i1 %.not4856, label %._crit_edge, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader, %.lr.ph57
  %i.ay = phi i8 [ %i.be, %.lr.ph57 ], [ %i.ax, %.preheader ]
  %i.az = phi ptr [ %i.bd, %.lr.ph57 ], [ %.3, %.preheader ] ; 2 uses
  %i.ba = zext i8 %i.ay to i32
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.bc = tail call noundef i32 @putc(i32 noundef %i.ba, ptr noundef %i.bb), !inline_history !2 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21  ; 2 uses
  %.not48 = icmp eq i8 %i.be, 10
  br i1 %.not48, label %._crit_edge, label %.lr.ph57, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph57, %.preheader
  %.4.lcssa = phi ptr [ %i.av, %.preheader ], [ %i.az, %.lr.ph57 ]
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.bg = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bf), !inline_history !2 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %._crit_edge, %bb.d
  %.5 = phi ptr [ %i.as, %bb.g ], [ %.4.lcssa, %._crit_edge ], [ %.138.lcssa, %bb.d ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %3
  br i1 %i.bi, label %.lr.ph61, label %._crit_edge62, !llvm.loop !83

._crit_edge62:                                    ; preds = %.thread, %bb.e, %bb.k, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @am_preprocess(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
.preheader17:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  store i32 65535, ptr @Hashmask, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @MEMBER_1, i8 0, i64 65536, i1 false), !tbaa !21
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
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.h
  store i8 1, ptr %i.i, align 1, !tbaa !21
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !84

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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.n
  store i8 1, ptr %i.o, align 1, !tbaa !21
  %i.p = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.s
  store i8 1, ptr %i.t, align 1, !tbaa !21
  %i.u = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.x
  store i8 1, ptr %i.y, align 1, !tbaa !21
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.ab
  store i8 1, ptr %i.ac, align 1, !tbaa !21
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %.preheader, label %.lr.ph, !llvm.loop !8

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.lr.ph22
  %indvars.iv25 = phi i64 [ %i.k, %.lr.ph22.preheader ], [ %indvars.iv.next26, %.lr.ph22 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = getelementptr i8, ptr %i.ad, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 1, ptr %i.al, align 1, !tbaa !21
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  %i.am = icmp samesign ugt i64 %indvars.iv25, 1
  br i1 %i.am, label %.lr.ph22, label %._crit_edge, !llvm.loop !9

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %i.b, i64 4096, i1 false), !tbaa !21
  %i.c = trunc i64 %i.a to i32                    ; 4 uses
  %i.d = add i32 %i.c, -1                         ; 8 uses
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge44.sink.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw i32 %i.d to i8                 ; 16 uses
  %i.g = zext nneg i32 %i.d to i64
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph, %bb.c
  %indvars.iv47 = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next48, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv47 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 3                  ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.l ; 16 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue83, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue83 ] ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.m, align 8, !tbaa !21
  %i.n = zext <16 x i8> %wide.load to <16 x i32>
  %i.o = icmp eq <16 x i32> %broadcast.splat, %i.n ; 16 uses
  %i.p = extractelement <16 x i1> %i.o, i64 0
  br i1 %i.p, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.f, ptr %i.m, align 8, !tbaa !21
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.q = extractelement <16 x i1> %i.o, i64 1
  br i1 %i.q, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue
  %i.r = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.f, ptr %i.s, align 1, !tbaa !21
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue
  %i.t = extractelement <16 x i1> %i.o, i64 2
  br i1 %i.t, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.u = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.f, ptr %i.v, align 2, !tbaa !21
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.w = extractelement <16 x i1> %i.o, i64 3
  br i1 %i.w, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.x = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %i.f, ptr %i.y, align 1, !tbaa !21
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.z = extractelement <16 x i1> %i.o, i64 4
  br i1 %i.z, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.aa = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i8 %i.f, ptr %i.ab, align 4, !tbaa !21
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.ac = extractelement <16 x i1> %i.o, i64 5
  br i1 %i.ac, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.ad = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.f, ptr %i.ae, align 1, !tbaa !21
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.af = extractelement <16 x i1> %i.o, i64 6
  br i1 %i.af, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i8 %i.f, ptr %i.ah, align 2, !tbaa !21
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.ai = extractelement <16 x i1> %i.o, i64 7
  br i1 %i.ai, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 7
  store i8 %i.f, ptr %i.ak, align 1, !tbaa !21
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.al = extractelement <16 x i1> %i.o, i64 8
  br i1 %i.al, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i8 %i.f, ptr %i.an, align 8, !tbaa !21
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.ao = extractelement <16 x i1> %i.o, i64 9
  br i1 %i.ao, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  store i8 %i.f, ptr %i.aq, align 1, !tbaa !21
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.ar = extractelement <16 x i1> %i.o, i64 10
  br i1 %i.ar, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  store i8 %i.f, ptr %i.at, align 2, !tbaa !21
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.au = extractelement <16 x i1> %i.o, i64 11
  br i1 %i.au, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 11
  store i8 %i.f, ptr %i.aw, align 1, !tbaa !21
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.ax = extractelement <16 x i1> %i.o, i64 12
  br i1 %i.ax, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.ay = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i8 %i.f, ptr %i.az, align 4, !tbaa !21
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.ba = extractelement <16 x i1> %i.o, i64 13
  br i1 %i.ba, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 13
  store i8 %i.f, ptr %i.bc, align 1, !tbaa !21
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bd = extractelement <16 x i1> %i.o, i64 14
  br i1 %i.bd, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  store i8 %i.f, ptr %i.bf, align 2, !tbaa !21
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bg = extractelement <16 x i1> %i.o, i64 15
  br i1 %i.bg, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15
  store i8 %i.f, ptr %i.bi, align 1, !tbaa !21
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, 256
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %pred.store.continue83
  %i.bk = getelementptr i8, ptr %i.h, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.k, %i.bm
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.br = zext i8 %i.bq to i32
  %.not = icmp sgt i32 %i.d, %i.br
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %middle.block
  %i.bs = trunc i64 %indvars.iv47 to i32
  %i.bt = sub i32 %i.d, %i.bs
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.bp, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %middle.block, %bb.b
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  %i.bv = icmp sgt i64 %indvars.iv47, 1
  br i1 %i.bv, label %vector.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.c
  store i32 %i.d, ptr @shift_1, align 4, !tbaa !20
  %i.bw = add nsw i32 %i.c, -2
  %i.bx = zext nneg i32 %i.d to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.e
  %.241 = phi i32 [ %i.bw, %._crit_edge ], [ %i.cf, %bb.e ] ; 4 uses
  %i.ca = zext nneg i32 %.241 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21
  %i.cd = icmp eq i8 %i.cc, %i.bz
  br i1 %i.cd, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.ce = sub nsw i32 %i.d, %.241
  br label %._crit_edge44.sink.split

bb.e:                                             ; preds = %bb.d
  %i.cf = add nsw i32 %.241, -1
  %.not52 = icmp eq i32 %.241, 0
  br i1 %.not52, label %bb.f, label %bb.d, !llvm.loop !11

._crit_edge44.sink.split:                         ; preds = %bb.a, %.thread
  %.sink = phi i32 [ %i.ce, %.thread ], [ %i.d, %bb.a ]
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.sink, i32 1)
  store i32 %spec.store.select, ptr @shift_1, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge44.sink.split
  store i8 0, ptr @SHIFT_2, align 16, !tbaa !21
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @monkey4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @Hashmask, align 4, !tbaa !20 ; 2 uses
  %i.b = icmp ult ptr %2, %3
  br i1 %i.b, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %bb.a
  %i.c = xor i32 %4, -1
  %i.d = add i32 %1, %i.c
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i32 %1, 1
  %i.g = add nsw i32 %4, %i.f
  %i.h = sext i32 %1 to i64
  %i.i = add i32 %4, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  %.pre74 = load ptr, ptr @MEMBER_D, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph68, %.loopexit
  %i.j = phi ptr [ %.pre74, %.lr.ph68 ], [ %i.bp, %.loopexit ] ; 5 uses
  %.04066 = phi ptr [ %2, %.lr.ph68 ], [ %.6, %.loopexit ] ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %.04066, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.061 = phi i32 [ 0, %bb.b ], [ %i.an, %._crit_edge ]
  %.160 = phi ptr [ %i.k, %bb.b ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.160, i64 -1
  %i.m = load i8, ptr %.160, align 1, !tbaa !21
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @char_map, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !21
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = getelementptr inbounds i8, ptr %.160, i64 -2 ; 2 uses
  %i.t = load i8, ptr %i.l, align 1, !tbaa !21
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @char_map, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.r, %i.x
  %.03956 = and i32 %i.y, %i.a                    ; 2 uses
  %i.z = zext nneg i32 %.03956 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  %.not5457 = icmp eq i8 %i.ab, 0
  br i1 %.not5457, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03959 = phi i32 [ %.039, %.lr.ph ], [ %.03956, %bb.c ]
  %.258 = phi ptr [ %i.ad, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %i.ac = shl i32 %.03959, 3
  %i.ad = getelementptr inbounds i8, ptr %.258, i64 -1 ; 2 uses
  %i.ae = load i8, ptr %.258, align 1, !tbaa !21
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @char_map, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %i.ac, %i.ai
  %.039 = and i32 %i.aj, %i.a                     ; 2 uses
  %i.ak = zext i32 %.039 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %.not54 = icmp eq i8 %i.am, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.2.lcssa = phi ptr [ %i.s, %bb.c ], [ %i.ad, %.lr.ph ] ; 3 uses
  %i.an = add nuw i32 %.061, 1                    ; 2 uses
  %exitcond = icmp eq i32 %i.an, %umax
  br i1 %exitcond, label %bb.d, label %bb.c, !llvm.loop !87

bb.d:                                             ; preds = %._crit_edge
  %.not47 = icmp ugt ptr %.2.lcssa, %.04066
  br i1 %.not47, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call i32 @verify(i32 noundef %1, i32 noundef %i.g, i32 noundef %4, ptr noundef %0, ptr noundef %.04066) ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.04066, i64 %i.aq ; 3 uses
  %i.as = icmp ugt ptr %i.ar, %3
  br i1 %i.as, label %._crit_edge69, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i32, ptr @num_of_matched, align 4, !tbaa !20
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr @num_of_matched, align 4, !tbaa !20
  %i.av = load i32, ptr @FILENAMEONLY, align 4, !tbaa !20
  %.not48 = icmp eq i32 %i.av, 0
  br i1 %.not48, label %bb.h, label %._crit_edge69

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @COUNT, align 4, !tbaa !20
  %.not49 = icmp eq i32 %i.aw, 0
  br i1 %.not49, label %bb.i, label %.preheader55

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr @FNAME, align 4, !tbaa !20
  %.not50 = icmp eq i32 %i.ax, 0
  br i1 %.not50, label %.preheader86, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader86

.preheader86:                                     ; preds = %bb.j, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %.preheader86, %bb.k
  %.3 = phi ptr [ %i.az, %bb.k ], [ %i.ar, %.preheader86 ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.3, i64 -1 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %.not51 = icmp eq i8 %i.ba, 10
  br i1 %.not51, label %.preheader, label %bb.k, !llvm.loop !88

.preheader:                                       ; preds = %bb.k
  %i.bb = load i8, ptr %.3, align 1, !tbaa !21    ; 2 uses
  %.not5262 = icmp eq i8 %i.bb, 10
  br i1 %.not5262, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader, %.lr.ph63
  %i.bc = phi i8 [ %i.bi, %.lr.ph63 ], [ %i.bb, %.preheader ]
  %i.bd = phi ptr [ %i.bh, %.lr.ph63 ], [ %.3, %.preheader ] ; 2 uses
  %i.be = zext i8 %i.bc to i32
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.bg = tail call noundef i32 @putc(i32 noundef %i.be, ptr noundef %i.bf), !inline_history !2 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21  ; 2 uses
  %.not52 = icmp eq i8 %i.bi, 10
  br i1 %.not52, label %._crit_edge64, label %.lr.ph63, !llvm.loop !89

._crit_edge64:                                    ; preds = %.lr.ph63, %.preheader
  %.4.lcssa = phi ptr [ %i.az, %.preheader ], [ %i.bd, %.lr.ph63 ]
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.bk = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bj), !inline_history !2 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %.pre = load ptr, ptr @MEMBER_D, align 8, !tbaa !30
  br label %.loopexit

.preheader55:                                     ; preds = %bb.h, %.preheader55
  %.5 = phi ptr [ %i.bn, %.preheader55 ], [ %i.ar, %bb.h ] ; 2 uses
  %i.bm = load i8, ptr %.5, align 1, !tbaa !21
  %.not53 = icmp eq i8 %i.bm, 10
  %i.bn = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  br i1 %.not53, label %.loopexit, label %.preheader55, !llvm.loop !90

bb.l:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds i8, ptr %.04066, i64 %i.h
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader55, %bb.l, %._crit_edge64, %bb.d
  %i.bp = phi ptr [ %i.j, %bb.d ], [ %.pre, %._crit_edge64 ], [ %i.j, %bb.l ], [ %i.j, %.preheader55 ]
  %.6 = phi ptr [ %.2.lcssa, %bb.d ], [ %i.bl, %._crit_edge64 ], [ %i.bo, %bb.l ], [ %i.bn, %.preheader55 ] ; 2 uses
  %i.bq = icmp ult ptr %.6, %3
  br i1 %i.bq, label %bb.b, label %._crit_edge69, !llvm.loop !91

._crit_edge69:                                    ; preds = %bb.f, %bb.g, %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 1, 0) i32 @blog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = sdiv i32 %1, 2
  %i.b = add nsw i32 %i.a, %1                     ; 2 uses
  %i.c = icmp slt i32 %0, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %.0910 = phi i32 [ %i.e, %.lr.ph ], [ 1, %bb.a ]
  %i.d = mul nsw i32 %.011, %0                    ; 2 uses
  %i.e = add nuw nsw i32 %.0910, 1                ; 2 uses
  %i.f = icmp slt i32 %i.d, %i.b
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.09.lcssa = phi i32 [ 1, %bb.a ], [ %i.e, %.lr.ph ]
  ret i32 %.09.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @prep4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @char_map, i8 0, i64 256, i1 false), !tbaa !21
  store i8 4, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 65), align 1, !tbaa !21
  store i8 4, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 97), align 1, !tbaa !21
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 103), align 1, !tbaa !21
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 116), align 4, !tbaa !21
  store i8 3, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 99), align 1, !tbaa !21
  store i8 5, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 110), align 2, !tbaa !21
end_hunk_0
begin_hunk_1_@prep4:bb.a

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.aa = load ptr, ptr @MEMBER_D, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  store i8 0, ptr %i.ab, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ac = load i32, ptr @Hashmask, align 4, !tbaa !20
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
  %i.ah = sub nuw nsw i64 %indvars.iv.next53, %indvars.iv46
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !21
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr @char_map, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !21
  %i.an = zext i8 %i.am to i32
  %indvars.iv.next47.neg = xor i64 %indvars.iv46, -1
  %i.ao = shl i32 %.034, 6
  %i.ap = shl nuw nsw i32 %i.an, 3
  %i.aq = add i32 %i.ao, %i.ap
  %i.ar = getelementptr i8, ptr %i.ag, i64 %indvars.iv.next47.neg
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr @char_map, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.aq, %i.aw
  %indvars.iv.next47.1 = or disjoint i64 %indvars.iv46, 2
  %i.ay = sub nuw nsw i64 %indvars.iv.next53, %indvars.iv.next47.1
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !21
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr @char_map, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !21
  %i.be = zext i8 %i.bd to i32
  %indvars.iv.next47.2 = or disjoint i64 %indvars.iv46, 3
  %i.bf = shl i32 %i.ax, 6
  %i.bg = shl nuw nsw i32 %i.be, 3
  %i.bh = add i32 %i.bf, %i.bg
  %i.bi = sub nuw nsw i64 %indvars.iv.next53, %indvars.iv.next47.2
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !21
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr @char_map, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21
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
  %i.br = sub nuw nsw i64 %indvars.iv.next53, %indvars.iv46.epil
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !21
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr @char_map, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = zext i8 %i.bw to i32
  %i.by = add i32 %i.bq, %i.bx                    ; 2 uses
  %indvars.iv.next47.epil = add nuw nsw i64 %indvars.iv46.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !96

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa = phi i32 [ %i.bp, %.unr-lcssa ], [ %i.by, %bb.e ]
  %i.bz = load ptr, ptr @MEMBER_D, align 8, !tbaa !30
  %i.ca = zext i32 %.lcssa to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 1, ptr %i.cb, align 1, !tbaa !21
  %.not25.not = icmp sgt i64 %indvars.iv.next53, %indvars.iv57
  br i1 %.not25.not, label %.preheader, label %._crit_edge38.loopexit, !llvm.loop !97

._crit_edge38.loopexit:                           ; preds = %.epilog-lcssa
  %.pre = load i8, ptr @BSize, align 1, !tbaa !21
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
  store i32 %1, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load i8, ptr %0, align 1, !tbaa !21
  switch i8 %i.c, label %bb.c [
    i8 94, label %bb.b
    i8 36, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i8 10, ptr %0, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !21
  switch i8 %i.g, label %bb.e [
    i8 94, label %bb.d
    i8 36, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  store i8 10, ptr %i.f, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @char_tr(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2047
  store i8 10, ptr %i.h, align 1, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !21
  %i.i = load i32, ptr @WHOLELINE, align 4, !tbaa !20
  %.not = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not, i32 2048, i32 2047
  %i.j = load i32, ptr %i.a, align 4, !tbaa !20   ; 27 uses
  %i.k = icmp sgt i32 %i.j, 255
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.3, ptr noundef nonnull @Progname) #24 ; 0 uses
  tail call void @exit(i32 noundef 2) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %3, 0                        ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.o = icmp sgt i32 %i.j, 20
  br i1 %i.o, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #22 ; 2 uses
  %i.q = trunc i64 %i.p to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %i.q, i64 4096, i1 false), !tbaa !21
  %i.r = trunc i64 %i.p to i32                    ; 4 uses
  %i.s = add i32 %i.r, -1                         ; 7 uses
  %i.t = icmp sgt i32 %i.r, 1
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge44.sink.split.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = trunc nuw i32 %i.s to i8                 ; 16 uses
  %i.v = zext nneg i32 %i.s to i64                ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.ph182

vector.ph182:                                     ; preds = %bb.k, %.lr.ph.i
  %indvars.iv47.i = phi i64 [ %i.v, %.lr.ph.i ], [ %indvars.iv.next48.i, %bb.k ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv47.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !21
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 3                  ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.aa ; 16 uses
  br label %vector.body183

vector.body183:                                   ; preds = %pred.store.continue217, %vector.ph182
  %index184 = phi i64 [ 0, %vector.ph182 ], [ %index.next218, %pred.store.continue217 ] ; 17 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184 ; 2 uses
  %wide.load185 = load <16 x i8>, ptr %i.ab, align 8, !tbaa !21
  %i.ac = zext <16 x i8> %wide.load185 to <16 x i32>
  %i.ad = icmp eq <16 x i32> %broadcast.splat, %i.ac ; 16 uses
  %i.ae = extractelement <16 x i1> %i.ad, i64 0
  br i1 %i.ae, label %pred.store.if186, label %pred.store.continue187

pred.store.if186:                                 ; preds = %vector.body183
  store i8 %i.u, ptr %i.ab, align 8, !tbaa !21
  br label %pred.store.continue187

pred.store.continue187:                           ; preds = %pred.store.if186, %vector.body183
  %i.af = extractelement <16 x i1> %i.ad, i64 1
  br i1 %i.af, label %pred.store.if188, label %pred.store.continue189

pred.store.if188:                                 ; preds = %pred.store.continue187
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.u, ptr %i.ah, align 1, !tbaa !21
  br label %pred.store.continue189

pred.store.continue189:                           ; preds = %pred.store.if188, %pred.store.continue187
  %i.ai = extractelement <16 x i1> %i.ad, i64 2
  br i1 %i.ai, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue189
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.u, ptr %i.ak, align 2, !tbaa !21
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue189
  %i.al = extractelement <16 x i1> %i.ad, i64 3
  br i1 %i.al, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store i8 %i.u, ptr %i.an, align 1, !tbaa !21
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %i.ao = extractelement <16 x i1> %i.ad, i64 4
  br i1 %i.ao, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i8 %i.u, ptr %i.aq, align 4, !tbaa !21
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.ar = extractelement <16 x i1> %i.ad, i64 5
  br i1 %i.ar, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  store i8 %i.u, ptr %i.at, align 1, !tbaa !21
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.au = extractelement <16 x i1> %i.ad, i64 6
  br i1 %i.au, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store i8 %i.u, ptr %i.aw, align 2, !tbaa !21
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.ax = extractelement <16 x i1> %i.ad, i64 7
  br i1 %i.ax, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  %i.ay = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  store i8 %i.u, ptr %i.az, align 1, !tbaa !21
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.ba = extractelement <16 x i1> %i.ad, i64 8
  br i1 %i.ba, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %i.u, ptr %i.bc, align 8, !tbaa !21
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %i.bd = extractelement <16 x i1> %i.ad, i64 9
  br i1 %i.bd, label %pred.store.if204, label %pred.store.continue205

pred.store.if204:                                 ; preds = %pred.store.continue203
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  store i8 %i.u, ptr %i.bf, align 1, !tbaa !21
  br label %pred.store.continue205

pred.store.continue205:                           ; preds = %pred.store.if204, %pred.store.continue203
  %i.bg = extractelement <16 x i1> %i.ad, i64 10
  br i1 %i.bg, label %pred.store.if206, label %pred.store.continue207

pred.store.if206:                                 ; preds = %pred.store.continue205
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  store i8 %i.u, ptr %i.bi, align 2, !tbaa !21
  br label %pred.store.continue207

pred.store.continue207:                           ; preds = %pred.store.if206, %pred.store.continue205
  %i.bj = extractelement <16 x i1> %i.ad, i64 11
  br i1 %i.bj, label %pred.store.if208, label %pred.store.continue209

pred.store.if208:                                 ; preds = %pred.store.continue207
  %i.bk = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  store i8 %i.u, ptr %i.bl, align 1, !tbaa !21
  br label %pred.store.continue209

pred.store.continue209:                           ; preds = %pred.store.if208, %pred.store.continue207
  %i.bm = extractelement <16 x i1> %i.ad, i64 12
  br i1 %i.bm, label %pred.store.if210, label %pred.store.continue211

pred.store.if210:                                 ; preds = %pred.store.continue209
  %i.bn = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i8 %i.u, ptr %i.bo, align 4, !tbaa !21
  br label %pred.store.continue211

pred.store.continue211:                           ; preds = %pred.store.if210, %pred.store.continue209
  %i.bp = extractelement <16 x i1> %i.ad, i64 13
  br i1 %i.bp, label %pred.store.if212, label %pred.store.continue213

pred.store.if212:                                 ; preds = %pred.store.continue211
  %i.bq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 13
  store i8 %i.u, ptr %i.br, align 1, !tbaa !21
  br label %pred.store.continue213

pred.store.continue213:                           ; preds = %pred.store.if212, %pred.store.continue211
  %i.bs = extractelement <16 x i1> %i.ad, i64 14
  br i1 %i.bs, label %pred.store.if214, label %pred.store.continue215

pred.store.if214:                                 ; preds = %pred.store.continue213
  %i.bt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  store i8 %i.u, ptr %i.bu, align 2, !tbaa !21
  br label %pred.store.continue215

pred.store.continue215:                           ; preds = %pred.store.if214, %pred.store.continue213
  %i.bv = extractelement <16 x i1> %i.ad, i64 15
  br i1 %i.bv, label %pred.store.if216, label %pred.store.continue217

pred.store.if216:                                 ; preds = %pred.store.continue215
  %i.bw = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index184
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 15
  store i8 %i.u, ptr %i.bx, align 1, !tbaa !21
  br label %pred.store.continue217

pred.store.continue217:                           ; preds = %pred.store.if216, %pred.store.continue215
  %index.next218 = add nuw i64 %index184, 16      ; 2 uses
  %i.by = icmp eq i64 %index.next218, 256
  br i1 %i.by, label %middle.block219, label %vector.body183, !llvm.loop !99

middle.block219:                                  ; preds = %pred.store.continue217
  %i.bz = getelementptr i8, ptr %i.w, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !21
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.z, %i.cb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %i.cg = zext i8 %i.cf to i32
  %.not.i = icmp sgt i32 %i.s, %i.cg
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %middle.block219
  %i.ch = trunc i64 %indvars.iv47.i to i32
  %i.ci = sub i32 %i.s, %i.ch
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %i.ce, align 1, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %middle.block219
  %indvars.iv.next48.i = add nsw i64 %indvars.iv47.i, -1
  %i.ck = icmp sgt i64 %indvars.iv47.i, 1
  br i1 %i.ck, label %vector.ph182, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.k
  store i32 %i.s, ptr @shift_1, align 4, !tbaa !20
  %i.cl = add nsw i32 %i.r, -2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %._crit_edge.i
  %.241.i = phi i32 [ %i.cl, %._crit_edge.i ], [ %i.ct, %bb.m ] ; 4 uses
  %i.co = zext nneg i32 %.241.i to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !21
  %i.cr = icmp eq i8 %i.cq, %i.cn
  br i1 %i.cr, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %bb.l
  %i.cs = sub nsw i32 %i.s, %.241.i
  br label %._crit_edge44.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.ct = add nsw i32 %.241.i, -1
  %.not52.i = icmp eq i32 %.241.i, 0
  br i1 %.not52.i, label %m_preprocess.exit, label %bb.l, !llvm.loop !11

._crit_edge44.sink.split.i:                       ; preds = %bb.i, %.thread.i
  %.sink.i = phi i32 [ %i.cs, %.thread.i ], [ %i.s, %bb.i ]
  %spec.store.select98 = tail call i32 @llvm.umax.i32(i32 %.sink.i, i32 1)
  store i32 %spec.store.select98, ptr @shift_1, align 4
  br label %m_preprocess.exit

m_preprocess.exit:                                ; preds = %bb.m, %._crit_edge44.sink.split.i
  store i8 0, ptr @SHIFT_2, align 16, !tbaa !21
  br label %prep_bm.exit

bb.n:                                             ; preds = %bb.h
  %i.cu = trunc i32 %i.j to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %i.cu, i64 256, i1 false), !tbaa !21
  %i.cv = add i32 %i.j, -1                        ; 12 uses
  %i.cw = icmp sgt i32 %i.j, 0
  br i1 %i.cw, label %.lr.ph.preheader.i, label %.sink.split.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.cx = zext i32 %i.cv to i64                   ; 3 uses
  %i.cy = and i32 %i.j, 1
  %lcmp.mod226.not = icmp eq i32 %i.cy, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i82.prol.loopexit, label %.lr.ph.i82.prol

.lr.ph.i82.prol:                                  ; preds = %.lr.ph.preheader.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !21
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @TR, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !21
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.de ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !21
  %i.dh = zext i8 %i.dg to i32
  %.not29.i.prol = icmp sgt i32 %i.cv, %i.dh
  br i1 %.not29.i.prol, label %.lr.ph.i82.prol.loopexit.unr-lcssa, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i82.prol
  store i8 0, ptr %i.df, align 1, !tbaa !21
  br label %.lr.ph.i82.prol.loopexit.unr-lcssa

.lr.ph.i82.prol.loopexit.unr-lcssa:               ; preds = %bb.o, %.lr.ph.i82.prol
  %indvars.iv.next.i84.prol = add nsw i64 %i.cx, -1
  br label %.lr.ph.i82.prol.loopexit

.lr.ph.i82.prol.loopexit:                         ; preds = %.lr.ph.i82.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i83.unr = phi i64 [ %i.cx, %.lr.ph.preheader.i ], [ %indvars.iv.next.i84.prol, %.lr.ph.i82.prol.loopexit.unr-lcssa ]
  %i.di = icmp eq i32 %i.cv, 0
  br i1 %i.di, label %._crit_edge.i85, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.prol.loopexit, %bb.r
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84.1, %bb.r ], [ %indvars.iv.i83.unr, %.lr.ph.i82.prol.loopexit ] ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i83
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !21
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @TR, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !21
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !21
  %i.dr = zext i8 %i.dq to i32
  %.not29.i = icmp sgt i32 %i.cv, %i.dr
  br i1 %.not29.i, label %.lr.ph.i82.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i82
  %i.ds = trunc i64 %indvars.iv.i83 to i32
  %i.dt = sub i32 %i.cv, %i.ds
  %i.du = trunc i32 %i.dt to i8
  store i8 %i.du, ptr %i.dp, align 1, !tbaa !21
  br label %.lr.ph.i82.1

.lr.ph.i82.1:                                     ; preds = %bb.p, %.lr.ph.i82
  %indvars.iv.next.i84 = add nsw i64 %indvars.iv.i83, -1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i84
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !21
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @TR, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !21
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.ea ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !21
  %i.ed = zext i8 %i.ec to i32
  %.not29.i.1 = icmp sgt i32 %i.cv, %i.ed
  br i1 %.not29.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i82.1
  %i.ee = trunc i64 %indvars.iv.next.i84 to i32
  %i.ef = sub i32 %i.cv, %i.ee
  %i.eg = trunc i32 %i.ef to i8
  store i8 %i.eg, ptr %i.eb, align 1, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i82.1
  %indvars.iv.next.i84.1 = add nsw i64 %indvars.iv.i83, -2
  %i.eh = icmp sgt i64 %indvars.iv.i83, 1
  br i1 %i.eh, label %.lr.ph.i82, label %._crit_edge.i85, !llvm.loop !6

._crit_edge.i85:                                  ; preds = %bb.r, %.lr.ph.i82.prol.loopexit
  store i32 %i.cv, ptr @shift_1, align 4, !tbaa !20
  %i.ei = sext i32 %i.cv to i64
  %i.ej = getelementptr inbounds i8, ptr %0, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !21
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @TR, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !21
  %.not44.i = icmp eq i32 %i.j, 1
  br i1 %.not44.i, label %.sink.split.i, label %.lr.ph34.preheader.i

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i85
  %i.eo = add nsw i32 %i.j, -2
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.s, %.lr.ph34.preheader.i
  %.232.i = phi i32 [ %i.ex, %bb.s ], [ %i.eo, %.lr.ph34.preheader.i ] ; 5 uses
  %i.ep = zext nneg i32 %.232.i to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !21
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @TR, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !21
  %i.ev = icmp eq i8 %i.eu, %i.en
  br i1 %i.ev, label %.thread.i86, label %bb.s

.thread.i86:                                      ; preds = %.lr.ph34.i
  %i.ew = sub nsw i32 %i.cv, %.232.i
  store i32 %i.ew, ptr @shift_1, align 4, !tbaa !20
  %4 = icmp eq i32 %i.cv, %.232.i
  br i1 %4, label %.sink.split.i, label %bb.t

bb.s:                                             ; preds = %.lr.ph34.i
  %i.ex = add nsw i32 %.232.i, -1
  %.not45.i = icmp eq i32 %.232.i, 0
  br i1 %.not45.i, label %bb.t, label %.lr.ph34.i, !llvm.loop !7

.sink.split.i:                                    ; preds = %._crit_edge.i85, %.thread.i86, %bb.n
  %.sink.i80 = phi i32 [ %i.cv, %bb.n ], [ 1, %.thread.i86 ], [ 1, %._crit_edge.i85 ]
  store i32 %.sink.i80, ptr @shift_1, align 4, !tbaa !20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.sink.split.i, %.thread.i86
  %i.ey = load i32, ptr @NOUPPER, align 4, !tbaa !20
  %.not.i81 = icmp eq i32 %i.ey, 0
  br i1 %.not.i81, label %prep_bm.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds nuw (i8, ptr @SHIFT, i64 65), ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds nuw (i8, ptr @SHIFT, i64 97), i64 26, i1 false), !tbaa !21
  br label %prep_bm.exit

bb.u:                                             ; preds = %bb.g
  %i.ez = load i32, ptr @DNA, align 4, !tbaa !20
  %.not77 = icmp eq i32 %i.ez, 0
  br i1 %.not77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @prep4(ptr noundef nonnull %0, i32 noundef %i.j)
  br label %prep_bm.exit

bb.w:                                             ; preds = %bb.u
  %i.fa = icmp sgt i32 %i.j, 23
  br i1 %i.fa, label %bb.x, label %._crit_edge.i95

bb.x:                                             ; preds = %bb.w
  %i.fb = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #22 ; 3 uses
  store i32 65535, ptr @Hashmask, align 4, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @MEMBER_1, i8 0, i64 65536, i1 false), !tbaa !21
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.preheader.i88, label %.lr.ph

.lr.ph.preheader.i88:                             ; preds = %bb.x
  %i.fe = add i64 %i.fb, 4294967295
  %i.ff = and i64 %i.fe, 4294967295               ; 4 uses
  %xtraiter223 = and i64 %i.fb, 3                 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.i89.prol.loopexit, label %.lr.ph.i89.prol

.lr.ph.i89.prol:                                  ; preds = %.lr.ph.preheader.i88, %.lr.ph.i89.prol
  %indvars.iv.i90.prol = phi i64 [ %indvars.iv.next.i91.prol, %.lr.ph.i89.prol ], [ %i.ff, %.lr.ph.preheader.i88 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i89.prol ], [ 0, %.lr.ph.preheader.i88 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i90.prol
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !21
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.fi
  store i8 1, ptr %i.fj, align 1, !tbaa !21
  %indvars.iv.next.i91.prol = add nsw i64 %indvars.iv.i90.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter223
  br i1 %prol.iter.cmp.not, label %.lr.ph.i89.prol.loopexit, label %.lr.ph.i89.prol, !llvm.loop !100

.lr.ph.i89.prol.loopexit:                         ; preds = %.lr.ph.i89.prol, %.lr.ph.preheader.i88
  %indvars.iv.i90.unr = phi i64 [ %i.ff, %.lr.ph.preheader.i88 ], [ %indvars.iv.next.i91.prol, %.lr.ph.i89.prol ]
  %i.fk = icmp samesign ult i64 %i.ff, 3
  br i1 %i.fk, label %.preheader.i, label %.lr.ph.i89

.preheader.i:                                     ; preds = %.lr.ph.i89, %.lr.ph.i89.prol.loopexit
  %.not28.i = icmp eq i32 %i.fc, 1
  br i1 %.not28.i, label %.lr.ph, label %.lr.ph22.i

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.prol.loopexit, %.lr.ph.i89
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i91.3, %.lr.ph.i89 ], [ %indvars.iv.i90.unr, %.lr.ph.i89.prol.loopexit ] ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i90
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !21
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.fn
  store i8 1, ptr %i.fo, align 1, !tbaa !21
  %i.fp = getelementptr i8, ptr %0, i64 %indvars.iv.i90
  %i.fq = getelementptr i8, ptr %i.fp, i64 -1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !21
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.fs
  store i8 1, ptr %i.ft, align 1, !tbaa !21
  %i.fu = getelementptr i8, ptr %0, i64 %indvars.iv.i90
  %i.fv = getelementptr i8, ptr %i.fu, i64 -2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !21
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.fx
  store i8 1, ptr %i.fy, align 1, !tbaa !21
  %indvars.iv.next.i91.2 = add nsw i64 %indvars.iv.i90, -3 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i91.2
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !21
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.gb
  store i8 1, ptr %i.gc, align 1, !tbaa !21
  %indvars.iv.next.i91.3 = add nsw i64 %indvars.iv.i90, -4
  %.not.i92.3 = icmp eq i64 %indvars.iv.next.i91.2, 0
  br i1 %.not.i92.3, label %.preheader.i, label %.lr.ph.i89, !llvm.loop !8

.lr.ph22.i:                                       ; preds = %.preheader.i, %.lr.ph22.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.lr.ph22.i ], [ %i.ff, %.preheader.i ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.i ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !21
  %i.gf = zext i8 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 8
  %i.gh = getelementptr i8, ptr %i.gd, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !21
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.gg
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  store i8 1, ptr %i.gl, align 1, !tbaa !21
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, -1
  %i.gm = icmp samesign ugt i64 %indvars.iv25.i, 1
  br i1 %i.gm, label %.lr.ph22.i, label %.lr.ph, !llvm.loop !9

._crit_edge.i95:                                  ; preds = %bb.w
  tail call void @prep(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %3)
  %i.gn = add i32 %i.j, -1
  %i.go = lshr exact i32 -2147483648, %i.gn
  store i32 %i.go, ptr @endposition, align 4, !tbaa !20
  %i.gp = icmp sgt i32 %i.j, 0
  br i1 %i.gp, label %iter.check, label %prep_bm.exit.thread123

prep_bm.exit.thread123:                           ; preds = %._crit_edge.i95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @Mask, i8 -1, i64 1024, i1 false), !tbaa !20
  br label %.preheader

iter.check:                                       ; preds = %._crit_edge.i95
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check130 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gq = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 3 uses
  %wide.load = load <16 x i8>, ptr %0, align 1, !tbaa !21 ; 2 uses
  %i.gr = icmp eq <16 x i8> %wide.load, splat (i8 94)
  %i.gs = icmp eq <16 x i8> %wide.load, splat (i8 36)
  %i.gt = or <16 x i1> %i.gr, %i.gs               ; 16 uses
  %i.gu = extractelement <16 x i1> %i.gt, i64 0
  br i1 %i.gu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  store i8 10, ptr %0, align 1, !tbaa !21
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.gv = extractelement <16 x i1> %i.gt, i64 1
  br i1 %i.gv, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.gw, align 1, !tbaa !21
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue
  %i.gx = extractelement <16 x i1> %i.gt, i64 2
  br i1 %i.gx, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 10, ptr %i.gy, align 1, !tbaa !21
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %i.gz = extractelement <16 x i1> %i.gt, i64 3
  br i1 %i.gz, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 10, ptr %i.ha, align 1, !tbaa !21
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %i.hb = extractelement <16 x i1> %i.gt, i64 4
  br i1 %i.hb, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %pred.store.continue136
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 10, ptr %i.hc, align 1, !tbaa !21
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %pred.store.continue136
  %i.hd = extractelement <16 x i1> %i.gt, i64 5
  br i1 %i.hd, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue138
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 10, ptr %i.he, align 1, !tbaa !21
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue138
  %i.hf = extractelement <16 x i1> %i.gt, i64 6
  br i1 %i.hf, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 10, ptr %i.hg, align 1, !tbaa !21
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.hh = extractelement <16 x i1> %i.gt, i64 7
  br i1 %i.hh, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 10, ptr %i.hi, align 1, !tbaa !21
  br label %pred.store.continue144
end_hunk_1
