inline.NumInlined: 794
inline.NumDeleted: 326
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK10duckdb_re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i:bb.a
bb.bz:                                            ; preds = %bb.by
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.kg = load i8, ptr %i.kf, align 2, !tbaa !15, !range !48, !noundef !49
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %bb.ca, label %.thread286

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  store i8 0, ptr %19, align 8, !tbaa !54
  %i.ki = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.ki)
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull @.str.24, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.cb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %bb.ca
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %.thread286

bb.cb:                                            ; preds = %bb.ca
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.ch

bb.cc:                                            ; preds = %bb.bx
  %i.kl = call noundef zeroext i1 @_ZN10duckdb_re24Prog9SearchNFAERKNS_11StringPieceES3_NS0_6AnchorENS0_9MatchKindEPS1_i(ptr noundef nonnull align 8 dereferenceable(432) %i.kd, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.1138, i32 noundef %.2136, ptr noundef %5, i32 noundef %spec.select) ; 2 uses
  %brmerge169 = or i1 %.2125269279, %i.kl
  br i1 %brmerge169, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.kn = load i8, ptr %i.km, align 2, !tbaa !15, !range !48, !noundef !49
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.ce, label %.thread286

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  store i8 0, ptr %20, align 8, !tbaa !54
  %i.kp = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.kp)
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef nonnull @.str.25, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.cf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %bb.ce
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %.thread286

bb.cf:                                            ; preds = %bb.ce
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.ch

.thread286:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit222, %bb.bu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %.thread243

bb.cg:                                            ; preds = %bb.cc, %bb.by, %bb.bt
  %cond = phi i1 [ %i.ke, %bb.by ], [ %i.kl, %bb.cc ], [ %i.ju, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br i1 %cond, label %bb.ci, label %.thread243

bb.ch:                                            ; preds = %bb.cf, %bb.cb, %bb.bw
  %.pn159 = phi { ptr, i32 } [ %i.ka, %bb.bw ], [ %i.kk, %bb.cb ], [ %i.kr, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg, %bb.br, %bb.bs
  %.0139232265 = phi i64 [ %.0139232266283, %bb.cg ], [ %.0139232, %bb.br ], [ %.0139232, %bb.bs ] ; 3 uses
  %i.ks = icmp ne i64 %.0139232265, 0
  %i.kt = icmp sgt i32 %6, 0
  %or.cond14 = and i1 %i.kt, %i.ks
  br i1 %or.cond14, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ku = load ptr, ptr %5, align 8, !tbaa !26
  %i.kv = sub i64 0, %.0139232265
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !28
  %i.kz = add i64 %i.ky, %.0139232265
  store ptr %i.kw, ptr %5, align 8, !tbaa !177
  store i64 %i.kz, ptr %i.kx, align 8, !tbaa !34
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.la = icmp slt i32 %spec.select, %6
  br i1 %i.la, label %.lr.ph.preheader, label %.thread243

.lr.ph.preheader:                                 ; preds = %bb.ck
  %i.lb = sext i32 %spec.select to i64            ; 4 uses
  %wide.trip.count = sext i32 %6 to i64           ; 3 uses
  %i.lc = sub nsw i64 %wide.trip.count, %i.lb
  %xtraiter = and i64 %i.lc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.lb, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ld = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i8 0, i64 16, i1 false)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !185

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.lb, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.le = sub nsw i64 %i.lb, %wide.trip.count
  %i.lf = icmp ugt i64 %i.le, -8
  br i1 %i.lf, label %.thread243, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.lg = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, i8 0, i64 16, i1 false)
  %i.lh = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.li = getelementptr i8, ptr %i.lh, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.li, i8 0, i64 16, i1 false)
  %i.lj = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lk = getelementptr i8, ptr %i.lj, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, i8 0, i64 16, i1 false)
  %i.ll = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lm = getelementptr i8, ptr %i.ll, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, i8 0, i64 16, i1 false)
  %i.ln = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lo = getelementptr i8, ptr %i.ln, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i8 0, i64 16, i1 false)
  %i.lp = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lq = getelementptr i8, ptr %i.lp, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, i8 0, i64 16, i1 false)
  %i.lr = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.ls = getelementptr i8, ptr %i.lr, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, i8 0, i64 16, i1 false)
  %i.lt = getelementptr [16 x i8], ptr %5, i64 %indvars.iv
  %i.lu = getelementptr i8, ptr %i.lt, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lu, i8 0, i64 16, i1 false)
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.thread243, label %.lr.ph, !llvm.loop !187

