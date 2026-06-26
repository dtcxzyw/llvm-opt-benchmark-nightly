inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12rowsToRangesEN5folly5RangeIPKiEEPKmS7_S7_PPiRNS0_10ScratchPtrINS0_10IndexRangeELi0EEEPNSD_ISB_Li0EEEPNS3_12VectorStreamERNS0_7ScratchE:bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 216 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 168
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.af:                                            ; preds = %bb.ah
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ag:                                            ; preds = %.lr.ph, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = load i32, ptr %i.es, align 8, !tbaa !125
  %i.fd = add nsw i32 %i.fc, %i.fb                ; 2 uses
  store i32 %i.fd, ptr %i.es, align 8, !tbaa !125
  %i.fe = load ptr, ptr %i.et, align 8, !tbaa !115 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !116 ; 2 uses
  %i.fh = add i64 %i.fg, 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !117
  %i.fk = icmp ugt i64 %i.fh, %i.fj
  br i1 %i.fk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, i64 4, ptr nonnull align 4 dereferenceable(4) %i.es)
          to label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !118
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fg
  store i32 %i.fd, ptr %i.fm, align 1
  %i.fn = load ptr, ptr %i.et, align 8, !tbaa !115
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !116
  %i.fq = add i64 %i.fp, 4
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit

_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit: ; preds = %bb.ai, %bb.ah
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.loopexit, label %bb.ag, !llvm.loop !560

.loopexit:                                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit, %bb.ab, %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit
  %.071 = phi i32 [ %i.o, %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit ], [ %i.e, %bb.ab ], [ %i.e, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit ], [ %i.e, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit ] ; 4 uses
  %.070 = phi ptr [ %i.m, %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit ], [ %0, %bb.ab ], [ %0, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit ], [ %0, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit ] ; 2 uses
  %.067 = phi ptr [ %i.n, %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit ], [ %0, %bb.ab ], [ %0, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit ], [ %0, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit ]
  %.not90 = icmp eq ptr %5, null                  ; 2 uses
  br i1 %.not90, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.fr = invoke noundef ptr @_ZN8facebook5velox10ScratchPtrIPiLi0EE3getEi(ptr noundef nonnull align 8 dereferenceable(56) %7, i32 noundef %.071)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.al:                                            ; preds = %bb.aj, %.loopexit
  %.068 = phi ptr [ null, %.loopexit ], [ %i.fr, %bb.aj ] ; 2 uses
  %i.ft = invoke noundef ptr @_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EE3getEi(ptr noundef nonnull align 8 dereferenceable(52) %6, i32 noundef %.071)
          to label %.preheader unwind label %bb.ba

.preheader:                                       ; preds = %bb.al
  %i.fu = icmp sgt i32 %.071, 0
  br i1 %i.fu, label %.lr.ph136, label %._crit_edge

.lr.ph136:                                        ; preds = %.preheader
  %.not95 = icmp eq ptr %.068, null
  %wide.trip.count = zext nneg i32 %.071 to i64
  br label %bb.bb

._crit_edge:                                      ; preds = %bb.bl, %.preheader
  %.066.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %bb.bl ]
  %i.fv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !227
  %.not.i106 = icmp eq ptr %i.fw, null
  br i1 %.not.i106, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %._crit_edge
  %i.fx = load ptr, ptr %11, align 8, !tbaa !209
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  %.pr.i107 = load ptr, ptr %i.fv, align 8, !tbaa !227 ; 2 uses
  %i.fy = icmp eq ptr %.pr.i107, null
  br i1 %i.fy, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fz = getelementptr inbounds i8, ptr %.pr.i107, i64 -32 ; 2 uses
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i108, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !229
  %i.gd = add i64 %i.gc, 64
  %i.ge = load ptr, ptr %i.ga, align 8, !tbaa !55
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 120
  %i.gg = load ptr, ptr %i.gf, align 8
  invoke void %i.gg(ptr noundef nonnull align 8 dereferenceable(264) %i.ga, ptr noundef nonnull %i.fz, i64 noundef %i.gd)
          to label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit unwind label %bb.ar, !inline_history !482

bb.aq:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.fz) #36
  br label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #47
  unreachable

