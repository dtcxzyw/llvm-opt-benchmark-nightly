Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/transreg?download=true
inline.NumInlined: 263
inline.NumDeleted: 73
begin_hunk_0_@_ZN6icu_7822TransliteratorRegistry12findInBundleERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE15UTransDirection:bb.a
  br label %bb.au

bb.x:                                             ; preds = %bb.p, %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.at

bb.y:                                             ; preds = %bb.ag, %bb.aa, %bb.ad, %_ZN6icu_7813UnicodeString8truncateEi.exit61
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.z:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.bk = load i16, ptr %i.m, align 8, !tbaa !10  ; 4 uses
  %i.bl = trunc i16 %i.bk to i1
  br i1 %i.bl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN6icu_7813UnicodeString8truncateEi.exit61 unwind label %bb.y

bb.ab:                                            ; preds = %bb.z
  %i.bm = icmp slt i16 %i.bk, 0
  %i.bn = ashr i16 %i.bk, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.n, align 4
  %i.bq = select i1 %i.bm, i32 %i.bp, i32 %i.bo
  %.not75 = icmp eq i32 %i.bq, 0
  br i1 %.not75, label %_ZN6icu_7813UnicodeString8truncateEi.exit61, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = and i16 %i.bk, 30
  store i16 %i.br, ptr %i.m, align 8, !tbaa !10
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit61

_ZN6icu_7813UnicodeString8truncateEi.exit61:      ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.bs = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6icu_7814ResourceBundle9getLocaleEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ad unwind label %bb.y

bb.ad:                                            ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit61
  %i.bt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813LocaleUtility18initNameFromLocaleERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.ae unwind label %bb.y      ; 5 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load i16, ptr %i.p, align 8, !tbaa !10  ; 3 uses
  %i.bv = and i16 %i.bu, 1
  %.not.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i.i, label %bb.af, label %.split

.split:                                           ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !10
  %i.by = trunc i16 %i.bx to i1
  br i1 %i.by, label %bb.ai, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.bz = icmp slt i16 %i.bu, 0
  %i.ca = ashr i16 %i.bu, 5
  %i.cb = sext i16 %i.ca to i32
  %i.cc = load i32, ptr %i.q, align 4
  %i.cd = select i1 %i.bz, i32 %i.cc, i32 %i.cb   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !10 ; 4 uses
  %i.cg = icmp slt i16 %i.cf, 0
  %i.ch = ashr i16 %i.cf, 5
  %i.ci = sext i16 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = select i1 %i.cg, i32 %i.ck, i32 %i.ci
  %i.cm = and i16 %i.cf, 1
  %.not9.i.i = icmp eq i16 %i.cm, 0
  %i.cn = icmp eq i32 %i.cd, %i.cl
  %or.cond.i.i = and i1 %.not9.i.i, %i.cn
  br i1 %or.cond.i.i, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.co = and i16 %i.cf, 2
  %.not.i.i.i.i = icmp eq i16 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = select i1 %.not.i.i.i.i, ptr %i.cr, ptr %i.cp
  %i.ct = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef %i.cs, i32 noundef %i.cd)
          to label %bb.ah unwind label %bb.y

bb.ah:                                            ; preds = %bb.ag
  %.not118 = icmp eq i8 %i.ct, 0
  br i1 %.not118, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %.split, %bb.ah
  %i.cu = load i16, ptr %i.r, align 8, !tbaa !10  ; 2 uses
  %i.cv = icmp slt i16 %i.cu, 0
  %i.cw = ashr i16 %i.cu, 5
  %i.cx = sext i16 %i.cw to i32
  %i.cy = load i32, ptr %i.s, align 4
  %i.cz = select i1 %i.cv, i32 %i.cy, i32 %i.cx
  %.not = icmp eq i32 %i.cz, 0
  store i32 0, ptr %i.a, align 4, !tbaa !25
  br i1 %.not, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr %i.t, ptr %11, align 8, !tbaa !37
  store i32 40, ptr %i.u, align 8, !tbaa !38
  store i8 0, ptr %i.v, align 4, !tbaa !39
  store i32 0, ptr %i.w, align 8, !tbaa !41
  store i8 0, ptr %i.t, align 1, !tbaa !10
  %i.da = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %11, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !37
  invoke void @_ZNK6icu_7814ResourceBundle11getStringExEPKcR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.db, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %10) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #15
  %i.dd = load i8, ptr %i.v, align 4, !tbaa !39
  %.not.i.i.i63 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i63, label %_ZN6icu_7810CharStringD2Ev.exit64, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = load ptr, ptr %11, align 8, !tbaa !37
  invoke void @uprv_free_78(ptr noundef %i.de)
          to label %_ZN6icu_7810CharStringD2Ev.exit64 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #16
  unreachable

_ZN6icu_7810CharStringD2Ev.exit64:                ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !25
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.thread, label %.thread71

bb.ao:                                            ; preds = %bb.ak, %bb.aj
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.as

bb.ap:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  invoke void @_ZNK6icu_7814ResourceBundle11getStringExEiR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dk = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %12) #15 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !25
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.thread, label %.thread71

bb.ar:                                            ; preds = %bb.ap
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.as

