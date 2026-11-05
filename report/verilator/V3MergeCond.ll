Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3MergeCond?download=true
inline.NumInlined: 1694
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_125CodeMotionOptimizeVisitor5visitEP11AstNodeStmt:bb.a
bb.d:                                             ; preds = %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !130  ; 4 uses
  %.not.i75 = icmp eq ptr %i.s, null
  br i1 %.not.i75, label %.critedge.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.t, align 8, !tbaa !155
  %i.u = add i16 %.sroa.0.0.copyload.i.i.i, -484
  %spec.select.i.i = icmp ult i16 %i.u, -79
  %i.v = icmp eq ptr %i.s, %i.q
  %or.cond131 = or i1 %spec.select.i.i, %i.v
  br i1 %or.cond131, label %.critedge.preheader, label %.lr.ph

_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit:   ; preds = %bb.g
  %i.w = add nsw i32 %.048111, -1                 ; 2 uses
  %.not64 = icmp eq i32 %i.w, 0
  %i.x = icmp eq ptr %i.z, %i.q
  %or.cond = or i1 %i.x, %.not64
  br i1 %or.cond, label %.thread, label %.lr.ph, !llvm.loop !368

.lr.ph:                                           ; preds = %bb.e, %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit
  %.048111 = phi i32 [ %i.w, %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit ], [ 500, %bb.e ]
  %.049110 = phi ptr [ %i.z, %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit ], [ %i.s, %bb.e ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.049110, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !130  ; 5 uses
  %.not.i76 = icmp eq ptr %i.z, null
  br i1 %.not.i76, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %.sroa.0.0.copyload.i.i.i77 = load i16, ptr %i.aa, align 8, !tbaa !155
  %i.ab = add i16 %.sroa.0.0.copyload.i.i.i77, -405
  %spec.select.i.i78 = icmp ult i16 %i.ab, 79
  br i1 %spec.select.i.i78, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_125CodeMotionOptimizeVisitor12areSwappableEPK11AstNodeStmtS3_(ptr noundef %.049110, ptr noundef nonnull %1)
  br i1 %i.ac, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit, label %.thread

.thread:                                          ; preds = %bb.g, %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit, %bb.f, %.lr.ph
  %.049.lcssa.ph = phi ptr [ %.049110, %bb.g ], [ %i.z, %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit ], [ %.049110, %bb.f ], [ %.049110, %.lr.ph ] ; 3 uses
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !130
  %i.ad = icmp eq ptr %.pre, %.049.lcssa.ph
  br i1 %i.ad, label %.critedge.preheader, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ae = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef null) ; 0 uses
  tail call void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.049.lcssa.ph, ptr noundef nonnull %1)
  %i.af = icmp eq ptr %.049.lcssa.ph, %i.q
  br i1 %i.af, label %_ZN7AstNode12user4SetOnceEv.exit, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.e, %bb.d, %.thread, %bb.h
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit95
  %.047118 = phi ptr [ %.055117, %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit95 ], [ %1, %.critedge.preheader ]
  %.055117 = phi ptr [ %i.bc, %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit95 ], [ %i.q, %.critedge.preheader ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.055117, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !131 ; 3 uses
  %.not.i81 = icmp eq ptr %i.ah, null
  br i1 %.not.i81, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85.thread, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.sroa.0.0.copyload.i.i.i82 = load i16, ptr %i.ai, align 8, !tbaa !155
  %i.aj = add i16 %.sroa.0.0.copyload.i.i.i82, -405
  %spec.select.i.i83 = icmp ult i16 %i.aj, 79
  br i1 %spec.select.i.i83, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85.thread

_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85: ; preds = %bb.i, %bb.l
  %.046 = phi ptr [ %i.an, %bb.l ], [ %i.ah, %bb.i ] ; 5 uses
  %.0 = phi i32 [ %i.ak, %bb.l ], [ 500, %bb.i ]
  %i.ak = add nsw i32 %.0, -1                     ; 2 uses
  %.not69 = icmp eq i32 %i.ak, 0
  %i.al = icmp eq ptr %.046, %.047118
  %or.cond73 = or i1 %i.al, %.not69
  br i1 %or.cond73, label %.thread105, label %bb.j

bb.j:                                             ; preds = %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85
  %i.am = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !131 ; 3 uses
  %.not.i86 = icmp eq ptr %i.an, null
  br i1 %.not.i86, label %.thread105, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %.sroa.0.0.copyload.i.i.i87 = load i16, ptr %i.ao, align 8, !tbaa !155
  %i.ap = add i16 %.sroa.0.0.copyload.i.i.i87, -405
  %spec.select.i.i88 = icmp ult i16 %i.ap, 79
  br i1 %spec.select.i.i88, label %bb.l, label %.thread105

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_125CodeMotionOptimizeVisitor12areSwappableEPK11AstNodeStmtS3_(ptr noundef %.055117, ptr noundef nonnull %.046)
  br i1 %i.aq, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85, label %.thread105, !llvm.loop !369

.thread105:                                       ; preds = %bb.j, %bb.k, %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85, %bb.l
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !131
  %.not71 = icmp eq ptr %i.ar, %.046
  br i1 %.not71, label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85.thread, label %bb.m

bb.m:                                             ; preds = %.thread105
  %i.as = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %.055117, ptr noundef null) ; 0 uses
  tail call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.046, ptr noundef nonnull %.055117)
  br label %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85.thread

