inline.NumInlined: 1310
inline.NumDeleted: 761
begin_hunk_0_@_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = load i64, ptr %3, align 8, !tbaa !20, !noalias !424
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !292  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !294
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !248
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !249  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %i.f, align 8, !tbaa !23
  %i.p = load i64, ptr %i.j, align 8, !tbaa !196
  store i64 %i.p, ptr %i.h, align 8, !tbaa !196
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !249
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.q, ptr %i.s, align 8, !tbaa !249
  store ptr %i.j, ptr %i.g, align 8, !tbaa !23
  store i64 0, ptr %i.r, align 8, !tbaa !249
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !292
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.u, ptr %i.b, align 8, !tbaa !292
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !23 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.w = icmp eq ptr %.pre9, %i.v
  br i1 %i.w, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #21
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #21
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.x
}

declare void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17ListFilterFunctor12AppendResultERNS_6VectorES2_mPNS_12list_entry_tERNS_14ListFilterInfoERNS_17LambdaExecuteInfoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(153) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %2)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.au, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn68.pn.pn.pn, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #19
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !372
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not88 = icmp eq i64 %2, 0
  br i1 %.not88, label %.preheader, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  br label %bb.i

.preheader:                                       ; preds = %bb.q, %bb.e
  %.0.lcssa = phi i64 [ 0, %bb.e ], [ %.1, %bb.q ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !427  ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.o = load ptr, ptr %4, align 8, !tbaa !272
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph86, label %.critedge2

.lr.ph86:                                         ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.r

bb.f:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.g:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.h:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.i:                                             ; preds = %.lr.ph85, %bb.q
  %.084 = phi i64 [ 0, %.lr.ph85 ], [ %.1, %bb.q ] ; 4 uses
  %.06083 = phi i64 [ 0, %.lr.ph85 ], [ %i.bv, %bb.q ] ; 4 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !433
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !240  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.06083
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.i, %bb.j
  %i.ad = phi i64 [ %i.ac, %bb.j ], [ %.06083, %bb.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !274
  %i.af = load ptr, ptr %4, align 8, !tbaa !272   ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !427 ; 3 uses
  %i.ak = icmp ult i64 %.promoted, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %9 = load i64, ptr %i.h, align 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %i.al = phi i64 [ %.promoted, %.lr.ph ], [ %i.aq, %bb.l ] ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20
  %.not67 = icmp eq i64 %i.an, 0
  br i1 %.not67, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.al ; 2 uses
  store i64 %9, ptr %i.ao, align 8, !tbaa !245
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !247
  %i.aq = add i64 %i.al, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.f, align 8, !tbaa !427
  %exitcond.not = icmp eq i64 %i.aq, %i.aj
  br i1 %exitcond.not, label %.critedge, label %bb.k, !llvm.loop !434

.body:                                            ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.critedge:                                        ; preds = %bb.k, %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.lcssa = phi i64 [ %.promoted, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ], [ %i.aj, %bb.l ], [ %i.al, %bb.k ]
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !242 ; 2 uses
  %.not.i73 = icmp eq ptr %i.as, null
  br i1 %.not.i73, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.critedge
  %i.at = lshr i64 %i.ad, 6
  %i.au = and i64 %i.ad, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ax = shl nuw i64 1, %i.au
  %i.ay = and i64 %i.aw, %i.ax
  %.not76 = icmp eq i64 %i.ay, 0
  br i1 %.not76, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.critedge, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !146, !range !140, !noundef !141
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.bc = trunc i64 %.06083 to i32
  %i.bd = load ptr, ptr %6, align 8, !tbaa !240
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.084
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !3
  %i.bf = add i64 %.084, 1
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !435
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.i, align 8, !tbaa !435
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.1 = phi i64 [ %i.bf, %bb.m ], [ %.084, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %.084, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ] ; 2 uses
  %i.bi = load i64, ptr %i.j, align 8, !tbaa !436
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.j, align 8, !tbaa !436
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.lcssa)
          to label %bb.o unwind label %.body

bb.o:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !20
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !436
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !437 ; 2 uses
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !427 ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bp ; 2 uses
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !245
  %i.br = load i64, ptr %i.i, align 8, !tbaa !435 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !247
  %i.bt = add i64 %i.br, %i.bo
  store i64 %i.bt, ptr %i.h, align 8, !tbaa !437
  %i.bu = add i64 %i.bp, 1
  store i64 %i.bu, ptr %i.f, align 8, !tbaa !427
  store i64 0, ptr %i.i, align 8, !tbaa !435
  store i64 0, ptr %i.j, align 8, !tbaa !436
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = add nuw i64 %.06083, 1                  ; 2 uses
  %exitcond90.not = icmp eq i64 %i.bv, %2
  br i1 %exitcond90.not, label %.preheader, label %bb.i, !llvm.loop !438

bb.r:                                             ; preds = %.lr.ph86, %bb.t
  %i.bw = phi i64 [ %i.m, %.lr.ph86 ], [ %i.cd, %bb.t ]
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bw)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !20
  %.not = icmp eq i64 %i.by, 0
  br i1 %.not, label %bb.t, label %.critedge2