.thread243:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.ck, %bb.aa, %.thread286, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212, %bb.ba, %bb.bk, %bb.aq, %bb.aj, %bb.ah, %bb.cg, %bb.v
  %.4 = phi i1 [ false, %bb.v ], [ false, %bb.bk ], [ false, %bb.cg ], [ true, %bb.ah ], [ false, %bb.aj ], [ false, %.thread286 ], [ true, %bb.aq ], [ false, %bb.aa ], [ false, %bb.ba ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit212 ], [ true, %bb.ck ], [ true, %.lr.ph ], [ true, %.lr.ph.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit

bb.cl:                                            ; preds = %bb.az, %bb.bc, %bb.ch, %bb.bq, %bb.ap, %bb.ag, %bb.w
  %.pn161 = phi { ptr, i32 } [ %i.ec, %bb.w ], [ %.pn159, %bb.ch ], [ %i.fh, %bb.ag ], [ %i.jl, %bb.bq ], [ %i.gn, %bb.ap ], [ %i.hs, %bb.az ], [ %i.hv, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cn

_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit:  ; preds = %.lr.ph.i, %.thread243, %bb.o, %bb.s, %bb.l, %bb.j
  %.6 = phi i1 [ false, %bb.l ], [ false, %bb.j ], [ %.4, %.thread243 ], [ false, %bb.s ], [ false, %bb.o ], [ false, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cm

bb.cm:                                            ; preds = %bb.g, %_ZN10LogMessageD2Ev.exit183, %bb.b, %_ZN10LogMessageD2Ev.exit, %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit
  %.7 = phi i1 [ false, %bb.b ], [ %.6, %_ZN10duckdb_re2L16ascii_strcasecmpEPKcS1_m.exit ], [ false, %_ZN10LogMessageD2Ev.exit ], [ false, %_ZN10LogMessageD2Ev.exit183 ], [ false, %bb.g ]
  ret i1 %.7

bb.cn:                                            ; preds = %bb.cl, %bb.i, %bb.d
  %.pn163 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %.pn161, %bb.cl ], [ %i.ac, %bb.d ]
  resume { ptr, i32 } %.pn163
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE27RewriteEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11StringPieceEPS9_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.LogMessage, align 8          ; 11 uses
  %6 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.03466 = phi ptr [ %i.a, %.lr.ph ], [ %i.cm, %.critedge ] ; 3 uses
  %i.h = load i8, ptr %.03466, align 1, !tbaa !23 ; 2 uses
  %.not = icmp eq i8 %i.h, 92
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g                   ; 2 uses
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.d, %bb.c
  %7 = load i64, ptr %i.g, align 8
  %8 = select i1 %i.l, i64 15, i64 %7
  %i.n = icmp ugt i64 %i.j, %8
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.e
  %i.o = phi ptr [ %.pre.i, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 %i.h, ptr %i.p, align 1, !tbaa !23
  store i64 %i.j, ptr %i.f, align 8, !tbaa !21
  %i.q = load ptr, ptr %1, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  store i8 0, ptr %i.r, align 1, !tbaa !23
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.03466, i64 1 ; 5 uses
  %i.t = icmp ult ptr %i.s, %i.d
  br i1 %i.t, label %bb.g, label %.thread61

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.s, align 1, !tbaa !23    ; 2 uses
  %i.v = sext i8 %i.u to i32
  %isdigittmp = add nsw i32 %i.v, -48             ; 4 uses
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %.not44 = icmp slt i32 %isdigittmp, %4
  br i1 %.not44, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.x = load i8, ptr %i.w, align 2, !tbaa !15, !range !48, !noundef !49
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i8 0, ptr %5, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.z)
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.29, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %isdigittmp)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.k
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.31, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.l
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %i.z, align 8, !tbaa !63
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.z, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  call void @_ZdlPv(ptr noundef %i.am) #31
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ak, align 8, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.loopexit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.y

bb.n:                                             ; preds = %bb.h
  %i.as = zext nneg i32 %isdigittmp to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !177
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !34 ; 3 uses
  %i.au = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.au, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i64, ptr %i.f, align 8, !tbaa !21
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %.sroa.4.0.copyload
  br i1 %i.ax, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.o
  %i.ay = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.4.0.copyload) ; 0 uses
  br label %.critedge

