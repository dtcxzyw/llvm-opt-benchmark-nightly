Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types?download=true
inline.NumInlined: 41209
inline.NumDeleted: 6301
loop-unroll.NumCompletelyUnrolled: 156
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 229
begin_hunk_0_@_ZN6duckdb25CoordinateReferenceSystem12TryParseWKT2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_:bb.a
  %.val85 = load i32, ptr %i.ar, align 8, !tbaa !865
  %i.as = icmp eq i32 %.val85, 0
  br i1 %i.as, label %bb.z, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i

bb.z:                                             ; preds = %bb.y
  %.val81 = load ptr, ptr %i.ap, align 8, !tbaa !863 ; 3 uses
  %i.at = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EEptEv(ptr %.val81)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.au = getelementptr inbounds nuw i8, ptr %.val81, i64 48 ; 2 uses
  %.val87 = load ptr, ptr %i.au, align 8, !tbaa !3533 ; 2 uses
  %i.av = getelementptr i8, ptr %.val81, i64 56   ; 2 uses
  %.val88 = load ptr, ptr %i.av, align 8, !tbaa !3533 ; 2 uses
  %i.aw = icmp eq ptr %.val87, %.val88
  br i1 %i.aw, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ax = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.val87, ptr %.val88, i64 noundef 0)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %.val80 = load ptr, ptr %i.ax, align 8, !tbaa !863 ; 2 uses
  %i.ay = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EEptEv(ptr %.val80)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.az = getelementptr i8, ptr %.val80, i64 8
  %.val97 = load i32, ptr %i.az, align 8, !tbaa !865
  %i.ba = icmp eq i32 %.val97, 2
  br i1 %i.ba, label %bb.ae, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %.val101 = load ptr, ptr %i.au, align 8, !tbaa !3533
  %.val102 = load ptr, ptr %i.av, align 8, !tbaa !3533
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_123TryExtractIDFromWKTNodeB5cxx11ERKNS0_10WKTKeywordE(ptr dead_on_unwind noalias writable align 8 %4, ptr %.val101, ptr %.val102)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !272
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ag:                                            ; preds = %bb.af
  %.val79 = load ptr, ptr %i.ax, align 8, !tbaa !863 ; 2 uses
  %i.be = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EEptEv(ptr %.val79)
          to label %bb.ah unwind label %bb.aj     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bf = getelementptr inbounds nuw i8, ptr %.val79, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit104
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.bi) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ah, %bb.af
  store i8 4, ptr %1, align 8, !tbaa !872
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit103 unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit104 unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit103
  invoke void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %bb.ak unwind label %bb.aj

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit104
  %i.bn = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.bn) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ai
  %.pn64 = phi { ptr, i32 } [ %i.bg, %bb.ai ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bh, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit120

bb.al:                                            ; preds = %bb.u
  %i.bq = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.val73, ptr %.val74, i64 noundef 0)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.am:                                            ; preds = %bb.al
  %.val78 = load ptr, ptr %i.bq, align 8, !tbaa !863 ; 2 uses
  %i.br = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EEptEv(ptr %.val78)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.bs = getelementptr i8, ptr %.val78, i64 8
  %.val98 = load i32, ptr %i.bs, align 8, !tbaa !865
  %i.bt = icmp eq i32 %.val98, 2
  br i1 %i.bt, label %bb.ao, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %.preheader.10, %.preheader.11, %.preheader.12, %.preheader.13, %bb.d, %bb.b, %bb.w, %bb.ab, %bb.al, %bb.x, %bb.z, %bb.ac, %bb.am, %bb.t
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit120

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %.val99 = load ptr, ptr %i.ah, align 8, !tbaa !3533
  %.val100 = load ptr, ptr %i.ai, align 8, !tbaa !3533
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_123TryExtractIDFromWKTNodeB5cxx11ERKNS0_10WKTKeywordE(ptr dead_on_unwind noalias writable align 8 %5, ptr %.val99, ptr %.val100)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !272
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108

bb.aq:                                            ; preds = %bb.ap
  %.val77 = load ptr, ptr %i.bq, align 8, !tbaa !863 ; 2 uses
  %i.bx = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EEptEv(ptr %.val77)
          to label %bb.ar unwind label %bb.at     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.by = getelementptr inbounds nuw i8, ptr %.val77, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108 unwind label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108, %bb.ar, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit113
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !235   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.cb) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108: ; preds = %bb.ar, %bb.ap
  store i8 4, ptr %1, align 8, !tbaa !872
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112 unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit113 unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  invoke void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cf)
          to label %bb.au unwind label %bb.at

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit113
  %i.cg = load ptr, ptr %5, align 8, !tbaa !235   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.cg) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.as
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.as ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.ca, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit120

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.an, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.ad, %bb.aa, %bb.v, %bb.s, %bb.c
  %.661.ph = phi i1 [ false, %bb.c ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ false, %bb.s ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ad ], [ false, %bb.an ], [ false, %bb.q ]
  %i.cj = load ptr, ptr %.val, align 8, !tbaa !384
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.val) #46, !inline_history !3531
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i
  %.661125 = phi i1 [ %.661.ph, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i ], [ false, %_ZN6duckdb12_GLOBAL__N_19WKTParser5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret i1 %.661125

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit120: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn64.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %lpad.loopexit.split-lp129, %.loopexit.split-lp.loopexit.split-lp ]
  %i.cm = load ptr, ptr %.val, align 8, !tbaa !384
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.val) #46, !inline_history !3531
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EEptEv(ptr nofree readnone returned captures(address_is_null, ret: address, provenance) %.0.val) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %1 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !231

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.437, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !235    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.d) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %.0.val
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK6duckdb12_GLOBAL__N_110WKTKeyword5MatchEPKc(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !271
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.436) #49
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.d, ptr %i.a, align 8, !tbaa !245
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !235
  %i.g = load i64, ptr %i.a, align 8, !tbaa !245
  store i64 %i.g, ptr %i.b, align 8, !tbaa !273
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !273
  store i8 %i.i, ptr %i.h, align 1, !tbaa !273
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !245  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !272
  %i.l = load ptr, ptr %2, align 8, !tbaa !235
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %2, align 8, !tbaa !235    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.p) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret i1 %i.o

bb.g:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !235    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.s) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr %.0.val, ptr %.8.val, i64 noundef range(i64 0, 3) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.c = ptrtoint ptr %.8.val to i64
  %i.d = ptrtoint ptr %.0.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !245
  store i64 %i.f, ptr %i.b, align 8, !tbaa !245
  %.not.i.i = icmp ult i64 %0, %i.f
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE3getILb1EEERKS6_m.exit, label %bb.b, !prof !420

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.280, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
end_hunk_0
