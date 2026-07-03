inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN6duckdb13JoinHashTable14GetRowPointersERNS_9DataChunkERNS_19TupleDataChunkStateERNS0_10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmS8_RS9_b:bb.a
  %i.eu = and i64 %i.dp, 281474976710655
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.dw
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !382
  %i.ex = and i64 %i.dp, -281474976710656
  %i.ey = or i64 %i.ex, %.03447.i.i.i
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dw
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !39
  %i.fa = add i64 %.03248.i.i.i, 1
  br label %.loopexit.i.i.i

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.fb = add i64 %.03447.i.i.i, 1
  %i.fc = and i64 %i.fb, %i.dl                    ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.al, %_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE.exit.i.i.i, %.lr.ph51.i.i.i
  %.2.ph.i.i.i = phi i64 [ %i.fa, %_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE.exit.i.i.i ], [ %.03248.i.i.i, %.lr.ph51.i.i.i ], [ %.03248.i.i.i, %bb.al ] ; 2 uses
  %i.ff = add nuw i64 %.049.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ff, %.073.i
  br i1 %exitcond.not.i.i, label %_ZN6duckdbL16ProbeForPointersILb1EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i, label %.lr.ph51.i.i.i, !llvm.loop !885

bb.am:                                            ; preds = %bb.x
  br i1 %.not52.i.i.i, label %_ZN6duckdbL22GetRowPointersInternalILb1EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %.lr.ph29.i.i.i

.lr.ph29.i.i.i:                                   ; preds = %bb.am, %.loopexit.i13.i.i
  %.027.i.i.i = phi i64 [ %i.gx, %.loopexit.i13.i.i ], [ 0, %bb.am ] ; 5 uses
  %.01026.i.i.i = phi i64 [ %.2.ph.i14.i.i, %.loopexit.i13.i.i ], [ 0, %bb.am ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.027.i.i.i
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !39 ; 2 uses
  %i.fi = load i64, ptr %i.cz, align 8, !tbaa !844 ; 2 uses
  %i.fj = and i64 %i.fi, %i.fh                    ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !39 ; 2 uses
  %.not24.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not24.i.i.i, label %.loopexit.i13.i.i, label %.lr.ph.i11.i.i

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph29.i.i.i, %bb.ay
  %i.fm = phi i64 [ %i.gw, %bb.ay ], [ %i.fl, %.lr.ph29.i.i.i ] ; 3 uses
  %.01225.i.i.i = phi i64 [ %i.gu, %bb.ay ], [ %i.fj, %.lr.ph29.i.i.i ] ; 2 uses
  %i.fn = xor i64 %i.fm, %i.fh
  %i.fo = icmp ult i64 %i.fn, 281474976710656
  br i1 %i.fo, label %bb.an, label %bb.ay

bb.an:                                            ; preds = %.lr.ph.i11.i.i
  %i.fp = load i8, ptr %i.da, align 1, !tbaa !413
  %i.fq = icmp eq i8 %i.fp, 8
  br i1 %i.fq, label %_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE.exit.i24.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fr = call ptr @__cxa_allocate_exception(i64 16) #40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ap unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17.i15.i.i

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i8 8, ptr %i.b, align 1, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.fs = load i8, ptr %i.da, align 1, !tbaa !413
  store i8 %i.fs, ptr %i.c, align 1, !tbaa !884
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.as unwind label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17.i15.i.i: ; preds = %bb.ao
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %common.resume.sink.split.i.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0.i20.i21.i.i = phi i1 [ false, %bb.aq ], [ true, %bb.ap ] ; 2 uses
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.fv = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22.i23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i22.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21.i22.i.i: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.fv) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br i1 %.0.i20.i21.i.i, label %common.resume.sink.split.i.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22.i23.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br i1 %.0.i20.i21.i.i, label %common.resume.sink.split.i.i, label %common.resume

bb.as:                                            ; preds = %bb.aq
  unreachable

_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE.exit.i24.i.i: ; preds = %bb.an
  %i.fy = load i8, ptr %i.db, align 1, !tbaa !413
  %i.fz = icmp eq i8 %i.fy, 8
  br i1 %i.fz, label %_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE.exit.i29.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE.exit.i24.i.i
  %i.ga = call ptr @__cxa_allocate_exception(i64 16) #40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i25.i.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  store i8 8, ptr %i.d, align 1, !tbaa !884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.gb = load i8, ptr %i.db, align 1, !tbaa !413
  store i8 %i.gb, ptr %i.e, align 1, !tbaa !884
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.ga, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.ax unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i25.i.i: ; preds = %bb.at
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %common.resume.sink.split.i.i

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.i.i26.i.i = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.ge = load ptr, ptr %13, align 8, !tbaa !54   ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i28.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27.i.i: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.ge) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br i1 %.0.i.i26.i.i, label %common.resume.sink.split.i.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i28.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br i1 %.0.i.i26.i.i, label %common.resume.sink.split.i.i, label %common.resume

bb.ax:                                            ; preds = %bb.av
  unreachable

_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE.exit.i29.i.i: ; preds = %_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE.exit.i24.i.i
  %i.gh = load ptr, ptr %i.dc, align 8, !tbaa !427
  %i.gi = load ptr, ptr %i.dd, align 8, !tbaa !427
  %i.gj = trunc i64 %.027.i.i.i to i32
  %i.gk = load ptr, ptr %i.de, align 8, !tbaa !424
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.01026.i.i.i
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !3
  %i.gm = and i64 %i.fm, 281474976710655
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.027.i.i.i
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !382
  %i.gp = and i64 %i.fm, -281474976710656
  %i.gq = or i64 %i.gp, %.01225.i.i.i
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.027.i.i.i
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !39
  %i.gs = add i64 %.01026.i.i.i, 1
  br label %.loopexit.i13.i.i

bb.ay:                                            ; preds = %.lr.ph.i11.i.i
  %i.gt = add i64 %.01225.i.i.i, 1
  %i.gu = and i64 %i.gt, %i.fi                    ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !39 ; 2 uses
  %.not.i12.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i12.i.i, label %.loopexit.i13.i.i, label %.lr.ph.i11.i.i

.loopexit.i13.i.i:                                ; preds = %bb.ay, %_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE.exit.i29.i.i, %.lr.ph29.i.i.i
  %.2.ph.i14.i.i = phi i64 [ %i.gs, %_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE.exit.i29.i.i ], [ %.01026.i.i.i, %.lr.ph29.i.i.i ], [ %.01026.i.i.i, %bb.ay ] ; 2 uses
  %i.gx = add nuw i64 %.027.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gx, %.073.i
  br i1 %exitcond.not.i.i.i, label %_ZN6duckdbL16ProbeForPointersILb1EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i, label %.lr.ph29.i.i.i, !llvm.loop !886

_ZN6duckdbL16ProbeForPointersILb1EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i: ; preds = %.loopexit.i13.i.i, %.loopexit.i.i.i
  %.0.i.i = phi i64 [ %.2.ph.i.i.i, %.loopexit.i.i.i ], [ %.2.ph.i14.i.i, %.loopexit.i13.i.i ] ; 2 uses
  %i.gy = icmp eq i64 %.0.i.i, 0
  br i1 %i.gy, label %_ZN6duckdbL22GetRowPointersInternalILb1EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdbL16ProbeForPointersILb1EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i
  store i64 0, ptr %i.j, align 8, !tbaa !39
  %i.gz = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(488) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 11 uses
  %.not128.i = icmp eq i64 %i.gz, 0
  br i1 %.not128.i, label %._crit_edge121.i, label %.lr.ph120.i

.lr.ph120.i:                                      ; preds = %bb.az
  %i.ha = load ptr, ptr %i.de, align 8, !tbaa !424 ; 8 uses
  %i.hb = ptrtoaddr ptr %i.ha to i64
  %.not.i83.i = icmp eq ptr %i.ha, null
  %i.hc = load ptr, ptr %8, align 8, !tbaa !424   ; 9 uses
  %i.hd = ptrtoaddr ptr %i.hc to i64
  br i1 %.not.i83.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader: ; preds = %.lr.ph120.i
  %min.iters.check211 = icmp ult i64 %i.gz, 12
  br i1 %min.iters.check211, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225, label %vector.memcheck208

vector.memcheck208:                               ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader
  %i.he = shl i64 %.070.i, 2
  %i.hf = add i64 %i.he, %i.hd
  %i.hg = sub i64 %i.hb, %i.hf
  %diff.check209 = icmp ugt i64 %i.hg, -32
  br i1 %diff.check209, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck208
  %n.vec214 = and i64 %i.gz, -8                   ; 4 uses
  %i.hh = add i64 %.070.i, %n.vec214              ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.hc, i64 %.070.i
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph212
  %index216 = phi i64 [ 0, %vector.ph212 ], [ %index.next219, %vector.body215 ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index216 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load217 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !3
  %wide.load218 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !3
  %i.hl = getelementptr [4 x i8], ptr %i.hi, i64 %index216 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <4 x i32> %wide.load217, ptr %i.hl, align 4, !tbaa !3
  store <4 x i32> %wide.load218, ptr %i.hm, align 4, !tbaa !3
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.hn, label %middle.block220, label %vector.body215, !llvm.loop !887

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %i.gz, %n.vec214
  br i1 %cmp.n221, label %._crit_edge121.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225: ; preds = %vector.memcheck208, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader, %middle.block220
  %.067118.i.ph = phi i64 [ 0, %vector.memcheck208 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader ], [ %n.vec214, %middle.block220 ] ; 3 uses
  %.171117.i.ph = phi i64 [ %.070.i, %vector.memcheck208 ], [ %.070.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader ], [ %i.hh, %middle.block220 ] ; 2 uses
  %xtraiter249 = and i64 %i.gz, 3                 ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol
  %.067118.i.prol = phi i64 [ %i.hs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol ], [ %.067118.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225 ] ; 2 uses
  %.171117.i.prol = phi i64 [ %i.hr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol ], [ %.171117.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225 ] ; 2 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225 ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.067118.i.prol
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.171117.i.prol
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !3
  %i.hr = add i64 %.171117.i.prol, 1              ; 3 uses
  %i.hs = add nuw i64 %.067118.i.prol, 1          ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol, !llvm.loop !888

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225
  %.lcssa233.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225 ], [ %i.hr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol ]
  %.067118.i.unr = phi i64 [ %.067118.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225 ], [ %i.hs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol ]
  %.171117.i.unr = phi i64 [ %.171117.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.preheader225 ], [ %i.hr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol ]
  %i.ht = sub i64 %.067118.i.ph, %i.gz
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %._crit_edge121.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader: ; preds = %.lr.ph120.i
  %min.iters.check194 = icmp ult i64 %i.gz, 8
  br i1 %min.iters.check194, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader224, label %vector.ph195

vector.ph195:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader
  %n.vec197 = and i64 %i.gz, -8                   ; 4 uses
  %i.hv = add i64 %.070.i, %n.vec197              ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %i.hc, i64 %.070.i
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph195
  %index199 = phi i64 [ 0, %vector.ph195 ], [ %index.next202, %vector.body198 ] ; 2 uses
  %vec.ind200 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph195 ], [ %vec.ind.next203, %vector.body198 ] ; 3 uses
  %step.add201 = add <4 x i32> %vec.ind200, splat (i32 4)
  %i.hx = getelementptr [4 x i8], ptr %i.hw, i64 %index199 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store <4 x i32> %vec.ind200, ptr %i.hx, align 4, !tbaa !3
  store <4 x i32> %step.add201, ptr %i.hy, align 4, !tbaa !3
  %index.next202 = add nuw i64 %index199, 8       ; 2 uses
  %vec.ind.next203 = add <4 x i32> %vec.ind200, splat (i32 8)
  %i.hz = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.hz, label %middle.block204, label %vector.body198, !llvm.loop !889

middle.block204:                                  ; preds = %vector.body198
  %cmp.n205 = icmp eq i64 %i.gz, %n.vec197
  br i1 %cmp.n205, label %._crit_edge121.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader224

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader224: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader, %middle.block204
  %.067118.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader ], [ %n.vec197, %middle.block204 ]
  %.171117.us.i.ph = phi i64 [ %.070.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader ], [ %i.hv, %middle.block204 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader224, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i
  %.067118.us.i = phi i64 [ %i.id, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i ], [ %.067118.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader224 ] ; 2 uses
  %.171117.us.i = phi i64 [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i ], [ %.171117.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i.preheader224 ] ; 2 uses
  %i.ia = trunc i64 %.067118.us.i to i32
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.171117.us.i
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !3
  %i.ic = add i64 %.171117.us.i, 1                ; 2 uses
  %i.id = add nuw i64 %.067118.us.i, 1            ; 2 uses
  %exitcond143.not.i = icmp eq i64 %i.id, %i.gz
  br i1 %exitcond143.not.i, label %._crit_edge121.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i, !llvm.loop !890

._crit_edge121.i:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i, %middle.block220, %middle.block204, %bb.az
  %.171.lcssa.i = phi i64 [ %.070.i, %bb.az ], [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i ], [ %i.hv, %middle.block204 ], [ %i.hh, %middle.block220 ], [ %.lcssa233.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit ], [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i ] ; 3 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.dh)
  %i.ie = load ptr, ptr %i.dd, align 8, !tbaa !427
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cx)
  %i.if = load ptr, ptr %i.cy, align 8, !tbaa !427
  %i.ig = load i64, ptr %i.j, align 8, !tbaa !39
  %.not129.i = icmp eq i64 %i.ig, 0
  br i1 %.not129.i, label %_ZN6duckdbL22GetRowPointersInternalILb1EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %._crit_edge121.i
  %i.ih = load ptr, ptr %i.dg, align 8, !tbaa !424 ; 2 uses
  %.not.i85.i = icmp eq ptr %i.ih, null
  br label %bb.ba

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i
  %.067118.i = phi i64 [ %i.jb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i ], [ %.067118.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit ] ; 5 uses
  %.171117.i = phi i64 [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i ], [ %.171117.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i.prol.loopexit ] ; 5 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.067118.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.171117.i
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !3
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.067118.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  %i.io = getelementptr [4 x i8], ptr %i.hc, i64 %.171117.i
  %i.ip = getelementptr i8, ptr %i.io, i64 4
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !3
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.067118.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = getelementptr [4 x i8], ptr %i.hc, i64 %.171117.i
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  store i32 %i.is, ptr %i.iu, align 4, !tbaa !3
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.067118.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = getelementptr [4 x i8], ptr %i.hc, i64 %.171117.i
  %i.iz = getelementptr i8, ptr %i.iy, i64 12
  store i32 %i.ix, ptr %i.iz, align 4, !tbaa !3
  %i.ja = add i64 %.171117.i, 4                   ; 2 uses
  %i.jb = add nuw i64 %.067118.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.jb, %i.gz
  br i1 %exitcond.not.i.3, label %._crit_edge121.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i, !llvm.loop !891

bb.ba:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i, %.lr.ph124.i
  %.058122.i = phi i64 [ 0, %.lr.ph124.i ], [ %i.jn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i ] ; 4 uses
  br i1 %.not.i85.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.058122.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !3
  %i.je = zext i32 %i.jd to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i: ; preds = %bb.bb, %bb.ba
  %i.jf = phi i64 [ %i.je, %bb.bb ], [ %.058122.i, %bb.ba ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !39
  %i.ji = load i64, ptr %i.cz, align 8, !tbaa !844
  %i.jj = or i64 %i.ji, -281474976710656
  %i.jk = add i64 %i.jh, 1
  %i.jl = and i64 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.058122.i
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !39
  %i.jn = add nuw i64 %.058122.i, 1               ; 2 uses
  %i.jo = load i64, ptr %i.j, align 8, !tbaa !39  ; 3 uses
  %i.jp = icmp ult i64 %i.jn, %i.jo
  br i1 %i.jp, label %bb.ba, label %._crit_edge125.i, !llvm.loop !892

._crit_edge125.i:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i
  %.not.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i, label %_ZN6duckdbL22GetRowPointersInternalILb1EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %bb.x, !prof !893, !llvm.loop !894

_ZN6duckdbL22GetRowPointersInternalILb1EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit: ; preds = %bb.y, %bb.am, %_ZN6duckdbL16ProbeForPointersILb1EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i, %._crit_edge121.i, %._crit_edge125.i
  %.27297.i = phi i64 [ %.171.lcssa.i, %._crit_edge125.i ], [ %.070.i, %_ZN6duckdbL16ProbeForPointersILb1EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i ], [ %.070.i, %bb.y ], [ %.070.i, %bb.am ], [ %.171.lcssa.i, %._crit_edge121.i ]
  store i64 %.27297.i, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  br label %bb.cj

bb.bc:                                            ; preds = %bb.a
  br i1 %9, label %bb.bd, label %bb.bw

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
  %i.jq = load i64, ptr %6, align 8, !tbaa !39
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %i.jq, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.be unwind label %bb.bs

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.bf unwind label %bb.bt

bb.bf:                                            ; preds = %bb.be
  %i.jr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !721 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 256
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jt)
          to label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.i41 unwind label %bb.bu

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.i41: ; preds = %bb.bf
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !427 ; 4 uses
  %i.jw = load i64, ptr %6, align 8, !tbaa !39
  %.not113.i = icmp eq i64 %i.jw, 0
  br i1 %.not113.i, label %._crit_edge.i47, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit.i41
  %i.jx = load ptr, ptr %5, align 8, !tbaa !424   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.jx, null
  %i.jy = load ptr, ptr %10, align 8, !tbaa !718
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !424 ; 3 uses
  %.not.i81.i44 = icmp eq ptr %i.jz, null         ; 2 uses
  br i1 %.not.i.i43, label %.lr.ph.split.us.i58, label %.lr.ph.split.i45