bb.as:                                            ; preds = %bb.am
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #47
  unreachable

_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit:  ; preds = %._crit_edge, %bb.an, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !227
  %.not.i109 = icmp eq ptr %i.gm, null
  br i1 %.not.i109, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit112, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit
  %i.gn = load ptr, ptr %10, align 8, !tbaa !209
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  %.pr.i110 = load ptr, ptr %i.gl, align 8, !tbaa !227 ; 2 uses
  %i.go = icmp eq ptr %.pr.i110, null
  br i1 %i.go, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit112, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gp = getelementptr inbounds i8, ptr %.pr.i110, i64 -32 ; 2 uses
  %i.gq = load ptr, ptr %i.f, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i111, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !229
  %i.gt = add i64 %i.gs, 64
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !55
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 120
  %i.gw = load ptr, ptr %i.gv, align 8
  invoke void %i.gw(ptr noundef nonnull align 8 dereferenceable(264) %i.gq, ptr noundef nonnull %i.gp, i64 noundef %i.gt)
          to label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit112 unwind label %bb.ay, !inline_history !482

bb.ax:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.gp) #36
  br label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit112

bb.ay:                                            ; preds = %bb.aw
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #47
  unreachable

bb.az:                                            ; preds = %bb.at
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #47
  unreachable

_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit112: ; preds = %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit, %bb.au, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  ret i32 %.066.lcssa

bb.ba:                                            ; preds = %bb.al
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bb:                                            ; preds = %.lr.ph136, %bb.bl
  %indvars.iv140 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next141, %bb.bl ] ; 6 uses
  %.066133 = phi i32 [ 0, %.lr.ph136 ], [ %.1, %bb.bl ] ; 4 uses
  br i1 %.not90, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv140
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %14 = sext i32 %i.hd to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %15 = phi i64 [ %14, %bb.bd ], [ %indvars.iv140, %bb.bc ]
  %i.he = getelementptr inbounds [8 x i8], ptr %5, i64 %15
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !444 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hh = add i32 %i.hg, 4
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !3
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.067, i64 %indvars.iv140 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not95, label %._crit_edge144, label %bb.bh

._crit_edge144:                                   ; preds = %bb.bg
  %.pre = sext i32 %.066133 to i64
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv140
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %16 = sext i32 %i.hp to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %17 = phi i64 [ %16, %bb.bi ], [ %indvars.iv140, %bb.bh ]
  %i.hq = getelementptr inbounds [8 x i8], ptr %5, i64 %17
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !444
  %i.hs = sext i32 %.066133 to i64                ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.068, i64 %i.hs
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !444
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge144, %bb.bj
  %.pre-phi = phi i64 [ %.pre, %._crit_edge144 ], [ %i.hs, %bb.bj ]
  %i.hu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hk
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %.pre-phi ; 2 uses
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !114
  %i.hx = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !88
  %i.ic = add nsw i32 %.066133, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %bb.bk
  %.1 = phi i32 [ %.066133, %bb.bf ], [ %i.ic, %bb.bk ] ; 2 uses
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count
  br i1 %exitcond143.not, label %._crit_edge, label %bb.bb, !llvm.loop !561