bb.q:                                             ; preds = %bb.g
  %i.az = icmp eq i8 %i.u, 92
  br i1 %i.az, label %bb.r, label %.thread61

bb.r:                                             ; preds = %bb.q
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !21  ; 4 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.g                 ; 2 uses
  br i1 %i.bd, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i48

bb.s:                                             ; preds = %bb.r
  %i.be = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i48: ; preds = %bb.s, %bb.r
  %9 = load i64, ptr %i.g, align 8
  %10 = select i1 %i.bd, i64 15, i64 %9
  %i.bf = icmp ugt i64 %i.bb, %10
  br i1 %i.bf, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit50

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i48
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ba, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i49 = load ptr, ptr %1, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i48, %bb.t
  %i.bg = phi ptr [ %.pre.i49, %bb.t ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i48 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba
  store i8 92, ptr %i.bh, align 1, !tbaa !23
  store i64 %i.bb, ptr %i.f, align 8, !tbaa !21
  %i.bi = load ptr, ptr %1, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bb
  store i8 0, ptr %i.bj, align 1, !tbaa !23
  br label %.critedge

.thread61:                                        ; preds = %bb.f, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !15, !range !48, !noundef !49
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.thread61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store i8 0, ptr %6, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.bn)
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.32, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %bb.u
  %i.bp = load ptr, ptr %2, align 8, !tbaa !26    ; 3 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !63
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bn, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !188
  %i.bw = or i32 %i.bv, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bt, i32 noundef %i.bw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.x

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bp) #29
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.bp, i64 noundef %i.bx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %bb.v, %bb.w
  %i.bz = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bz, ptr %i.bn, align 8, !tbaa !63
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cb = getelementptr i8, ptr %i.bz, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.bn, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !63
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !29 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN10LogMessageD2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i54: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  call void @_ZdlPv(ptr noundef %i.cg) #31
  br label %_ZN10LogMessageD2Ev.exit56

