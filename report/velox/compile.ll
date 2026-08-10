inline.NumInlined: 1004
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3re28Compiler7CompileEPNS_6RegexpEbl:bb.a
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  %i.bw = load i32, ptr %i.l, align 4, !tbaa !53
  %.not109 = icmp slt i32 %i.bu, %i.bw
  br i1 %.not109, label %bb.ad, label %.noexc79.thread

.noexc79.thread:                                  ; preds = %bb.ab, %bb.ac
  store i8 1, ptr %i.z, align 8, !tbaa !49
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !56 ; 4 uses
  %.not110 = icmp slt i32 %i.bu, %i.by
  br i1 %.not110, label %.noexc79, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = icmp eq i32 %i.by, 0
  %spec.store.select.i88 = select i1 %i.bz, i32 8, i32 %i.by
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.011.i89 = phi i32 [ %spec.store.select.i88, %bb.ae ], [ %i.ca, %bb.af ] ; 7 uses
  %.not111 = icmp slt i32 %i.bu, %.011.i89
  %i.ca = shl nsw i32 %.011.i89, 1
  br i1 %.not111, label %bb.ag, label %bb.af, !llvm.loop !59

bb.ag:                                            ; preds = %bb.af
  %i.cb = icmp slt i32 %.011.i89, 0
  br i1 %i.cb, label %.noexc.i.i98, label %_ZN3re28PODArrayINS_4Prog4InstEEC2Ei.exit.i90, !prof !61

.noexc.i.i98:                                     ; preds = %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc99 unwind label %bb.al

.noexc99:                                         ; preds = %.noexc.i.i98
  unreachable

_ZN3re28PODArrayINS_4Prog4InstEEC2Ei.exit.i90:    ; preds = %bb.ag
  %i.cc = zext nneg i32 %.011.i89 to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #30
          to label %.noexc100 unwind label %bb.al ; 5 uses

.noexc100:                                        ; preds = %_ZN3re28PODArrayINS_4Prog4InstEEC2Ei.exit.i90
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 3 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !55 ; 3 uses
  %.not.i91 = icmp eq ptr %i.cg, null
  %i.ch = sext i32 %i.bu to i64                   ; 3 uses
  br i1 %.not.i91, label %.thread.i97, label %bb.ah

.thread.i97:                                      ; preds = %.noexc100
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = sub nsw i32 %.011.i89, %i.bu
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ci, i8 0, i64 %i.cl, i1 false)
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !55
  br label %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit.i94

bb.ah:                                            ; preds = %.noexc100
  %i.cm = shl nsw i64 %i.ch, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ce, ptr nonnull align 4 %i.cg, i64 %i.cm, i1 false)
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ch
  %i.co = sub nsw i32 %.011.i89, %i.bu
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cn, i8 0, i64 %i.cq, i1 false)
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !55
  %i.cr = sext i32 %i.by to i64
  %i.cs = shl nsw i64 %i.cr, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cs) #31
  %.pre.pre.i92 = load i32, ptr %i.af, align 8, !tbaa !52 ; 2 uses
  %.pre20.i93 = add nsw i32 %.pre.pre.i92, 1
  br label %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit.i94

_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit.i94:    ; preds = %bb.ah, %.thread.i97
  %.pre19.pre-phi.i95 = phi i32 [ %.pre20.i93, %bb.ah ], [ %i.bv, %.thread.i97 ]
  %.pre.i96 = phi i32 [ %.pre.pre.i92, %bb.ah ], [ %i.bu, %.thread.i97 ]
  store i32 %.011.i89, ptr %i.bx, align 8, !tbaa !62
  br label %.noexc79