.lr.ph.split.us.i58:                              ; preds = %.lr.ph.i42
  br i1 %.not.i81.i44, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i60, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i59

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i60: ; preds = %.lr.ph.split.us.i58, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i60
  %.06899.us.us.i = phi i64 [ %i.kd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i60 ], [ 0, %.lr.ph.split.us.i58 ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.06899.us.us.i
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !39
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.06899.us.us.i
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !39
  %i.kd = add nuw i64 %.06899.us.us.i, 1          ; 2 uses
  %i.ke = load i64, ptr %6, align 8, !tbaa !39
  %i.kf = icmp ult i64 %i.kd, %i.ke
  br i1 %i.kf, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i60, label %._crit_edge.i47, !llvm.loop !895

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i59: ; preds = %.lr.ph.split.us.i58, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i59
  %.06899.us.i = phi i64 [ %i.km, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i59 ], [ 0, %.lr.ph.split.us.i58 ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.06899.us.i
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !3
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !39
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.06899.us.i
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !39
  %i.km = add nuw i64 %.06899.us.i, 1             ; 2 uses
  %i.kn = load i64, ptr %6, align 8, !tbaa !39
  %i.ko = icmp ult i64 %i.km, %i.kn
  br i1 %i.ko, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i59, label %._crit_edge.i47, !llvm.loop !895

.lr.ph.split.i45:                                 ; preds = %.lr.ph.i42
  br i1 %.not.i81.i44, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us100.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us100.i: ; preds = %.lr.ph.split.i45, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us100.i
  %.06899.us101.i = phi i64 [ %i.kv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us100.i ], [ 0, %.lr.ph.split.i45 ] ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.06899.us101.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !3
  %i.kr = zext i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.kr
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !39
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.06899.us101.i
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !39
  %i.kv = add nuw i64 %.06899.us101.i, 1          ; 2 uses
  %i.kw = load i64, ptr %6, align 8, !tbaa !39
  %i.kx = icmp ult i64 %i.kv, %i.kw
end_hunk_0
begin_hunk_1_@_ZN6duckdb13JoinHashTable14GetRowPointersERNS_9DataChunkERNS_19TupleDataChunkStateERNS0_10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmS8_RS9_b:bb.a
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #40, !inline_history !897
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i57

bb.bo:                                            ; preds = %bb.bm
  %i.mc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i2.i.i54 = icmp eq i8 %i.mc, 0
  br i1 %.not.i.i.i.i.i2.i.i54, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.md = add nsw i32 %i.lu, -1
  store i32 %i.md, ptr %i.lr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i55

bb.bq:                                            ; preds = %bb.bo
  %i.me = atomicrmw volatile add ptr %i.lr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i55: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i4.i.i56 = phi i32 [ %i.lu, %bb.bp ], [ %i.me, %bb.bq ]
  %i.mf = icmp eq i32 %.0.i.i.i.i.i.i4.i.i56, 1
  br i1 %i.mf, label %bb.br, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i57, !prof !58

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i55
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #40
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i57

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i57:     ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i.i55, %bb.bn, %_ZN6duckdb15SelectionVectorD2Ev.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bd
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bt:                                            ; preds = %bb.be
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bf
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46: ; preds = %.lr.ph.split.i45, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46
  %.06899.i = phi i64 [ %i.ms, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46 ], [ 0, %.lr.ph.split.i45 ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.06899.i
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !3
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.mo
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !39
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.06899.i
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !39
  %i.ms = add nuw i64 %.06899.i, 1                ; 2 uses
  %i.mt = load i64, ptr %6, align 8, !tbaa !39
  %i.mu = icmp ult i64 %i.ms, %i.mt
  br i1 %i.mu, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i46, label %._crit_edge.i47, !llvm.loop !895

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.pn.pn.pn.pn.i40 = phi { ptr, i32 } [ %i.mg, %bb.bs ], [ %i.mh, %bb.bt ], [ %i.mi, %bb.bu ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %common.resume

bb.bw:                                            ; preds = %bb.bc
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.mw = load i64, ptr %6, align 8, !tbaa !39
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %i.mv, i64 noundef %i.mw, i64 noundef 0, i64 noundef 0)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.mx = load i64, ptr %6, align 8, !tbaa !39
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge111.i, %bb.bx
  %.073.i18 = phi i64 [ %i.mx, %bb.bx ], [ %i.rp, %._crit_edge111.i ] ; 3 uses
  %.070.i19 = phi i64 [ 0, %bb.bx ], [ %.171.lcssa.i29, %._crit_edge111.i ] ; 12 uses
  %.059.i20 = phi i1 [ %9, %bb.bx ], [ true, %._crit_edge111.i ]
  %.0.i21 = phi ptr [ %5, %bb.bx ], [ %i.ng, %._crit_edge111.i ]
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.my)
  %i.nh = load ptr, ptr %i.mz, align 8, !tbaa !427 ; 2 uses
  %.not23.i.i.i = icmp eq i64 %.073.i18, 0        ; 2 uses
  br i1 %.059.i20, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  br i1 %.not23.i.i.i, label %_ZN6duckdbL22GetRowPointersInternalILb0EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.bz, %bb.cc
  %.021.i.i.i = phi i64 [ %i.of, %bb.cc ], [ 0, %bb.bz ] ; 4 uses
  %.01920.i.i.i = phi i64 [ %.1.i.i.i, %bb.cc ], [ 0, %bb.bz ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %.021.i.i.i
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !39
  %i.nk = load i64, ptr %i.na, align 8, !tbaa !844
  %i.nl = and i64 %i.nk, %i.nj                    ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i36 = icmp eq i64 %i.nn, 0
  br i1 %.not.i.i.i36, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i.i35
  %i.no = load ptr, ptr %.0.i21, align 8, !tbaa !424 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i37, label %_ZN6duckdb16GetOptionalIndexILb1EEEmPKNS_15SelectionVectorEm.exit.i.i.i38, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.021.i.i.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !3
  %i.nr = zext i32 %i.nq to i64
  br label %_ZN6duckdb16GetOptionalIndexILb1EEEmPKNS_15SelectionVectorEm.exit.i.i.i38

_ZN6duckdb16GetOptionalIndexILb1EEEmPKNS_15SelectionVectorEm.exit.i.i.i38: ; preds = %bb.cb, %bb.ca
  %i.ns = phi i64 [ %i.nr, %bb.cb ], [ %.021.i.i.i, %bb.ca ] ; 3 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %7)
  %i.nt = load ptr, ptr %i.nb, align 8, !tbaa !427
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.nc)
  %i.nu = load ptr, ptr %i.nd, align 8, !tbaa !427
  %i.nv = trunc i64 %i.ns to i32
  %i.nw = load ptr, ptr %i.ne, align 8, !tbaa !424
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %.01920.i.i.i
  store i32 %i.nv, ptr %i.nx, align 4, !tbaa !3
  %i.ny = and i64 %i.nn, 281474976710655
  %i.nz = inttoptr i64 %i.ny to ptr
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ns
  store ptr %i.nz, ptr %i.oa, align 8, !tbaa !382
  %i.ob = and i64 %i.nn, -281474976710656
  %i.oc = or i64 %i.ob, %i.nl
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.ns
  store i64 %i.oc, ptr %i.od, align 8, !tbaa !39
  %i.oe = add i64 %.01920.i.i.i, 1
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN6duckdb16GetOptionalIndexILb1EEEmPKNS_15SelectionVectorEm.exit.i.i.i38, %.lr.ph.i.i.i35
  %.1.i.i.i = phi i64 [ %i.oe, %_ZN6duckdb16GetOptionalIndexILb1EEEmPKNS_15SelectionVectorEm.exit.i.i.i38 ], [ %.01920.i.i.i, %.lr.ph.i.i.i35 ] ; 2 uses
  %i.of = add nuw i64 %.021.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i39 = icmp eq i64 %i.of, %.073.i18
  br i1 %exitcond.not.i.i39, label %_ZN6duckdbL16ProbeForPointersILb0EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i, label %.lr.ph.i.i.i35, !llvm.loop !898

bb.cd:                                            ; preds = %bb.by
  br i1 %.not23.i.i.i, label %_ZN6duckdbL22GetRowPointersInternalILb0EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %.lr.ph.i11.i.i22

.lr.ph.i11.i.i22:                                 ; preds = %bb.cd, %bb.cf
  %.07.i.i.i = phi i64 [ %i.oy, %bb.cf ], [ 0, %bb.cd ] ; 5 uses
  %.056.i.i.i = phi i64 [ %.1.i13.i.i, %bb.cf ], [ 0, %bb.cd ] ; 3 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %.07.i.i.i
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !39
  %i.oi = load i64, ptr %i.na, align 8, !tbaa !844
  %i.oj = and i64 %i.oi, %i.oh                    ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.oj
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !39 ; 3 uses
  %.not.i12.i.i23 = icmp eq i64 %i.ol, 0
  br i1 %.not.i12.i.i23, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i11.i.i22
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %7)
  %i.om = load ptr, ptr %i.nb, align 8, !tbaa !427
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.nc)
  %i.on = load ptr, ptr %i.nd, align 8, !tbaa !427
  %i.oo = trunc i64 %.07.i.i.i to i32
  %i.op = load ptr, ptr %i.ne, align 8, !tbaa !424
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %.056.i.i.i
  store i32 %i.oo, ptr %i.oq, align 4, !tbaa !3
  %i.or = and i64 %i.ol, 281474976710655
  %i.os = inttoptr i64 %i.or to ptr
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %.07.i.i.i
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !382
  %i.ou = and i64 %i.ol, -281474976710656
  %i.ov = or i64 %i.ou, %i.oj
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.07.i.i.i
  store i64 %i.ov, ptr %i.ow, align 8, !tbaa !39
  %i.ox = add i64 %.056.i.i.i, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i11.i.i22
  %.1.i13.i.i = phi i64 [ %i.ox, %bb.ce ], [ %.056.i.i.i, %.lr.ph.i11.i.i22 ] ; 2 uses
  %i.oy = add nuw i64 %.07.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i24 = icmp eq i64 %i.oy, %.073.i18
  br i1 %exitcond.not.i.i.i24, label %_ZN6duckdbL16ProbeForPointersILb0EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i, label %.lr.ph.i11.i.i22, !llvm.loop !899

_ZN6duckdbL16ProbeForPointersILb0EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i: ; preds = %bb.cf, %bb.cc
  %.0.i.i25 = phi i64 [ %.1.i.i.i, %bb.cc ], [ %.1.i13.i.i, %bb.cf ] ; 2 uses
  %i.oz = icmp eq i64 %.0.i.i25, 0
  br i1 %i.oz, label %_ZN6duckdbL22GetRowPointersInternalILb0EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZN6duckdbL16ProbeForPointersILb0EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.pa = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.nf, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(488) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ne, i64 noundef %.0.i.i25, ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull %i.ng, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 11 uses
  %.not114.i = icmp eq i64 %i.pa, 0
  br i1 %.not114.i, label %._crit_edge107.i, label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %bb.cg
  %i.pb = load ptr, ptr %i.ne, align 8, !tbaa !424 ; 8 uses
  %i.pc = ptrtoaddr ptr %i.pb to i64
  %.not.i83.i26 = icmp eq ptr %i.pb, null
  %i.pd = load ptr, ptr %8, align 8, !tbaa !424   ; 9 uses
  %i.pe = ptrtoaddr ptr %i.pd to i64
  br i1 %.not.i83.i26, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader: ; preds = %.lr.ph106.i
  %min.iters.check181 = icmp ult i64 %i.pa, 12
  br i1 %min.iters.check181, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader
  %i.pf = shl i64 %.070.i19, 2
  %i.pg = add i64 %i.pf, %i.pe
  %i.ph = sub i64 %i.pc, %i.pg
  %diff.check = icmp ugt i64 %i.ph, -32
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck
  %n.vec184 = and i64 %i.pa, -8                   ; 4 uses
  %i.pi = add i64 %.070.i19, %n.vec184            ; 2 uses
  %i.pj = getelementptr [4 x i8], ptr %i.pd, i64 %.070.i19
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph182
  %index186 = phi i64 [ 0, %vector.ph182 ], [ %index.next188, %vector.body185 ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %index186 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %wide.load = load <4 x i32>, ptr %i.pk, align 4, !tbaa !3
  %wide.load187 = load <4 x i32>, ptr %i.pl, align 4, !tbaa !3
  %i.pm = getelementptr [4 x i8], ptr %i.pj, i64 %index186 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store <4 x i32> %wide.load, ptr %i.pm, align 4, !tbaa !3
  store <4 x i32> %wide.load187, ptr %i.pn, align 4, !tbaa !3
  %index.next188 = add nuw i64 %index186, 8       ; 2 uses
  %i.po = icmp eq i64 %index.next188, %n.vec184
  br i1 %i.po, label %middle.block189, label %vector.body185, !llvm.loop !900

middle.block189:                                  ; preds = %vector.body185
  %cmp.n190 = icmp eq i64 %i.pa, %n.vec184
  br i1 %cmp.n190, label %._crit_edge107.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader, %middle.block189
  %.067104.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader ], [ %n.vec184, %middle.block189 ] ; 3 uses
  %.171103.i.ph = phi i64 [ %.070.i19, %vector.memcheck ], [ %.070.i19, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader ], [ %i.pi, %middle.block189 ] ; 2 uses
  %xtraiter = and i64 %i.pa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol
  %.067104.i.prol = phi i64 [ %i.pt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol ], [ %.067104.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240 ] ; 2 uses
  %.171103.i.prol = phi i64 [ %i.ps, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol ], [ %.171103.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240 ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %.067104.i.prol
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !3
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.171103.i.prol
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !3
  %i.ps = add i64 %.171103.i.prol, 1              ; 3 uses
  %i.pt = add nuw i64 %.067104.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol, !llvm.loop !901

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240
  %.lcssa243.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240 ], [ %i.ps, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol ]
  %.067104.i.unr = phi i64 [ %.067104.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240 ], [ %i.pt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol ]
  %.171103.i.unr = phi i64 [ %.171103.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.preheader240 ], [ %i.ps, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol ]
  %i.pu = sub i64 %.067104.i.ph, %i.pa
  %i.pv = icmp ugt i64 %i.pu, -4
  br i1 %i.pv, label %._crit_edge107.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader: ; preds = %.lr.ph106.i
  %min.iters.check = icmp ult i64 %i.pa, 8
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader239, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader
  %n.vec = and i64 %i.pa, -8                      ; 4 uses
  %i.pw = add i64 %.070.i19, %n.vec               ; 2 uses
  %i.px = getelementptr [4 x i8], ptr %i.pd, i64 %.070.i19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.py = getelementptr [4 x i8], ptr %i.px, i64 %index ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  store <4 x i32> %vec.ind, ptr %i.py, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.pz, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.qa = icmp eq i64 %index.next, %n.vec
  br i1 %i.qa, label %middle.block, label %vector.body, !llvm.loop !902

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pa, %n.vec
  br i1 %cmp.n, label %._crit_edge107.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader239

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader239: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader, %middle.block
  %.067104.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader ], [ %n.vec, %middle.block ]
  %.171103.us.i.ph = phi i64 [ %.070.i19, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader ], [ %i.pw, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader239, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34
  %.067104.us.i = phi i64 [ %i.qe, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34 ], [ %.067104.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader239 ] ; 2 uses
  %.171103.us.i = phi i64 [ %i.qd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34 ], [ %.171103.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34.preheader239 ] ; 2 uses
  %i.qb = trunc i64 %.067104.us.i to i32
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.171103.us.i
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !3
  %i.qd = add i64 %.171103.us.i, 1                ; 2 uses
  %i.qe = add nuw i64 %.067104.us.i, 1            ; 2 uses
  %exitcond124.not.i = icmp eq i64 %i.qe, %i.pa
  br i1 %exitcond124.not.i, label %._crit_edge107.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34, !llvm.loop !903

._crit_edge107.i:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34, %middle.block189, %middle.block, %bb.cg
  %.171.lcssa.i29 = phi i64 [ %.070.i19, %bb.cg ], [ %i.qd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.us.i34 ], [ %i.pw, %middle.block ], [ %i.pi, %middle.block189 ], [ %.lcssa243.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit ], [ %i.rb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27 ] ; 3 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.nc)
  %i.qf = load ptr, ptr %i.nd, align 8, !tbaa !427
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.my)
  %i.qg = load ptr, ptr %i.mz, align 8, !tbaa !427
  %i.qh = load i64, ptr %i.a, align 8, !tbaa !39
  %.not115.i = icmp eq i64 %i.qh, 0
  br i1 %.not115.i, label %_ZN6duckdbL22GetRowPointersInternalILb0EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %._crit_edge107.i
  %i.qi = load ptr, ptr %i.ng, align 8, !tbaa !424 ; 2 uses
  %.not.i85.i30 = icmp eq ptr %i.qi, null
  br label %bb.ch

_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27
  %.067104.i = phi i64 [ %i.rc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27 ], [ %.067104.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit ] ; 5 uses
  %.171103.i = phi i64 [ %i.rb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27 ], [ %.171103.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27.prol.loopexit ] ; 5 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %.067104.i
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %.171103.i
  store i32 %i.qk, ptr %i.ql, align 4, !tbaa !3
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %.067104.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !3
  %i.qp = getelementptr [4 x i8], ptr %i.pd, i64 %.171103.i
  %i.qq = getelementptr i8, ptr %i.qp, i64 4
  store i32 %i.qo, ptr %i.qq, align 4, !tbaa !3
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %.067104.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !3
  %i.qu = getelementptr [4 x i8], ptr %i.pd, i64 %.171103.i
  %i.qv = getelementptr i8, ptr %i.qu, i64 8
  store i32 %i.qt, ptr %i.qv, align 4, !tbaa !3
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %.067104.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !3
  %i.qz = getelementptr [4 x i8], ptr %i.pd, i64 %.171103.i
  %i.ra = getelementptr i8, ptr %i.qz, i64 12
  store i32 %i.qy, ptr %i.ra, align 4, !tbaa !3
  %i.rb = add i64 %.171103.i, 4                   ; 2 uses
  %i.rc = add nuw i64 %.067104.i, 4               ; 2 uses
  %exitcond.not.i28.3 = icmp eq i64 %i.rc, %i.pa
  br i1 %exitcond.not.i28.3, label %._crit_edge107.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit84.i27, !llvm.loop !904

bb.ch:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i31, %.lr.ph110.i
  %.058108.i = phi i64 [ 0, %.lr.ph110.i ], [ %i.ro, %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i31 ] ; 4 uses
  br i1 %.not.i85.i30, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i31, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.058108.i
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !3
  %i.rf = zext i32 %i.re to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i31

_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i31: ; preds = %bb.ci, %bb.ch
  %i.rg = phi i64 [ %i.rf, %bb.ci ], [ %.058108.i, %bb.ch ]
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.rg
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !39
  %i.rj = load i64, ptr %i.na, align 8, !tbaa !844
  %i.rk = or i64 %i.rj, -281474976710656
  %i.rl = add i64 %i.ri, 1
  %i.rm = and i64 %i.rk, %i.rl
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %.058108.i
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !39
  %i.ro = add nuw i64 %.058108.i, 1               ; 2 uses
  %i.rp = load i64, ptr %i.a, align 8, !tbaa !39  ; 3 uses
  %i.rq = icmp ult i64 %i.ro, %i.rp
  br i1 %i.rq, label %bb.ch, label %._crit_edge111.i, !llvm.loop !905

._crit_edge111.i:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit86.i31
  %.not.i32 = icmp eq i64 %i.rp, 0
  br i1 %.not.i32, label %_ZN6duckdbL22GetRowPointersInternalILb0EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, label %bb.by, !prof !906, !llvm.loop !907

_ZN6duckdbL22GetRowPointersInternalILb0EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit: ; preds = %bb.bz, %bb.cd, %_ZN6duckdbL16ProbeForPointersILb0EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i, %._crit_edge107.i, %._crit_edge111.i
  %.27297.i33 = phi i64 [ %.171.lcssa.i29, %._crit_edge111.i ], [ %.070.i19, %_ZN6duckdbL16ProbeForPointersILb0EEEmRNS_13JoinHashTable10ProbeStateERS1_PNS_10ht_entry_tERNS_6VectorEPKNS_15SelectionVectorEmb.exit.i ], [ %.070.i19, %bb.bz ], [ %.070.i19, %bb.cd ], [ %.171.lcssa.i29, %._crit_edge107.i ]
  store i64 %.27297.i33, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.cj

bb.cj:                                            ; preds = %_ZN6duckdbL22GetRowPointersInternalILb0EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit, %_ZN6duckdbL22GetRowPointersInternalILb1EEEvRNS_9DataChunkERNS_19TupleDataChunkStateERNS_13JoinHashTable10ProbeStateERNS_6VectorEPKNS_15SelectionVectorERmRS5_PNS_10ht_entry_tES9_RSA_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable4HashERNS_9DataChunkERKNS_15SelectionVectorEmRNS_6VectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !409
  %i.c = icmp eq i64 %3, %i.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !409
  tail call void @_ZN6duckdb16VectorOperations4HashERNS_6VectorES2_m(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 24
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph27, label %.loopexit

.lr.ph27:                                         ; preds = %bb.b, %.lr.ph27
  %.02226 = phi i64 [ %i.q, %.lr.ph27 ], [ 1, %bb.b ] ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.02226)
  %i.p = load i64, ptr %i.a, align 8, !tbaa !409
  tail call void @_ZN6duckdb16VectorOperations11CombineHashERNS_6VectorES2_m(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %i.o, i64 noundef %i.p)
  %i.q = add nuw i64 %.02226, 1                   ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = icmp ult i64 %i.q, %i.w
  br i1 %i.x, label %.lr.ph27, label %.loopexit, !llvm.loop !908

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb16VectorOperations4HashERNS_6VectorES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.025 = phi i64 [ %i.ai, %.lr.ph ], [ 1, %bb.c ] ; 2 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.025)
  tail call void @_ZN6duckdb16VectorOperations11CombineHashERNS_6VectorES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
  %i.ai = add nuw i64 %.025, 1                    ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 24
  %i.ap = icmp ult i64 %i.ai, %i.ao
  br i1 %i.ap, label %.lr.ph, label %.loopexit, !llvm.loop !909

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph27, %bb.c, %bb.b
  ret void
}

declare void @_ZN6duckdb16VectorOperations4HashERNS_6VectorES2_m(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb16VectorOperations11CombineHashERNS_6VectorES2_m(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb16VectorOperations4HashERNS_6VectorES2_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #1

end_hunk_1
begin_hunk_2_@_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EEixEm:bb.a
  store i64 %i.i, ptr %i.b, align 8, !tbaa !39
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_21TupleDataVectorFormatELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [152 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable12InsertHashesERNS_6VectorEmRNS_19TupleDataChunkStateERNS0_11InsertStateEb(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(864) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %6 = alloca %"class.duckdb::Vector", align 8    ; 12 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.e = load i8, ptr %i.d, align 8, !tbaa !849, !range !66, !noundef !69
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 944
  tail call void @_ZNK6duckdb11BloomFilter12InsertHashesERKNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !880  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull align 8 dereferenceable(104) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  br i1 %5, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  invoke fastcc void @_ZN6duckdbL27ApplyBitmaskAndGetSaltBuildERNS_6VectorES1_RKmS3_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(864) %4, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.n = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.l)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %.noexc
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !427  ; 13 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(864) %4)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc12
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !427  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.s)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !427
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %.noexc14
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !427  ; 8 uses
  %i.x = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc16:                                         ; preds = %.noexc15
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.z = load i8, ptr %i.y, align 8, !tbaa !287
  %.fr163.i = freeze i8 %i.z
  %i.aa = icmp eq i8 %.fr163.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !841
  %i.ad = invoke noundef zeroext i1 @_ZN6duckdb19PropagatesBuildSideENS_8JoinTypeE(i8 noundef zeroext %i.ac)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc16
  br i1 %i.ad, label %.preheader127.i, label %.loopexit.i

.preheader127.i:                                  ; preds = %.noexc17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !854, !nonnull !69, !align !336 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !855
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !856
  %.not162.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not162.i, label %.loopexit.i, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %.preheader127.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 20 uses
  br i1 %i.aa, label %.lr.ph143.split.us.i, label %.lr.ph143.split.i

.lr.ph143.split.us.i:                             ; preds = %.lr.ph143.i, %._crit_edge.split.us.us.i
  %.0142.us.i = phi i64 [ %.1.us.i, %._crit_edge.split.us.us.i ], [ %2, %.lr.ph143.i ] ; 16 uses
  %.088141.us.i = phi ptr [ %.189.us.i, %._crit_edge.split.us.us.i ], [ %i.x, %.lr.ph143.i ] ; 2 uses
  %.092139.us.i = phi i64 [ %i.am, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph143.i ] ; 2 uses
  %i.al = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 noundef %.092139.us.i)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %.lr.ph143.split.us.i
  br i1 %i.al, label %._crit_edge.split.us.us.i, label %bb.f

