inline.NumInlined: 971
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10duckdb_re26Regexp19RemoveLeadingStringEPS0_i:bb.a
    i16 0, label %bb.p
    i16 1, label %bb.p
    i16 2, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i8 0, ptr %2, align 8, !tbaa !67
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.af)
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.2, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.bb = load i16, ptr %i.ar, align 2, !tbaa !61
  %i.bc = zext i16 %i.bb to i32
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef %i.bc)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !77
  %i.be = load i64, ptr %i.ai, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.af, i64 %i.be
  store ptr %i.ah, ptr %i.bf, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8, !tbaa !77
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.al
  br i1 %i.bh, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bg) #28
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #30
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.an) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store ptr null, ptr %i.au, align 8, !tbaa !27
  store i8 2, ptr %i.aq, align 8, !tbaa !26
  br label %bb.u

bb.r:                                             ; preds = %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %i.bi

bb.s:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !62 ; 2 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !62
  call void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef %i.bk)
  call void @_ZN10duckdb_re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bk)
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.bl = add i16 %i.az, -1                       ; 2 uses
  store i16 %i.bl, ptr %i.ar, align 2, !tbaa !61
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8
  %i.bn = zext i16 %i.bl to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i58, ptr nonnull align 8 %i.bm, i64 %i.bo, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_ZN10LogMessageD2Ev.exit, %bb.s, %bb.t, %bb.n
  %.not57 = icmp eq i64 %i.ao, 0
  br i1 %.not57, label %._crit_edge, label %bb.n, !llvm.loop !107

._crit_edge:                                      ; preds = %bb.u, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

declare void @_ZN10duckdb_re26Regexp4SwapEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN10duckdb_re26Regexp17FactorAlternationEPPS0_iNS0_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %4 = alloca %class.LogMessage, align 8          ; 18 uses
  %5 = alloca %class.LogMessage, align 8          ; 11 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !108
  store i32 %1, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader unwind label %bb.b

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 345
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 -24      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 120
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge, %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.preheader
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !110 ; 12 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -40 ; 8 uses
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -36 ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -32 ; 6 uses
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !112 ; 5 uses
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -24 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !112 ; 2 uses
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.u, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.c:                                             ; preds = %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit
  %i.aq = load i32, ptr %i.ak, align 8, !tbaa !3  ; 2 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp slt i32 %i.aq, %i.av
  br i1 %i.aw, label %bb.d, label %.preheader113

.preheader113:                                    ; preds = %bb.c
  %i.ax = load i32, ptr %i.ah, align 8, !tbaa !3
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.preheader112, label %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.az = sext i32 %i.aq to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !114
  %.not.i87 = icmp eq ptr %i.af, %i.bd
  br i1 %.not.i87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !108
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !3
  store ptr %i.be, ptr %i.af, align 8, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !122
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bh, i8 0, i64 28, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !123
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge

_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge: ; preds = %bb.e, %bb.f, %bb.aj, %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE8pop_backEv.exit
  br label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE17_M_realloc_insertIJRPPNS0_6RegexpERiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 4 dereferenceable(4) %i.bc)
          to label %_ZNSt6vectorIN10duckdb_re25FrameESaIS1_EE12emplace_backIJRPPNS0_6RegexpERiEEEvDpOT_.exit.backedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.x, %bb.w, %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.preheader112:                                    ; preds = %.preheader113, %.loopexit
  %.063143 = phi i32 [ %.2, %.loopexit ], [ 0, %.preheader113 ] ; 2 uses
  %.065142 = phi i32 [ %.267, %.loopexit ], [ 0, %.preheader113 ] ; 2 uses
  %.sroa.099.0141 = phi ptr [ %i.em, %.loopexit ], [ %i.al, %.preheader113 ] ; 7 uses
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !124 ; 4 uses
  %i.bn = sext i32 %.063143 to i64                ; 7 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bn ; 5 uses
  %i.bp = icmp ult ptr %i.bo, %i.bm
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader112
  %i.bq = sext i32 %.065142 to i64                ; 5 uses
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bt = shl nsw i64 %i.bn, 3
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = add i64 %i.bu, 8
  %i.bw = call i64 @llvm.umax.i64(i64 %i.br, i64 %i.bv)
  %i.bx = shl nsw i64 %i.bn, 3
  %i.by = add i64 %i.bx, %i.bs
  %i.bz = xor i64 %i.by, -1
  %i.ca = add i64 %i.bw, %i.bz                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check221 = icmp ult i64 %i.ca, 24
  br i1 %min.iters.check221, label %.lr.ph.preheader235, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph.preheader
  %i.cd = sub nsw i64 %i.bq, %i.bn
  %i.ce = shl nsw i64 %i.cd, 3
  %i.cf = add nsw i64 %i.ce, -1
  %diff.check219 = icmp ult i64 %i.cf, 31
  br i1 %diff.check219, label %.lr.ph.preheader235, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck218
  %n.vec224 = and i64 %i.cc, 4611686018427387900  ; 5 uses
  %i.cg = add nsw i64 %n.vec224, %i.bq            ; 2 uses
  %i.ch = add nsw i64 %n.vec224, %i.bn            ; 2 uses
  %i.ci = shl i64 %n.vec224, 3
  %i.cj = getelementptr i8, ptr %i.bo, i64 %i.ci
  %invariant.gep = getelementptr [8 x i8], ptr %i.bk, i64 %i.bq
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph222
  %index226 = phi i64 [ 0, %vector.ph222 ], [ %index.next229, %vector.body225 ] ; 3 uses
  %i.ck = shl i64 %index226, 3
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load227 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !62
  %wide.load228 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !62
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index226 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load227, ptr %gep, align 8, !tbaa !62
  store <2 x ptr> %wide.load228, ptr %i.cm, align 8, !tbaa !62
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.cn, label %middle.block230, label %vector.body225, !llvm.loop !126

middle.block230:                                  ; preds = %vector.body225
  %cmp.n231 = icmp eq i64 %i.cc, %n.vec224
  br i1 %cmp.n231, label %._crit_edge.loopexit, label %.lr.ph.preheader235

.lr.ph.preheader235:                              ; preds = %vector.memcheck218, %.lr.ph.preheader, %middle.block230
  %indvars.iv157.ph = phi i64 [ %i.bq, %vector.memcheck218 ], [ %i.bq, %.lr.ph.preheader ], [ %i.cg, %middle.block230 ]
  %indvars.iv.ph = phi i64 [ %i.bn, %vector.memcheck218 ], [ %i.bn, %.lr.ph.preheader ], [ %i.ch, %middle.block230 ]
  %.ph = phi ptr [ %i.bo, %vector.memcheck218 ], [ %i.bo, %.lr.ph.preheader ], [ %i.cj, %middle.block230 ]
  br label %.lr.ph

._crit_edge144:                                   ; preds = %.loopexit, %.loopexit.thread
  %.469191 = phi i32 [ %i.ga, %.loopexit.thread ], [ %.267, %.loopexit ] ; 2 uses
  %.pre170 = load ptr, ptr %i.aj, align 8, !tbaa !127 ; 2 uses
  %.pre171 = load ptr, ptr %i.am, align 8, !tbaa !128
  %i.co = icmp eq ptr %.pre171, %.pre170
  br i1 %i.co, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.preheader113, %._crit_edge144
  %.065.lcssa187 = phi i32 [ %.469191, %._crit_edge144 ], [ 0, %.preheader113 ]
  %i.cp = phi ptr [ %.pre170, %._crit_edge144 ], [ %i.al, %.preheader113 ]
  store ptr %i.cp, ptr %i.am, align 8, !tbaa !128
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit: ; preds = %._crit_edge144, %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %.065.lcssa188 = phi i32 [ %.469191, %._crit_edge144 ], [ %.065.lcssa187, %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i ]
  store i32 %.065.lcssa188, ptr %i.ah, align 8, !tbaa !3
  br label %bb.u