_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85.thread: ; preds = %bb.i, %.critedge, %.thread105, %bb.m
  %i.at = getelementptr i8, ptr %.055117, i64 128
  %.val.i91 = load i64, ptr %i.at, align 8        ; 2 uses
  %i.au = getelementptr i8, ptr %.055117, i64 136
  %.val5.i92 = load i32, ptr %i.au, align 8, !tbaa !193
  %i.av = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !26
  %i.aw = icmp ne i32 %.val5.i92, %i.av
  %.not1.i93 = icmp eq i64 %.val.i91, 0
  %.not.i94 = select i1 %i.aw, i1 true, i1 %.not1.i93
  br i1 %.not.i94, label %bb.n, label %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit95, !prof !14

bb.n:                                             ; preds = %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85.thread
  %i.ax = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.509, i32 noundef 97) ; 0 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.510)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %.055117, ptr noundef nonnull align 8 dereferenceable(112) %i.az) #29
  unreachable

_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit95: ; preds = %_ZN7AstNode4castI11AstNodeStmtS_EEPT_PT0_.exit85.thread
  %i.ba = inttoptr i64 %.val.i91 to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !194 ; 2 uses
  %.not67 = icmp eq ptr %i.bc, null
  br i1 %.not67, label %_ZN7AstNode12user4SetOnceEv.exit, label %.critedge, !llvm.loop !370

_ZN7AstNode12user4SetOnceEv.exit:                 ; preds = %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit95, %bb.a, %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_125CodeMotionOptimizeVisitor12areSwappableEPK11AstNodeStmtS3_(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %.val.i = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 136
  %.val5.i = load i32, ptr %i.b, align 8, !tbaa !193 ; 2 uses
  %i.c = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !26
  %i.d = icmp ne i32 %.val5.i, %i.c
  %.not1.i = icmp eq i64 %.val.i, 0
  %.not.i = select i1 %i.d, i1 true, i1 %.not1.i
  br i1 %.not.i, label %bb.b, label %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.509, i32 noundef 97) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.510)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g) #29
  unreachable

_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit: ; preds = %bb.a
  %i.h = inttoptr i64 %.val.i to ptr              ; 7 uses
  %i.i = getelementptr i8, ptr %1, i64 128
  %.val.i33 = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 136
  %.val5.i34 = load i32, ptr %i.j, align 8, !tbaa !193
  %i.k = icmp ne i32 %.val5.i34, %.val5.i
  %.not1.i35 = icmp eq i64 %.val.i33, 0
  %.not.i36 = select i1 %i.k, i1 true, i1 %.not1.i35
  br i1 %.not.i36, label %bb.c, label %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit37, !prof !14

bb.c:                                             ; preds = %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.509, i32 noundef 97) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.510)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.n) #29
  unreachable