bb.f:                                             ; preds = %.noexc18
  %.not165.i = icmp eq i64 %.0142.us.i, 0
  br i1 %.not165.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i, %middle.block266, %middle.block251, %bb.f, %.noexc18
  %.189.us.i = phi ptr [ %.088141.us.i, %.noexc18 ], [ %i.ak, %bb.f ], [ %i.ak, %middle.block251 ], [ %i.ak, %middle.block266 ], [ %i.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %i.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i ], [ %i.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit ] ; 2 uses
  %.1.us.i = phi i64 [ %.0142.us.i, %.noexc18 ], [ 0, %bb.f ], [ %.0142.us.i, %middle.block251 ], [ %.0142.us.i, %middle.block266 ], [ %.0142.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.0142.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i ], [ %.0142.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit ] ; 2 uses
  %i.am = add nuw i64 %.092139.us.i, 1            ; 2 uses
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !854, !nonnull !69, !align !336 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !855
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !856
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = icmp ult i64 %i.am, %i.au
  br i1 %i.av, label %.lr.ph143.split.us.i, label %.loopexit.i, !llvm.loop !917

.lr.ph.us.i:                                      ; preds = %bb.f
  %i.aw = load ptr, ptr %.088141.us.i, align 8, !tbaa !424 ; 8 uses
  %.not.i.us.i = icmp eq ptr %i.aw, null
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !424 ; 9 uses
  %min.iters.check241 = icmp ult i64 %.0142.us.i, 8 ; 2 uses
  br i1 %.not.i.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader: ; preds = %.lr.ph.us.i
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = ptrtoaddr ptr %i.aw to i64
  %i.ba = sub i64 %i.az, %i.ay
  %diff.check255 = icmp ugt i64 %i.ba, -32
  %or.cond = select i1 %min.iters.check241, i1 true, i1 %diff.check255
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309, label %vector.ph258

vector.ph258:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader
  %n.vec260 = and i64 %.0142.us.i, -8             ; 3 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph258
  %index262 = phi i64 [ 0, %vector.ph258 ], [ %index.next265, %vector.body261 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index262 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load263 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !3
  %wide.load264 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index262 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %wide.load263, ptr %i.bd, align 4, !tbaa !3
  store <4 x i32> %wide.load264, ptr %i.be, align 4, !tbaa !3
  %index.next265 = add nuw i64 %index262, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.bf, label %middle.block266, label %vector.body261, !llvm.loop !918

middle.block266:                                  ; preds = %vector.body261
  %cmp.n267 = icmp eq i64 %.0142.us.i, %n.vec260
  br i1 %cmp.n267, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader, %middle.block266
  %.094130.us.us147.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader ], [ %n.vec260, %middle.block266 ] ; 3 uses
  %xtraiter363 = and i64 %.0142.us.i, 3           ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol
  %.094130.us.us147.i.prol = phi i64 [ %i.bi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol ], [ %.094130.us.us147.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309 ] ; 3 uses
  %prol.iter365 = phi i64 [ %prol.iter365.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.094130.us.us147.i.prol
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add nuw i64 %.094130.us.us147.i.prol, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.094130.us.us147.i.prol
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !3
  %prol.iter365.next = add i64 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i64 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol, !llvm.loop !919

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309
  %.094130.us.us147.i.unr = phi i64 [ %.094130.us.us147.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.preheader309 ], [ %i.bi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol ]
  %i.bk = sub i64 %.094130.us.us147.i.ph, %.0142.us.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader: ; preds = %.lr.ph.us.i
  br i1 %min.iters.check241, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308, label %vector.ph242

vector.ph242:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader
  %n.vec244 = and i64 %.0142.us.i, -8             ; 3 uses
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph242
  %index246 = phi i64 [ 0, %vector.ph242 ], [ %index.next249, %vector.body245 ] ; 2 uses
  %vec.ind247 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph242 ], [ %vec.ind.next250, %vector.body245 ] ; 3 uses
  %step.add248 = add <4 x i32> %vec.ind247, splat (i32 4)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index246 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %vec.ind247, ptr %i.bm, align 4, !tbaa !3
  store <4 x i32> %step.add248, ptr %i.bn, align 4, !tbaa !3
  %index.next249 = add nuw i64 %index246, 8       ; 2 uses
  %vec.ind.next250 = add <4 x i32> %vec.ind247, splat (i32 8)
  %i.bo = icmp eq i64 %index.next249, %n.vec244
  br i1 %i.bo, label %middle.block251, label %vector.body245, !llvm.loop !920

middle.block251:                                  ; preds = %vector.body245
  %cmp.n252 = icmp eq i64 %.0142.us.i, %n.vec244
  br i1 %cmp.n252, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader, %middle.block251
  %.094130.us.us.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader ], [ %n.vec244, %middle.block251 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i
  %.094130.us.us147.i = phi i64 [ %i.cd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i ], [ %.094130.us.us147.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.094130.us.us147.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = add nuw i64 %.094130.us.us147.i, 1      ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.094130.us.us147.i
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.br
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add nuw i64 %.094130.us.us147.i, 2      ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.br
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = add nuw i64 %.094130.us.us147.i, 3      ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bv
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bz
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = add nuw i64 %.094130.us.us147.i, 4      ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bz
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !3
  %exitcond176.not.i.3 = icmp eq i64 %i.cd, %.0142.us.i
  br i1 %exitcond176.not.i.3, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us146.i, !llvm.loop !921

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i
  %.094130.us.us.us.i = phi i64 [ %i.cf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i ], [ %.094130.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i.preheader308 ] ; 3 uses
  %i.cf = add nuw i64 %.094130.us.us.us.i, 1      ; 2 uses
  %i.cg = trunc i64 %.094130.us.us.us.i to i32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.094130.us.us.us.i
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !3
  %exitcond177.not.i = icmp eq i64 %i.cf, %.0142.us.i
  br i1 %exitcond177.not.i, label %._crit_edge.split.us.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i, !llvm.loop !922

.lr.ph143.split.i:                                ; preds = %.lr.ph143.i, %._crit_edge.split.i
  %.0142.i = phi i64 [ %.1.i, %._crit_edge.split.i ], [ %2, %.lr.ph143.i ] ; 10 uses
  %.088141.i = phi ptr [ %.189.i, %._crit_edge.split.i ], [ %i.x, %.lr.ph143.i ] ; 2 uses
  %.092139.i = phi i64 [ %i.fi, %._crit_edge.split.i ], [ 0, %.lr.ph143.i ] ; 4 uses
  %i.ci = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 noundef %.092139.i)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc19:                                         ; preds = %.lr.ph143.split.i
  br i1 %i.ci, label %._crit_edge.split.i, label %bb.g

bb.g:                                             ; preds = %.noexc19
  %i.cj = lshr i64 %.092139.i, 3                  ; 6 uses
  %.not164.i = icmp eq i64 %.0142.i, 0
  br i1 %.not164.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ck = load ptr, ptr %.088141.i, align 8, !tbaa !424 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  %i.cl = trunc i64 %.092139.i to i32
  %i.cm = and i32 %i.cl, 7
  %i.cn = shl nuw nsw i32 1, %i.cm                ; 6 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %xtraiter351 = and i64 %.0142.i, 1
  %i.co = icmp eq i64 %.0142.i, 1
  br i1 %i.co, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %unroll_iter355 = and i64 %.0142.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader: ; preds = %.lr.ph.i
  %xtraiter357 = and i64 %.0142.i, 1
  %i.cp = icmp eq i64 %.0142.i, 1
  br i1 %i.cp, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader
  %unroll_iter361 = and i64 %.0142.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i: ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new
  %.094130.us131.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new ], [ %.195.us135.i.1, %bb.h ] ; 3 uses
  %.096129.us132.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new ], [ %i.dl, %bb.h ] ; 4 uses
  %niter362 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.preheader.new ], [ %niter362.next.1, %bb.h ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.096129.us132.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !382
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !272
  %i.cu = zext i8 %i.ct to i32
  %i.cv = and i32 %i.cn, %i.cu
  %.not123.us.i = icmp eq i32 %i.cv, 0
  br i1 %.not123.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1, label %.critedge.thread.us134.i

.critedge.thread.us134.i:                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i
  %i.cw = add i64 %.094130.us131.i, 1
  %i.cx = trunc i64 %.096129.us132.i to i32
  %i.cy = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.094130.us131.i
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1: ; preds = %.critedge.thread.us134.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i
  %.195.us135.i = phi i64 [ %i.cw, %.critedge.thread.us134.i ], [ %.094130.us131.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i ] ; 3 uses
  %i.da = or disjoint i64 %.096129.us132.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !382
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cj
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !272
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.cn, %i.df
  %.not123.us.i.1 = icmp eq i32 %i.dg, 0
  br i1 %.not123.us.i.1, label %bb.h, label %.critedge.thread.us134.i.1

.critedge.thread.us134.i.1:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1
  %i.dh = add i64 %.195.us135.i, 1
  %i.di = trunc i64 %i.da to i32
  %i.dj = load ptr, ptr %i.ak, align 8, !tbaa !424
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.195.us135.i
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %.critedge.thread.us134.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1
  %.195.us135.i.1 = phi i64 [ %i.dh, %.critedge.thread.us134.i.1 ], [ %.195.us135.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i.1 ] ; 3 uses
  %i.dl = add nuw i64 %.096129.us132.i, 2         ; 2 uses
  %niter362.next.1 = add i64 %niter362, 2         ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %._crit_edge.split.i.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us133.i, !llvm.loop !923

end_hunk_2
begin_hunk_3_@_ZN6duckdb13JoinHashTable12InsertHashesERNS_6VectorEmRNS_19TupleDataChunkStateERNS0_11InsertStateEb:bb.a
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader
  %.03242.us45.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.preheader ], [ %i.lu, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa ] ; 2 uses
  %lcmp.mod373 = trunc i64 %i.ie to i1
  call void @llvm.assume(i1 %lcmp.mod373)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.03242.us45.i.i.epil.init
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !3  ; 2 uses
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.nd ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !39
  %i.ng = add i64 %i.nf, 1
  %i.nh = and i64 %i.ng, %i.ft
  store i64 %i.nh, ptr %i.ne, align 8, !tbaa !39
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.us45.i.i.epil.init
  store i32 %i.nc, ptr %i.ni, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.epil.preheader: ; preds = %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader
  %.03242.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.preheader ], [ %i.ms, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa ] ; 2 uses
  %lcmp.mod368 = trunc i64 %i.ie to i1
  call void @llvm.assume(i1 %lcmp.mod368)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.03242.i.i.epil.init
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !3
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3  ; 2 uses
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.no ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !39
  %i.nr = add i64 %i.nq, 1
  %i.ns = and i64 %i.nr, %i.ft
  store i64 %i.ns, ptr %i.np, align 8, !tbaa !39
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.03242.i.i.epil.init
  store i32 %i.nn, ptr %i.nt, align 4, !tbaa !3
  br label %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i

_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.i.i.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit305.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us44.i.i.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit304.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.i.i.epil.preheader, %_ZN6duckdbL31InsertMatchesAndIncrementMissesILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_13JoinHashTable11InsertStateERS5_PKPhPmPKmmmm.exit.i.loopexit303.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit36.us.us.i.i, %middle.block284, %.loopexit.i.i
  %.pr.i = load i64, ptr %i.b, align 8, !tbaa !39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %.not.i = icmp eq i64 %.pr.i, 0
  br i1 %.not.i, label %_ZN6duckdbL16InsertHashesLoopILb1EEEvPSt6atomicINS_10ht_entry_tEERNS_6VectorES6_RKmRNS_13JoinHashTable11InsertStateERKNS_19TupleDataCollectionERS9_.exit, label %.preheader.i, !llvm.loop !932

.loopexit:                                        ; preds = %bb.q, %.noexc20, %.noexc21, %.noexc22, %.noexc23, %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph143.split.us.i
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph143.split.i
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN6duckdbL20PerformKeyComparisonERNS_13JoinHashTable11InsertStateERS0_RKNS_19TupleDataCollectionERNS_6VectorEmRmS9_.exit.i33, %.noexc75, %.noexc74, %.noexc73, %.noexc72, %bb.ag
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph130.split.us.i
  %lpad.loopexit97 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph130.split.i
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc68, %.noexc67, %.noexc66, %.noexc65, %.noexc64, %.noexc63, %.noexc62, %bb.v, %.noexc16, %.noexc15, %.noexc14, %.noexc13, %.noexc12, %.noexc11, %.noexc, %bb.e, %bb.u, %bb.d
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit82, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit86, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit92, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit97, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit100, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %lpad.phi

bb.u:                                             ; preds = %bb.c
  %i.nu = invoke noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  invoke fastcc void @_ZN6duckdbL27ApplyBitmaskAndGetSaltBuildERNS_6VectorES1_RKmS3_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(864) %4, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.nv)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.v
  %i.nw = invoke noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb19TupleDataCollection9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(192) %i.nu)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %.noexc62
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %.noexc63
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !427 ; 13 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(864) %4)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65:                                         ; preds = %.noexc64
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !427 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ob)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %.noexc65
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !427
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %.noexc66
  %i.oe = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !427 ; 8 uses
  %i.og = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc68:                                         ; preds = %.noexc67
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nw, i64 216
  %i.oi = load i8, ptr %i.oh, align 8, !tbaa !287
  %.fr150.i = freeze i8 %i.oi
  %i.oj = icmp eq i8 %.fr150.i, 1
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ol = load i8, ptr %i.ok, align 8, !tbaa !841
  %i.om = invoke noundef zeroext i1 @_ZN6duckdb19PropagatesBuildSideENS_8JoinTypeE(i8 noundef zeroext %i.ol)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %.noexc68
  br i1 %i.om, label %.preheader114.i, label %.loopexit.i26

.preheader114.i:                                  ; preds = %.noexc69
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !854, !nonnull !69, !align !336 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !855
  %i.or = load ptr, ptr %i.oo, align 8, !tbaa !856
  %.not149.i = icmp eq ptr %i.oq, %i.or
  br i1 %.not149.i, label %.loopexit.i26, label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.preheader114.i
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 20 uses
  br i1 %i.oj, label %.lr.ph130.split.us.i, label %.lr.ph130.split.i

.lr.ph130.split.us.i:                             ; preds = %.lr.ph130.i, %._crit_edge.split.us.us.i59
  %.0129.us.i = phi i64 [ %.1.us.i60, %._crit_edge.split.us.us.i59 ], [ %2, %.lr.ph130.i ] ; 16 uses
  %.080128.us.i = phi ptr [ %.181.us.i, %._crit_edge.split.us.us.i59 ], [ %i.og, %.lr.ph130.i ] ; 2 uses
  %.084126.us.i = phi i64 [ %i.ov, %._crit_edge.split.us.us.i59 ], [ 0, %.lr.ph130.i ] ; 2 uses
  %i.ou = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.os, i64 noundef %.084126.us.i)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %.lr.ph130.split.us.i
  br i1 %i.ou, label %._crit_edge.split.us.us.i59, label %bb.w

bb.w:                                             ; preds = %.noexc70
  %.not152.i = icmp eq i64 %.0129.us.i, 0
  br i1 %.not152.i, label %._crit_edge.split.us.us.i59, label %.lr.ph.us.i57

._crit_edge.split.us.us.i59:                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61, %middle.block207, %middle.block, %bb.w, %.noexc70
  %.181.us.i = phi ptr [ %.080128.us.i, %.noexc70 ], [ %i.ot, %bb.w ], [ %i.ot, %middle.block ], [ %i.ot, %middle.block207 ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61 ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i ], [ %i.ot, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit ] ; 2 uses
  %.1.us.i60 = phi i64 [ %.0129.us.i, %.noexc70 ], [ 0, %bb.w ], [ %.0129.us.i, %middle.block ], [ %.0129.us.i, %middle.block207 ], [ %.0129.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61 ], [ %.0129.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i ], [ %.0129.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit ] ; 2 uses
  %i.ov = add nuw i64 %.084126.us.i, 1            ; 2 uses
  %i.ow = load ptr, ptr %i.on, align 8, !tbaa !854, !nonnull !69, !align !336 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !855
  %i.oz = load ptr, ptr %i.ow, align 8, !tbaa !856
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = sdiv exact i64 %i.pc, 24
  %i.pe = icmp ult i64 %i.ov, %i.pd
  br i1 %i.pe, label %.lr.ph130.split.us.i, label %.loopexit.i26, !llvm.loop !933

.lr.ph.us.i57:                                    ; preds = %bb.w
  %i.pf = load ptr, ptr %.080128.us.i, align 8, !tbaa !424 ; 8 uses
  %.not.i.us.i58 = icmp eq ptr %i.pf, null
  %i.pg = load ptr, ptr %i.ot, align 8, !tbaa !424 ; 9 uses
  %min.iters.check = icmp ult i64 %.0129.us.i, 8  ; 2 uses
  br i1 %.not.i.us.i58, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader: ; preds = %.lr.ph.us.i57
  %i.ph = ptrtoaddr ptr %i.pg to i64
  %i.pi = ptrtoaddr ptr %i.pf to i64
  %i.pj = sub i64 %i.pi, %i.ph
  %diff.check = icmp ugt i64 %i.pj, -32
  %or.cond301 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond301, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322, label %vector.ph200

vector.ph200:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader
  %n.vec202 = and i64 %.0129.us.i, -8             ; 3 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body203 ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index204 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %wide.load = load <4 x i32>, ptr %i.pk, align 4, !tbaa !3
  %wide.load205 = load <4 x i32>, ptr %i.pl, align 4, !tbaa !3
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index204 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store <4 x i32> %wide.load, ptr %i.pm, align 4, !tbaa !3
  store <4 x i32> %wide.load205, ptr %i.pn, align 4, !tbaa !3
  %index.next206 = add nuw i64 %index204, 8       ; 2 uses
  %i.po = icmp eq i64 %index.next206, %n.vec202
  br i1 %i.po, label %middle.block207, label %vector.body203, !llvm.loop !934

middle.block207:                                  ; preds = %vector.body203
  %cmp.n208 = icmp eq i64 %.0129.us.i, %n.vec202
  br i1 %cmp.n208, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader, %middle.block207
  %.086117.us.us134.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader ], [ %n.vec202, %middle.block207 ] ; 3 uses
  %xtraiter334 = and i64 %.0129.us.i, 3           ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol
  %.086117.us.us134.i.prol = phi i64 [ %i.pr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol ], [ %.086117.us.us134.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322 ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %.086117.us.us134.i.prol
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !3
  %i.pr = add nuw i64 %.086117.us.us134.i.prol, 1 ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.086117.us.us134.i.prol
  store i32 %i.pq, ptr %i.ps, align 4, !tbaa !3
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter334
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol, !llvm.loop !935

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322
  %.086117.us.us134.i.unr = phi i64 [ %.086117.us.us134.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.preheader322 ], [ %i.pr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol ]
  %i.pt = sub i64 %.086117.us.us134.i.ph, %.0129.us.i
  %i.pu = icmp ugt i64 %i.pt, -4
  br i1 %i.pu, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader: ; preds = %.lr.ph.us.i57
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader
  %n.vec = and i64 %.0129.us.i, -8                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store <4 x i32> %vec.ind, ptr %i.pv, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.pw, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.px = icmp eq i64 %index.next, %n.vec
  br i1 %i.px, label %middle.block, label %vector.body, !llvm.loop !936

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0129.us.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader, %middle.block
  %.086117.us.us.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i
  %.086117.us.us134.i = phi i64 [ %i.qm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i ], [ %.086117.us.us134.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i.prol.loopexit ] ; 6 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %.086117.us.us134.i
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = add nuw i64 %.086117.us.us134.i, 1      ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.086117.us.us134.i
  store i32 %i.pz, ptr %i.qb, align 4, !tbaa !3
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qa
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = add nuw i64 %.086117.us.us134.i, 2      ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qa
  store i32 %i.qd, ptr %i.qf, align 4, !tbaa !3
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qe
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !3
  %i.qi = add nuw i64 %.086117.us.us134.i, 3      ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qe
  store i32 %i.qh, ptr %i.qj, align 4, !tbaa !3
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.qi
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3
  %i.qm = add nuw i64 %.086117.us.us134.i, 4      ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.qi
  store i32 %i.ql, ptr %i.qn, align 4, !tbaa !3
  %exitcond163.not.i.3 = icmp eq i64 %i.qm, %.0129.us.i
  br i1 %exitcond163.not.i.3, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us133.i, !llvm.loop !937

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61
  %.086117.us.us.us.i = phi i64 [ %i.qo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61 ], [ %.086117.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61.preheader321 ] ; 3 uses
  %i.qo = add nuw i64 %.086117.us.us.us.i, 1      ; 2 uses
  %i.qp = trunc i64 %.086117.us.us.us.i to i32
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.086117.us.us.us.i
  store i32 %i.qp, ptr %i.qq, align 4, !tbaa !3
  %exitcond164.not.i = icmp eq i64 %i.qo, %.0129.us.i
  br i1 %exitcond164.not.i, label %._crit_edge.split.us.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i61, !llvm.loop !938

.lr.ph130.split.i:                                ; preds = %.lr.ph130.i, %._crit_edge.split.i55
  %.0129.i = phi i64 [ %.1.i56, %._crit_edge.split.i55 ], [ %2, %.lr.ph130.i ] ; 10 uses
  %.080128.i = phi ptr [ %.181.i, %._crit_edge.split.i55 ], [ %i.og, %.lr.ph130.i ] ; 2 uses
  %.084126.i = phi i64 [ %i.tr, %._crit_edge.split.i55 ], [ 0, %.lr.ph130.i ] ; 4 uses
  %i.qr = invoke noundef zeroext i1 @_ZNK6duckdb6vectorIbLb1ESaIbEE3getILb1EEEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.os, i64 noundef %.084126.i)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %.lr.ph130.split.i
  br i1 %i.qr, label %._crit_edge.split.i55, label %bb.x