.noexc79:                                         ; preds = %bb.ad, %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit.i94
  %.pre-phi.i86 = phi i32 [ %.pre19.pre-phi.i95, %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit.i94 ], [ %i.bv, %bb.ad ]
  %i.ct = phi i32 [ %.pre.i96, %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit.i94 ], [ %i.bu, %bb.ad ] ; 4 uses
  store i32 %.pre-phi.i86, ptr %i.af, align 8, !tbaa !52
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.noexc79.thread, %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 8, !tbaa !73
  %.4..4..4..4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i64 0, ptr %.4..4..4..4..4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..12..12..sroa_idx, align 4, !tbaa !74
  %.0..0..0..0..0..0..0..0..0..fca.0.load.i.i.i = load i64, ptr %3, align 8
  %.8..8..8..8..8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.8..8..8..8..8..8..8..8..8..fca.1.load.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.8..8..8..8..8..8..8..8..8..fca.1.load.i.i.i to i40
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.8..8..8..8..8..8..8..sroa_idx, align 8
  br label %_ZN3re28Compiler9ByteRangeEiib.exit.i

bb.aj:                                            ; preds = %.noexc79
  %i.cv = zext nneg i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  invoke void @_ZN3re24Prog4Inst13InitByteRangeEiiij(ptr noundef nonnull align 4 dereferenceable(8) %i.cy, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0)
          to label %.noexc80 unwind label %bb.al

.noexc80:                                         ; preds = %bb.aj
  %i.cz = shl nuw i32 %i.ct, 1
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.cz to i64
  %.sroa.0.0.insert.insert.i.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i.i, 4294967297
  store i32 %i.ct, ptr %4, align 8, !tbaa !73
  %.4..4..4..4..4..4..4..sroa_idx128 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.4..4..4..4..4..4..4..sroa_idx128, align 4
  %.12..12..12..12..12..12..12..sroa_idx130 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %.12..12..12..12..12..12..12..sroa_idx130, align 4, !tbaa !74
  %.0..0..0..0..0..0..0..fca.0.load.pre.i.i = load i64, ptr %4, align 8
  br label %_ZN3re28Compiler9ByteRangeEiib.exit.i

_ZN3re28Compiler9ByteRangeEiib.exit.i:            ; preds = %.noexc80, %bb.ai
  %.0..0..fca.0.load.i.i = phi i64 [ %.0..0..0..0..0..0..0..fca.0.load.pre.i.i, %.noexc80 ], [ %.0..0..0..0..0..0..0..0..0..fca.0.load.i.i.i, %bb.ai ]
  %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx129 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.8..8..8..8..8..8..8..fca.1.load.i.i76 = load i64, ptr %.8..8..8..8..8..8..8..fca.1.gep.sroa_idx129, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.26.8.insert.ext.i = and i64 %.8..8..8..8..8..8..8..fca.1.load.i.i76, 1099511627775
  %i.da = invoke { i64, i64 } @_ZN3re28Compiler4StarENS_4FragEb(ptr noundef nonnull align 8 dereferenceable(204) %7, i64 %.0..0..fca.0.load.i.i, i64 %.sroa.26.8.insert.ext.i, i1 noundef zeroext true)
          to label %bb.ak unwind label %bb.al     ; 2 uses

bb.ak:                                            ; preds = %_ZN3re28Compiler9ByteRangeEiib.exit.i
  %.fca.1.extract.i77 = extractvalue { i64, i64 } %i.da, 1
  %.sroa.28.8.insert.ext.i = and i64 %.fca.1.extract.i77, 1099511627775
  %.fca.0.extract3 = extractvalue { i64, i64 } %i.da, 0
  %i.db = call { i64, i64 } @_ZN3re28Compiler3CatENS_4FragES1_(ptr noundef nonnull align 8 dereferenceable(204) %7, i64 %.fca.0.extract3, i64 %.sroa.28.8.insert.ext.i, i64 %.fca.0.extract10, i64 %.sroa.10.8.insert.ext41)
  %.fca.0.extract = extractvalue { i64, i64 } %i.db, 0
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !24
  %.pre116 = trunc i64 %.fca.0.extract to i32
  br label %bb.am