.lr.ph:                                           ; preds = %.lr.ph.preheader235, %.lr.ph
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %.lr.ph ], [ %indvars.iv157.ph, %.lr.ph.preheader235 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader235 ]
  %i.cq = phi ptr [ %i.ct, %.lr.ph ], [ %.ph, %.lr.ph.preheader235 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv157
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !62
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.bm
  br i1 %i.cu, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block230
  %indvars.iv.next.lcssa = phi i64 [ %i.ch, %middle.block230 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next158.lcssa = phi i64 [ %i.cg, %middle.block230 ], [ %indvars.iv.next158, %.lr.ph ]
  %i.cv = trunc nsw i64 %indvars.iv.next158.lcssa to i32
  %i.cw = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader112
  %.166.lcssa = phi i32 [ %.065142, %.preheader112 ], [ %i.cv, %._crit_edge.loopexit ] ; 5 uses
  %.164.lcssa = phi i32 [ %.063143, %.preheader112 ], [ %i.cw, %._crit_edge.loopexit ] ; 3 uses
  %i.cx = load i32, ptr %i.ai, align 4, !tbaa !3
  switch i32 %i.cx, label %bb.m [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.cy = load ptr, ptr %.sroa.099.0141, align 8, !tbaa !130
  store ptr %i.cy, ptr %i.c, align 16, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 20
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !131
  %i.db = invoke noundef ptr @_ZN10duckdb_re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef %i.bm, i32 noundef %i.da, i32 noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  store ptr %i.db, ptr %i.f, align 8, !tbaa !62
  %i.dc = invoke noundef ptr @_ZN10duckdb_re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.c, i32 noundef 2, i32 noundef %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dd = load ptr, ptr %i.ag, align 8, !tbaa !108
  %i.de = add nsw i32 %.166.lcssa, 1
  %i.df = sext i32 %.166.lcssa to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.df
  store ptr %i.dc, ptr %i.dg, align 8, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !132
  %i.dj = add nsw i32 %i.di, %.164.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.t

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.am

bb.l:                                             ; preds = %._crit_edge
  %i.dl = load ptr, ptr %.sroa.099.0141, align 8, !tbaa !130
  %i.dm = add nsw i32 %.166.lcssa, 1
  %i.dn = sext i32 %.166.lcssa to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.dn
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !132
  %i.dr = add nsw i32 %i.dq, %.164.lcssa
  br label %bb.t

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i8 0, ptr %4, align 8, !tbaa !67
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !77
  store ptr null, ptr %i.i, align 8, !tbaa !133
  store i8 0, ptr %i.j, align 8, !tbaa !146
  store i8 0, ptr %i.k, align 1, !tbaa !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %i.g, align 8, !tbaa !77
  %i.ds = load i64, ptr %i.o, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.g, i64 %i.ds
  store ptr %i.n, ptr %i.dt, align 8, !tbaa !77
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.g, i64 %i.dw
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.dx, ptr noundef null)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.h, align 8, !tbaa !77
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.g, align 8, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #30
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !77
  store i32 16, ptr %i.s, align 8, !tbaa !148
  store ptr %i.u, ptr %i.t, align 8, !tbaa !102
  store i64 0, ptr %i.v, align 8, !tbaa !103
  store i8 0, ptr %i.u, align 8, !tbaa !27
  %i.dy = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr %i.g, i64 %i.ea
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.eb, ptr noundef nonnull %i.p)
          to label %_ZN10LogMessageC2EPKci.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.p) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.pn.i = phi { ptr, i32 } [ %i.ec, %bb.o ], [ %i.ed, %bb.p ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #30
  br label %.body

_ZN10LogMessageC2EPKci.exit:                      ; preds = %bb.n
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN10LogMessageC2EPKci.exit
  %i.ef = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.ef)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.w, ptr %i.g, align 8, !tbaa !77
  %i.eh = load i64, ptr %i.y, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.g, i64 %i.eh
  store ptr %i.x, ptr %i.ei, align 8, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !77
  %i.ej = load ptr, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.u
  br i1 %i.ek, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.ej) #28
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !77
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #30
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.t

bb.s:                                             ; preds = %_ZN10LogMessageC2EPKci.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #30
  br label %.body