bb.x:                                             ; preds = %.noexc71
  %i.qs = lshr i64 %.084126.i, 3                  ; 6 uses
  %.not151.i = icmp eq i64 %.0129.i, 0
  br i1 %.not151.i, label %._crit_edge.split.i55, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.x
  %i.qt = load ptr, ptr %.080128.i, align 8, !tbaa !424 ; 4 uses
  %.not.i.i51 = icmp eq ptr %i.qt, null
  %i.qu = trunc i64 %.084126.i to i32
  %i.qv = and i32 %i.qu, 7
  %i.qw = shl nuw nsw i32 1, %i.qv                ; 6 uses
  br i1 %.not.i.i51, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader: ; preds = %.lr.ph.i50
  %xtraiter = and i64 %.0129.i, 1
  %i.qx = icmp eq i64 %.0129.i, 1
  br i1 %i.qx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52.preheader
  %unroll_iter = and i64 %.0129.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i52

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader: ; preds = %.lr.ph.i50
  %xtraiter328 = and i64 %.0129.i, 1
  %i.qy = icmp eq i64 %.0129.i, 1
  br i1 %i.qy, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader
  %unroll_iter332 = and i64 %.0129.i, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i: ; preds = %bb.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new
  %.086117.us118.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new ], [ %.187.us122.i.1, %bb.y ] ; 3 uses
  %.088116.us119.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new ], [ %i.ru, %bb.y ] ; 4 uses
  %niter333 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.preheader.new ], [ %niter333.next.1, %bb.y ]
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %.088116.us119.i
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !382
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qs
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !272
  %i.rd = zext i8 %i.rc to i32
  %i.re = and i32 %i.qw, %i.rd
  %.not110.us.i = icmp eq i32 %i.re, 0
  br i1 %.not110.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1, label %.critedge.thread.us121.i

.critedge.thread.us121.i:                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i
  %i.rf = add i64 %.086117.us118.i, 1
  %i.rg = trunc i64 %.088116.us119.i to i32
  %i.rh = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %.086117.us118.i
  store i32 %i.rg, ptr %i.ri, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1: ; preds = %.critedge.thread.us121.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i
  %.187.us122.i = phi i64 [ %i.rf, %.critedge.thread.us121.i ], [ %.086117.us118.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i ] ; 3 uses
  %i.rj = or disjoint i64 %.088116.us119.i, 1     ; 2 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.rj
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !382
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.qs
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !272
  %i.ro = zext i8 %i.rn to i32
  %i.rp = and i32 %i.qw, %i.ro
  %.not110.us.i.1 = icmp eq i32 %i.rp, 0
  br i1 %.not110.us.i.1, label %bb.y, label %.critedge.thread.us121.i.1

.critedge.thread.us121.i.1:                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1
  %i.rq = add i64 %.187.us122.i, 1
  %i.rr = trunc i64 %i.rj to i32
  %i.rs = load ptr, ptr %i.ot, align 8, !tbaa !424
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.187.us122.i
  store i32 %i.rr, ptr %i.rt, align 4, !tbaa !3
  br label %bb.y

bb.y:                                             ; preds = %.critedge.thread.us121.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1
  %.187.us122.i.1 = phi i64 [ %i.rq, %.critedge.thread.us121.i.1 ], [ %.187.us122.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i.1 ] ; 3 uses
  %i.ru = add nuw i64 %.088116.us119.i, 2         ; 2 uses
  %niter333.next.1 = add i64 %niter333, 2         ; 2 uses
  %niter333.ncmp.1 = icmp eq i64 %niter333.next.1, %unroll_iter332
  br i1 %niter333.ncmp.1, label %._crit_edge.split.i55.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us120.i, !llvm.loop !939

end_hunk_3
begin_hunk_4_@_ZN6duckdb13JoinHashTable13ScanStructure13NextInnerJoinERNS_9DataChunkES3_S3_:bb.a
_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i: ; preds = %bb.ak, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new
  %.016.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %.1.us.i.i.1, %bb.ak ] ; 3 uses
  %.01415.us.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %i.er, %bb.ak ] ; 3 uses
  %niter204 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader.new ], [ %niter204.next.1, %bb.ak ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.01415.us.i.i ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !382
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eb
  %.val.val.us.i.i = load i64, ptr %i.eg, align 1 ; 2 uses
  %i.eh = inttoptr i64 %.val.val.us.i.i to ptr
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !382
  %.not.us.i.i = icmp eq i64 %.val.val.us.i.i, 0
  br i1 %.not.us.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %i.ei = add i64 %.016.us.i.i, 1
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i
  store i32 poison, ptr %i.ej, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1: ; preds = %bb.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i
  %.1.us.i.i = phi i64 [ %i.ei, %bb.ai ], [ %.016.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.01415.us.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !382
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eb
  %.val.val.us.i.i.1 = load i64, ptr %i.en, align 1 ; 2 uses
  %i.eo = inttoptr i64 %.val.val.us.i.i.1 to ptr
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !382
  %.not.us.i.i.1 = icmp eq i64 %.val.val.us.i.i.1, 0
  br i1 %.not.us.i.i.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %i.ep = add i64 %.1.us.i.i, 1
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1.us.i.i
  store i32 poison, ptr %i.eq, align 4, !tbaa !3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1
  %.1.us.i.i.1 = phi i64 [ %i.ep, %bb.aj ], [ %.1.us.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.1 ] ; 3 uses
  %i.er = add nuw i64 %.01415.us.i.i, 2           ; 2 uses
  %niter204.next.1 = add i64 %niter204, 2         ; 2 uses
  %niter204.ncmp.1 = icmp eq i64 %niter204.next.1, %unroll_iter203
  br i1 %niter204.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new
  %.016.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %.1.i.i.1, %bb.an ] ; 3 uses
  %.01415.i.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %i.fl, %bb.an ] ; 3 uses
  %niter198 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader.new ], [ %niter198.next.1, %bb.an ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.01415.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 2 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.eu ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !382
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eb
  %.val.val.i.i = load i64, ptr %i.ex, align 1    ; 2 uses
  %i.ey = inttoptr i64 %.val.val.i.i to ptr
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !382
  %.not.i.i = icmp eq i64 %.val.val.i.i, 0
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1, label %bb.al

bb.al:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %i.ez = add i64 %.016.i.i, 1
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.016.i.i
  store i32 %i.et, ptr %i.fa, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1: ; preds = %bb.al, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i
  %.1.i.i = phi i64 [ %i.ez, %bb.al ], [ %.016.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.01415.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !382
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.eb
  %.val.val.i.i.1 = load i64, ptr %i.fh, align 1  ; 2 uses
  %i.fi = inttoptr i64 %.val.val.i.i.1 to ptr
  store ptr %i.fi, ptr %i.ff, align 8, !tbaa !382
  %.not.i.i.1 = icmp eq i64 %.val.val.i.i.1, 0
  br i1 %.not.i.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %i.fj = add i64 %.1.i.i, 1
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.1.i.i
  store i32 %i.fd, ptr %i.fk, align 4, !tbaa !3
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1
  %.1.i.i.1 = phi i64 [ %i.fj, %bb.am ], [ %.1.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.1 ] ; 3 uses
  %i.fl = add nuw i64 %.01415.i.i, 2              ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, !llvm.loop !993

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa: ; preds = %bb.ak
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader
  %.016.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %.1.us.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.preheader ], [ %i.er, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod202 = trunc i64 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod202)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.01415.us.i.i.epil.init ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !382
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.eb
  %.val.val.us.i.i.epil = load i64, ptr %i.fo, align 1 ; 2 uses
  %i.fp = inttoptr i64 %.val.val.us.i.i.epil to ptr
  store ptr %i.fp, ptr %i.fm, align 8, !tbaa !382
  %.not.us.i.i.epil = icmp eq i64 %.val.val.us.i.i.epil, 0
  br i1 %.not.us.i.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader
  %i.fq = add i64 %.016.us.i.i.epil.init, 1
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i.epil.init
  store i32 poison, ptr %i.fr, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa: ; preds = %bb.an
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %.1.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa ] ; 3 uses
  %.01415.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.preheader ], [ %i.fl, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa ]
  %lcmp.mod196 = trunc i64 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.01415.i.i.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3  ; 2 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.fu ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !382
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.eb
  %.val.val.i.i.epil = load i64, ptr %i.fx, align 1 ; 2 uses
  %i.fy = inttoptr i64 %.val.val.i.i.epil to ptr
  store ptr %i.fy, ptr %i.fv, align 8, !tbaa !382
  %.not.i.i.epil = icmp eq i64 %.val.val.i.i.epil, 0
  br i1 %.not.i.i.epil, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader
  %i.fz = add i64 %.016.i.i.epil.init, 1
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.016.i.i.epil.init
  store i32 %i.ft, ptr %i.ga, align 4, !tbaa !3
  br label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit

_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit: ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa, %bb.ap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa, %bb.ao, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader, %._crit_edge, %bb.ah
  %.0.lcssa.sink.i.i = phi i64 [ 0, %._crit_edge ], [ 0, %bb.ah ], [ %.016.us.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i.epil.preheader ], [ %.1.us.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit.unr-lcssa ], [ %i.fq, %bb.ao ], [ %.1.i.i.1, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit.loopexit165.unr-lcssa ], [ %i.fz, %bb.ap ], [ %.016.i.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i.epil.preheader ]
  store i64 %.0.lcssa.sink.i.i, ptr %i.b, align 8, !tbaa !979
  br label %.loopexit

bb.aq:                                            ; preds = %.lr.ph97, %bb.aq
  %.04396 = phi i64 [ 0, %.lr.ph97 ], [ %i.gs, %bb.aq ] ; 3 uses
  %i.gb = load ptr, ptr %i.ds, align 8, !tbaa !410
  %i.gc = load ptr, ptr %2, align 8, !tbaa !411
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 104
  %i.gh = add i64 %i.gg, %.04396
  %i.gi = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.gh)
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !992, !nonnull !69, !align !336
  %i.gm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i64 noundef %.04396)
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !39
  %i.go = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 856
  %i.gr = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gq)
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.gr, ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.040, i64 noundef %i.gn, ptr noundef nonnull align 8 dereferenceable(104) %i.gi, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 0)
  %i.gs = add nuw i64 %.04396, 1                  ; 2 uses
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !37
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 3
  %i.hd = icmp ult i64 %i.gs, %i.hc
  br i1 %i.hd, label %bb.aq, label %._crit_edge, !llvm.loop !994

.lr.ph.i:                                         ; preds = %bb.af
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !424 ; 8 uses
  %i.hf = ptrtoaddr ptr %i.he to i64
  %.not.i.i59 = icmp eq ptr %i.he, null
  %i.hg = load ptr, ptr %i.m, align 8, !tbaa !424 ; 2 uses
  %i.hh = ptrtoaddr ptr %i.hg to i64
  %i.hi = getelementptr [4 x i8], ptr %i.hg, i64 %.095 ; 8 uses
  %min.iters.check = icmp ult i64 %.040, 8        ; 2 uses
  br i1 %.not.i.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %i.hj = shl i64 %.095, 2
  %i.hk = add i64 %i.hj, %i.hh
  %i.hl = sub i64 %i.hf, %i.hk
  %diff.check = icmp ugt i64 %i.hl, -32
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck
  %n.vec157 = and i64 %.040, -8                   ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body158 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index159 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load = load <4 x i32>, ptr %i.hm, align 4, !tbaa !3
  %wide.load160 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !3
  %i.ho = getelementptr [4 x i8], ptr %i.hi, i64 %index159 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 16
  store <4 x i32> %wide.load, ptr %i.ho, align 4, !tbaa !3
  store <4 x i32> %wide.load160, ptr %i.hp, align 4, !tbaa !3
  %index.next161 = add nuw i64 %index159, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next161, %n.vec157
  br i1 %i.hq, label %middle.block162, label %vector.body158, !llvm.loop !995

middle.block162:                                  ; preds = %vector.body158
  %cmp.n163 = icmp eq i64 %.040, %n.vec157
  br i1 %cmp.n163, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader, %middle.block162
  %.011.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %n.vec157, %middle.block162 ] ; 3 uses
  %xtraiter179 = and i64 %.040, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol
  %.011.i.prol = phi i64 [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ %.011.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.011.i.prol
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = getelementptr [4 x i8], ptr %i.hi, i64 %.011.i.prol
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !3
  %i.hu = add nuw i64 %.011.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter179
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, !llvm.loop !996

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169
  %.011.i.unr = phi i64 [ %.011.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader169 ], [ %i.hu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ]
  %i.hv = sub i64 %.011.i.ph, %.040
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec = and i64 %.040, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.hx = getelementptr [4 x i8], ptr %i.hi, i64 %index ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  store <4 x i32> %vec.ind, ptr %i.hx, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.hy, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !997

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.040, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block
  %.011.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.011.us.i = phi i64 [ %i.ic, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.011.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader168 ] ; 3 uses
  %i.ia = trunc i64 %.011.us.i to i32
  %i.ib = getelementptr [4 x i8], ptr %i.hi, i64 %.011.us.i
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !3
  %i.ic = add nuw i64 %.011.us.i, 1               ; 2 uses
  %exitcond13.not.i = icmp eq i64 %i.ic, %.040
  br i1 %exitcond13.not.i, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !998

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.011.i = phi i64 [ %i.is, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.011.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.011.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = getelementptr [4 x i8], ptr %i.hi, i64 %.011.i
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !3
  %i.ig = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !3
  %i.ij = getelementptr [4 x i8], ptr %i.hi, i64 %i.ig
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !3
  %i.ik = add nuw i64 %.011.i, 2                  ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = getelementptr [4 x i8], ptr %i.hi, i64 %i.ik
  store i32 %i.im, ptr %i.in, align 4, !tbaa !3
  %i.io = add nuw i64 %.011.i, 3                  ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = getelementptr [4 x i8], ptr %i.hi, i64 %i.io
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !3
  %i.is = add nuw i64 %.011.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.is, %.040
  br i1 %exitcond.not.i.3, label %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !999

_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block162, %middle.block
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.040, i64 noundef 0, i64 noundef %.095)
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit82, %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit, %bb.n
  %.1 = phi i64 [ %i.ar, %_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm.exit ], [ %.095, %bb.n ], [ %.095, %.loopexit82 ] ; 3 uses
  %i.it = load i64, ptr %i.b, align 8, !tbaa !979 ; 9 uses
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 321
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !869, !range !66, !noundef !69
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.as, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.thread

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.iy = load ptr, ptr %i.l, align 8, !tbaa !427 ; 6 uses
  %.not17.i.i61 = icmp eq i64 %i.it, 0
  br i1 %.not17.i.i61, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.thread, label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %bb.as
  %i.iz = load ptr, ptr %i.o, align 8, !tbaa !424 ; 7 uses
  %.not.i.i.i63 = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 352
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !871 ; 6 uses
  br i1 %.not.i.i.i63, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader: ; preds = %.lr.ph.i.i62
  %xtraiter181 = and i64 %i.it, 1
  %i.jd = icmp eq i64 %i.it, 1
  br i1 %i.jd, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader
  %unroll_iter185 = and i64 %i.it, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader: ; preds = %.lr.ph.i.i62
  %xtraiter187 = and i64 %i.it, 1
  %i.je = icmp eq i64 %i.it, 1
  br i1 %i.je, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader
  %unroll_iter191 = and i64 %i.it, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71: ; preds = %bb.av, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new
  %.016.us.i.i72 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new ], [ %.1.us.i.i76.1, %bb.av ] ; 3 uses
  %.01415.us.i.i73 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new ], [ %i.js, %bb.av ] ; 3 uses
  %niter192 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.preheader.new ], [ %niter192.next.1, %bb.av ]
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i.i73 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !382
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jc
  %.val.val.us.i.i74 = load i64, ptr %i.jh, align 1 ; 2 uses
  %i.ji = inttoptr i64 %.val.val.us.i.i74 to ptr
  store ptr %i.ji, ptr %i.jf, align 8, !tbaa !382
  %.not.us.i.i75 = icmp eq i64 %.val.val.us.i.i74, 0
  br i1 %.not.us.i.i75, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1, label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71
  %i.jj = add i64 %.016.us.i.i72, 1
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.016.us.i.i72
  store i32 poison, ptr %i.jk, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1: ; preds = %bb.at, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71
  %.1.us.i.i76 = phi i64 [ %i.jj, %bb.at ], [ %.016.us.i.i72, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i.i73
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !382
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jc
  %.val.val.us.i.i74.1 = load i64, ptr %i.jo, align 1 ; 2 uses
  %i.jp = inttoptr i64 %.val.val.us.i.i74.1 to ptr
  store ptr %i.jp, ptr %i.jm, align 8, !tbaa !382
  %.not.us.i.i75.1 = icmp eq i64 %.val.val.us.i.i74.1, 0
  br i1 %.not.us.i.i75.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1
  %i.jq = add i64 %.1.us.i.i76, 1
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1.us.i.i76
  store i32 poison, ptr %i.jr, align 4, !tbaa !3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1
  %.1.us.i.i76.1 = phi i64 [ %i.jq, %bb.au ], [ %.1.us.i.i76, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71.1 ] ; 3 uses
  %i.js = add nuw i64 %.01415.us.i.i73, 2         ; 2 uses
  %niter192.next.1 = add i64 %niter192, 2         ; 2 uses
  %niter192.ncmp.1 = icmp eq i64 %niter192.next.1, %unroll_iter191
  br i1 %niter192.ncmp.1, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit78.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.i71, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64: ; preds = %bb.ay, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i64.preheader.new
end_hunk_4
begin_hunk_5_@_ZN6duckdb13JoinHashTable13ScanStructure12NextMarkJoinERNS_9DataChunkES3_S3_:bb.a
  %i.fg = add nuw i64 %.080122, 1                 ; 2 uses
  %i.fh = load i64, ptr %i.ap, align 8, !tbaa !409
  %i.fi = icmp ult i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.av, label %._crit_edge124, !llvm.loop !1004

bb.bb:                                            ; preds = %bb.ba
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.pn84 = phi { ptr, i32 } [ %i.fj, %bb.bb ], [ %i.ea, %bb.au ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #40
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.at
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %bb.bc ], [ %i.dz, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.bs

_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit: ; preds = %bb.y, %bb.ac, %._crit_edge.i.i, %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i, %bb.ae, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 0)
          to label %bb.be unwind label %bb.bh     ; 2 uses

bb.be:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.fk)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !427 ; 2 uses
  %i.fn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef 1)
          to label %bb.bg unwind label %bb.bi     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.fn)
          to label %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit108 unwind label %bb.bi

_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit108: ; preds = %bb.bg
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !427
  %i.fq = load i64, ptr %i.ap, align 8, !tbaa !409
  %.not131 = icmp eq i64 %i.fq, 0
  br i1 %.not131, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit108
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  br label %bb.bk

._crit_edge127:                                   ; preds = %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit, %_ZN6duckdb10FlatVector7GetDataIlEEPT_RNS_6VectorE.exit108
  %i.ft = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #40 ; 0 uses
  br label %bb.bt

bb.bh:                                            ; preds = %bb.be, %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bj:                                            ; preds = %bb.bo
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bk:                                            ; preds = %.lr.ph126, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit
  %.0125 = phi i64 [ 0, %.lr.ph126 ], [ %i.hc, %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit ] ; 11 uses
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !317 ; 2 uses
  %.not = icmp eq ptr %i.fx, null
  br i1 %.not, label %.critedge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.0125
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !425, !range !66, !noundef !69 ; 2 uses
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.0125
  store i8 %i.fz, ptr %i.gb, align 1, !tbaa !425
  br i1 %i.ga, label %bb.bp, label %bb.bm

.critedge:                                        ; preds = %bb.bk
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.0125
  store i8 0, ptr %i.gc, align 1, !tbaa !425
  br label %bb.bm

bb.bm:                                            ; preds = %.critedge, %bb.bl
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.0125
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !39
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.0125
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !39
  %i.gh = icmp sgt i64 %i.ge, %i.gg
  br i1 %i.gh, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.gi = load ptr, ptr %i.bk, align 8, !tbaa !717 ; 2 uses
  %.not.i109 = icmp eq ptr %i.gi, null
  br i1 %.not.i109, label %bb.bo, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gj = load i64, ptr %i.fs, align 8, !tbaa !853
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef %i.gj)
          to label %.noexc110 unwind label %bb.bj