_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit37: ; preds = %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit
  %i.o = inttoptr i64 %.val.i33 to ptr            ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !199, !range !72, !noundef !73
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.t = load i8, ptr %i.s, align 8, !range !72
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond32 = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond32, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit37
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 105
  %i.w = load i8, ptr %i.v, align 1, !tbaa !196, !range !72, !noundef !73
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 105
  %i.z = load i8, ptr %i.y, align 1, !range !72
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond26 = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond26, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 107
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !198, !range !72, !noundef !73 ; 2 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 106
  %2 = load i8, ptr %i.ae, align 2, !range !72
  %3 = trunc nuw i8 %2 to i1
  %or.cond29 = select i1 %i.ad, i1 true, i1 %3
  %4 = getelementptr inbounds nuw i8, ptr %i.o, i64 108
  %5 = load i8, ptr %4, align 4, !range !72
  %6 = trunc nuw i8 %5 to i1
  %7 = select i1 %or.cond29, i1 true, i1 %6
  %8 = getelementptr inbounds nuw i8, ptr %i.h, i64 107
  %i.af = load i8, ptr %8, align 1, !tbaa !198, !range !72, !noundef !73
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  %or.cond.a = select i1 %i.ag, i1 %7, i1 false
  br i1 %or.cond.a, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ag, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 106
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !197, !range !72, !noundef !73
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !200, !range !72, !noundef !73
  %i.am = and i8 %i.al, %i.ac
  %.not = icmp eq i8 %i.am, 0
  br i1 %.not, label %bb.i, label %bb.l

.critedge:                                        ; preds = %bb.g, %bb.f
  br i1 %i.ad, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.ap = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111areDisjointERKSt3setIPK6AstVarSt4lessIS3_ESaIS3_EES9_(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.ao)
  br i1 %i.ap, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.as = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111areDisjointERKSt3setIPK6AstVarSt4lessIS3_ESaIS3_EES9_(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull align 8 dereferenceable(48) %i.ar)
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111areDisjointERKSt3setIPK6AstVarSt4lessIS3_ESaIS3_EES9_(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.ao)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.e, %bb.k, %bb.j, %bb.i, %.critedge, %bb.d, %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit37
  %.2 = phi i1 [ false, %bb.d ], [ false, %_ZNK20AstUserAllocatorBaseI11AstNodeStmtN12_GLOBAL__N_114StmtPropertiesELi3EEclEPKS0_.exit37 ], [ false, %bb.i ], [ false, %bb.e ], [ false, %.critedge ], [ false, %bb.j ], [ %i.at, %bb.k ], [ false, %bb.h ]
  ret i1 %.2
}

declare void @_ZN7AstNode11addNextHereEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user4uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !232
  %i.c = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !26
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

declare void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111areDisjointERKSt3setIPK6AstVarSt4lessIS3_ESaIS3_EES9_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !192
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !188  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !213  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213  ; 2 uses
  %.not47 = icmp eq ptr %i.n, %i.p
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %i.q = phi ptr [ %i.ba, %bb.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.ay, %bb.i ], [ %i.n, %bb.b ] ; 2 uses
  %.sroa.030.049 = phi ptr [ %.sroa.030.1, %bb.i ], [ %i.l, %bb.b ] ; 2 uses
  %.sroa.035.048 = phi ptr [ %.sroa.035.1, %bb.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.q
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.048) #27 ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.g
  br i1 %.not4.i.i.i, label %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %.sroa.02.05.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.t, %bb.c ]
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i) #27 ; 2 uses
  %i.v = add nuw nsw i64 %.06.i.i.i, 1            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.g
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %.lr.ph.i.i.i, !llvm.loop !371

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.e
  %.016.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %i.v, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.e ], [ %i.t, %.lr.ph.i.i.i ] ; 3 uses
  %i.w = lshr i64 %.016.i.i, 1                    ; 4 uses
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.012.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i ], [ %i.w, %.lr.ph.i.i ]
  %i.x = phi ptr [ %i.z, %.preheader.i.i.i ], [ %.sroa.012.015.i.i, %.lr.ph.i.i ]
  %i.y = add nsw i64 %.012.i.i.i, -1              ; 2 uses
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.x) #27 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not6.i.i.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, label %.preheader.i.i.i, !llvm.loop !372

_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i: ; preds = %.preheader.i.i.i, %.lr.ph.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.012.015.i.i, %.lr.ph.i.i ], [ %i.z, %.preheader.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !213
  %i.ac = icmp ult ptr %i.ab, %i.q
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.0.i.i) #27
  %i.ae = xor i64 %i.w, -1
  %i.af = add nsw i64 %.016.i.i, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i
  %.sroa.012.1.i.i = phi ptr [ %i.ad, %bb.d ], [ %.sroa.012.015.i.i, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.af, %bb.d ], [ %i.w, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i ] ; 2 uses
  %i.ag = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit, !llvm.loop !373