_ZN10LogMessageD2Ev.exit56:                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ce, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #29
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.loopexit

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.y

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.135 = phi ptr [ %.03466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit50 ], [ %i.s, %bb.n ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.135, i64 1 ; 2 uses
  %.not67 = icmp ult ptr %i.cm, %i.d
  br i1 %.not67, label %bb.b, label %.loopexit, !llvm.loop !195

bb.y:                                             ; preds = %bb.x, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.cl, %bb.x ]
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %.critedge, %bb.a, %_ZN10LogMessageD2Ev.exit, %bb.i, %_ZN10LogMessageD2Ev.exit56, %.thread61
  %i.cn = phi i1 [ false, %.thread61 ], [ false, %_ZN10LogMessageD2Ev.exit ], [ false, %bb.i ], [ false, %_ZN10LogMessageD2Ev.exit56 ], [ true, %bb.a ], [ true, %.critedge ]
  ret i1 %i.cn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN10duckdb_re23RE213GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_RKNS_11StringPieceE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(148) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [17 x %"class.duckdb_re2::StringPiece"], align 16 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %3, i8 0, i64 272, i1 false)
  %i.b = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.thread.i
  %.028.i = phi i32 [ %.3.i, %.thread.i ], [ 0, %bb.a ] ; 4 uses
  %.01627.i = phi ptr [ %i.m, %.thread.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load i8, ptr %.01627.i, align 1, !tbaa !23
  %i.g = icmp eq i8 %i.f, 92
  br i1 %i.g, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.01627.i, i64 1 ; 4 uses
  %i.i = icmp ult ptr %i.h, %i.e
  br i1 %i.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.h, align 1, !tbaa !23
  %.fr.i = freeze i8 %i.j
  %i.k = sext i8 %.fr.i to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %isdigit.i = icmp ult i32 %i.l, 10
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %.028.i)
  %spec.select25.i = select i1 %isdigit.i, i32 %spec.select.i, i32 %.028.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.117.i = phi ptr [ %.01627.i, %.lr.ph.i ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.3.i = phi i32 [ %.028.i, %.lr.ph.i ], [ %.028.i, %bb.b ], [ %spec.select25.i, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.117.i, i64 1 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.e
  br i1 %i.n, label %.lr.ph.i, label %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit, !llvm.loop !175

_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit: ; preds = %.thread.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3.i, %.thread.i ] ; 3 uses
  %i.o = add nuw nsw i32 %.0.lcssa.i, 1           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !47
  %i.r = icmp sgt i32 %.0.lcssa.i, %i.q
  %i.s = icmp samesign ugt i32 %.0.lcssa.i, 16
  %or.cond69 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond69, label %bb.z, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.y, align 8, !tbaa !21
  store i8 0, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = ptrtoint ptr %i.w to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.053.ph132 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.by, %.outer ] ; 4 uses
  %.054.ph131 = phi ptr [ null, %.lr.ph.lr.ph ], [ %i.bx, %.outer ]
  %.056.ph130 = phi ptr [ %i.t, %.lr.ph.lr.ph ], [ %i.bx, %.outer ]
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %.056119 = phi ptr [ %.056.ph130, %.lr.ph ], [ %.056.be, %.backedge ] ; 12 uses
  %i.ad = load i32, ptr @_ZN10duckdb_re2L28maximum_global_replace_countE, align 4, !tbaa !3 ; 2 uses
  %.not64 = icmp eq i32 %i.ad, -1
  %.not65 = icmp slt i32 %.053.ph132, %i.ad
  %or.cond68 = select i1 %.not64, i1 true, i1 %.not65
  br i1 %or.cond68, label %bb.e, label %.outer._crit_edge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ae = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !26
  %i.af = load i64, ptr %i.u, align 8, !tbaa !21  ; 2 uses
  store i64 %i.af, ptr %i.z, align 8, !tbaa !28
  %i.ag = ptrtoint ptr %.056119 to i64            ; 3 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = invoke noundef zeroext i1 @_ZNK10duckdb_re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(148) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.ai, i64 noundef %i.af, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %i.o)
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re23RE213GlobalReplaceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS0_RKNS_11StringPieceE:bb.a
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.ci) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.z

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %bb.q, %bb.p, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %lpad.phi98, %bb.q ], [ %i.bf, %bb.p ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit99, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp100, %.loopexit.loopexit.split-lp ]
  %i.ck = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.x
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef %i.ck) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i32 [ %.053.ph.lcssa163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 %.1
}