.noexc110:                                        ; preds = %bb.bo
  %.pre.i = load ptr, ptr %i.bk, align 8, !tbaa !717
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.bn, %.noexc110
  %i.gk = phi ptr [ %.pre.i, %.noexc110 ], [ %i.gi, %bb.bn ]
  %i.gl = lshr i64 %.0125, 6
  %i.gm = and i64 %.0125, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = xor i64 %i.gn, -1
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gl ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !39
  %i.gr = and i64 %i.gq, %i.go
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !39
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.bm, %bb.bl
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.0125
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !39
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.bq, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit

bb.bq:                                            ; preds = %bb.bp
  %i.gv = load ptr, ptr %i.bk, align 8, !tbaa !717 ; 2 uses
  %.not.i111 = icmp eq ptr %i.gv, null
  br i1 %.not.i111, label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gw = lshr i64 %.0125, 6
  %i.gx = and i64 %.0125, 63
  %i.gy = shl nuw i64 1, %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gw ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !39
  %i.hb = or i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !39
  br label %_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE8SetValidEm.exit: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.hc = add nuw i64 %.0125, 1                   ; 2 uses
  %i.hd = load i64, ptr %i.ap, align 8, !tbaa !409
  %i.he = icmp ult i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.bk, label %._crit_edge127, !llvm.loop !1005

bb.bs:                                            ; preds = %bb.u, %bb.w, %bb.bh, %bb.bj, %bb.bi, %bb.bd, %bb.x, %bb.v, %bb.l, %bb.f, %bb.e
  %.pn91 = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.aw, %bb.l ], [ %i.s, %bb.e ], [ %i.bm, %bb.u ], [ %i.bn, %bb.v ], [ %i.bo, %bb.w ], [ %.pn84.pn, %bb.bd ], [ %i.bp, %bb.x ], [ %i.fu, %bb.bh ], [ %i.fw, %bb.bj ], [ %i.fv, %bb.bi ]
  %i.hf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #40 ; 0 uses
  resume { ptr, i32 } %.pn91

bb.bt:                                            ; preds = %._crit_edge127, %bb.b
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.hg, align 8, !tbaa !978
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12NextAntiJoinERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure14ScanKeyMatchesERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  tail call void @_ZN6duckdb13JoinHashTable13ScanStructure18NextSemiOrAntiJoinILb0EEEvRNS_9DataChunkES4_S4_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.a, align 8, !tbaa !978
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure23NextRightSemiOrAntiJoinERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !427  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !979  ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 10 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit
  %i.k = phi i64 [ %i.f, %.lr.ph.i.lr.ph ], [ %.0.lcssa.sink.i.i, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersEv.exit ] ; 10 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !424  ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !424  ; 9 uses
  %min.iters.check = icmp ult i64 %i.k, 8         ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = ptrtoaddr ptr %i.l to i64
  %i.p = sub i64 %i.o, %i.n
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77, label %vector.ph65

vector.ph65:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %n.vec67 = and i64 %i.k, -8                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next71, %vector.body68 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index69 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !3
  %wide.load70 = load <4 x i32>, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index69 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %wide.load70, ptr %i.t, align 4, !tbaa !3
  %index.next71 = add nuw i64 %index69, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.u, label %middle.block72, label %vector.body68, !llvm.loop !1006

middle.block72:                                   ; preds = %vector.body68
  %cmp.n73 = icmp eq i64 %i.k, %n.vec67
  br i1 %cmp.n73, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader, %middle.block72
  %.015.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %n.vec67, %middle.block72 ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol
  %.015.i.prol = phi i64 [ %i.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.015.i.prol
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.i.prol
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %i.y = add nuw i64 %.015.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, !llvm.loop !1007

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77
  %.015.i.unr = phi i64 [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader77 ], [ %i.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ]
  %i.z = sub i64 %.015.i.ph, %i.k
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %vec.ind, ptr %i.ab, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.ac, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1008

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block
  %.015.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.015.us.i = phi i64 [ %i.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.015.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader76 ] ; 3 uses
  %i.ae = trunc i64 %.015.us.i to i32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.us.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nuw i64 %.015.us.i, 1               ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.ag, %i.k
  br i1 %exitcond18.not.i, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !1009

._crit_edge.i:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block72, %middle.block
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !868, !range !66, !noundef !69
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.015.i = phi i64 [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.015.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.015.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !3
  %i.ao = add nuw i64 %.015.i, 1                  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ao
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !3
  %i.as = add nuw i64 %.015.i, 2                  ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.as
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  %i.aw = add nuw i64 %.015.i, 3                  ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = add nuw i64 %.015.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ba, %i.k
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !1010

bb.b:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 304
  %i.bc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.be = load i64, ptr %i.e, align 8, !tbaa !979
  %i.bf = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !989
  br label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit: ; preds = %._crit_edge.i, %bb.b
  %i.bg = phi ptr [ %.pre.i, %bb.b ], [ %i.ah, %._crit_edge.i ]
  %.012.i = phi i64 [ %i.bf, %bb.b ], [ %i.k, %._crit_edge.i ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 488
  %i.bi = atomicrmw add ptr %i.bh, i64 %.012.i monotonic, align 8 ; 0 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !284
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !284
  %i.bo = icmp eq ptr %i.bl, %i.bn
  %.not42 = icmp eq i64 %.012.i, 0                ; 2 uses
  br i1 %i.bo, label %.preheader30, label %.preheader31

.preheader31:                                     ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader31
  %xtraiter80 = and i64 %.012.i, 1
  %i.bp = icmp eq i64 %.012.i, 1
  br i1 %i.bp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.012.i, -2
  br label %.lr.ph

.preheader30:                                     ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  br i1 %.not42, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader30, %.thread
  %i.bq = phi ptr [ %i.ct, %.thread ], [ %i.bj, %.preheader30 ] ; 3 uses
  %.039 = phi i64 [ %i.cu, %.thread ], [ 0, %.preheader30 ] ; 3 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !424 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph40
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.039
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = zext i32 %i.bt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph40, %bb.c
  %i.bv = phi i64 [ %i.bu, %bb.c ], [ %.039, %.lr.ph40 ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bv ; 5 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !382
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 344
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !870
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %.0.copyload.i = load i8, ptr %i.ca, align 1
  %i.cb = trunc i8 %.0.copyload.i to i1
  br i1 %i.cb, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  store i8 1, ptr %i.ca, align 1
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !382
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !871
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %.val.val35 = load i64, ptr %i.cg, align 1      ; 2 uses
  %.not36 = icmp eq i64 %.val.val35, 0
  br i1 %.not36, label %.thread, label %.lr.ph38

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 936
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !382
  store ptr %i.ci, ptr %i.bw, align 8, !tbaa !382
  br label %.thread

end_hunk_5
begin_hunk_6_@_ZN6duckdb13JoinHashTable13ScanStructure12NextLeftJoinERNS_9DataChunkES3_S3_:bb.a
  br i1 %i.aa, label %_ZN6duckdb15SelectionVectorC2Em.exit.1, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.ab = add i64 %.1, 1
  %i.ac = trunc i64 %i.x to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.1
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.1

_ZN6duckdb15SelectionVectorC2Em.exit.1:           ; preds = %bb.g, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.1.1 = phi i64 [ %.1, %_ZN6duckdb15SelectionVectorC2Em.exit ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ae = add nuw i64 %.02729, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, label %bb.e, !llvm.loop !1015

bb.h:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.1.lcssa, i64 noundef 0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !410
  %i.ah = load ptr, ptr %2, align 8, !tbaa !411
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !410
  %i.an = load ptr, ptr %3, align 8, !tbaa !411
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.ak, %i.aq
  br i1 %i.ar, label %.lr.ph32.preheader, label %.loopexit

.lr.ph32.preheader:                               ; preds = %bb.i
  %i.as = sdiv exact i64 %i.ak, 104
  br label %.lr.ph32

bb.j:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.m
  %.02431 = phi i64 [ %i.av, %bb.m ], [ %i.as, %.lr.ph32.preheader ] ; 2 uses
  %i.au = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.02431)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %.lr.ph32
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, i8 noundef zeroext 2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.au, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nuw i64 %.02431, 1                  ; 2 uses
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !410
  %i.ax = load ptr, ptr %3, align 8, !tbaa !411
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 104
  %i.bc = icmp ult i64 %i.av, %i.bb
  br i1 %i.bc, label %.lr.ph32, label %.loopexit, !llvm.loop !1016

bb.n:                                             ; preds = %bb.l, %bb.k, %.lr.ph32
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %bb.m, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader, %bb.i, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.be, align 8, !tbaa !978
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bh, align 8, !tbaa !264
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !269
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #40, !inline_history !319
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.r ], [ %i.bu, %bb.s ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.t, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %.loopexit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.v

bb.u:                                             ; preds = %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.bd, %bb.n ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

bb.v:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure14NextSingleJoinERNS_9DataChunkES3_S3_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.duckdb::SelectionVector", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.b

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !979  ; 2 uses
  %.not140 = icmp eq i64 %i.e, 0
  br i1 %.not140, label %.preheader121, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i

common.resume:                                    ; preds = %bb.bb, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn61.pn.pn, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #40
  br label %common.resume

.preheader121:                                    ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.thread, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %.042.lcssa = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader ], [ %.143.lcssa, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.thread ], [ %.143.lcssa, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit ] ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !410
  %i.p = load ptr, ptr %2, align 8, !tbaa !411
  %.not155 = icmp eq ptr %i.o, %i.p
  br i1 %.not155, label %.preheader120, label %.lr.ph145

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit
  %i.q = phi i64 [ %i.e, %.lr.ph.i.lr.ph ], [ %.0.lcssa.sink.i, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit ] ; 12 uses
  %.042141 = phi i64 [ 0, %.lr.ph.i.lr.ph ], [ %.143.lcssa, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit ] ; 6 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !424  ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !424  ; 9 uses
  %min.iters.check215 = icmp ult i64 %i.q, 8      ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = ptrtoaddr ptr %i.r to i64
  %i.v = sub i64 %i.u, %i.t
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond269 = select i1 %min.iters.check215, i1 true, i1 %diff.check
  br i1 %or.cond269, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280, label %vector.ph230

vector.ph230:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %n.vec232 = and i64 %i.q, -8                    ; 3 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next236, %vector.body233 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index234 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !3
  %wide.load235 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index234 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %wide.load235, ptr %i.z, align 4, !tbaa !3
  %index.next236 = add nuw i64 %index234, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next236, %n.vec232
  br i1 %i.aa, label %middle.block237, label %vector.body233, !llvm.loop !1017

middle.block237:                                  ; preds = %vector.body233
  %cmp.n238 = icmp eq i64 %i.q, %n.vec232
  br i1 %cmp.n238, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader, %middle.block237
  %.015.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %n.vec232, %middle.block237 ] ; 3 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol
  %.015.i.prol = phi i64 [ %i.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280 ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.015.i.prol
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.015.i.prol
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3
  %i.ae = add nuw i64 %.015.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, !llvm.loop !1018

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280
  %.015.i.unr = phi i64 [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader280 ], [ %i.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ]
  %i.af = sub i64 %.015.i.ph, %i.q
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check215, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader279, label %vector.ph216

vector.ph216:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec218 = and i64 %i.q, -8                    ; 3 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph216
  %index220 = phi i64 [ 0, %vector.ph216 ], [ %index.next223, %vector.body219 ] ; 2 uses
  %vec.ind221 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph216 ], [ %vec.ind.next224, %vector.body219 ] ; 3 uses
  %step.add222 = add <4 x i32> %vec.ind221, splat (i32 4)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index220 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %vec.ind221, ptr %i.ah, align 4, !tbaa !3
  store <4 x i32> %step.add222, ptr %i.ai, align 4, !tbaa !3
  %index.next223 = add nuw i64 %index220, 8       ; 2 uses
  %vec.ind.next224 = add <4 x i32> %vec.ind221, splat (i32 8)
  %i.aj = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.aj, label %middle.block225, label %vector.body219, !llvm.loop !1019

middle.block225:                                  ; preds = %vector.body219
  %cmp.n226 = icmp eq i64 %i.q, %n.vec218
  br i1 %cmp.n226, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader279

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader279: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block225
  %.015.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec218, %middle.block225 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader279, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.015.us.i = phi i64 [ %i.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.015.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader279 ] ; 3 uses
  %i.ak = trunc i64 %.015.us.i to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.015.us.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = add nuw i64 %.015.us.i, 1               ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.am, %i.q
  br i1 %exitcond18.not.i, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !1020

._crit_edge.i:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block237, %middle.block225
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !868, !range !66, !noundef !69
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.c, label %.thread186

.thread186:                                       ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 488
  %i.as = atomicrmw add ptr %i.ar, i64 %i.q monotonic, align 8 ; 0 uses
  %i.at = load i64, ptr %i.d, align 8, !tbaa !979 ; 2 uses
  %i.au = sub i64 %i.at, %i.q
  br label %.lr.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.015.i = phi i64 [ %i.bk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.015.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.015.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.015.i
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !3
  %i.ay = add nuw i64 %.015.i, 1                  ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ay
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !3
  %i.bc = add nuw i64 %.015.i, 2                  ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bc
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add nuw i64 %.015.i, 3                  ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bg
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  %i.bk = add nuw i64 %.015.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bk, %i.q
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !1021

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 0, ptr %i.b, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 312
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.c
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !979
  %i.bp = invoke noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.n       ; 4 uses

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !989
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 488
  %i.br = atomicrmw add ptr %i.bq, i64 %i.bp monotonic, align 8 ; 0 uses
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !979 ; 3 uses
  %i.bt = sub i64 %i.bs, %i.bp                    ; 2 uses
  %.not154 = icmp eq i64 %i.bp, 0
  br i1 %.not154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread186, %bb.d
  %i.bu = phi i64 [ %i.au, %.thread186 ], [ %i.bt, %bb.d ] ; 4 uses
  %i.bv = phi i64 [ %i.at, %.thread186 ], [ %i.bs, %bb.d ] ; 4 uses
  %.012.i189 = phi i64 [ %i.q, %.thread186 ], [ %i.bp, %bb.d ] ; 12 uses
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !424 ; 4 uses
  %.not.i73 = icmp eq ptr %i.bw, null
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !317 ; 5 uses
  %i.by = load ptr, ptr %4, align 8, !tbaa !424   ; 5 uses
  br i1 %.not.i73, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter286 = and i64 %.012.i189, 1
  %i.bz = icmp eq i64 %.012.i189, 1
  br i1 %i.bz, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %.012.i189, -2
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %.012.i189, 8
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %.012.i189, -8                 ; 4 uses
  %i.ca = add i64 %.042141, %n.vec                ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %.042141
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store <4 x i8> splat (i8 1), ptr %i.cc, align 1, !tbaa !425
  store <4 x i8> splat (i8 1), ptr %i.cd, align 1, !tbaa !425
  %i.ce = getelementptr [4 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x i32> %vec.ind, ptr %i.ce, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.cf, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.012.i189, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader277

.lr.ph.split.us.preheader277:                     ; preds = %.lr.ph.split.us.preheader, %middle.block
  %.143139.us.ph = phi i64 [ %.042141, %.lr.ph.split.us.preheader ], [ %i.ca, %middle.block ]
end_hunk_6
begin_hunk_7_@_ZN6duckdb13JoinHashTable13ScanStructure14NextSingleJoinERNS_9DataChunkES3_S3_:bb.a
.lr.ph.i79:                                       ; preds = %bb.ab
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !427 ; 6 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !424   ; 4 uses
  %.not.i.i80 = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %i.gb, align 8, !tbaa !989, !nonnull !69, !align !336 ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 352
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !871 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  br i1 %.not.i.i80, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader: ; preds = %.lr.ph.i79
  %xtraiter302 = and i64 %.042.lcssa, 1
  %i.je = icmp eq i64 %.042.lcssa, 1
  br i1 %i.je, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader
  %unroll_iter306 = and i64 %.042.lcssa, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader: ; preds = %.lr.ph.i79
  %xtraiter308 = and i64 %.042.lcssa, 1
  %i.jf = icmp eq i64 %.042.lcssa, 1
  br i1 %i.jf, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader
  %unroll_iter312 = and i64 %.042.lcssa, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88: ; preds = %bb.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new
  %.016.us.i89 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new ], [ %.1.us.i93.1, %bb.ae ] ; 3 uses
  %.01415.us.i90 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new ], [ %i.jx, %bb.ae ] ; 4 uses
  %niter313 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader.new ], [ %niter313.next.1, %bb.ae ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i90 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !382
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jc
  %.val.val.us.i91 = load i64, ptr %i.ji, align 1 ; 2 uses
  %i.jj = inttoptr i64 %.val.val.us.i91 to ptr
  store ptr %i.jj, ptr %i.jg, align 8, !tbaa !382
  %.not.us.i92 = icmp eq i64 %.val.val.us.i91, 0
  br i1 %.not.us.i92, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88
  %i.jk = add i64 %.016.us.i89, 1
  %i.jl = trunc i64 %.01415.us.i90 to i32
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %.016.us.i89
  store i32 %i.jl, ptr %i.jn, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1: ; preds = %bb.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88
  %.1.us.i93 = phi i64 [ %i.jk, %bb.ac ], [ %.016.us.i89, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88 ] ; 3 uses
  %i.jo = or disjoint i64 %.01415.us.i90, 1       ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jo ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !382
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jc
  %.val.val.us.i91.1 = load i64, ptr %i.jr, align 1 ; 2 uses
  %i.js = inttoptr i64 %.val.val.us.i91.1 to ptr
  store ptr %i.js, ptr %i.jp, align 8, !tbaa !382
  %.not.us.i92.1 = icmp eq i64 %.val.val.us.i91.1, 0
  br i1 %.not.us.i92.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1
  %i.jt = add i64 %.1.us.i93, 1
  %i.ju = trunc i64 %i.jo to i32
  %i.jv = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.1.us.i93
  store i32 %i.ju, ptr %i.jw, align 4, !tbaa !3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1
  %.1.us.i93.1 = phi i64 [ %i.jt, %bb.ad ], [ %.1.us.i93, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.1 ] ; 3 uses
  %i.jx = add nuw i64 %.01415.us.i90, 2           ; 2 uses
  %niter313.next.1 = add i64 %niter313, 2         ; 2 uses
  %niter313.ncmp.1 = icmp eq i64 %niter313.next.1, %unroll_iter312
  br i1 %niter313.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81: ; preds = %bb.ah, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new
  %.016.i82 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new ], [ %.1.i86.1, %bb.ah ] ; 3 uses
  %.01415.i83 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new ], [ %i.kt, %bb.ah ] ; 3 uses
  %niter307 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader.new ], [ %niter307.next.1, %bb.ah ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i83
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !3  ; 2 uses
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ka ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !382
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jc
  %.val.val.i84 = load i64, ptr %i.kd, align 1    ; 2 uses
  %i.ke = inttoptr i64 %.val.val.i84 to ptr
  store ptr %i.ke, ptr %i.kb, align 8, !tbaa !382
  %.not.i85 = icmp eq i64 %.val.val.i84, 0
  br i1 %.not.i85, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1, label %bb.af

bb.af:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81
  %i.kf = add i64 %.016.i82, 1
  %i.kg = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %.016.i82
  store i32 %i.jz, ptr %i.kh, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1: ; preds = %bb.af, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81
  %.1.i86 = phi i64 [ %i.kf, %bb.af ], [ %.016.i82, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i83
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !3  ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.kl ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !382
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.jc
  %.val.val.i84.1 = load i64, ptr %i.ko, align 1  ; 2 uses
  %i.kp = inttoptr i64 %.val.val.i84.1 to ptr
  store ptr %i.kp, ptr %i.km, align 8, !tbaa !382
  %.not.i85.1 = icmp eq i64 %.val.val.i84.1, 0
  br i1 %.not.i85.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1
  %i.kq = add i64 %.1.i86, 1
  %i.kr = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.1.i86
  store i32 %i.kk, ptr %i.ks, align 4, !tbaa !3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1
  %.1.i86.1 = phi i64 [ %i.kq, %bb.ag ], [ %.1.i86, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.1 ] ; 3 uses
  %i.kt = add nuw i64 %.01415.i83, 2              ; 2 uses
  %niter307.next.1 = add i64 %niter307, 2         ; 2 uses
  %niter307.ncmp.1 = icmp eq i64 %niter307.next.1, %unroll_iter306
  br i1 %niter307.ncmp.1, label %.loopexit.loopexit274.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81, !llvm.loop !993

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ae
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader
  %.016.us.i89.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader ], [ %.1.us.i93.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.i90.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.preheader ], [ %i.jx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod311 = trunc i64 %.042.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod311)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.01415.us.i90.epil.init ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !382
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.jc
  %.val.val.us.i91.epil = load i64, ptr %i.kw, align 1 ; 2 uses
  %i.kx = inttoptr i64 %.val.val.us.i91.epil to ptr
  store ptr %i.kx, ptr %i.ku, align 8, !tbaa !382
  %.not.us.i92.epil = icmp eq i64 %.val.val.us.i91.epil, 0
  br i1 %.not.us.i92.epil, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader
  %i.ky = add i64 %.016.us.i89.epil.init, 1
  %i.kz = trunc i64 %.01415.us.i90.epil.init to i32
  %i.la = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %.016.us.i89.epil.init
  store i32 %i.kz, ptr %i.lb, align 4, !tbaa !3
  br label %.loopexit

.loopexit.loopexit274.unr-lcssa:                  ; preds = %bb.ah
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader: ; preds = %.loopexit.loopexit274.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader
  %.016.i82.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader ], [ %.1.i86.1, %.loopexit.loopexit274.unr-lcssa ] ; 3 uses
  %.01415.i83.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.preheader ], [ %i.kt, %.loopexit.loopexit274.unr-lcssa ]
  %lcmp.mod305 = trunc i64 %.042.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod305)
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.01415.i83.epil.init
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !3  ; 2 uses
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.le ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !382
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.jc
  %.val.val.i84.epil = load i64, ptr %i.lh, align 1 ; 2 uses
  %i.li = inttoptr i64 %.val.val.i84.epil to ptr
  store ptr %i.li, ptr %i.lf, align 8, !tbaa !382
  %.not.i85.epil = icmp eq i64 %.val.val.i84.epil, 0
  br i1 %.not.i85.epil, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader
  %i.lj = add i64 %.016.i82.epil.init, 1
  %i.lk = load ptr, ptr %i.jd, align 8, !tbaa !424
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %.016.i82.epil.init
  store i32 %i.ld, ptr %i.ll, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit274.unr-lcssa, %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ai, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader
  %.0.lcssa.sink.i77 = phi i64 [ %.016.us.i89.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i88.epil.preheader ], [ %.1.us.i93.1, %.loopexit.loopexit.unr-lcssa ], [ %i.ky, %bb.ai ], [ %.1.i86.1, %.loopexit.loopexit274.unr-lcssa ], [ %i.lj, %bb.aj ], [ %.016.i82.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i81.epil.preheader ] ; 16 uses
  store i64 %.0.lcssa.sink.i77, ptr %i.d, align 8, !tbaa !979
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %.not16.i97 = icmp eq i64 %.0.lcssa.sink.i77, 0
  br i1 %.not16.i97, label %._crit_edge.i103, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %.loopexit
  %i.ln = load ptr, ptr %i.jd, align 8, !tbaa !424 ; 8 uses
  %.not.i.i99 = icmp eq ptr %i.ln, null
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !424 ; 9 uses
  %min.iters.check256 = icmp ult i64 %.0.lcssa.sink.i77, 8 ; 2 uses
  br i1 %.not.i.i99, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader: ; preds = %.lr.ph.i98
  %i.lp = ptrtoaddr ptr %i.lo to i64
  %i.lq = ptrtoaddr ptr %i.ln to i64
  %i.lr = sub i64 %i.lq, %i.lp
  %diff.check241 = icmp ugt i64 %i.lr, -32
  %or.cond270 = select i1 %min.iters.check256, i1 true, i1 %diff.check241
  br i1 %or.cond270, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272, label %vector.ph244