_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit: ; preds = %bb.e, %bb.c
  %.sroa.012.0.lcssa.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.012.1.i.i, %bb.e ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.012.0.lcssa.i.i, %i.g
  br i1 %i.ah, label %.loopexit, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.ai = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.030.049) #27 ; 4 uses
  %.not4.i.i.i12 = icmp eq ptr %i.ai, %i.h
  br i1 %.not4.i.i.i12, label %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %bb.f, %.lr.ph.i.i.i13
  %.06.i.i.i14 = phi i64 [ %i.ak, %.lr.ph.i.i.i13 ], [ 0, %bb.f ]
  %.sroa.02.05.i.i.i15 = phi ptr [ %i.aj, %.lr.ph.i.i.i13 ], [ %i.ai, %bb.f ]
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i15) #27 ; 2 uses
  %i.ak = add nuw nsw i64 %.06.i.i.i14, 1         ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i.i16, label %.lr.ph.i.i17, label %.lr.ph.i.i.i13, !llvm.loop !371

.lr.ph.i.i17:                                     ; preds = %.lr.ph.i.i.i13, %bb.h
  %.016.i.i18 = phi i64 [ %.1.i.i27, %bb.h ], [ %i.ak, %.lr.ph.i.i.i13 ] ; 2 uses
  %.sroa.012.015.i.i19 = phi ptr [ %.sroa.012.1.i.i26, %bb.h ], [ %i.ai, %.lr.ph.i.i.i13 ] ; 3 uses
  %i.al = lshr i64 %.016.i.i18, 1                 ; 4 uses
  %.not.i.i20 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i20, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i24, label %.preheader.i.i.i21

.preheader.i.i.i21:                               ; preds = %.lr.ph.i.i17, %.preheader.i.i.i21
  %.012.i.i.i22 = phi i64 [ %i.an, %.preheader.i.i.i21 ], [ %i.al, %.lr.ph.i.i17 ]
  %i.am = phi ptr [ %i.ao, %.preheader.i.i.i21 ], [ %.sroa.012.015.i.i19, %.lr.ph.i.i17 ]
  %i.an = add nsw i64 %.012.i.i.i22, -1           ; 2 uses
  %i.ao = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.am) #27 ; 2 uses
  %.not6.i.i.i23 = icmp eq i64 %i.an, 0
  br i1 %.not6.i.i.i23, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i24, label %.preheader.i.i.i21, !llvm.loop !372

_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i24: ; preds = %.preheader.i.i.i21, %.lr.ph.i.i17
  %.sroa.0.0.i.i25 = phi ptr [ %.sroa.012.015.i.i19, %.lr.ph.i.i17 ], [ %i.ao, %.preheader.i.i.i21 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i25, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !213
  %i.ar = icmp ult ptr %i.aq, %i.r
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i24
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.0.i.i25) #27
  %i.at = xor i64 %i.al, -1
  %i.au = add nsw i64 %.016.i.i18, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i24
  %.sroa.012.1.i.i26 = phi ptr [ %i.as, %bb.g ], [ %.sroa.012.015.i.i19, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i24 ] ; 2 uses
  %.1.i.i27 = phi i64 [ %i.au, %bb.g ], [ %i.al, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIPK6AstVarElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i24 ] ; 2 uses
  %i.av = icmp sgt i64 %.1.i.i27, 0
  br i1 %i.av, label %.lr.ph.i.i17, label %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29, !llvm.loop !373

_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29: ; preds = %bb.h, %bb.f
  %.sroa.012.0.lcssa.i.i28 = phi ptr [ %i.ai, %bb.f ], [ %.sroa.012.1.i.i26, %bb.h ] ; 2 uses
  %i.aw = icmp eq ptr %.sroa.012.0.lcssa.i.i28, %i.h
  br i1 %i.aw, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit
  %.sroa.035.1 = phi ptr [ %.sroa.012.0.lcssa.i.i, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit ], [ %.sroa.035.048, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29 ] ; 2 uses
  %.sroa.030.1 = phi ptr [ %.sroa.030.049, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit ], [ %.sroa.012.0.lcssa.i.i28, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.035.1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !213 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !213 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.ba
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !374

.loopexit:                                        ; preds = %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit, %bb.i, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit29 ], [ true, %_ZSt11lower_boundISt23_Rb_tree_const_iteratorIPK6AstVarES3_ET_S5_S5_RKT0_.exit ], [ false, %bb.i ]
  ret i1 %.1
}

declare noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #3

declare void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112)) #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %magicptr = ptrtoint ptr %1 to i64
  switch i64 %magicptr, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ], !prof !375

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.517, i64 noundef 7) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.518, i64 noundef 15) ; 0 uses
  br label %bb.e

end_hunk_0
