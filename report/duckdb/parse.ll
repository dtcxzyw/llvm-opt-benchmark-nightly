Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parse?download=true
inline.NumInlined: 971
inline.NumDeleted: 313
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10duckdb_re26Regexp19RemoveLeadingStringEPS0_i:bb.a
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
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !124 ; 3 uses
  %i.bn = sext i32 %.063143 to i64                ; 7 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bn ; 5 uses
  %i.bp = icmp ult ptr %i.bo, %i.bm
  br i1 %i.bp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader112
  %i.bq = sext i32 %.065142 to i64                ; 5 uses
  %i.br = ptrtoaddr ptr %i.bm to i64
  %i.bs = ptrtoaddr ptr %i.bk to i64              ; 2 uses
  %i.bt = shl nsw i64 %i.bn, 3
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = add i64 %i.bu, 8
  %i.bw = call i64 @llvm.umax.i64(i64 %i.br, i64 %i.bv)
  %i.bx = xor i64 %i.bs, -1
  %i.by = add i64 %i.bw, %i.bx
  %6 = shl nsw i64 %i.bn, 3
  %i.bz = sub i64 %i.by, %6                       ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check221 = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check221, label %.lr.ph.preheader234, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.lr.ph.preheader
  %i.cc = sub nsw i64 %i.bq, %i.bn
  %i.cd = shl nsw i64 %i.cc, 3
  %i.ce = add nsw i64 %i.cd, -1
  %diff.check219 = icmp ult i64 %i.ce, 31
  br i1 %diff.check219, label %.lr.ph.preheader234, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck218
  %n.vec223 = and i64 %i.cb, 4611686018427387900  ; 5 uses
  %i.cf = add nsw i64 %n.vec223, %i.bq            ; 2 uses
  %i.cg = add nsw i64 %n.vec223, %i.bn            ; 2 uses
  %i.ch = shl i64 %n.vec223, 3
  %i.ci = getelementptr i8, ptr %i.bo, i64 %i.ch
  %invariant.gep = getelementptr [8 x i8], ptr %i.bk, i64 %i.bq
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next228, %vector.body224 ] ; 3 uses
  %i.cj = shl i64 %index225, 3
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load226 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !62
  %wide.load227 = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !62
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index225 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load226, ptr %gep, align 8, !tbaa !62
  store <2 x ptr> %wide.load227, ptr %i.cl, align 8, !tbaa !62
  %index.next228 = add nuw i64 %index225, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.cm, label %middle.block229, label %vector.body224, !llvm.loop !126

middle.block229:                                  ; preds = %vector.body224
  %cmp.n230 = icmp eq i64 %i.cb, %n.vec223
  br i1 %cmp.n230, label %._crit_edge.loopexit, label %.lr.ph.preheader234

.lr.ph.preheader234:                              ; preds = %vector.memcheck218, %.lr.ph.preheader, %middle.block229
  %indvars.iv157.ph = phi i64 [ %i.bq, %vector.memcheck218 ], [ %i.bq, %.lr.ph.preheader ], [ %i.cf, %middle.block229 ]
  %indvars.iv.ph = phi i64 [ %i.bn, %vector.memcheck218 ], [ %i.bn, %.lr.ph.preheader ], [ %i.cg, %middle.block229 ]
  %.ph = phi ptr [ %i.bo, %vector.memcheck218 ], [ %i.bo, %.lr.ph.preheader ], [ %i.ci, %middle.block229 ]
  br label %.lr.ph

._crit_edge144:                                   ; preds = %.loopexit, %.loopexit.thread
  %.469191 = phi i32 [ %i.ga, %.loopexit.thread ], [ %.267, %.loopexit ] ; 2 uses
  %.pre170 = load ptr, ptr %i.aj, align 8, !tbaa !127 ; 2 uses
  %.pre171 = load ptr, ptr %i.am, align 8, !tbaa !128
  %i.cn = icmp eq ptr %.pre171, %.pre170
  br i1 %i.cn, label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.preheader113, %._crit_edge144
  %.065.lcssa187 = phi i32 [ %.469191, %._crit_edge144 ], [ 0, %.preheader113 ]
  %i.co = phi ptr [ %.pre170, %._crit_edge144 ], [ %i.al, %.preheader113 ]
  store ptr %i.co, ptr %i.am, align 8, !tbaa !128
  br label %_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10duckdb_re26SpliceESaIS1_EE5clearEv.exit: ; preds = %._crit_edge144, %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i
  %.065.lcssa188 = phi i32 [ %.469191, %._crit_edge144 ], [ %.065.lcssa187, %_ZSt8_DestroyIPN10duckdb_re26SpliceES1_EvT_S3_RSaIT0_E.exit.i.i ]
  store i32 %.065.lcssa188, ptr %i.ah, align 8, !tbaa !3
  br label %bb.u

.lr.ph:                                           ; preds = %.lr.ph.preheader234, %.lr.ph
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %.lr.ph ], [ %indvars.iv157.ph, %.lr.ph.preheader234 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader234 ]
  %i.cp = phi ptr [ %i.cs, %.lr.ph ], [ %.ph, %.lr.ph.preheader234 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !62
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv157
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !62
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv.next ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.bm
  br i1 %i.ct, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block229
  %indvars.iv.next.lcssa = phi i64 [ %i.cg, %middle.block229 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next158.lcssa = phi i64 [ %i.cf, %middle.block229 ], [ %indvars.iv.next158, %.lr.ph ]
  %i.cu = trunc nsw i64 %indvars.iv.next158.lcssa to i32
  %i.cv = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader112
  %.166.lcssa = phi i32 [ %.065142, %.preheader112 ], [ %i.cu, %._crit_edge.loopexit ] ; 5 uses
  %.164.lcssa = phi i32 [ %.063143, %.preheader112 ], [ %i.cv, %._crit_edge.loopexit ] ; 3 uses
  %i.cw = load i32, ptr %i.ai, align 4, !tbaa !3
  switch i32 %i.cw, label %bb.m [
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.cx = load ptr, ptr %.sroa.099.0141, align 8, !tbaa !130
  store ptr %i.cx, ptr %i.c, align 16, !tbaa !62
  %i.cy = load ptr, ptr %i.bl, align 8, !tbaa !124
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 20
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !131
  %i.db = invoke noundef ptr @_ZN10duckdb_re26Regexp17AlternateNoFactorEPPS0_iNS0_10ParseFlagsE(ptr noundef %i.cy, i32 noundef %i.da, i32 noundef %2)
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

end_hunk_0