vector.ph244:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader
  %n.vec246 = and i64 %.0.lcssa.sink.i77, -8      ; 3 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph244
  %index248 = phi i64 [ 0, %vector.ph244 ], [ %index.next251, %vector.body247 ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %index248 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load249 = load <4 x i32>, ptr %i.ls, align 4, !tbaa !3
  %wide.load250 = load <4 x i32>, ptr %i.lt, align 4, !tbaa !3
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %index248 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store <4 x i32> %wide.load249, ptr %i.lu, align 4, !tbaa !3
  store <4 x i32> %wide.load250, ptr %i.lv, align 4, !tbaa !3
  %index.next251 = add nuw i64 %index248, 8       ; 2 uses
  %i.lw = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.lw, label %middle.block252, label %vector.body247, !llvm.loop !1028

middle.block252:                                  ; preds = %vector.body247
  %cmp.n253 = icmp eq i64 %.0.lcssa.sink.i77, %n.vec246
  br i1 %cmp.n253, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader, %middle.block252
  %.015.i101.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader ], [ %n.vec246, %middle.block252 ] ; 3 uses
  %xtraiter314 = and i64 %.0.lcssa.sink.i77, 3    ; 2 uses
  %lcmp.mod315.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod315.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol
  %.015.i101.prol = phi i64 [ %i.ma, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol ], [ %.015.i101.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272 ] ; 3 uses
  %prol.iter316 = phi i64 [ %prol.iter316.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272 ]
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.015.i101.prol
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.015.i101.prol
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !3
  %i.ma = add nuw i64 %.015.i101.prol, 1          ; 2 uses
  %prol.iter316.next = add i64 %prol.iter316, 1   ; 2 uses
  %prol.iter316.cmp.not = icmp eq i64 %prol.iter316.next, %xtraiter314
  br i1 %prol.iter316.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol, !llvm.loop !1029

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272
  %.015.i101.unr = phi i64 [ %.015.i101.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.preheader272 ], [ %i.ma, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol ]
  %i.mb = sub i64 %.015.i101.ph, %.0.lcssa.sink.i77
  %i.mc = icmp ugt i64 %i.mb, -4
  br i1 %i.mc, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader: ; preds = %.lr.ph.i98
  br i1 %min.iters.check256, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271, label %vector.ph257

vector.ph257:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader
  %n.vec259 = and i64 %.0.lcssa.sink.i77, -8      ; 3 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph257
  %index261 = phi i64 [ 0, %vector.ph257 ], [ %index.next264, %vector.body260 ] ; 2 uses
  %vec.ind262 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph257 ], [ %vec.ind.next265, %vector.body260 ] ; 3 uses
  %step.add263 = add <4 x i32> %vec.ind262, splat (i32 4)
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %index261 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x i32> %vec.ind262, ptr %i.md, align 4, !tbaa !3
  store <4 x i32> %step.add263, ptr %i.me, align 4, !tbaa !3
  %index.next264 = add nuw i64 %index261, 8       ; 2 uses
  %vec.ind.next265 = add <4 x i32> %vec.ind262, splat (i32 8)
  %i.mf = icmp eq i64 %index.next264, %n.vec259
  br i1 %i.mf, label %middle.block266, label %vector.body260, !llvm.loop !1030

middle.block266:                                  ; preds = %vector.body260
  %cmp.n267 = icmp eq i64 %.0.lcssa.sink.i77, %n.vec259
  br i1 %cmp.n267, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader, %middle.block266
  %.015.us.i107.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader ], [ %n.vec259, %middle.block266 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106
  %.015.us.i107 = phi i64 [ %i.mi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %.015.us.i107.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106.preheader271 ] ; 3 uses
  %i.mg = trunc i64 %.015.us.i107 to i32
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.015.us.i107
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !3
  %i.mi = add nuw i64 %.015.us.i107, 1            ; 2 uses
  %exitcond18.not.i108 = icmp eq i64 %i.mi, %.0.lcssa.sink.i77
  br i1 %exitcond18.not.i108, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106, !llvm.loop !1031

._crit_edge.i103:                                 ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106, %middle.block252, %middle.block266, %.thread, %.loopexit
  %i.mj = phi ptr [ %.lcssa, %.thread ], [ %i.ja, %middle.block266 ], [ %i.ja, %.loopexit ], [ %i.ja, %middle.block252 ], [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %i.ja, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ] ; 3 uses
  %i.mk = phi ptr [ %i.iv, %.thread ], [ %i.lm, %middle.block266 ], [ %i.lm, %.loopexit ], [ %i.lm, %middle.block252 ], [ %i.lm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %i.lm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %i.lm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ]
  %.0.lcssa.sink.i77114 = phi i64 [ 0, %.thread ], [ %.0.lcssa.sink.i77, %middle.block266 ], [ 0, %.loopexit ], [ %.0.lcssa.sink.i77, %middle.block252 ], [ %.0.lcssa.sink.i77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i106 ], [ %.0.lcssa.sink.i77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %.0.lcssa.sink.i77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ]
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 320
  %i.mm = load i8, ptr %i.ml, align 8, !tbaa !868, !range !66, !noundef !69
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.ak, label %bb.al

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100
  %.015.i101 = phi i64 [ %i.nd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100 ], [ %.015.i101.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100.prol.loopexit ] ; 6 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.015.i101
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.015.i101
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !3
  %i.mr = add nuw i64 %.015.i101, 1               ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.mr
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !3
  %i.mv = add nuw i64 %.015.i101, 2               ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !3
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.mv
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !3
  %i.mz = add nuw i64 %.015.i101, 3               ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !3
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.mz
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !3
  %i.nd = add nuw i64 %.015.i101, 4               ; 2 uses
  %exitcond.not.i102.3 = icmp eq i64 %i.nd, %.0.lcssa.sink.i77
  br i1 %exitcond.not.i102.3, label %._crit_edge.i103, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i100, !llvm.loop !1032

bb.ak:                                            ; preds = %._crit_edge.i103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mj, i64 304
  %i.nf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ne)
          to label %.noexc109 unwind label %bb.aq

.noexc109:                                        ; preds = %bb.ak
  %i.ng = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.nh = load i64, ptr %i.d, align 8, !tbaa !979
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nj = invoke noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.nf, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.mk, i64 noundef %i.nh, ptr noundef nonnull align 8 dereferenceable(104) %i.ni, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc110 unwind label %bb.aq

.noexc110:                                        ; preds = %.noexc109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre.i105 = load ptr, ptr %i.gb, align 8, !tbaa !989
  br label %bb.al

bb.al:                                            ; preds = %.noexc110, %._crit_edge.i103
  %i.nk = phi ptr [ %.pre.i105, %.noexc110 ], [ %i.mj, %._crit_edge.i103 ]
  %.012.i104 = phi i64 [ %i.nj, %.noexc110 ], [ %.0.lcssa.sink.i77114, %._crit_edge.i103 ] ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 488
  %i.nm = atomicrmw add ptr %i.nl, i64 %.012.i104 monotonic, align 8 ; 0 uses
  %.not56 = icmp eq i64 %.012.i104, 0
  br i1 %.not56, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nn = call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nn, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_throw(ptr nonnull %i.nn, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.bc unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ab
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aq:                                            ; preds = %.noexc109, %bb.ak
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.am
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao, %bb.an
  %.0 = phi i1 [ false, %bb.ao ], [ true, %bb.an ] ; 2 uses
  %i.nr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ns = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.ns) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br i1 %.0, label %bb.as, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br i1 %.0, label %bb.as, label %bb.bb

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn117 = phi { ptr, i32 } [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.nn) #40
  br label %bb.bb