bb.al:                                            ; preds = %_ZN3re28PODArrayINS_4Prog4InstEEC2Ei.exit.i90, %.noexc.i.i98, %_ZN3re28Compiler9ByteRangeEiib.exit.i, %bb.aj
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %.split, %bb.ak, %bb.aa
  %.sroa.034.0.extract.trunc38.pre-phi = phi i32 [ %.pre116, %bb.ak ], [ %.sroa.034.0.extract.trunc, %bb.aa ], [ %.sroa.034.0.extract.trunc, %.split ]
  %i.dd = phi ptr [ %.pre, %bb.ak ], [ %i.bn, %bb.aa ], [ %i.bn, %.split ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 %.sroa.034.0.extract.trunc38.pre-phi, ptr %i.de, align 4, !tbaa !171
  %i.df = invoke noundef ptr @_ZN3re28Compiler6FinishEPNS_6RegexpE(ptr noundef nonnull align 8 dereferenceable(204) %7, ptr noundef nonnull %0)
          to label %bb.an unwind label %bb.p

bb.an:                                            ; preds = %bb.m, %bb.am, %bb.g
  %.1 = phi ptr [ null, %bb.g ], [ null, %bb.m ], [ %i.df, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @_ZN3re28CompilerD1Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  ret ptr %.1

bb.ao:                                            ; preds = %bb.n, %bb.p, %bb.z, %bb.al, %bb.o, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.ac, %bb.n ], [ %i.ad, %bb.o ], [ %i.ae, %bb.p ], [ %i.dc, %bb.al ], [ %i.br, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @_ZN3re28CompilerD1Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef ptr @_ZN3re26Regexp8SimplifyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN3re2L13IsAnchorStartEPPNS_6RegexpEi(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 5) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !138    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp samesign ugt i32 %1, 3
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 8, !tbaa !115
  switch i8 %i.e, label %bb.o [
    i8 5, label %bb.c
    i8 11, label %bb.k
    i8 18, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !172  ; 2 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i16 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i = select i1 %i.h, ptr %i.i, ptr %i.j
  %i.k = load ptr, ptr %.0.i, align 8, !tbaa !138
  %i.l = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
  store ptr %i.l, ptr %i.a, align 8, !tbaa !138
  %i.m = add nuw nsw i32 %1, 1
  %i.n = call fastcc noundef zeroext i1 @_ZN3re2L13IsAnchorStartEPPNS_6RegexpEi(ptr noundef %i.a, i32 noundef %i.m)
  br i1 %i.n, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.f, align 2, !tbaa !172  ; 4 uses
  %i.p = zext i16 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 3 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30 ; 5 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !138
  store ptr %i.s, ptr %i.r, align 8, !tbaa !138
  %i.t = icmp ugt i16 %i.o, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %.lcssa.in = phi i16 [ %i.o, %bb.e ], [ %i.af, %bb.h ]
  %.lcssa = zext i16 %.lcssa.in to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !122
  %i.w = zext i16 %i.v to i32
  %i.x = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.r, i32 noundef %.lcssa, i32 noundef %i.w)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.i, %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit38

bb.g:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit38

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %bb.e ] ; 3 uses
  %2 = phi i16 [ %i.af, %bb.h ], [ %i.o, %bb.e ]
  %3 = icmp ult i16 %2, 2
  %i.aa = load ptr, ptr %i.i, align 8
  %.0.i36 = select i1 %3, ptr %i.i, ptr %i.aa
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i36, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !138
  %i.ad = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i16, ptr %i.f, align 2, !tbaa !172 ; 3 uses
  %i.ag = zext i16 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !173

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.x, ptr %0, align 8, !tbaa !138
  invoke void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit unwind label %bb.f

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit:          ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #31
  br label %bb.o

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit38:        ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.y, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.q) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !138
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ai)
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !172
  %i.al = icmp ult i16 %i.ak, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %.0.i39 = select i1 %i.al, ptr %i.am, ptr %i.an
  %i.ao = load ptr, ptr %.0.i39, align 8, !tbaa !138
  %i.ap = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ao)
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !138
  %i.aq = add nuw nsw i32 %1, 1
  %i.ar = call fastcc noundef zeroext i1 @_ZN3re2L13IsAnchorStartEPPNS_6RegexpEi(ptr noundef %i.a, i32 noundef %i.aq)
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !122
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !77
  %i.ay = tail call noundef ptr @_ZN3re26Regexp7CaptureEPS0_NS0_10ParseFlagsEi(ptr noundef %i.as, i32 noundef %i.av, i32 noundef %i.ax)
  store ptr %i.ay, ptr %0, align 8, !tbaa !138
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  br label %bb.o