declare noundef i32 @_ZN10duckdb_re28fullruneEPKci(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN10duckdb_re210chartoruneEPiPKc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10duckdb_re23RE27ExtractERKNS_11StringPieceERKS0_S3_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(148) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca [17 x %"class.duckdb_re2::StringPiece"], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %4, i8 0, i64 272, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.thread.i
  %.028.i = phi i32 [ %.3.i, %.thread.i ], [ 0, %bb.a ] ; 4 uses
  %.01627.i = phi ptr [ %i.l, %.thread.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.01627.i, align 1, !tbaa !23
  %i.f = icmp eq i8 %i.e, 92
  br i1 %i.f, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.01627.i, i64 1 ; 4 uses
  %i.h = icmp ult ptr %i.g, %i.d
  br i1 %i.h, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 1, !tbaa !23
  %.fr.i = freeze i8 %i.i
  %i.j = sext i8 %.fr.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %isdigit.i = icmp ult i32 %i.k, 10
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %.028.i)
  %spec.select25.i = select i1 %isdigit.i, i32 %spec.select.i, i32 %.028.i
  br label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.117.i = phi ptr [ %.01627.i, %.lr.ph.i ], [ %i.g, %bb.b ], [ %i.g, %bb.c ]
  %.3.i = phi i32 [ %.028.i, %.lr.ph.i ], [ %.028.i, %bb.b ], [ %spec.select25.i, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.117.i, i64 1 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.d
  br i1 %i.m, label %.lr.ph.i, label %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit, !llvm.loop !175

_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit: ; preds = %.thread.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.3.i, %.thread.i ] ; 3 uses
  %i.n = add nuw nsw i32 %.0.lcssa.i, 1           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = icmp sgt i32 %.0.lcssa.i, %i.p
  %i.r = icmp samesign ugt i32 %.0.lcssa.i, 16
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %i.u = call noundef zeroext i1 @_ZNK10duckdb_re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(148) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 0, i64 noundef %i.t, i32 noundef 0, ptr noundef nonnull %4, i32 noundef %i.n)
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !21
  %i.w = load ptr, ptr %3, align 8, !tbaa !29
  store i8 0, ptr %i.w, align 1, !tbaa !23
  %i.x = call noundef zeroext i1 @_ZNK10duckdb_re23RE27RewriteEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11StringPieceEPS9_i(ptr noundef nonnull align 8 dereferenceable(148) %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4, i32 noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit, %bb.e
  %.0 = phi i1 [ false, %bb.d ], [ false, %_ZN10duckdb_re23RE211MaxSubmatchERKNS_11StringPieceE.exit ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re23RE29QuoteMetaB5cxx11ERKNS_11StringPieceE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8, !tbaa !21
  store i8 0, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = shl i64 %i.d, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !tbaa !28
  %.not52 = icmp eq i64 %i.f, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.m, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.lr.ph:                                           ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.051 = phi i64 [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 0, %.preheader ] ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.051
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23    ; 13 uses
  %i.k = icmp slt i8 %i.j, 97
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp samesign ugt i8 %i.j, 122
  br i1 %i.l, label %.thread50, label %bb.n

bb.d:                                             ; preds = %.lr.ph
  %i.m = icmp slt i8 %i.j, 65
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i8 %i.j, 91
  %.not = icmp eq i8 %i.j, 95
  %or.cond = or i1 %i.n, %.not
  br i1 %or.cond, label %bb.n, label %.thread50

bb.f:                                             ; preds = %bb.d
  %i.o = icmp slt i8 %i.j, 48
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp samesign ugt i8 %i.j, 57
  br i1 %i.p, label %.thread50, label %bb.n

bb.h:                                             ; preds = %bb.f
  %.not28 = icmp sgt i8 %i.j, -1
  br i1 %.not28, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i8 %i.j, 0
  br i1 %i.q, label %bb.j, label %.thread50

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !21
  %i.s = and i64 %i.r, -4
  %i.t = icmp eq i64 %i.s, 4611686018427387900
  br i1 %i.t, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.j
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

.thread50:                                        ; preds = %bb.e, %bb.c, %bb.g, %bb.i
  %i.v = load i64, ptr %i.b, align 8, !tbaa !21   ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a                   ; 2 uses
  br i1 %i.y, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %.thread50
  %i.z = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.l, %.thread50
  %2 = load i64, ptr %i.a, align 8
  %3 = select i1 %i.y, i64 15, i64 %2
  %i.aa = icmp ugt i64 %i.w, %3
  br i1 %i.aa, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31 unwind label %.loopexit

.noexc31:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc31
  %i.ab = phi ptr [ %.pre.i.i, %.noexc31 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 92, ptr %i.ac, align 1, !tbaa !23
  store i64 %i.w, ptr %i.b, align 8, !tbaa !21
  %i.ad = load ptr, ptr %0, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.w
  store i8 0, ptr %i.ae, align 1, !tbaa !23
  %.pre = load ptr, ptr %1, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %.051
  %.pre53 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.h, %bb.g, %bb.e, %bb.c
  %i.af = phi i8 [ %.pre53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.j, %bb.h ], [ %i.j, %bb.g ], [ %i.j, %bb.e ], [ %i.j, %bb.c ]
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !21  ; 4 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a                 ; 2 uses
  br i1 %i.aj, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

bb.o:                                             ; preds = %bb.n
  %i.ak = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.ak)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32: ; preds = %bb.o, %bb.n
  %4 = load i64, ptr %i.a, align 8
  %5 = select i1 %i.aj, i64 15, i64 %4
  %i.al = icmp ugt i64 %i.ah, %5
  br i1 %i.al, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit35

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ag, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit

.noexc34:                                         ; preds = %bb.p
  %.pre.i.i33 = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32, %.noexc34
  %i.am = phi ptr [ %.pre.i.i33, %.noexc34 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  store i8 %i.af, ptr %i.an, align 1, !tbaa !23
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !21
  %i.ao = load ptr, ptr %0, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  store i8 0, ptr %i.ap, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit35
  %i.aq = add nuw i64 %.051, 1                    ; 2 uses
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !28
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !197

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %.preheader
  ret void

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  tail call void @_ZdlPv(ptr noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK10duckdb_re23RE218PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.i) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.j = sext i32 %spec.select to i64             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !17, !alias.scope !198
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !29, !noalias !198 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !198
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !34, !noalias !198
  %i.m = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.m, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !29, !alias.scope !198
  %i.o = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !198
  store i64 %i.o, ptr %i.k, align 8, !tbaa !23, !alias.scope !198
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc10.i.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.l, align 1, !tbaa !23
  store i8 %i.q, ptr %i.p, align 1, !tbaa !23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.l, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !34, !noalias !198 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !21, !alias.scope !198
  %i.t = load ptr, ptr %4, align 8, !tbaa !29, !alias.scope !198
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !198
  %i.v = load ptr, ptr %1, align 8, !tbaa !29     ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  %i.y = load ptr, ptr %4, align 8, !tbaa !29     ; 6 uses
  %i.z = icmp eq ptr %i.y, %i.k                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.z, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !21  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %.not21.i = icmp eq ptr %4, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !161

bb.f:                                             ; preds = %bb.e
  switch i64 %i.aa, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !23
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !21
  %i.af = load ptr, ptr %1, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.y, ptr %1, align 8, !tbaa !29
  %i.ai = load <2 x i64>, ptr %i.s, align 8, !tbaa !23
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !23
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aj = load i64, ptr %i.w, align 8, !tbaa !23
  store ptr %i.y, ptr %1, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x i64>, ptr %i.s, align 8, !tbaa !23
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.v, ptr %4, align 8, !tbaa !29
  store i64 %i.aj, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %4, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.am = phi ptr [ %i.v, %bb.i ], [ %i.k, %bb.j ], [ %i.y, %bb.e ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.s, align 8, !tbaa !21
  store i8 0, ptr %i.am, align 1, !tbaa !23
  %i.an = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.k
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !201
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !17, !alias.scope !201
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !29, !noalias !201 ; 2 uses
  %spec.select.i.i.i34 = call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.ap) ; 4 uses
end_hunk_1