bb.at:                                            ; preds = %bb.al
  store i64 0, ptr %i.d, align 8, !tbaa !979
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge151
  %i.nv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 4 uses
  %i.ny = load atomic i64, ptr %i.nx acquire, align 8 ; 2 uses
  %i.nz = icmp eq i64 %i.ny, 4294967297
  %i.oa = trunc i64 %i.ny to i32                  ; 2 uses
  br i1 %i.nz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.nx, align 8, !tbaa !264
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 12
  store i32 0, ptr %i.ob, align 4, !tbaa !269
  %i.oc = load ptr, ptr %i.nw, align 8, !tbaa !41
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #40, !inline_history !319
  %i.of = load ptr, ptr %i.nw, align 8, !tbaa !41
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.oi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oj = add nsw i32 %i.oa, -1
  store i32 %i.oj, ptr %i.nx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.ok = atomicrmw volatile add ptr %i.nx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i = phi i32 [ %i.oa, %bb.ay ], [ %i.ok, %bb.az ]
  %i.ol = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ol, label %bb.ba, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nw) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.au, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aq, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.u, %bb.v, %bb.z, %bb.n, %bb.o, %bb.ap, %bb.p
  %.pn61.pn.pn = phi { ptr, i32 } [ %i.no, %bb.ap ], [ %i.gl, %bb.p ], [ %i.ga, %bb.o ], [ %i.hr, %bb.u ], [ %i.fl, %bb.n ], [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.hs, %bb.v ], [ %i.ir, %bb.z ], [ %.pn117, %bb.as ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.np, %bb.aq ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

bb.bc:                                            ; preds = %bb.ao
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb13JoinHashTable13ScanStructure17PointersExhaustedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !979
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !979  ; 11 uses
  %.not16 = icmp eq i64 %i.c, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !424  ; 8 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr %2, align 8, !tbaa !424    ; 9 uses
  %min.iters.check24 = icmp ult i64 %i.c, 8       ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = ptrtoaddr ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.g
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = select i1 %min.iters.check24, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !3
  %wide.load22 = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> %wide.load, ptr %i.l, align 4, !tbaa !3
  store <4 x i32> %wide.load22, ptr %i.m, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1033

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol
  %.015.prol = phi i64 [ %i.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ], [ %.015.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.015.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.015.prol
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  %i.r = add nuw i64 %.015.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol, !llvm.loop !1034

_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35
  %.015.unr = phi i64 [ %.015.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader35 ], [ %i.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ]
  %i.s = sub i64 %.015.ph, %i.c
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  br i1 %min.iters.check24, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader34, label %vector.ph25

vector.ph25:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %n.vec27 = and i64 %i.c, -8                     ; 3 uses
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph25
  %index29 = phi i64 [ 0, %vector.ph25 ], [ %index.next30, %vector.body28 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph25 ], [ %vec.ind.next, %vector.body28 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index29 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !3
  %index.next30 = add nuw i64 %index29, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next30, %n.vec27
  br i1 %i.w, label %middle.block31, label %vector.body28, !llvm.loop !1035

middle.block31:                                   ; preds = %vector.body28
  %cmp.n32 = icmp eq i64 %i.c, %n.vec27
  br i1 %cmp.n32, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader34

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader34: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %middle.block31
  %.015.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %n.vec27, %middle.block31 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader34, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.015.us = phi i64 [ %i.z, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.015.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader34 ] ; 3 uses
  %i.x = trunc i64 %.015.us to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.015.us
  store i32 %i.x, ptr %i.y, align 4, !tbaa !3
  %i.z = add nuw i64 %.015.us, 1                  ; 2 uses
  %exitcond18.not = icmp eq i64 %i.z, %i.c
  br i1 %exitcond18.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1036

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block, %middle.block31, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !868, !range !66, !noundef !69
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.b, label %bb.c

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.015 = phi i64 [ %i.au, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ], [ %.015.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.015
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.015
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ai = add nuw i64 %.015, 1                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ai
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = add nuw i64 %.015, 2                    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.am
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add nuw i64 %.015, 3                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aq
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = add nuw i64 %.015, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.au, %i.c
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1037

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %.not = icmp eq ptr %3, null
  %.v = select i1 %.not, i64 304, i64 312
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.v
  %i.aw = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !979
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(104) %i.az, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !989
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.bb = phi ptr [ %.pre, %bb.b ], [ %i.ab, %._crit_edge ]
  %.012 = phi i64 [ %i.ba, %bb.b ], [ %i.c, %._crit_edge ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 488
  %i.bd = atomicrmw add ptr %i.bc, i64 %.012 monotonic, align 8 ; 0 uses
  ret i64 %.012
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb13JoinHashTable13ScanStructure13ScanInnerJoinERNS_9DataChunkERNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %i.b, align 8, !tbaa !979
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.h = phi i64 [ %.0.lcssa.sink.i.i, %.loopexit ], [ %.pre, %bb.a ] ; 11 uses
  %.not16.i = icmp eq i64 %i.h, 0
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !424  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %2, align 8, !tbaa !424    ; 9 uses
  %min.iters.check = icmp ult i64 %i.h, 8         ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = ptrtoaddr ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond66 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond66, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69, label %vector.ph56

vector.ph56:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %n.vec58 = and i64 %i.h, -8                     ; 3 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body59 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index60 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !3
  %wide.load61 = load <4 x i32>, ptr %i.o, align 4, !tbaa !3
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index60 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %wide.load, ptr %i.p, align 4, !tbaa !3
  store <4 x i32> %wide.load61, ptr %i.q, align 4, !tbaa !3
  %index.next62 = add nuw i64 %index60, 8         ; 2 uses
  %i.r = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.r, label %middle.block63, label %vector.body59, !llvm.loop !1038

middle.block63:                                   ; preds = %vector.body59
  %cmp.n64 = icmp eq i64 %i.h, %n.vec58
  br i1 %cmp.n64, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader, %middle.block63
  %.015.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %n.vec58, %middle.block63 ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol
  %.015.i.prol = phi i64 [ %i.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69 ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.015.i.prol
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015.i.prol
  store i32 %i.t, ptr %i.u, align 4, !tbaa !3
  %i.v = add nuw i64 %.015.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, !llvm.loop !1039

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69
  %.015.i.unr = phi i64 [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader69 ], [ %i.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ]
  %i.w = sub i64 %.015.i.ph, %i.h
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %vec.ind, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.z, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block
  %.015.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.015.us.i = phi i64 [ %i.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.015.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader68 ] ; 3 uses
  %i.ab = trunc i64 %.015.us.i to i32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015.us.i
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = add nuw i64 %.015.us.i, 1               ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond18.not.i, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !1041

._crit_edge.i:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block63, %middle.block, %bb.b
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 320
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !868, !range !66, !noundef !69
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.015.i = phi i64 [ %i.ax, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.015.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.015.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.015.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %i.al = add nuw i64 %.015.i, 1                  ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.al
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = add nuw i64 %.015.i, 2                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = add nuw i64 %.015.i, 3                  ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.at
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %i.ax = add nuw i64 %.015.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ax, %i.h
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !1042

bb.c:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.az = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !979
  %i.bc = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !989
  br label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit

_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bd = phi ptr [ %.pre.i, %bb.c ], [ %i.ae, %._crit_edge.i ]
  %.012.i = phi i64 [ %i.bc, %bb.c ], [ %i.h, %._crit_edge.i ] ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 488
  %i.bf = atomicrmw add ptr %i.be, i64 %.012.i monotonic, align 8 ; 0 uses
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !317 ; 7 uses
  %.not22 = icmp ne ptr %i.bg, null
  %i.bh = icmp ne i64 %.012.i, 0
  %or.cond = and i1 %.not22, %i.bh
  br i1 %or.cond, label %.lr.ph, label %.loopexit25

.lr.ph:                                           ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  %i.bi = load ptr, ptr %2, align 8, !tbaa !424   ; 6 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter89 = and i64 %.012.i, 3                ; 3 uses
  %i.bj = icmp ult i64 %.012.i, 4
  br i1 %i.bj, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter92 = and i64 %.012.i, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bg, i8 1, i64 %.012.i, i1 false), !tbaa !425
  br label %.thread

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.01328 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.cd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter93 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter93.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bm
  store i8 1, ptr %i.bn, align 1, !tbaa !425
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.br
  store i8 1, ptr %i.bs, align 1, !tbaa !425
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bw
  store i8 1, ptr %i.bx, align 1, !tbaa !425
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.01328
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cb
  store i8 1, ptr %i.cc, align 1, !tbaa !425
  %i.cd = add nuw i64 %.01328, 4                  ; 2 uses
  %niter93.next.3 = add i64 %niter93, 4           ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %.thread.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1043

.loopexit25:                                      ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  %.not = icmp eq i64 %.012.i, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit25
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !979 ; 9 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 321
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !869, !range !66, !noundef !69
  %i.ci = trunc nuw i8 %i.ch to i1
end_hunk_7
begin_hunk_8_@_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm:bb.a
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.c, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.1.us = phi i64 [ %i.t, %bb.c ], [ %.016.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 3 uses
  %i.x = or disjoint i64 %.01415.us, 1            ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !382
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l
  %.val.val.us.1 = load i64, ptr %i.aa, align 1   ; 2 uses
  %i.ab = inttoptr i64 %.val.val.us.1 to ptr
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !382
  %.not.us.1 = icmp eq i64 %.val.val.us.1, 0
  br i1 %.not.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.ac = add i64 %.1.us, 1
  %i.ad = trunc i64 %i.x to i32
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.1.us
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.1.us.1 = phi i64 [ %i.ac, %bb.d ], [ %.1.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.ag = add nuw i64 %.01415.us, 2               ; 2 uses
  %niter33.next.1 = add i64 %niter33, 2           ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !993

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.h, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.016 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.1.1, %bb.h ] ; 3 uses
  %.01415 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bc, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.h ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01415
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3  ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !382
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.l
  %.val.val = load i64, ptr %i.am, align 1        ; 2 uses
  %i.an = inttoptr i64 %.val.val to ptr
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !382
  %.not = icmp eq i64 %.val.val, 0
  br i1 %.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1, label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ao = add i64 %.016, 1
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.016
  store i32 %i.ai, ptr %i.aq, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %bb.f, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.1 = phi i64 [ %i.ao, %bb.f ], [ %.016, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01415
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !382
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.l
  %.val.val.1 = load i64, ptr %i.ax, align 1      ; 2 uses
  %i.ay = inttoptr i64 %.val.val.1 to ptr
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !382
  %.not.1 = icmp eq i64 %.val.val.1, 0
  br i1 %.not.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.az = add i64 %.1, 1
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.1
  store i32 %i.at, ptr %i.bb, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %.1.1 = phi i64 [ %i.az, %bb.g ], [ %.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.bc = add nuw i64 %.01415, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit25.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !993

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.016.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.01415.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod31 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01415.us.epil.init ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !382
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.l
  %.val.val.us.epil = load i64, ptr %i.bf, align 1 ; 2 uses
  %i.bg = inttoptr i64 %.val.val.us.epil to ptr
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !382
  %.not.us.epil = icmp eq i64 %.val.val.us.epil, 0
  br i1 %.not.us.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.bh = add i64 %.016.us.epil.init, 1
  %i.bi = trunc i64 %.01415.us.epil.init to i32
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.016.us.epil.init
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge.loopexit25.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit25.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.016.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.1.1, %._crit_edge.loopexit25.unr-lcssa ] ; 3 uses
  %.01415.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bc, %._crit_edge.loopexit25.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.01415.epil.init
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !382
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.l
  %.val.val.epil = load i64, ptr %i.bq, align 1   ; 2 uses
  %i.br = inttoptr i64 %.val.val.epil to ptr
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !382
  %.not.epil = icmp eq i64 %.val.val.epil, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.bs = add i64 %.016.epil.init, 1
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.016.epil.init
  store i32 %i.bm, ptr %i.bu, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit25.unr-lcssa, %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, %bb.b, %bb.a
  %.0.lcssa.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.016.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %.1.us.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bh, %bb.i ], [ %.1.1, %._crit_edge.loopexit25.unr-lcssa ], [ %i.bs, %bb.j ], [ %.016.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.0.lcssa.sink, ptr %i.bv, align 8, !tbaa !979
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorES6_mm(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 0)
  ret void
}

declare void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorERKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 856
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.e, ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure12GatherResultERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.g = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure22UpdateCompactionBufferEmRNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(376) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load ptr, ptr %2, align 8, !tbaa !424    ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.not.i = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !424  ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr [4 x i8], ptr %i.d, i64 %1 ; 8 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %3, 16
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %i.g = shl i64 %1, 2
  %i.h = add i64 %i.g, %i.e
  %i.i = sub i64 %i.c, %i.h
  %diff.check = icmp ugt i64 %i.i, -32
  br i1 %diff.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !3
  %wide.load17 = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  %i.l = getelementptr [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  store <4 x i32> %wide.load, ptr %i.l, align 4, !tbaa !3
  store <4 x i32> %wide.load17, ptr %i.m, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !1045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30: ; preds = %vector.memcheck, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol
  %.011.prol = phi i64 [ %i.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ], [ %.011.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.011.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr [4 x i8], ptr %i.f, i64 %.011.prol
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  %i.r = add nuw i64 %.011.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol, !llvm.loop !1046

_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30
  %.011.unr = phi i64 [ %.011.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader30 ], [ %i.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol ]
  %i.s = sub i64 %.011.ph, %3
  %i.t = icmp ugt i64 %i.s, -4
  br i1 %i.t, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  %min.iters.check19 = icmp ult i64 %3, 8
  br i1 %min.iters.check19, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader29, label %vector.ph20

vector.ph20:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %n.vec22 = and i64 %3, -8                       ; 3 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph20
  %index24 = phi i64 [ 0, %vector.ph20 ], [ %index.next25, %vector.body23 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph20 ], [ %vec.ind.next, %vector.body23 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.u = getelementptr [4 x i8], ptr %i.f, i64 %index24 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.v, align 4, !tbaa !3
  %index.next25 = add nuw i64 %index24, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.w = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.w, label %middle.block26, label %vector.body23, !llvm.loop !1047

middle.block26:                                   ; preds = %vector.body23
  %cmp.n27 = icmp eq i64 %3, %n.vec22
  br i1 %cmp.n27, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader29

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader29: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %middle.block26
  %.011.us.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %n.vec22, %middle.block26 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader29, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.011.us = phi i64 [ %i.z, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.011.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader29 ] ; 3 uses
  %i.x = trunc i64 %.011.us to i32
  %i.y = getelementptr [4 x i8], ptr %i.f, i64 %.011.us
  store i32 %i.x, ptr %i.y, align 4, !tbaa !3
  %i.z = add nuw i64 %.011.us, 1                  ; 2 uses
  %exitcond13.not = icmp eq i64 %i.z, %3
  br i1 %exitcond13.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !1048

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block, %middle.block26, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(104) %i.aa, ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef 0, i64 noundef %1)
  ret void

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.011 = phi i64 [ %i.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ], [ %.011.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.011
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr [4 x i8], ptr %i.f, i64 %.011
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !3
  %i.af = add nuw i64 %.011, 1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = getelementptr [4 x i8], ptr %i.f, i64 %i.af
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !3
  %i.aj = add nuw i64 %.011, 2                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr [4 x i8], ptr %i.f, i64 %i.aj
  store i32 %i.al, ptr %i.am, align 4, !tbaa !3
  %i.an = add nuw i64 %.011, 3                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr [4 x i8], ptr %i.f, i64 %i.an
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !3
  %i.ar = add nuw i64 %.011, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %3
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1049
}

declare void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_RKNS_15SelectionVectorEmmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure14ScanKeyMatchesERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !979  ; 2 uses
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %._crit_edge18, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit
  %i.k = phi i64 [ %i.c, %.lr.ph.i.lr.ph ], [ %.0.lcssa.sink.i, %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit ] ; 12 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !424  ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !424  ; 9 uses
  %min.iters.check = icmp ult i64 %i.k, 8         ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader: ; preds = %.lr.ph.i
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = ptrtoaddr ptr %i.l to i64
  %i.p = sub i64 %i.o, %i.n
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52, label %vector.ph40

vector.ph40:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader
  %n.vec42 = and i64 %i.k, -8                     ; 3 uses
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next46, %vector.body43 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !3
  %wide.load45 = load <4 x i32>, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !3
  store <4 x i32> %wide.load45, ptr %i.t, align 4, !tbaa !3
  %index.next46 = add nuw i64 %index44, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next46, %n.vec42
  br i1 %i.u, label %middle.block47, label %vector.body43, !llvm.loop !1050

middle.block47:                                   ; preds = %vector.body43
  %cmp.n48 = icmp eq i64 %i.k, %n.vec42
  br i1 %cmp.n48, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader, %middle.block47
  %.015.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader ], [ %n.vec42, %middle.block47 ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol
  %.015.i.prol = phi i64 [ %i.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.015.i.prol
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.i.prol
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %i.y = add nuw i64 %.015.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, !llvm.loop !1051

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52
  %.015.i.unr = phi i64 [ %.015.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.preheader52 ], [ %i.y, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol ]
  %i.z = sub i64 %.015.i.ph, %i.k
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.lr.ph.i
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %n.vec = and i64 %i.k, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %vec.ind, ptr %i.ab, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.ac, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1052

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader51

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader51: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader, %middle.block
  %.015.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader51, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %.015.us.i = phi i64 [ %i.ag, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ], [ %.015.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader51 ] ; 3 uses
  %i.ae = trunc i64 %.015.us.i to i32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.us.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !3
  %i.ag = add nuw i64 %.015.us.i, 1               ; 2 uses
  %exitcond18.not.i = icmp eq i64 %i.ag, %i.k
  br i1 %exitcond18.not.i, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !1053

._crit_edge.i:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %middle.block47, %middle.block
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !989, !nonnull !69, !align !336 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 320
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !868, !range !66, !noundef !69
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit, label %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit.thread

_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit.thread: ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 488
  %i.am = atomicrmw add ptr %i.al, i64 %i.k monotonic, align 8 ; 0 uses
  %i.an = load i64, ptr %i.b, align 8, !tbaa !979 ; 2 uses
  %i.ao = sub i64 %i.an, %i.k
  br label %.lr.ph

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.015.i = phi i64 [ %i.be, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %.015.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.015.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.015.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !3
  %i.as = add nuw i64 %.015.i, 1                  ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.as
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  %i.aw = add nuw i64 %.015.i, 2                  ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aw
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = add nuw i64 %.015.i, 3                  ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ba
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !3
  %i.be = add nuw i64 %.015.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, %i.k
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, !llvm.loop !1054

_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit: ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  %i.bg = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10RowMatcherESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1011, !nonnull !69, !align !336
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !979
  %i.bj = call noundef i64 @_ZN6duckdb10RowMatcher5MatchERNS_9DataChunkERKNS_6vectorINS_21TupleDataVectorFormatELb1ESaIS4_EEERNS_15SelectionVectorEmRNS_6VectorEPS9_Rm(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !989
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre.i, i64 488
  %i.bl = atomicrmw add ptr %i.bk, i64 %i.bj monotonic, align 8 ; 0 uses
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !979 ; 3 uses
  %i.bn = sub i64 %i.bm, %i.bj                    ; 2 uses
  %.not19 = icmp eq i64 %i.bj, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit.thread, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  %i.bo = phi i64 [ %i.ao, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit.thread ], [ %i.bn, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit ] ; 3 uses
  %i.bp = phi i64 [ %i.an, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit.thread ], [ %i.bm, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit ] ; 3 uses
  %.012.i30 = phi i64 [ %i.k, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit.thread ], [ %i.bj, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit ] ; 7 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !424 ; 6 uses
  %.not.i13 = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !317 ; 6 uses
  br i1 %.not.i13, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph
  %i.bs = add i64 %.012.i30, -1
  %xtraiter54 = and i64 %.012.i30, 3              ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 3
  br i1 %i.bt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %.012.i30, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr align 1 %i.br, i8 1, i64 %.012.i30, i1 false), !tbaa !425
  br label %._crit_edge

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.016.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.fl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter54, 0
  call void @llvm.assume(i1 %lcmp.mod56)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %.016.epil = phi i64 [ %i.by, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.016.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.016.epil
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  store i8 1, ptr %i.bx, align 1, !tbaa !425
  %i.by = add nuw i64 %.016.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter54
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, !llvm.loop !1055

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit
  %i.bz = phi i64 [ %i.bn, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit ], [ %i.bo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.bo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %i.bo, %._crit_edge.loopexit.unr-lcssa ] ; 8 uses
  %i.ca = phi i64 [ %i.bm, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit ], [ %i.bp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.bp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %i.bp, %._crit_edge.loopexit.unr-lcssa ]
  %.012.i31 = phi i64 [ 0, %_ZN6duckdb13JoinHashTable13ScanStructure17ResolvePredicatesERNS_9DataChunkERNS_15SelectionVectorEPS4_.exit ], [ %.012.i30, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.012.i30, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil ], [ %.012.i30, %._crit_edge.loopexit.unr-lcssa ]
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 321
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !869, !range !66, !noundef !69
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.b, label %_ZN6duckdb13JoinHashTable13ScanStructure15AdvancePointersERKNS_15SelectionVectorEm.exit.thread

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
end_hunk_8
begin_hunk_9_@_ZN6duckdb13JoinHashTable13ScanStructure18NextSemiOrAntiJoinILb0EEEvRNS_9DataChunkES4_S4_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #40
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, %.lr.ph
  %.01317.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ab, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 2 uses
  %.01416.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod24 = trunc i64 %i.c to i1
  call void @llvm.assume(i1 %lcmp.mod24)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01317.epil.init
  %i.j = load i8, ptr %i.i, align 1, !tbaa !425, !range !66, !noundef !69
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

bb.c:                                             ; preds = %.epil.preheader
  %i.l = add i64 %.01416.epil.init, 1
  %i.m = trunc i64 %.01317.epil.init to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01416.epil.init
  store i32 %i.m, ptr %i.n, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %.epil.preheader, %bb.c, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa
  %.1.lcssa = phi i64 [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa ], [ %i.l, %bb.c ], [ %.01416.epil.init, %.epil.preheader ] ; 2 uses
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, label %bb.g

bb.d:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.1, %.lr.ph.new
  %.01317 = phi i64 [ 0, %.lr.ph.new ], [ %i.ab, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 4 uses
  %.01416 = phi i64 [ 0, %.lr.ph.new ], [ %.1.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN6duckdb15SelectionVectorC2Em.exit.1 ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %.01317
  %i.p = load i8, ptr %i.o, align 1, !tbaa !425, !range !66, !noundef !69
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %_ZN6duckdb15SelectionVectorC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.r = add i64 %.01416, 1
  %i.s = trunc i64 %.01317 to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01416
  store i32 %i.s, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.r, %bb.e ], [ %.01416, %bb.d ] ; 3 uses
  %i.u = or disjoint i64 %.01317, 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !425, !range !66, !noundef !69
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZN6duckdb15SelectionVectorC2Em.exit.1

bb.f:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.y = add i64 %.1, 1
  %i.z = trunc i64 %i.u to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.1
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.1

_ZN6duckdb15SelectionVectorC2Em.exit.1:           ; preds = %bb.f, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.1.1 = phi i64 [ %i.y, %bb.f ], [ %.1, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 3 uses
  %i.ab = add nuw i64 %.01317, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.unr-lcssa, label %bb.d, !llvm.loop !1059

bb.g:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  invoke void @_ZN6duckdb9DataChunk5SliceERKS0_RKNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %.1.lcssa, i64 noundef 0)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.af, align 8, !tbaa !264
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !269
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40, !inline_history !319
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40, !inline_history !319
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.l ], [ %i.as, %bb.m ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !58

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #40
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge.thread, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable13ScanStructure23ConstructMarkJoinResultERNS_9DataChunkES3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) initializes((24, 32)) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.c, align 8, !tbaa !409
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !410
  %i.f = load ptr, ptr %2, align 8, !tbaa !411
  %.not69 = icmp eq ptr %i.e, %i.f
  br i1 %.not69, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 7 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !427  ; 9 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !410
  %i.n = load ptr, ptr %1, align 8, !tbaa !411
  %.not70 = icmp eq ptr %i.m, %i.n
  br i1 %.not70, label %.preheader55, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04358 = phi i64 [ %i.w, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.04358)
  %i.v = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.04358)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.u, ptr noundef nonnull align 8 dereferenceable(104) %i.v)
  %i.w = add nuw i64 %.04358, 1                   ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !410
  %i.y = load ptr, ptr %2, align 8, !tbaa !411
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 104
  %i.ad = icmp ult i64 %i.w, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !1060

.preheader55:                                     ; preds = %bb.y, %._crit_edge
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !409 ; 12 uses
  %.not72 = icmp eq i64 %i.ae, 0
  br i1 %.not72, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !317 ; 8 uses
  %min.iters.check = icmp ult i64 %i.ae, 4
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.j
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 28
  %n.vec = and i64 %i.ae, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !425
  %wide.load87 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !425
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <16 x i8> %wide.load, ptr %i.al, align 1, !tbaa !425
  store <16 x i8> %wide.load87, ptr %i.am, align 1, !tbaa !425
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1061

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge66.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1062

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.ae, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %index90
  %wide.load91 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !425
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %index90
  store <4 x i8> %wide.load91, ptr %i.ap, align 1, !tbaa !425
  %index.next92 = add nuw i64 %index90, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next92, %n.vec89
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1063

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.ae, %n.vec89
  br i1 %cmp.n93, label %._crit_edge66.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04264.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.04264.prol = phi i64 [ %i.au, %vec.epilog.scalar.ph.prol ], [ %.04264.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.04264.prol
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !425, !range !66, !noundef !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 %.04264.prol
  store i8 %i.as, ptr %i.at, align 1, !tbaa !425
  %i.au = add nuw i64 %.04264.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1064

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.04264.unr = phi i64 [ %.04264.ph, %vec.epilog.scalar.ph.preheader ], [ %i.au, %vec.epilog.scalar.ph.prol ]
  %i.av = sub i64 %.04264.ph, %i.ae
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge66.thread, label %vec.epilog.scalar.ph

bb.b:                                             ; preds = %.lr.ph63, %bb.y
  %.04761 = phi i64 [ 0, %.lr.ph63 ], [ %i.dr, %bb.y ] ; 3 uses
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !989, !nonnull !69, !align !336
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 896
  %i.az = call { ptr, i64 } @_ZN6duckdb6vectorIbLb1ESaIbEE3getILb1EEESt14_Bit_referencem(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 noundef %.04761) ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.bd = and i64 %i.bb, %i.bc
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  %i.be = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.04761)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !409
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.be, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !717
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %.loopexit57, label %.preheader56

.preheader56:                                     ; preds = %bb.e
  %i.bh = load i64, ptr %i.p, align 8, !tbaa !409 ; 2 uses
  %.not71 = icmp eq i64 %i.bh, 0
  br i1 %.not71, label %.loopexit57, label %.lr.ph60

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph60:                                         ; preds = %.preheader56, %bb.l
  %i.bj = phi i64 [ %i.ci, %bb.l ], [ %i.bh, %.preheader56 ]
  %.04459 = phi i64 [ %i.cj, %bb.l ], [ 0, %.preheader56 ] ; 5 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !718
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !424 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bl, null
  br i1 %.not.i49, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph60
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.04459
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph60, %bb.g
  %i.bp = phi i64 [ %i.bo, %bb.g ], [ %.04459, %.lr.ph60 ] ; 2 uses
  %i.bq = lshr i64 %i.bp, 6
  %i.br = and i64 %i.bp, 63
  %i.bs = load ptr, ptr %i.q, align 8, !tbaa !717
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !39
  %i.bv = shl nuw i64 1, %i.br
  %i.bw = and i64 %i.bu, %i.bv
  %.not54 = icmp eq i64 %i.bw, 0
  br i1 %.not54, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %i.k, align 8, !tbaa !717 ; 2 uses
  %.not.i50 = icmp eq ptr %i.bx, null
  br i1 %.not.i50, label %bb.j, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.j:                                             ; preds = %bb.i
  %i.by = load i64, ptr %i.r, align 8, !tbaa !853
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.by)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !717
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.i, %.noexc
  %i.bz = phi ptr [ %.pre.i, %.noexc ], [ %i.bx, %bb.i ]
  %i.ca = lshr i64 %.04459, 6
  %i.cb = and i64 %.04459, 63
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = xor i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !39
  %i.cg = and i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !39
  %.pre = load i64, ptr %i.p, align 8, !tbaa !409
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.l:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.h
  %i.ci = phi i64 [ %.pre, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit ], [ %i.bj, %bb.h ] ; 2 uses
  %i.cj = add nuw i64 %.04459, 1                  ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  br i1 %i.ck, label %.lr.ph60, label %.loopexit57, !llvm.loop !1065

.loopexit57:                                      ; preds = %bb.l, %.preheader56, %bb.e
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %.loopexit57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cm, align 8, !tbaa !264
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !269
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #40, !inline_history !746
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !41
end_hunk_9
begin_hunk_10_@_ZN6duckdb13JoinHashTable13ScanStructure23ConstructMarkJoinResultERNS_9DataChunkES3_S3_:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 %.067
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !425, !range !66, !noundef !69
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = load ptr, ptr %i.k, align 8, !tbaa !717 ; 2 uses
  %.not.i51 = icmp eq ptr %i.ez, null
  br i1 %.not.i51, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit53

bb.ac:                                            ; preds = %bb.ab
  %i.fa = load i64, ptr %i.ee, align 8, !tbaa !853
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 noundef %i.fa)
  %.pre.i52 = load ptr, ptr %i.k, align 8, !tbaa !717
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit53

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit53: ; preds = %bb.ab, %bb.ac
  %i.fb = phi ptr [ %.pre.i52, %bb.ac ], [ %i.ez, %bb.ab ]
  %i.fc = lshr i64 %.067, 6
  %i.fd = and i64 %.067, 63
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = xor i64 %i.fe, -1
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !39
  %i.fi = and i64 %i.fh, %i.ff
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !39
  %.pre74 = load i64, ptr %i.a, align 8, !tbaa !409
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit53
  %i.fj = phi i64 [ %i.ev, %bb.aa ], [ %.pre74, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit53 ] ; 2 uses
  %i.fk = add nuw i64 %.067, 1                    ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  br i1 %i.fl, label %bb.aa, label %.loopexit, !llvm.loop !1068

.loopexit:                                        ; preds = %bb.ad, %.preheader55, %._crit_edge66.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !318    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !318  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -104
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.a, align 8, !tbaa !853
  %i.b = load ptr, ptr %1, align 8, !tbaa !717    ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !1069
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !271  ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !271
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !264
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !269
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #40, !inline_history !1070
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #40, !inline_history !1070
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.h, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !58

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #40
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.a
  %i.v = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #38, !noalias !1071 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 7 uses
  store i32 1, ptr %i.w, align 8, !tbaa !264, !noalias !1071
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  store i32 1, ptr %i.x, align 4, !tbaa !269, !noalias !1071
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.v, align 8, !tbaa !41, !noalias !1071
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !1076, !noalias !1071
  %i.z = add i64 %2, 63                           ; 2 uses
  %i.aa = lshr i64 %i.z, 6                        ; 7 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #38
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !1071 ; 8 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !59, !noalias !1071
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc.i.i.i.i.i
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %min.iters.check = icmp ult i64 %i.z, 512
  %i.ae = sub i64 %i.c, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 288230376151711740      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !39, !noalias !1071
  %wide.load24 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !39, !noalias !1071
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x i64> %wide.load, ptr %i.ah, align 8, !tbaa !39, !noalias !1071
  store <2 x i64> %wide.load24, ptr %i.ai, align 8, !tbaa !39, !noalias !1071
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1078

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader25

.lr.ph.i.i.i.i.i.i.i.i.preheader25:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.014.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.014.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.014.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.014.i.i.i.i.i.i.i.i.prol
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !39, !noalias !1071
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.014.i.i.i.i.i.i.i.i.prol
  store i64 %i.al, ptr %i.am, align 8, !tbaa !39, !noalias !1071
  %i.an = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1079

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader25
  %.014.i.i.i.i.i.i.i.i.unr = phi i64 [ %.014.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ao = sub nsw i64 %.014.i.i.i.i.i.i.i.i.ph, %i.aa
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.014.i.i.i.i.i.i.i.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39, !noalias !1071
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.014.i.i.i.i.i.i.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !39, !noalias !1071
  %i.at = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39, !noalias !1071
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.at
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !39, !noalias !1071
  %i.ax = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !39, !noalias !1071
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ax
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !39, !noalias !1071
  %i.bb = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !39, !noalias !1071
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bb
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !39, !noalias !1071
  %i.bf = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1080

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i: ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #39, !noalias !1071
  resume { ptr, i32 } %i.bg

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc.i.i.i.i.i
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272, !noalias !1081
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit.i
  store i32 2, ptr %i.w, align 8, !tbaa !3, !noalias !1081
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

bb.k:                                             ; preds = %.loopexit.i
  %i.bi = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !1081 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i: ; preds = %bb.k, %bb.j
  %i.bj = load atomic i64, ptr %i.w acquire, align 8, !noalias !1081 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  store i32 0, ptr %i.w, align 8, !tbaa !264, !noalias !1081
  store i32 0, ptr %i.x, align 4, !tbaa !269, !noalias !1081
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !41, !noalias !1081
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !1081
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #40, !noalias !1081, !inline_history !1082
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !41, !noalias !1081
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !1081
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #40, !noalias !1081, !inline_history !1082
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.m:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ESt10shared_ptrIS2_E.exit.i
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272, !noalias !1081
  %.not.i.i.i.i14 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = add nsw i32 %i.bl, -1
  store i32 %i.bt, ptr %i.w, align 8, !tbaa !3, !noalias !1081
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15

bb.o:                                             ; preds = %bb.m
  %i.bu = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4, !noalias !1081
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i16 = phi i32 [ %i.bl, %bb.n ], [ %i.bu, %bb.o ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i16, 1
  br i1 %i.bv, label %bb.p, label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !58

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #40, !noalias !1081
  br label %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i15, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.bw, align 8, !tbaa !1069
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !271 ; 8 uses
  store ptr %i.v, ptr %i.bx, align 8, !tbaa !271
  %.not.i.i.i.i4 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i4, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bz, align 8, !tbaa !264
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !269
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #40, !inline_history !1070
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #40, !inline_history !1070
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13

bb.s:                                             ; preds = %bb.q
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i5 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

bb.u:                                             ; preds = %bb.s
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i7 = phi i32 [ %i.cc, %bb.t ], [ %i.cm, %bb.u ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i7, 1
  br i1 %i.cn, label %bb.v, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13, !prof !58

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #40
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6, %bb.r, %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.co = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !59
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13
  %storemerge = phi ptr [ %i.cp, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13 ], [ null, %bb.h ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ null, %bb.d ], [ null, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !717
  ret void
}

declare void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb13JoinHashTable13ScanFullOuterERNS_15JoinHTScanStateERNS_6VectorERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427
  %i.c = tail call noundef zeroext i1 @_ZNK6duckdb22TupleDataChunkIterator4DoneEv(ptr noundef nonnull align 8 dereferenceable(624) %1)
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !841
  %i.f = tail call noundef ptr @_ZN6duckdb22TupleDataChunkIterator15GetRowLocationsEv(ptr noundef nonnull align 8 dereferenceable(624) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = icmp ne i8 %i.e, 9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ %.1.lcssa92, %._crit_edge.thread ] ; 2 uses
  %i.j = tail call noundef i64 @_ZNK6duckdb22TupleDataChunkIterator20GetCurrentChunkCountEv(ptr noundef nonnull align 8 dereferenceable(624) %1) ; 2 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !1083 ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.h, align 8, !tbaa !870
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.178 = phi i64 [ %.0, %.lr.ph ], [ %.3.ph, %bb.f ] ; 3 uses
  %.05277 = phi i64 [ %i.k, %.lr.ph ], [ %i.w, %bb.f ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05277
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !382  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %.0.copyload.i = load i8, ptr %i.p, align 1
  %i.q = trunc i8 %.0.copyload.i to i1
  %i.r = xor i1 %i.i, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = add i64 %.178, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.178
  store ptr %i.o, ptr %i.t, align 8, !tbaa !382
  %i.u = icmp eq i64 %i.s, 2048
  br i1 %i.u, label %.thread61, label %bb.f

.thread61:                                        ; preds = %bb.e
  %i.v = add nuw i64 %.05277, 1
  store i64 %i.v, ptr %i.g, align 8, !tbaa !1083
  br label %.thread69

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3.ph = phi i64 [ %.178, %bb.d ], [ %i.s, %bb.e ] ; 3 uses
  %i.w = add i64 %.05277, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1086

._crit_edge:                                      ; preds = %bb.f
  %i.x = icmp eq i64 %.3.ph, 2048
  br i1 %i.x, label %.thread69, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.1.lcssa92 = phi i64 [ %.3.ph, %._crit_edge ], [ %.0, %bb.c ] ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !1083
  %i.y = tail call noundef zeroext i1 @_ZN6duckdb22TupleDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(624) %1)
  br i1 %i.y, label %bb.c, label %bb.g, !llvm.loop !1087

bb.g:                                             ; preds = %._crit_edge.thread
  %i.z = icmp eq i64 %.1.lcssa92, 0
  br i1 %i.z, label %.loopexit, label %.thread69

.thread69:                                        ; preds = %._crit_edge, %.thread61, %bb.g
  %.4636871 = phi i64 [ %.1.lcssa92, %bb.g ], [ 2048, %.thread61 ], [ 2048, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.4636871, ptr %i.aa, align 8, !tbaa !409
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !410
  %i.ad = load ptr, ptr %3, align 8, !tbaa !411
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 104
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = load i8, ptr %i.d, align 8, !tbaa !841
  %i.as = sub nsw i64 %i.ah, %i.aq
  %i.at = add i8 %i.ar, -9
  %or.cond = icmp ult i8 %i.at, 2
  %.053 = select i1 %or.cond, i64 0, i64 %i.as    ; 3 uses
  %i.au = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() ; 2 uses
  %.not = icmp eq i64 %.053, 0
  br i1 %.not, label %.preheader, label %.lr.ph80

.preheader:                                       ; preds = %.lr.ph80, %.thread69
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !37
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !40
  %.not83 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not83, label %.loopexit, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 856
  br label %bb.h

.lr.ph80:                                         ; preds = %.thread69, %.lr.ph80
  %.05179 = phi i64 [ %i.bb, %.lr.ph80 ], [ 0, %.thread69 ] ; 2 uses
  %i.ba = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.05179) ; 2 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.ba, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ba, i1 noundef zeroext true)
  %i.bb = add nuw i64 %.05179, 1                  ; 2 uses
  %exitcond86.not = icmp eq i64 %i.bb, %.053
  br i1 %exitcond86.not, label %.preheader, label %.lr.ph80, !llvm.loop !1088

bb.h:                                             ; preds = %.lr.ph82, %bb.h
  %.05081 = phi i64 [ 0, %.lr.ph82 ], [ %i.bi, %bb.h ] ; 3 uses
  %i.bc = add i64 %.05081, %.053
  %i.bd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.bc)
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !992, !nonnull !69, !align !336
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %.05081)
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !39
  %i.bh = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
  tail call void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.bh, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %.4636871, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(104) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 0)
  %i.bi = add nuw i64 %.05081, 1                  ; 2 uses
  %i.bj = load ptr, ptr %i.ai, align 8, !tbaa !992, !nonnull !69, !align !336 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3
  %i.br = icmp ult i64 %i.bi, %i.bq
  br i1 %i.br, label %bb.h, label %.loopexit, !llvm.loop !1089

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.g, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK6duckdb22TupleDataChunkIterator4DoneEv(ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427  ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = tail call noundef ptr @_ZN6duckdb22TupleDataChunkIterator15GetRowLocationsEv(ptr noundef nonnull align 8 dereferenceable(624) %0) ; 7 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = sub i64 %i.c, %i.e
  %invariant.op = add i64 %i.f, -1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.015 = phi i64 [ 0, %bb.a ], [ %i.v, %._crit_edge ] ; 3 uses
  %i.g = tail call noundef i64 @_ZNK6duckdb22TupleDataChunkIterator20GetCurrentChunkCountEv(ptr noundef nonnull align 8 dereferenceable(624) %0) ; 8 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr [8 x i8], ptr %i.b, i64 %.015 ; 6 uses
  %min.iters.check = icmp ult i64 %i.g, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.i = shl i64 %.015, 3
  %i.j = add i64 %i.i, %invariant.op
  %diff.check = icmp ult i64 %i.j, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x ptr>, ptr %i.k, align 8, !tbaa !382
  %wide.load18 = load <2 x ptr>, ptr %i.l, align 8, !tbaa !382
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  store <2 x ptr> %wide.load, ptr %i.m, align 8, !tbaa !382
  store <2 x ptr> %wide.load18, ptr %i.n, align 8, !tbaa !382
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1090

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.017.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.017.prol = phi i64 [ %i.s, %scalar.ph.prol ], [ %.017.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.017.prol
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !382
  %i.r = getelementptr [8 x i8], ptr %i.h, i64 %.017.prol
  store ptr %i.q, ptr %i.r, align 8, !tbaa !382
  %i.s = add nuw i64 %.017.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1091

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.unr = phi i64 [ %.017.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %i.t = sub i64 %.017.ph, %i.g
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %i.v = add i64 %i.g, %.015                      ; 2 uses
  %i.w = tail call noundef zeroext i1 @_ZN6duckdb22TupleDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(624) %0)
  br i1 %i.w, label %bb.b, label %bb.c, !llvm.loop !1092

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017 = phi i64 [ %i.am, %scalar.ph ], [ %.017.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.017
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !382
  %i.z = getelementptr [8 x i8], ptr %i.h, i64 %.017
  store ptr %i.y, ptr %i.z, align 8, !tbaa !382
  %i.aa = add nuw i64 %.017, 1                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !382
  %i.ad = getelementptr [8 x i8], ptr %i.h, i64 %i.aa
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !382
  %i.ae = add nuw i64 %.017, 2                    ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !382
  %i.ah = getelementptr [8 x i8], ptr %i.h, i64 %i.ae
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !382
  %i.ai = add nuw i64 %.017, 3                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !382
  %i.al = getelementptr [8 x i8], ptr %i.h, i64 %i.ai
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !382
  %i.am = add nuw i64 %.017, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.g
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1093

bb.c:                                             ; preds = %._crit_edge
  ret i64 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb13JoinHashTable13ScanKeyColumnERNS_6VectorES2_m(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::JoinHTScanState", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection10ChunkCountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.b)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.e = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection10ChunkCountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.f)
  call void @_ZN6duckdb22TupleDataChunkIteratorC1ERNS_19TupleDataCollectionENS_22TupleDataPinPropertiesEmmb(ptr noundef nonnull align 8 dereferenceable(632) %4, ptr noundef nonnull align 8 dereferenceable(192) %i.e, i8 noundef zeroext 1, i64 noundef 0, i64 noundef %i.g, i1 noundef zeroext false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 624
  store i64 0, ptr %i.h, align 8, !tbaa !1083
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !427  ; 2 uses
  %i.k = invoke noundef ptr @_ZN6duckdb22TupleDataChunkIterator15GetRowLocationsEv(ptr noundef nonnull align 8 dereferenceable(632) %4)
          to label %.noexc16.preheader unwind label %.loopexit.split-lp ; 7 uses

.noexc16.preheader:                               ; preds = %.noexc
  %i.l = ptrtoaddr ptr %i.j to i64
  %i.m = ptrtoaddr ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %invariant.op = add i64 %i.n, -1
  br label %.noexc16

.noexc16:                                         ; preds = %.noexc16.preheader, %.noexc18
  %.015.i = phi i64 [ %i.ae, %.noexc18 ], [ 0, %.noexc16.preheader ] ; 3 uses
  %i.o = invoke noundef i64 @_ZNK6duckdb22TupleDataChunkIterator20GetCurrentChunkCountEv(ptr noundef nonnull align 8 dereferenceable(632) %4)
          to label %.noexc17 unwind label %.loopexit ; 8 uses

.noexc17:                                         ; preds = %.noexc16
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc17
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %.015.i ; 6 uses
  %min.iters.check = icmp ult i64 %i.o, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.q = shl i64 %.015.i, 3
  %i.r = add i64 %i.q, %invariant.op
  %diff.check = icmp ult i64 %i.r, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !382
  %wide.load28 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !382
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  store <2 x ptr> %wide.load, ptr %i.u, align 8, !tbaa !382
  store <2 x ptr> %wide.load28, ptr %i.v, align 8, !tbaa !382
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1094

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.017.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.017.i.prol = phi i64 [ %i.aa, %scalar.ph.prol ], [ %.017.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.017.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !382
  %i.z = getelementptr [8 x i8], ptr %i.p, i64 %.017.i.prol
  store ptr %i.y, ptr %i.z, align 8, !tbaa !382
  %i.aa = add nuw i64 %.017.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1095

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %i.ab = sub i64 %.017.i.ph, %i.o
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc17
  %i.ad = invoke noundef zeroext i1 @_ZN6duckdb22TupleDataChunkIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(632) %4)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %._crit_edge.i
  %i.ae = add i64 %i.o, %.015.i                   ; 4 uses
  br i1 %i.ad, label %.noexc16, label %_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit, !llvm.loop !1092

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.au, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.017.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !382
  %i.ah = getelementptr [8 x i8], ptr %i.p, i64 %.017.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !382
  %i.ai = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !382
  %i.al = getelementptr [8 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !382
  %i.am = add nuw i64 %.017.i, 2                  ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !382
  %i.ap = getelementptr [8 x i8], ptr %i.p, i64 %i.am
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !382
  %i.aq = add nuw i64 %.017.i, 3                  ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !382
  %i.at = getelementptr [8 x i8], ptr %i.p, i64 %i.aq
  store ptr %i.as, ptr %i.at, align 8, !tbaa !382
  %i.au = add nuw i64 %.017.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.au, %i.o
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1096

_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit: ; preds = %.noexc18
  %i.av = icmp eq i64 %i.ae, 0
  br i1 %i.av, label %bb.g, label %bb.c

.loopexit:                                        ; preds = %.noexc16, %._crit_edge.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.b, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.c:                                             ; preds = %_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit
  %i.aw = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.ax = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmmS2_S5_NS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(192) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef %i.ae, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 0)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %_ZN6duckdb13JoinHashTable17FillWithHTOffsetsERNS_15JoinHTScanStateERNS_6VectorE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.ba) #40
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !371 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !374 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bc, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #40
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !375

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !371
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.g
  %i.bh = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.bc, %bb.g ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #39
  br label %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i

_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !371 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !374 ; 2 uses
  %.not4.i.i.i.i1.i.i.i.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not4.i.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i.i

.lr.ph.i.i.i.i2.i.i.i.i:                          ; preds = %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i2.i.i.i.i
  %.05.i.i.i.i3.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i2.i.i.i.i ], [ %i.bi, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i.i, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bl) #40
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i4.i.i.i.i = icmp eq ptr %i.bm, %i.bk
  br i1 %.not.i.i.i.i4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i, label %.lr.ph.i.i.i.i2.i.i.i.i, !llvm.loop !375

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i: ; preds = %.lr.ph.i.i.i.i2.i.i.i.i
  %.pr.i.i6.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !371
  br label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i

_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i
  %i.bn = phi ptr [ %.pr.i.i6.i.i.i.i, %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i5.i.i.i.i ], [ %i.bi, %_ZN6duckdb19buffer_handle_map_tD2Ev.exit.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i8.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i.i8.i.i.i.i, label %_ZN6duckdb15JoinHTScanStateD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #39
  br label %_ZN6duckdb15JoinHTScanStateD2Ev.exit

_ZN6duckdb15JoinHTScanStateD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i7.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.k

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb15JoinHTScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.a, %_ZN6duckdb15JoinHTScanStateD2Ev.exit
  %.1 = phi i64 [ %i.ae, %_ZN6duckdb15JoinHTScanStateD2Ev.exit ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15JoinHTScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(632) dereferenceable(632) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb19TupleDataChunkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !374  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIjN6duckdb12BufferHandleEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

end_hunk_10
begin_hunk_11_@_ZNK6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EEdeEv:bb.a
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10RenderTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.e) #39
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #40
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %0, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.a, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !1389
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16PhysicalOperator5PrintEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(136) %0, i8 noundef zeroext 0)
  invoke void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.d) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.h) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %i.g
}

declare void @_ZN6duckdb7Printer5PrintERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16PhysicalOperator11GetChildrenEv(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::vector.865") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.013.021 = load ptr, ptr %i.a, align 8, !tbaa !1409 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.013.021, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa18 = phi ptr [ null, %bb.a ], [ %i.aq, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa18, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit
  %i.d = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ] ; 6 uses
  %.sroa.013.023 = phi ptr [ %.sroa.013.021, %.lr.ph ], [ %.sroa.013.0, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.e = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit ] ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1410 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !1412
  %.not.i.i = icmp eq ptr %i.d, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.g to i64
  store i64 %i.i, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !1415
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #38
          to label %.noexc10 unwind label %.loopexit ; 8 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.g to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = sub i64 %i.k, %i.l
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  %i.ac = sub i64 %i.l, %i.x
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.e, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.ah = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep39, align 8, !alias.scope !1419, !noalias !1416
  %wide.load40 = load <2 x i64>, ptr %i.ah, align 8, !alias.scope !1419, !noalias !1416
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1416, !noalias !1419
  store <2 x i64> %wide.load40, ptr %i.ai, align 8, !alias.scope !1416, !noalias !1419
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader42

.lr.ph.i.i.i.i.i.i.i.preheader42:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader42, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader42 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader42 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1419, !noalias !1416
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1416, !noalias !1419
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1422

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc10 ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.an, ptr %i.b, align 8, !tbaa !1415
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !1412
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.ap = phi ptr [ %i.an, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ]
  %i.aq = phi ptr [ %i.u, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.013.0 = load ptr, ptr %.sroa.013.023, align 8, !tbaa !1409 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, null
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.e, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16PhysicalOperatorEESaIS4_EED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16PhysicalOperator23SetEstimatedCardinalityERNS_27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.1609", align 8  ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !364
  store i32 1970039845, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !365
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.e, align 4, !tbaa !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.b, align 8, !tbaa !39, !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !1426
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !1426
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %2, align 8, !tbaa !433, !noalias !1426 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !436, !noalias !1426 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.j) #39
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !437

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %2, align 8, !tbaa !433, !noalias !1426
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.n = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i, label %.noexc.i10, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.n) #39
  br label %.noexc.i10

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1426
  br label %.body

.noexc.i10:                                       ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !1426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 25, ptr %i.a, align 8, !tbaa !39
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.k   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i10
  store ptr %i.q, ptr %5, align 8, !tbaa !54
  %i.r = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.q, ptr noundef nonnull align 1 dereferenceable(25) @.str.24, i64 25, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !365
  %i.t = load ptr, ptr %5, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEixERKS6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.l       ; 9 uses

bb.d:                                             ; preds = %.noexc11
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = load ptr, ptr %3, align 8, !tbaa !54     ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ab = icmp eq ptr %i.z, %i.aa                 ; 2 uses
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.ab, label %bb.e, label %.thread.i

end_hunk_11
begin_hunk_12_@_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKmS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !54 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = icmp eq ptr %.pre11, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #39
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13OperatorStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13OperatorStateD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13OperatorState8FinalizeERKNS_16PhysicalOperatorERNS_16ExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19GlobalOperatorStateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19GlobalOperatorStateD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN6duckdb19GlobalOperatorState10MaxThreadsEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i64 %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_8PipelineELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1556
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #40
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb12PhysicalPlan4MakeINS_20PhysicalVerifyVectorEJRNS_16PhysicalOperatorERNS_23DebugVectorVerificationEEEES4_DpOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 144) ; 4 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !1637
  tail call void @_ZN6duckdb20PhysicalVerifyVectorC1ERNS_12PhysicalPlanERNS_16PhysicalOperatorENS_23DebugVectorVerificationE(ptr noundef nonnull align 8 dereferenceable(137) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i8 noundef zeroext %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2243 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2244
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.a to i64
  store i64 %i.h, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !2243
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !2243
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1613 ; 7 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #38 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = ptrtoaddr ptr %i.v to i64
  %i.z = sub i64 %i.l, %i.m
  %i.aa = add i64 %i.z, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 72
  %i.ad = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.k, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.ai = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !alias.scope !2248, !noalias !2245
  %wide.load9 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !2248, !noalias !2245
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2245, !noalias !2248
  store <2 x i64> %wide.load9, ptr %i.aj, align 8, !alias.scope !2245, !noalias !2248
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !2250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2248, !noalias !2245
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !2245, !noalias !2248
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2251

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #39
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.v, ptr %i.c, align 8, !tbaa !1613
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !2243
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !2244
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16PhysicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  ret ptr %i.a
}

declare noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #1

declare void @_ZN6duckdb20PhysicalVerifyVectorC1ERNS_12PhysicalPlanERNS_16PhysicalOperatorENS_23DebugVectorVerificationE(ptr noundef nonnull align 8 dereferenceable(137), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(136), i8 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1258 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1257   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2) #40
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i) #40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i) #40
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2252

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19) #40
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i19) #40
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !2252

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #39
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !1257
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !1258
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !1238
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !354    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
  unreachable

_ZNKSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #38 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !284
  store ptr null, ptr %i.r, align 8, !tbaa !271
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !284
  store ptr null, ptr %2, align 8, !tbaa !270
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256)
end_hunk_12
