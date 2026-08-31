Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/rewrites_bv?download=true
inline.NumInlined: 3134
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 725
loop-unroll.NumUnrolled: 725
begin_hunk_0_@_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE109EE6_applyERNS_8RewriterERKNS_4NodeE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit124

_ZNSt6vectorImSaImEED2Ev.exit124:                 ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #14
  br label %.body89

.body89:                                          ; preds = %bb.ak, %.body158, %_ZNSt6vectorImSaImEED2Ev.exit124
  %.pn = phi { ptr, i32 } [ %i.er, %_ZNSt6vectorImSaImEED2Ev.exit124 ], [ %eh.lpad-body159, %.body158 ], [ %eh.lpad-body159, %bb.ak ]
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ey) #14
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ez) #14
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #14
  br label %.loopexit175.a

.loopexit175.a:                                   ; preds = %.body89, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.ay ], [ %.pn, %.body89 ] ; 2 uses
  %.0 = phi i1 [ true, %bb.ay ], [ false, %.body89 ] ; 2 uses
  %i.fa = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i125, label %.body84, label %bb.bb

bb.bb:                                            ; preds = %.loopexit175.a
  %i.fb = load ptr, ptr %i.bv, align 8, !tbaa !17
  br label %.body84.sink.split

.body84.sink.split:                               ; preds = %bb.ab, %bb.bb
  %.sink220.a = phi ptr [ %i.fb, %bb.bb ], [ %i.bt, %bb.ab ]
  %.sink219 = phi ptr [ %i.fa, %bb.bb ], [ %i.br, %bb.ab ] ; 2 uses
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn, %bb.bb ], [ %i.bq, %bb.ab ]
  %.1.ph = phi i1 [ %.0, %bb.bb ], [ true, %bb.ab ]
  %i.fc = ptrtoint ptr %.sink220.a to i64
  %i.fd = ptrtoint ptr %.sink219 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %.sink219, i64 noundef %i.fe) #18
  br label %.body84

.body84:                                          ; preds = %.body84.sink.split, %.loopexit175.a, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %.pn.pn, %.loopexit175.a ], [ %.pn.pn.pn.ph, %.body84.sink.split ]
  %.1 = phi i1 [ true, %bb.aa ], [ %.0, %.loopexit175.a ], [ %.1.ph, %.body84.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #14
  br label %.body79

.body79:                                          ; preds = %bb.z, %.body144, %.body84
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body84 ], [ %eh.lpad-body145, %.body144 ], [ %eh.lpad-body145, %bb.z ]
  %.2 = phi i1 [ %.1, %.body84 ], [ true, %.body144 ], [ true, %bb.z ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #14
  br label %.loopexit174.a

.loopexit174.a:                                   ; preds = %.body79, %bb.ax
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ep, %bb.ax ], [ %.pn.pn.pn.pn, %.body79 ]
  %.3 = phi i1 [ true, %bb.ax ], [ %.2, %.body79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit174.a, %bb.aw
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.loopexit174.a ], [ %i.eo, %bb.aw ] ; 2 uses
  %.036 = phi ptr [ %i.aw, %.loopexit174.a ], [ %i.u, %bb.aw ] ; 2 uses
  %.4 = phi i1 [ %.3, %.loopexit174.a ], [ true, %bb.aw ] ; 2 uses
  %i.ff = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i128, label %.body75, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fg = load ptr, ptr %i.at, align 8, !tbaa !17
  br label %.body75.sink.split

.body75.sink.split:                               ; preds = %bb.p, %bb.bd
  %.sink226.a = phi ptr [ %i.fg, %bb.bd ], [ %i.ar, %bb.p ]
  %.sink225 = phi ptr [ %i.ff, %bb.bd ], [ %i.ap, %bb.p ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.bd ], [ %i.ao, %bb.p ]
  %.137.ph = phi ptr [ %.036, %bb.bd ], [ %i.u, %bb.p ]
  %.5.ph = phi i1 [ %.4, %bb.bd ], [ true, %bb.p ]
  %i.fh = ptrtoint ptr %.sink226.a to i64
  %i.fi = ptrtoint ptr %.sink225 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sink225, i64 noundef %i.fj) #18
  br label %.body75