bb.t:                                             ; preds = %bb.s
  %i.bz = load i64, ptr %i.u, align 8, !tbaa !437
  %i.ca = load i64, ptr %i.k, align 8, !tbaa !427 ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ca ; 2 uses
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !245
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !247
  %i.cd = add i64 %i.ca, 1                        ; 3 uses
  store i64 %i.cd, ptr %i.k, align 8, !tbaa !427
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.cf = load ptr, ptr %4, align 8, !tbaa !272
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  %i.ck = icmp ult i64 %i.cd, %i.cj
  br i1 %i.ck, label %bb.r, label %.critedge2, !llvm.loop !439

bb.u:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.critedge2:                                       ; preds = %bb.s, %bb.t, %.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !375, !range !140, !noundef !141
  %i.co = zext nneg i8 %i.cn to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 noundef %i.co)
          to label %bb.v unwind label %bb.aq

bb.v:                                             ; preds = %.critedge2
  invoke void @_ZN6duckdb6VectorC1ERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %.0.lcssa)
          to label %bb.w unwind label %bb.aq

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb10ListVector6AppendERNS_6VectorERKS1_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %.0.lcssa, i64 noundef 0)
          to label %bb.x unwind label %bb.ar

bb.x:                                             ; preds = %bb.w
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !191 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cu = load atomic i64, ptr %i.ct acquire, align 8 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 4294967297
  %i.cw = trunc i64 %i.cu to i32                  ; 2 uses
  br i1 %i.cv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ct, align 8, !tbaa !192
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !194
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #19, !inline_history !279
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #19, !inline_history !279
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = add nsw i32 %i.cw, -1
  store i32 %i.df, ptr %i.ct, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dg = atomicrmw volatile add ptr %i.ct, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cw, %bb.ab ], [ %i.dg, %bb.ac ]
  %i.dh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dh, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !197

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z, %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !191 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.dk, align 8, !tbaa !192
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !194
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #19, !inline_history !280
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #19, !inline_history !280
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ai:                                            ; preds = %bb.ag
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.dn, %bb.ah ], [ %i.dx, %bb.ai ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.dy, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !197

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #19
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !191 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.eb, align 8, !tbaa !192
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !194
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !67
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #19, !inline_history !281
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !67
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #19, !inline_history !281
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !196
  %.not.i.i.i.i.i74 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i74, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.an ], [ %i.eo, %bb.ao ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ep, label %bb.ap, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !197

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #19
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.aq:                                            ; preds = %bb.v, %.critedge2
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!234 = !{!"_ZTSN6duckdb6vectorINS_15LambdaFunctions10ColumnInfoELb1ESaIS2_EEE", !235, i64 0}
!235 = !{!"_ZTSSt6vectorIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE", !236, i64 0}
!236 = !{!"_ZTSSt12_Vector_baseIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE", !237, i64 0}
!237 = !{!"_ZTSNSt12_Vector_baseIN6duckdb15LambdaFunctions10ColumnInfoESaIS2_EE12_Vector_implE", !13, i64 0}
!238 = !{!222, !21, i64 144}
!239 = !{!222, !225, i64 8}
!240 = !{!226, !227, i64 0}
!241 = !{!222, !223, i64 0}
!242 = !{!41, !42, i64 0}
!243 = !{!232, !233, i64 0}
!244 = !{!41, !21, i64 24}
!245 = !{!246, !21, i64 0}
!246 = !{!"_ZTSN6duckdb12list_entry_tE", !21, i64 0, !21, i64 8}
!247 = !{!246, !21, i64 8}
!248 = !{!25, !26, i64 0}
!249 = !{!24, !21, i64 8}
!250 = !{!251, !14, i64 0}
!251 = !{!"_ZTSSt17reference_wrapperIN6duckdb15LambdaFunctions10ColumnInfoEE", !14, i64 0}
!252 = distinct !{!252, !19}
!253 = distinct !{!253, !19}
!254 = !{!222, !74, i64 155}
!255 = !{!256, !256, i64 0}
!256 = !{!"p1 _ZTSN6duckdb18ExpressionExecutorE", !10, i64 0}
!257 = !{!258, !259, i64 0}
!258 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_23ExpressionExecutorStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !259, i64 0, !259, i64 8, !259, i64 16}
!259 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_23ExpressionExecutorStateESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!260 = !{!258, !259, i64 8}
!261 = !{!262, !262, i64 0}
!262 = !{!"p1 _ZTSN6duckdb23ExpressionExecutorStateE", !10, i64 0}
!263 = !{!264, !264, i64 0}
!264 = !{!"p1 _ZTSN6duckdb15ExpressionStateE", !10, i64 0}
!265 = distinct !{null, null, ptr @_ZNSt10unique_ptrIN6duckdb18ExpressionExecutorESt14default_deleteIS1_EED2Ev, null, null, null, null, null, null, null, null, null, null, null}
!266 = distinct !{!266, !19}
!267 = !{!268, !269, i64 0}
!268 = !{!"_ZTSNSt12_Vector_baseIPKN6duckdb10ExpressionESaIS3_EE17_Vector_impl_dataE", !269, i64 0, !269, i64 8, !269, i64 16}
!269 = !{!"p2 _ZTSN6duckdb10ExpressionE", !83, i64 0}
!270 = !{!52, !53, i64 0}
!271 = distinct !{null, ptr @_ZNSt10unique_ptrIN6duckdb18ExpressionExecutorESt14default_deleteIS1_EED2Ev, null, null, null, null, null, null, null, null, null, null, null}
!272 = !{!273, !42, i64 0}
!273 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!274 = !{!273, !42, i64 8}
!275 = !{!273, !42, i64 16}
!276 = distinct !{!276, !19}
!277 = distinct !{!277, !19}
!278 = distinct !{null, null, ptr @_ZNSt10unique_ptrIN6duckdb18ExpressionExecutorESt14default_deleteIS1_EED2Ev, null, null, null, null, null, null, null, null, null, null, null}
!279 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!280 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!281 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!282 = distinct !{null, null, null, null, null}
!283 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!284 = distinct !{null}
!285 = distinct !{null, null, null}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!288 = distinct !{!288, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!289 = !{!290, !291, i64 0}
!290 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !291, i64 0, !291, i64 8, !291, i64 16}
!291 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !10, i64 0}
!292 = !{!290, !291, i64 8}
!293 = distinct !{!293, !19}
!294 = !{!290, !291, i64 16}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!297 = distinct !{!297, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!298 = !{!299}
!299 = distinct !{!299, !297, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!300 = !{!296, !299}
!301 = distinct !{!301, !19}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!304 = distinct !{!304, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!305 = !{!306}
!306 = distinct !{!306, !304, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!307 = !{!303, !306}
!308 = !{!13, !14, i64 0}
!309 = distinct !{!309, !19}
!310 = !{!311, !313}
!311 = distinct !{!311, !312, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!312 = distinct !{!312, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!313 = distinct !{!313, !314, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!314 = distinct !{!314, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!315 = !{!313}
!316 = distinct !{null, null, null, null}
!317 = !{!231, !231, i64 0}
!318 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!319 = !{!320, !26, i64 8}
!320 = !{!"_ZTSN6duckdb13AllocatedDataE", !321, i64 0, !26, i64 8, !21, i64 16}
!321 = !{!"_ZTSN6duckdb12optional_ptrINS_9AllocatorELb1EEE", !322, i64 0}
!322 = !{!"p1 _ZTSN6duckdb9AllocatorE", !10, i64 0}
!323 = !{!230, !231, i64 0}
!324 = !{!325, !26, i64 8}
!325 = !{!"_ZTSSt9type_info", !26, i64 8}
!326 = distinct !{null, null, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!327 = distinct !{!327, !19}
!328 = distinct !{ptr @_ZN6duckdb18ListLambdaBindDataD2Ev, null, null}
!329 = !{!179, !143, i64 0}
!330 = distinct !{null}
!331 = !{!332}
!332 = distinct !{!332, !333, !"_ZN6duckdb9make_uniqINS_18ListLambdaBindDataEJRKNS_11LogicalTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEERKbSB_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!333 = distinct !{!333, !"_ZN6duckdb9make_uniqINS_18ListLambdaBindDataEJRKNS_11LogicalTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS6_ELb1EEERKbSB_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!334 = distinct !{null, null}
!335 = distinct !{null, null, null}
!336 = !{!9, !9, i64 0}
!337 = !{!338, !21, i64 24}
!338 = !{!"_ZTSN6duckdb9DataChunkE", !339, i64 0, !21, i64 24, !21, i64 32, !21, i64 40, !343, i64 48}
!339 = !{!"_ZTSN6duckdb6vectorINS_6VectorELb1ESaIS1_EEE", !340, i64 0}
!340 = !{!"_ZTSSt6vectorIN6duckdb6VectorESaIS1_EE", !341, i64 0}
!341 = !{!"_ZTSSt12_Vector_baseIN6duckdb6VectorESaIS1_EE", !342, i64 0}
!342 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6VectorESaIS1_EE12_Vector_implE", !8, i64 0}
!343 = !{!"_ZTSN6duckdb6vectorINS_11VectorCacheELb1ESaIS1_EEE", !344, i64 0}
!344 = !{!"_ZTSSt6vectorIN6duckdb11VectorCacheESaIS1_EE", !345, i64 0}
!345 = !{!"_ZTSSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE", !346, i64 0}
!346 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE12_Vector_implE", !347, i64 0}
!347 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11VectorCacheESaIS1_EE17_Vector_impl_dataE", !348, i64 0, !348, i64 8, !348, i64 16}
!348 = !{!"p1 _ZTSN6duckdb11VectorCacheE", !10, i64 0}
!349 = !{!233, !233, i64 0}
!350 = !{!351, !143, i64 8}
!351 = !{!"_ZTSN6duckdb15ExpressionStateE", !143, i64 8, !262, i64 16, !352, i64 24, !358, i64 48, !338, i64 72, !362, i64 144}
!352 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_15ExpressionStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !353, i64 0}
!353 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !354, i64 0}
!354 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE", !355, i64 0}
!355 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !356, i64 0}
!356 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15ExpressionStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !357, i64 0, !357, i64 8, !357, i64 16}
!357 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_15ExpressionStateESt14default_deleteIS1_ELb1EEE", !10, i64 0}
!358 = !{!"_ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !359, i64 0}
!359 = !{!"_ZTSSt6vectorIN6duckdb11LogicalTypeESaIS1_EE", !360, i64 0}
!360 = !{!"_ZTSSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE", !361, i64 0}
!361 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE12_Vector_implE", !186, i64 0}
!362 = !{!"_ZTSN6duckdb6vectorIbLb1ESaIbEEE", !363, i64 0}
!363 = !{!"_ZTSSt6vectorIbSaIbEE", !364, i64 0}
!364 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !365, i64 0}
!365 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !366, i64 0}
!366 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !367, i64 0, !367, i64 16, !42, i64 32}
!367 = !{!"_ZTSSt13_Bit_iterator", !368, i64 0}
!368 = !{!"_ZTSSt18_Bit_iterator_base", !42, i64 0, !4, i64 8}
!369 = !{i64 8}
!370 = !{!222, !74, i64 154}
!371 = !{!222, !74, i64 153}
!372 = !{!224, !26, i64 8}
!373 = !{!374, !256, i64 0}
!374 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb18ExpressionExecutorELb0EE", !256, i64 0}
!375 = !{!376, !74, i64 152}
!376 = !{!"_ZTSN6duckdb17LambdaExecuteInfoE", !377, i64 0, !338, i64 8, !338, i64 80, !74, i64 152}
!377 = !{!"_ZTSN6duckdb10unique_ptrINS_18ExpressionExecutorESt14default_deleteIS1_ELb1EEE", !378, i64 0}
!378 = !{!"_ZTSSt10unique_ptrIN6duckdb18ExpressionExecutorESt14default_deleteIS1_EE", !379, i64 0}
!379 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb18ExpressionExecutorESt14default_deleteIS1_ELb1ELb1EE", !380, i64 0}
!380 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb18ExpressionExecutorESt14default_deleteIS1_EE", !381, i64 0}
!381 = !{!"_ZTSSt5tupleIJPN6duckdb18ExpressionExecutorESt14default_deleteIS1_EEE", !382, i64 0}
!382 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb18ExpressionExecutorESt14default_deleteIS1_EEE", !374, i64 0}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_ZN6duckdb9make_uniqINS_18ExpressionExecutorEJRNS_13ClientContextERKNS_10ExpressionEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!385 = distinct !{!385, !"_ZN6duckdb9make_uniqINS_18ExpressionExecutorEJRNS_13ClientContextERKNS_10ExpressionEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!386 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!387 = !{!186, !187, i64 16}
!388 = distinct !{!388, !19}
!389 = distinct !{!389, !19}
!390 = !{!8, !9, i64 16}
!391 = distinct !{!391, !19}
!392 = distinct !{!392, !19}
!393 = distinct !{null, null, null, null}
!394 = !{!224, !33, i64 72}
!395 = !{!33, !33, i64 0}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!398 = distinct !{!398, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!401 = distinct !{!401, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!402 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!403 = distinct !{!403, !19}
!404 = distinct !{null, null, null, null, null}
!405 = distinct !{null, null, null, null}
!406 = !{!42, !42, i64 0}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!409 = distinct !{!409, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!410 = !{!411, !408}
!411 = distinct !{!411, !412, !"_ZSt11make_sharedIN6duckdb21TemplatedValidityDataImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!412 = distinct !{!412, !"_ZSt11make_sharedIN6duckdb21TemplatedValidityDataImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!413 = !{!414, !42, i64 0}
!414 = !{!"_ZTSSt10_Head_baseILm0EPmLb0EE", !42, i64 0}
!415 = !{!45, !46, i64 0}
!416 = distinct !{null, null, null, null}
!417 = distinct !{!417, !19}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZN6duckdb9Exception16ConstructMessageIJmllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!420 = distinct !{!420, !"_ZN6duckdb9Exception16ConstructMessageIJmllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_: argument 0"}
!423 = distinct !{!423, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_"}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_: argument 0"}
!426 = distinct !{!426, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_"}
!427 = !{!428, !21, i64 40}
!428 = !{!"_ZTSN6duckdb14ListFilterInfoE", !429, i64 0, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48}
!429 = !{!"_ZTSN6duckdb6vectorImLb1ESaImEEE", !430, i64 0}
!430 = !{!"_ZTSSt6vectorImSaImEE", !431, i64 0}
!431 = !{!"_ZTSSt12_Vector_baseImSaImEE", !432, i64 0}
!432 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !273, i64 0}
!433 = !{!224, !225, i64 0}
!434 = distinct !{!434, !19}
!435 = !{!428, !21, i64 24}
!436 = !{!428, !21, i64 48}
!437 = !{!428, !21, i64 32}
!438 = distinct !{!438, !19}
!439 = distinct !{!439, !19}
end_hunk_1