bb.bm:                                            ; preds = %bb.ak, %bb.ba, %bb.af, %bb.ae, %.loopexit.split-lp
  %.pn91.pn = phi { ptr, i32 } [ %i.ev, %bb.ae ], [ %.pn.pn, %.loopexit.split-lp ], [ %i.ew, %bb.af ], [ %i.hb, %bb.ba ], [ %i.fs, %bb.ak ]
  call void @_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev(ptr noundef nonnull align 8 dead_on_return(340) dereferenceable(340) %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev(ptr noundef nonnull align 8 dead_on_return(340) dereferenceable(340) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  resume { ptr, i32 } %.pn91.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10ScratchPtrImLi4EE3getEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !562
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10ScratchPtrImLi4EE3getEiE18veloxCheckFailArgs) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.c, align 8, !tbaa !563
  %i.d = icmp slt i32 %1, 5
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !442    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !564, !noalias !567 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN8facebook5velox7Scratch3getEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !570, !noalias !567
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr [32 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -32      ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -16
  %i.o = getelementptr i8, ptr %i.l, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !229, !noalias !567 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.n, align 8, !tbaa !121, !noalias !567
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !352, !noalias !567
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !noalias !567
  %i.s = load i32, ptr %i.g, align 8, !tbaa !564, !noalias !567
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.g, align 8, !tbaa !564, !noalias !567
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !571, !noalias !567
  %i.w = sub nsw i64 %i.v, %i.p
  store i64 %i.w, ptr %i.u, align 8, !tbaa !571, !noalias !567
  br label %_ZN8facebook5velox7Scratch3getEv.exit

_ZN8facebook5velox7Scratch3getEv.exit:            ; preds = %bb.e, %bb.f
  %.sroa.12.0 = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
  %i.x = phi <2 x i64> [ %i.q, %bb.f ], [ zeroinitializer, %bb.e ]
  %i.y = phi <2 x ptr> [ %i.r, %bb.f ], [ splat (ptr null), %bb.e ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !227 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox7Scratch3getEv.exit
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -32 ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !228 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !229
  %i.ah = add i64 %i.ag, 64
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, ptr noundef nonnull %i.ad, i64 noundef %i.ah)
          to label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit unwind label %bb.j, !inline_history !482

bb.i:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.ad) #36
  br label %_ZN8facebook5velox10raw_vectorIcED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #47
  unreachable

_ZN8facebook5velox10raw_vectorIcED2Ev.exit:       ; preds = %bb.h, %bb.i, %_ZN8facebook5velox7Scratch3getEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store <2 x i64> %i.x, ptr %i.an, align 8, !tbaa !121
  store <2 x ptr> %i.y, ptr %i.z, align 8, !tbaa !352
  %i.ao = zext nneg i32 %1 to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 3 uses
  %.not.i = icmp sgt i64 %i.ap, %.sroa.12.0
  %i.aq = extractelement <2 x ptr> %i.y, i64 1
  br i1 %.not.i, label %_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i, label %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit, !prof !147

_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i: ; preds = %_ZN8facebook5velox10raw_vectorIcED2Ev.exit
  tail call void @_ZN8facebook5velox10raw_vectorIcE4growEl(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.ap)
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !227
  br label %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit

_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit:  ; preds = %_ZN8facebook5velox10raw_vectorIcED2Ev.exit, %_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i
  %i.ar = phi ptr [ %i.aq, %_ZN8facebook5velox10raw_vectorIcED2Ev.exit ], [ %.pre, %_ZN8facebook5velox10raw_vectorIcE7reserveEl.exit.i ]
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !572
  br label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit, %bb.d
  %storemerge = phi ptr [ %i.ar, %_ZN8facebook5velox10raw_vectorIcE6resizeEl.exit ], [ %i.e, %bb.d ] ; 2 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !562
  ret ptr %storemerge
}

declare void @_ZN8facebook5velox4simd10gatherBitsEPKmN5folly5RangeIPKiEEPm(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10ScratchPtrIiLi64EE3getEi(ptr noundef nonnull align 8 dereferenceable(340) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !573
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10ScratchPtrIiLi64EE3getEiE18veloxCheckFailArgs) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.c, align 8, !tbaa !574
  %i.d = icmp slt i32 %1, 65
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !209    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !564, !noalias !575 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN8facebook5velox7Scratch3getEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !570, !noalias !575
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr [32 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -32      ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 -16
  %i.o = getelementptr i8, ptr %i.l, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !229, !noalias !575 ; 2 uses
  %i.q = load <2 x i64>, ptr %i.n, align 8, !tbaa !121, !noalias !575
  %i.r = load <2 x ptr>, ptr %i.m, align 8, !tbaa !352, !noalias !575
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !noalias !575
  %i.s = load i32, ptr %i.g, align 8, !tbaa !564, !noalias !575
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.g, align 8, !tbaa !564, !noalias !575
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !571, !noalias !575
  %i.w = sub nsw i64 %i.v, %i.p
  store i64 %i.w, ptr %i.u, align 8, !tbaa !571, !noalias !575
  br label %_ZN8facebook5velox7Scratch3getEv.exit

_ZN8facebook5velox7Scratch3getEv.exit:            ; preds = %bb.e, %bb.f
end_hunk_0