.body:                                            ; preds = %bb.q, %bb.s
  %.pn = phi { ptr, i32 } [ %i.el, %bb.s ], [ %.pn.pn.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.am

bb.t:                                             ; preds = %_ZN10LogMessageD2Ev.exit, %bb.l, %bb.j
  %.267 = phi i32 [ %.166.lcssa, %_ZN10LogMessageD2Ev.exit ], [ %i.de, %bb.j ], [ %i.dm, %bb.l ] ; 3 uses
  %.2 = phi i32 [ %.164.lcssa, %_ZN10LogMessageD2Ev.exit ], [ %i.dj, %bb.j ], [ %i.dr, %bb.l ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 24 ; 2 uses
  %i.en = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.eo = icmp eq ptr %i.em, %i.en
  %.pre = load i32, ptr %i.ah, align 8, !tbaa !3  ; 3 uses
  %i.ep = icmp slt i32 %.2, %.pre
  %or.cond = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond, label %.lr.ph138, label %.loopexit

.lr.ph138:                                        ; preds = %bb.t
  %i.eq = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 12 uses
  %i.er = sext i32 %.2 to i64                     ; 6 uses
  %i.es = sext i32 %.267 to i64                   ; 5 uses
  %wide.trip.count = sext i32 %.pre to i64        ; 4 uses
  %i.et = sub nsw i64 %wide.trip.count, %i.er     ; 3 uses
  %min.iters.check = icmp ult i64 %i.et, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph138
  %i.eu = sub nsw i64 %i.es, %i.er
  %i.ev = shl nsw i64 %i.eu, 3
  %i.ew = add nsw i64 %i.ev, -1
  %diff.check = icmp ult i64 %i.ew, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, -4                      ; 4 uses
  %i.ex = add nsw i64 %n.vec, %i.es               ; 2 uses
  %i.ey = add nsw i64 %n.vec, %i.er
  %invariant.gep265 = getelementptr [8 x i8], ptr %i.eq, i64 %i.er
  %invariant.gep267 = getelementptr [8 x i8], ptr %i.eq, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep266 = getelementptr [8 x i8], ptr %invariant.gep265, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %gep266, i64 16
  %wide.load = load <2 x ptr>, ptr %gep266, align 8, !tbaa !62
  %wide.load216 = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !62
  %gep268 = getelementptr [8 x i8], ptr %invariant.gep267, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %gep268, i64 16
  store <2 x ptr> %wide.load, ptr %gep268, align 8, !tbaa !62
  store <2 x ptr> %wide.load216, ptr %i.fa, align 8, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph138, %middle.block
  %indvars.iv165.ph = phi i64 [ %i.es, %vector.memcheck ], [ %i.es, %.lr.ph138 ], [ %i.ex, %middle.block ] ; 2 uses
  %indvars.iv163.ph = phi i64 [ %i.er, %vector.memcheck ], [ %i.er, %.lr.ph138 ], [ %i.ey, %middle.block ] ; 4 uses
  %i.fc = sub nsw i64 %wide.trip.count, %indvars.iv163.ph
  %xtraiter = and i64 %i.fc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv165.prol = phi i64 [ %indvars.iv.next166.prol, %scalar.ph.prol ], [ %indvars.iv165.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv163.prol = phi i64 [ %indvars.iv.next164.prol, %scalar.ph.prol ], [ %indvars.iv163.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next164.prol = add nsw i64 %indvars.iv163.prol, 1 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %indvars.iv163.prol
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62
  %indvars.iv.next166.prol = add nsw i64 %indvars.iv165.prol, 1 ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %indvars.iv165.prol
end_hunk_0
begin_hunk_1_@"_ZZN10duckdb_re2L18IsValidCaptureNameERKNS_11StringPieceEENK3$_0clEv":bb.a
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

declare noundef zeroext i1 @_ZNK10duckdb_re29CharClass8ContainsEi(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN10duckdb_re2L12ParseIntegerEPNS_11StringPieceEPi(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !97     ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27    ; 2 uses
  %i.f = add i8 %i.e, -48
  %isdigit = icmp ult i8 %i.f, 10
  br i1 %isdigit, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i64 %i.b, 1
  %i.h = icmp eq i8 %i.e, 48
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27
  %i.k = add i8 %i.j, -48
  %isdigit14 = icmp ult i8 %i.k, 10
  br i1 %isdigit14, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.l = phi ptr [ %i.u, %bb.f ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.01317 = phi i32 [ %i.t, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.m = phi i64 [ %i.v, %bb.f ], [ %i.b, %.lr.ph.preheader ]
  %i.n = load i8, ptr %i.l, align 1, !tbaa !27    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = add i8 %i.n, -48
  %isdigit15 = icmp ult i8 %i.p, 10
  br i1 %isdigit15, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp sgt i32 %.01317, 99999999
  br i1 %i.q, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = mul nsw i32 %.01317, 10
  %i.s = add i32 %i.r, -48
  %i.t = add i32 %i.s, %i.o                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !97
  %i.v = add i64 %i.m, -1                         ; 3 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !101
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.critedge, label %.lr.ph, !llvm.loop !226

.critedge:                                        ; preds = %.lr.ph, %bb.f
  %.013.lcssa.ph = phi i32 [ %.01317, %.lr.ph ], [ %i.t, %bb.f ]
  store i32 %.013.lcssa.ph, ptr %1, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge, %bb.d, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.critedge ], [ false, %bb.e ]
  ret i1 %.1
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN10duckdb_re26Regexp6WalkerIiE12WalkInternalEPS0_ib(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 11 uses
  %5 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"struct.duckdb_re2::WalkState", align 8 ; 8 uses
  tail call void @_ZN10duckdb_re26Regexp6WalkerIiE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i8 0, ptr %4, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.c)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.23, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !77
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.l) #28
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #30
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.thread82

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %1, ptr %5, align 8, !tbaa !243
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.s, align 8, !tbaa !250
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %2, ptr %i.t, align 4, !tbaa !251
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !246
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !238  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !252
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  %.not.i.i.i = icmp eq ptr %i.w, %i.z
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !253
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !238
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !238
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.thread80

.thread80:                                        ; preds = %.thread80.backedge, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !239, !noalias !255 ; 2 uses
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !235, !noalias !255
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit

bb.g:                                             ; preds = %.thread80
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !234, !noalias !255
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit: ; preds = %.thread80, %bb.g
  %i.ar = phi ptr [ %i.aq, %bb.g ], [ %i.ak, %.thread80 ] ; 12 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !243 ; 6 uses
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -24 ; 6 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !250 ; 2 uses
  %cond = icmp eq i32 %i.av, -1
  br i1 %cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !90 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.ae, align 4, !tbaa !90
  %i.ay = icmp slt i32 %i.aw, 1
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ai, align 8, !tbaa !79
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !251
  %i.bb = load ptr, ptr %0, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.at, i32 noundef %i.ba)
  br label %bb.y

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !258
  %i.bf = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !251
  %i.bh = load ptr, ptr %0, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.at, i32 noundef %i.bg, ptr noundef nonnull %i.a) ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ar, i64 -16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !259
  %i.bm = load i8, ptr %i.a, align 1, !tbaa !258, !range !260, !noundef !261
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8, !tbaa !250
  %i.bo = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !246
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !61 ; 2 uses
  switch i16 %i.bq, label %bb.m [
    i16 1, label %bb.l
    i16 0, label %.thread
  ]

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds i8, ptr %i.ar, i64 -12
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !246
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bs = zext i16 %i.bq to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #31
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !246
  %.pre87.pre.pre = load i32, ptr %i.au, align 8, !tbaa !250
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l
  %.pre87.pre = phi i32 [ 0, %bb.k ], [ %.pre87.pre.pre, %bb.m ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.y

bb.o:                                             ; preds = %.thread, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit
  %.pre87 = phi i32 [ %.pre87.pre, %.thread ], [ %i.av, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 6 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !61 ; 3 uses
  %.not71 = icmp eq i16 %i.bw, 0
  br i1 %.not71, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp eq i16 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.0.i = select i1 %i.bx, ptr %i.by, ptr %i.bz   ; 3 uses
  %i.ca = zext i16 %i.bw to i32
  %.not72 = icmp slt i32 %.pre87, %i.ca
  br i1 %.not72, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp sgt i32 %.pre87, 0
  %or.cond = and i1 %3, %i.cb
  br i1 %or.cond, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.phi.trans.insert = sext i32 %.pre87 to i64
  %.phi.trans.insert86 = getelementptr inbounds [8 x i8], ptr %.0.i, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert86, align 8, !tbaa !62
  br label %._crit_edge90

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %.pre87, -1
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !62
  %i.cg = zext nneg i32 %.pre87 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62 ; 2 uses
  %i.cj = icmp eq ptr %i.cf, %i.ci
  br i1 %i.cj, label %bb.s, label %._crit_edge90

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !246
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cd
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = load ptr, ptr %0, align 8, !tbaa !77
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.cn)
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !246
  %i.ct = load i32, ptr %i.au, align 8, !tbaa !250
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 %i.cr, ptr %i.cv, align 4, !tbaa !3
  %i.cw = load i32, ptr %i.au, align 8, !tbaa !250
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.au, align 8, !tbaa !250
  br label %.thread80.backedge

._crit_edge90:                                    ; preds = %bb.r, %._crit_edge
  %7 = phi ptr [ %.pre, %._crit_edge ], [ %i.ci, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.cy = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !259
  store ptr %7, ptr %6, align 8, !tbaa !243
  store i32 -1, ptr %i.af, align 8, !tbaa !250
  store i32 %i.cz, ptr %i.ag, align 4, !tbaa !251
  store ptr null, ptr %i.ah, align 8, !tbaa !246
  %i.da = load ptr, ptr %i.v, align 8, !tbaa !238 ; 2 uses
  %i.db = load ptr, ptr %i.x, align 8, !tbaa !252
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -32
  %.not.i.i.i74 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i.i74, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !253
  %i.dd = load ptr, ptr %i.v, align 8, !tbaa !238
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store ptr %i.de, ptr %i.v, align 8, !tbaa !238
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

bb.u:                                             ; preds = %._crit_edge90
  call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.thread80.backedge

.thread80.backedge:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit75, %bb.s, %bb.ad
  br label %.thread80, !llvm.loop !262

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.df = getelementptr inbounds i8, ptr %i.ar, i64 -20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !251
  %i.dh = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !259
  %i.dj = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !246
  %i.dl = load ptr, ptr %0, align 8, !tbaa !77
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.at, i32 noundef %i.dg, i32 noundef %i.di, ptr noundef %i.dk, i32 noundef %.pre87) ; 3 uses
  %i.dp = load i16, ptr %i.bv, align 2, !tbaa !61
  %i.dq = icmp ugt i16 %i.dp, 1
  br i1 %i.dq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %i.dj, align 8, !tbaa !246 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.v, %bb.x, %bb.w, %bb.i
  %.3 = phi i32 [ %i.be, %bb.i ], [ %i.do, %bb.w ], [ %i.do, %bb.x ], [ %i.do, %bb.v ], [ %i.bk, %bb.n ] ; 4 uses
  %i.dt = load ptr, ptr %i.v, align 8, !tbaa !238 ; 2 uses
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !247 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit: ; preds = %bb.y
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 -32 ; 4 uses
  store ptr %i.dv, ptr %i.v, align 8, !tbaa !238
  %i.dw = load ptr, ptr %i.aj, align 8, !tbaa !239
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %.thread82, label %bb.z

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.du) #28
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 2 uses
  store ptr %i.dz, ptr %i.ad, align 8, !tbaa !234
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !95 ; 3 uses
  store ptr %i.ea, ptr %i.ac, align 8, !tbaa !235
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 512
  store ptr %i.eb, ptr %i.x, align 8, !tbaa !236
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 480 ; 3 uses
  store ptr %i.ec, ptr %i.v, align 8, !tbaa !238
  %i.ed = load ptr, ptr %i.aj, align 8, !tbaa !239
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %.thread82, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.z:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.ef = icmp eq ptr %i.dv, %i.du
  br i1 %i.ef, label %bb.aa, label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.aa:                                            ; preds = %bb.z
  %i.eg = load ptr, ptr %i.ad, align 8, !tbaa !234, !noalias !263
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !95
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 512
  br label %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76

_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76: ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %bb.z, %bb.aa
  %i.ek = phi ptr [ %i.ej, %bb.aa ], [ %i.dv, %bb.z ], [ %i.ec, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ] ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !246 ; 2 uses
  %.not73 = icmp eq ptr %i.em, null
  br i1 %.not73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 -24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !250
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ep
  store i32 %.3, ptr %i.eq, align 4, !tbaa !3
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.er = getelementptr inbounds i8, ptr %i.ek, i64 -12
  store i32 %.3, ptr %i.er, align 4, !tbaa !266
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.es = getelementptr inbounds i8, ptr %i.ek, i64 -24 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !250
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !250
  br label %.thread80.backedge

.thread82:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZN10LogMessageD2Ev.exit
  %.2 = phi i32 [ %2, %_ZN10LogMessageD2Ev.exit ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ], [ %.3, %_ZNSt5stackIN10duckdb_re29WalkStateIiEESt5dequeIS2_SaIS2_EEE3popEv.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !235
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !236
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !239
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 5
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 288230376151711743
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !231
  %i.ag = load ptr, ptr %0, align 8, !tbaa !92
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #31
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !95
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !238
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !253
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !234
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !235
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !236
  store ptr %i.as, ptr %i.a, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN10duckdb_re29WalkStateIiEESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