.thread:                                          ; preds = %.split, %_ZN6icu_7810CharStringD2Ev.exit64, %bb.aq, %bb.af, %bb.ah, %_ZN6icu_7810CharStringD2Ev.exit
  call void @_ZN6icu_7814ResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %i.x, label %bb.b, label %.thread72, !llvm.loop !85

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.y
  %.pn43.pn = phi { ptr, i32 } [ %i.dj, %bb.ao ], [ %i.dn, %bb.ar ], [ %i.bj, %bb.y ]
  call void @_ZN6icu_7814ResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.x
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.as ], [ %i.bi, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.w
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %bb.at ], [ %.pn, %bb.w ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.t
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn, %bb.au ], [ %i.bf, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.bb

.thread71:                                        ; preds = %_ZN6icu_7810CharStringD2Ev.exit64, %bb.aq
  call void @_ZN6icu_7814ResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %13 = select i1 %i.x, i32 0, i32 %3
  %i.do = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 104) #15 ; 7 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.thread72, label %bb.aw

bb.aw:                                            ; preds = %.thread71
  invoke void @_ZN6icu_7819TransliteratorEntryC1Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.do)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  store i32 2, ptr %i.do, align 8, !tbaa !46
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dq, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.ay unwind label %bb.ba     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  store i32 %13, ptr %i.ds, align 8, !tbaa !54
  br label %.thread72

bb.az:                                            ; preds = %bb.aw
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.do) #15
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.thread72:                                        ; preds = %.thread, %.thread71, %bb.ay
  %.0 = phi ptr [ null, %.thread71 ], [ %i.do, %bb.ay ], [ null, %.thread ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.av, %bb.j, %bb.h, %bb.g
  %.pn51.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %.pn43.pn.pn.pn.pn, %bb.av ], [ %i.ai, %bb.h ], [ %i.ak, %bb.j ], [ %i.du, %bb.ba ], [ %i.dt, %bb.az ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %.pn51.pn
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toUpperERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZNK6icu_7814ResourceBundle3getEPKcR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::ResourceBundle") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6icu_7814ResourceBundle9getLocaleEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK6icu_7814ResourceBundle11getStringExEPKcR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZNK6icu_7814ResourceBundle11getStringExEiR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7814ResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7822TransliteratorRegistry4findERNS_13UnicodeStringES2_S2_(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %6 = alloca %"class.icu_78::TransliteratorSpec", align 8 ; 29 uses
  %7 = alloca %"class.icu_78::TransliteratorSpec", align 8 ; 21 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN6icu_7818TransliteratorSpecC1ERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(280) %6, ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZN6icu_7818TransliteratorSpecC1ERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(280) %7, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !10
  invoke void @_ZN6icu_7822TransliteratorIDParser7STVtoIDERKNS_13UnicodeStringES3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.c unwind label %.loopexit.split-lp77.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = invoke noundef ptr @uhash_get_78(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit unwind label %.loopexit.split-lp77.loopexit.split-lp ; 2 uses

_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit: ; preds = %bb.c
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %_ZN6icu_7822TransliteratorRegistry17findInStaticStoreERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE.exit

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit76:                                      ; preds = %bb.y, %.noexc65
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp77.loopexit:                    ; preds = %.noexc67, %bb.aa, %.noexc50, %_ZNK6icu_7813UnicodeStringneERKS0_.exit.thread.i, %_ZNK6icu_7813UnicodeStringneERKS0_.exit.i
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp77.loopexit.split-lp:           ; preds = %.invoke, %bb.n, %bb.c, %bb.b
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZNK6icu_789Hashtable3getERKNS_13UnicodeStringE.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %.not32 = icmp eq i32 %i.m, 0
  br i1 %.not32, label %_ZN6icu_7822TransliteratorRegistry17findInStaticStoreERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 72
  invoke void @_ZN6icu_7822TransliteratorIDParser7STVtoIDERKNS_13UnicodeStringES3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.r = invoke noundef ptr @uhash_get_78(ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.s, %bb.h ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body

bb.k:                                             ; preds = %bb.g
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %_ZN6icu_7822TransliteratorRegistry17findInStaticStoreERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE.exit

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.v = load i8, ptr %i.u, align 8, !tbaa !42
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.x = load i8, ptr %i.w, align 8, !tbaa !42
  %.not15.i = icmp eq i8 %i.x, 0
  br i1 %.not15.i, label %_ZN6icu_7822TransliteratorRegistry17findInStaticStoreERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE.exit.thread, label %.invoke

.invoke:                                          ; preds = %bb.m, %bb.l
  %i.y = phi ptr [ %6, %bb.l ], [ %7, %bb.m ]
  %i.z = phi ptr [ %7, %bb.l ], [ %6, %bb.m ]
  %i.aa = phi i32 [ 0, %bb.l ], [ 1, %bb.m ]
  %i.ab = invoke noundef ptr @_ZN6icu_7822TransliteratorRegistry12findInBundleERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE15UTransDirection(ptr noundef nonnull align 8 dereferenceable(280) %i.y, ptr noundef nonnull align 8 dereferenceable(280) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.aa)
          to label %.noexc unwind label %.loopexit.split-lp77.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %.invoke
  %.not16.i = icmp eq ptr %i.ab, null
  br i1 %.not16.i, label %_ZN6icu_7822TransliteratorRegistry17findInStaticStoreERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE.exit.thread, label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  invoke void @_ZN6icu_7822TransliteratorRegistry13registerEntryERKNS_13UnicodeStringES3_S3_PNS_19TransliteratorEntryEa(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.ab, i8 noundef signext 0)
          to label %_ZN6icu_7822TransliteratorRegistry17findInStaticStoreERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE.exit unwind label %.loopexit.split-lp77.loopexit.split-lp

_ZN6icu_7822TransliteratorRegistry17findInStaticStoreERKNS_18TransliteratorSpecES3_RKNS_13UnicodeStringE.exit.thread: ; preds = %bb.m, %.noexc, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 272
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 264 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 148
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 265
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 148
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 136
end_hunk_0