bb.n:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !122
  %i.bb = zext i16 %i.ba to i32
  %i.bc = tail call noundef ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef null, i32 noundef 0, i32 noundef %i.bb)
  store ptr %i.bc, ptr %0, align 8, !tbaa !138
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.b, %bb.j, %bb.c, %bb.a, %bb.n, %bb.l, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit
  %.032 = phi i1 [ true, %bb.n ], [ false, %bb.a ], [ true, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit ], [ true, %bb.l ], [ false, %bb.c ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i1 %.032
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN3re2L11IsAnchorEndEPPNS_6RegexpEi(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 5) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !138    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp samesign ugt i32 %1, 3
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 8, !tbaa !115
  switch i8 %i.e, label %bb.o [
    i8 5, label %bb.c
    i8 11, label %bb.k
    i8 19, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !172  ; 3 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i16 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i = select i1 %i.h, ptr %i.i, ptr %i.j
  %i.k = zext i16 %i.g to i64
  %i.l = getelementptr [8 x i8], ptr %.0.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !138
  %i.o = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  store ptr %i.o, ptr %i.a, align 8, !tbaa !138
  %i.p = add nuw nsw i32 %1, 1
  %i.q = call fastcc noundef zeroext i1 @_ZN3re2L11IsAnchorEndEPPNS_6RegexpEi(ptr noundef %i.a, i32 noundef %i.p)
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = load i16, ptr %i.f, align 2, !tbaa !172  ; 4 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 3 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 5 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.s
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  store ptr %i.v, ptr %i.x, align 8, !tbaa !138
  %i.y = zext nneg i16 %i.r to i32
  %i.z = icmp ugt i16 %i.r, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %.lcssa = phi i32 [ %i.y, %bb.e ], [ %i.an, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !122
  %i.ac = zext i16 %i.ab to i32
  %i.ad = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.u, i32 noundef %.lcssa, i32 noundef %i.ac)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.i, %._crit_edge
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit40

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %i.af = phi i16 [ %i.am, %bb.g ], [ %i.r, %bb.e ]
  %i.ag = icmp ult i16 %i.af, 2
  %i.ah = load ptr, ptr %i.i, align 8
  %.0.i38 = select i1 %i.ag, ptr %i.i, ptr %i.ah
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i38, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !138
  %i.ak = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i16, ptr %i.f, align 2, !tbaa !172 ; 2 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !174

bb.h:                                             ; preds = %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit40

bb.i:                                             ; preds = %._crit_edge
  store ptr %i.ad, ptr %0, align 8, !tbaa !138
  invoke void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit unwind label %bb.f

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit:          ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.t) #31
  br label %bb.o

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit40:        ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.ae, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.t) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !138
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  br label %bb.o

bb.k:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !172
  %i.av = icmp ult i16 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %.0.i41 = select i1 %i.av, ptr %i.aw, ptr %i.ax
  %i.ay = load ptr, ptr %.0.i41, align 8, !tbaa !138
  %i.az = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ay)
  store ptr %i.az, ptr %i.a, align 8, !tbaa !138
  %i.ba = add nuw nsw i32 %1, 1
  %i.bb = call fastcc noundef zeroext i1 @_ZN3re2L11IsAnchorEndEPPNS_6RegexpEi(ptr noundef %i.a, i32 noundef %i.ba)
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !122
end_hunk_0