.body75:                                          ; preds = %.body75.sink.split, %bb.bc, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %.pn.pn.pn.pn.pn.pn, %bb.bc ], [ %.pn.pn.pn.pn.pn.pn.pn.ph, %.body75.sink.split ]
  %.137 = phi ptr [ %i.u, %bb.o ], [ %.036, %bb.bc ], [ %.137.ph, %.body75.sink.split ]
  %.5 = phi i1 [ true, %bb.o ], [ %.4, %bb.bc ], [ %.5.ph, %.body75.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #14
  br label %.body

.body:                                            ; preds = %bb.n, %.body131, %.body75
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %.body75 ], [ %eh.lpad-body132, %.body131 ], [ %eh.lpad-body132, %bb.n ]
  %.238 = phi ptr [ %.137, %.body75 ], [ %i.u, %.body131 ], [ %i.u, %bb.n ]
  %.6 = phi i1 [ %.5, %.body75 ], [ true, %.body131 ], [ true, %bb.n ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #14
  br label %.loopexit173

.loopexit173:                                     ; preds = %.body, %bb.av
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.av ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %.body ] ; 2 uses
  %.339 = phi ptr [ %i.u, %bb.av ], [ %.238, %.body ] ; 2 uses
  %.7 = phi i1 [ true, %bb.av ], [ %.6, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.fk = icmp ne ptr %5, %.339
  %or.cond.not = select i1 %.7, i1 %i.fk, i1 false
  br i1 %or.cond.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit173, %.preheader
  %i.fl = phi ptr [ %i.fm, %.preheader ], [ %.339, %.loopexit173 ]
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8 ; 3 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fm) #14
  %i.fn = icmp eq ptr %i.fm, %5
  br i1 %i.fn, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.thread, %.loopexit173
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn172 = phi { ptr, i32 } [ %i.em, %.thread ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit173 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.bf

bb.be:                                            ; preds = %bb.at, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit121
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #14
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.loopexit
  %.pn71 = phi { ptr, i32 } [ %i.fo, %bb.be ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn172, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn71

bb.bg:                                            ; preds = %_ZN4bzla12_GLOBAL__N_120is_const_val_extractERKNS_4NodeE.exit74, %bb.c
  tail call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.au
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla11RewriteRuleILNS_15RewriteRuleKindE110EE6_applyERNS_8RewriterERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.55", align 8    ; 14 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 15 uses
  %5 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %7 = alloca %"class.std::vector.5", align 8     ; 8 uses
  %8 = alloca %"class.std::vector", align 8       ; 12 uses
  %9 = alloca [1 x %"class.bzla::Node"], align 8  ; 7 uses
  %10 = alloca %"class.std::vector.5", align 8    ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  %i.b = tail call noundef zeroext i1 @_ZNK4bzla4Node11is_invertedEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = tail call noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.bj

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.i = icmp eq i8 %i.h, 21
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.k = icmp eq i8 %i.j, 13
  br i1 %i.k, label %bb.f, label %bb.bj

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4NodeixEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.m = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
          to label %bb.i unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !27     ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i4.i, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #18
  br label %.body

bb.i:                                             ; preds = %bb.f
  %11 = ptrtoint ptr %i.l to i64
  store ptr %i.m, ptr %3, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !30
  store i64 %11, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr %i.u, ptr %i.w, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = invoke noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 0)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noundef i64 @_ZNK4bzla4Node5indexEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1)
          to label %.preheader126 unwind label %bb.r

.preheader126:                                    ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %.preheader126, %bb.bb
  %i.al = phi ptr [ %.pre, %.preheader126 ], [ %i.ed, %bb.bb ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !20
  %i.ao = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS3_S1_EEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE7emplaceIJRS7_S1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.s ; 2 uses

_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE7emplaceIJRS7_S1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.k
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ao, 0
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ap = invoke noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.l unwind label %bb.t       ; 3 uses

bb.l:                                             ; preds = %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE7emplaceIJRS7_S1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ao, 1
  %i.aq = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.aq, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  switch i8 %i.ap, label %bb.bb [
    i8 26, label %bb.n
    i8 21, label %bb.n
    i8 13, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !42
  %12 = ptrtoint ptr %i.ar to i64
  %i.as = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %12, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.aw
  invoke void @_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE15_M_range_insertIPS3_EEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ax, ptr noundef %i.as, ptr noundef %i.at)
          to label %bb.bb unwind label %bb.u

bb.q:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.r:                                             ; preds = %bb.bd, %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE2atERS7_.exit108, %bb.bc, %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.s:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.bh

bb.t:                                             ; preds = %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE7emplaceIJRS7_S1_EEES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEDpOT_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.u:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.v:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.w, label %bb.ba

bb.w:                                             ; preds = %bb.v
  switch i8 %i.ap, label %bb.al [
    i8 26, label %bb.x
    i8 21, label %bb.x
    i8 13, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bg = invoke noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.y unwind label %bb.z       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bh = invoke noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %.preheader unwind label %bb.aa ; 2 uses

.preheader:                                       ; preds = %bb.y
  %.not136 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not136, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8Rewriter7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 noundef zeroext %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ae unwind label %bb.ai

bb.z:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aa:                                            ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit
  %.066137 = phi ptr [ %i.bq, %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit ], [ %i.bg, %.preheader ] ; 2 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN4bzla4NodeESt4pairIKS2_S2_ESaIS5_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EE2atERS4_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %.066137)
          to label %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE2atERS7_.exit unwind label %bb.ad ; 2 uses

_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE2atERS7_.exit: ; preds = %.lr.ph
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 3 uses
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE2atERS7_.exit
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.ab
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.ae, align 8, !tbaa !13
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE2atERS7_.exit
  invoke void @_ZNSt6vectorIN4bzla4NodeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit unwind label %bb.ad

_ZNSt6vectorIN4bzla4NodeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %.066137, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.bh
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.lr.ph
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ae:                                            ; preds = %._crit_edge
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.af unwind label %bb.ai     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.by = load ptr, ptr %6, align 8, !tbaa !8     ; 3 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %i.by, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.cb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.by, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #18
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.ba

bb.ai:                                            ; preds = %bb.ae, %._crit_edge
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %7, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i83 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i83, label %_ZNSt6vectorImSaImEED2Ev.exit84, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ci = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit84

_ZNSt6vectorImSaImEED2Ev.exit84:                  ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.z, %bb.ad, %bb.aa, %_ZNSt6vectorImSaImEED2Ev.exit84
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.cg, %_ZNSt6vectorImSaImEED2Ev.exit84 ], [ %i.bj, %bb.z ], [ %i.br, %bb.ad ], [ %i.bk, %bb.aa ]
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.bh

bb.al:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.am unwind label %bb.ay

bb.am:                                            ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.cm = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
          to label %.noexc114 unwind label %bb.aq ; 3 uses

.noexc114:                                        ; preds = %bb.am
  store ptr %i.cm, ptr %8, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
end_hunk_0
