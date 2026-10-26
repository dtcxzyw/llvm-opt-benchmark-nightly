Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/locid?download=true
inline.NumInlined: 868
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_113AliasReplacer7replaceERKNS_6LocaleERNS_10CharStringER10UErrorCode:bb.a
  br i1 %.not58.i, label %.thread, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.tx = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #25, !inline_history !122 ; 4 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.tz = trunc i64 %i.tv to i32
  invoke void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.tx, ptr noundef nonnull %i.tw, i32 noundef %i.tz, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.hz unwind label %bb.ic, !inline_history !122

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  invoke void @_ZN6icu_7812LocalPointerINS_10CharStringEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.tx, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ie unwind label %bb.id, !inline_history !122

bb.ia:                                            ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.hn, %.noexc165
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813LocaleBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #25, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ip

bb.ib:                                            ; preds = %bb.hr
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.ic:                                            ; preds = %bb.hy
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.tx) #25, !inline_history !122
  br label %bb.in

bb.id:                                            ; preds = %bb.il, %bb.ii, %bb.hz
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

.thread:                                          ; preds = %bb.hw, %_ZNK6icu_786Locale10getCountryEv.exit204
  %.pre427511 = load i32, ptr %3, align 4, !tbaa !11
  br label %bb.if

bb.ie:                                            ; preds = %bb.hz
  %.pre424 = load ptr, ptr %17, align 8, !tbaa !98
  %i.ue = icmp eq ptr %.pre424, null
  %.pre427 = load i32, ptr %3, align 4, !tbaa !11 ; 2 uses
  br i1 %i.ue, label %bb.if, label %bb.ik

bb.if:                                            ; preds = %.thread, %bb.ie
  %.pre427512 = phi i32 [ %.pre427511, %.thread ], [ %.pre427, %bb.ie ]
  %i.uf = icmp sgt i32 %.pre427512, 0
  br i1 %i.uf, label %.critedge.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ug = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #25, !inline_history !122 ; 4 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.ui = ptrtoint ptr %i.tk to i64
  %i.uj = ptrtoint ptr %i.ti to i64
  %i.uk = sub i64 %i.ui, %i.uj
  %i.ul = trunc i64 %i.uk to i32
  invoke void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ug, ptr noundef nonnull %i.ti, i32 noundef %i.ul, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ii unwind label %bb.ij, !inline_history !122

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  invoke void @_ZN6icu_7812LocalPointerINS_10CharStringEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.ug, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %._crit_edge425 unwind label %bb.id, !inline_history !122

._crit_edge425:                                   ; preds = %bb.ii
  %.pre426 = load i32, ptr %3, align 4, !tbaa !11
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih
  %i.um = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ug) #25, !inline_history !122
  br label %bb.in

bb.ik:                                            ; preds = %._crit_edge425, %bb.ie
  %i.un = phi i32 [ %.pre426, %._crit_edge425 ], [ %.pre427, %bb.ie ]
  %i.uo = icmp slt i32 %i.un, 1
  br i1 %i.uo, label %bb.il, label %.critedge.i

bb.il:                                            ; preds = %bb.ik
  %i.up = load ptr, ptr %17, align 8, !tbaa !98   ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !19
  store ptr null, ptr %17, align 8, !tbaa !98
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull %i.up, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.im unwind label %bb.id, !inline_history !122

bb.im:                                            ; preds = %bb.il
  %i.ur = load i32, ptr %3, align 4, !tbaa !11
  %i.us = icmp slt i32 %i.ur, 1
  call void @_ZN6icu_7812LocalPointerINS_10CharStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #25, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #25, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br i1 %i.us, label %bb.iq, label %thread-pre-split

bb.in:                                            ; preds = %bb.ij, %bb.id, %bb.ic
  %.pn63.i = phi { ptr, i32 } [ %i.uc, %bb.ic ], [ %i.um, %bb.ij ], [ %i.ud, %bb.id ]
  call void @_ZN6icu_7812LocalPointerINS_10CharStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #25, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.ib
  %.pn63.pn.pn.i = phi { ptr, i32 } [ %i.ub, %bb.ib ], [ %.pn63.i, %bb.in ]
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #25, !inline_history !122
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.ia
  %.pn63.pn.pn.pn.i = phi { ptr, i32 } [ %.pn63.pn.pn.i, %bb.io ], [ %i.ua, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %.body

.critedge.i:                                      ; preds = %bb.if, %bb.ik
  call void @_ZN6icu_7812LocalPointerINS_10CharStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #25, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #25, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %thread-pre-split

bb.iq:                                            ; preds = %bb.hl, %bb.im
  %.146.i = phi ptr [ %i.uq, %bb.im ], [ %i.ti, %bb.hl ]
  store ptr %.146.i, ptr %i.qo, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread

thread-pre-split:                                 ; preds = %.critedge.i, %bb.im, %.noexc
  %.val.pr.pr = load i32, ptr %3, align 4, !tbaa !11
  %i.ut = icmp slt i32 %.val.pr.pr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br i1 %i.ut, label %bb.ir, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread522

bb.ir:                                            ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.uu = load ptr, ptr %i.qj, align 8, !tbaa !95 ; 2 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %.preheader5.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.uw = load ptr, ptr %i.py, align 8, !tbaa !53
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !90
  %i.uz = invoke noundef ptr @uhash_get_78(ptr noundef %i.uy, ptr noundef nonnull %i.uu)
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc167:                                        ; preds = %bb.is
  %.not.i166 = icmp eq ptr %i.uz, null
  br i1 %.not.i166, label %bb.it, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer13replaceScriptER10UErrorCode.exit

_ZN6icu_7812_GLOBAL__N_113AliasReplacer13replaceScriptER10UErrorCode.exit: ; preds = %.noexc167
  store ptr %i.uz, ptr %i.qj, align 8, !tbaa !95
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread

.critedge250:                                     ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread522

bb.it:                                            ; preds = %.noexc167
  %.val159.pre = load i32, ptr %3, align 4, !tbaa !11
  %i.va = icmp slt i32 %.val159.pre, 1
  br i1 %i.va, label %.preheader5.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread522

.preheader5.i:                                    ; preds = %bb.ir, %bb.it
  %i.vb = load i32, ptr %i.sv, align 8, !tbaa !99
  %i.vc = icmp sgt i32 %i.vb, 0
  br i1 %i.vc, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524

.lr.ph.i:                                         ; preds = %.preheader5.i, %bb.iw
  %.01913.i = phi i32 [ %i.vw, %bb.iw ], [ 0, %.preheader5.i ] ; 3 uses
  %i.vd = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.sn, i32 noundef %.01913.i)
          to label %.noexc169 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc169:                                        ; preds = %.lr.ph.i
  %i.ve = load ptr, ptr %i.py, align 8, !tbaa !53
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !90
  %i.vh = invoke noundef ptr @uhash_get_78(ptr noundef %i.vg, ptr noundef %i.vd)
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc170:                                        ; preds = %.noexc169
  %i.vi = icmp eq ptr %i.vh, null
  br i1 %i.vi, label %bb.iw, label %bb.iu

bb.iu:                                            ; preds = %.noexc170
  %i.vj = icmp eq ptr %i.vd, null
  br i1 %i.vj, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i

_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i: ; preds = %bb.iu
  %i.vk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.vd, ptr noundef nonnull readonly dereferenceable(1) %i.vh) #27
  %i.vl = icmp eq i32 %i.vk, 0
  br i1 %i.vl, label %bb.iw, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i

_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i: ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i, %bb.iu
  %.lcssa = phi ptr [ %i.vd, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i ], [ null, %bb.iu ]
  invoke void @_ZN6icu_787UVector12setElementAtEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.sn, ptr noundef nonnull %i.vh, i32 noundef %.01913.i)
          to label %.noexc171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc171:                                        ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i
  %i.vm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa, ptr noundef nonnull dereferenceable(7) @.str.191) #27
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %.preheader.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread

.preheader.i:                                     ; preds = %.noexc171
  %i.vo = load i32, ptr %i.sv, align 8, !tbaa !99
  %i.vp = icmp sgt i32 %i.vo, 0
  br i1 %i.vp, label %.lr.ph15.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread

.lr.ph15.i:                                       ; preds = %.preheader.i, %.noexc173
  %.014.i = phi i32 [ %i.vt, %.noexc173 ], [ 0, %.preheader.i ] ; 3 uses
  %i.vq = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.sn, i32 noundef %.014.i)
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc172:                                        ; preds = %.lr.ph15.i
  %i.vr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vq, ptr noundef nonnull dereferenceable(8) @.str.192) #27
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.iv, label %.noexc173

bb.iv:                                            ; preds = %.noexc172
  invoke void @_ZN6icu_787UVector15removeElementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.sn, i32 noundef %.014.i)
          to label %.noexc173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc173:                                        ; preds = %bb.iv, %.noexc172
  %i.vt = add nuw nsw i32 %.014.i, 1              ; 2 uses
  %i.vu = load i32, ptr %i.sv, align 8, !tbaa !99
  %i.vv = icmp slt i32 %i.vt, %i.vu
  br i1 %i.vv, label %.lr.ph15.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread, !llvm.loop !123

bb.iw:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.i, %.noexc170
  %i.vw = add nuw nsw i32 %.01913.i, 1            ; 2 uses
  %i.vx = load i32, ptr %i.sv, align 8, !tbaa !99
  %i.vy = icmp slt i32 %i.vw, %i.vx
  br i1 %i.vy, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit, !llvm.loop !124

_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread: ; preds = %.noexc173, %.noexc171, %.preheader.i, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer13replaceScriptER10UErrorCode.exit, %bb.iq, %bb.hh, %bb.hf, %bb.hd, %bb.hb, %bb.gz
  %i.vz = add nuw nsw i32 %.0108338, 1
  %i.wa = load i32, ptr %3, align 4, !tbaa !11
  %i.wb = icmp sgt i32 %i.wa, 0
  br i1 %i.wb, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread522, label %bb.gy, !llvm.loop !125

.loopexit.split-lp268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gq, %bb.go, %bb.gu, %bb.gl, %bb.gs, %bb.gw
  %lpad.loopexit.split-lp694 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp268

bb.ix:                                            ; preds = %bb.gx
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit: ; preds = %bb.iw
  %.pre429 = load i32, ptr %3, align 4, !tbaa !11
  %i.wd = icmp slt i32 %.pre429, 1
  br i1 %i.wd, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread522

_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524: ; preds = %.preheader5.i, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit
  %i.we = load i8, ptr %i.qb, align 8, !tbaa !20
  switch i8 %i.we, label %bb.ja [
    i8 0, label %_ZNK6icu_786Locale7getNameEv.exit
    i8 1, label %bb.iy
    i8 2, label %bb.iz
  ]

bb.iy:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 23
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.iz:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !27
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !29 ; 2 uses
  %i.wk = icmp eq ptr %i.wj, null
  %spec.select.i.i.i.i.i.i.i174 = select i1 %i.wk, ptr @.str, ptr %i.wj
  br label %_ZNK6icu_786Locale7getNameEv.exit

bb.ja:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524
  call void @abort() #26
  unreachable

_ZNK6icu_786Locale7getNameEv.exit:                ; preds = %bb.iz, %bb.iy, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524
  %.0.i.i.i175 = phi ptr [ %spec.select.i.i.i.i.i.i.i174, %bb.iz ], [ %i.wf, %bb.iy ], [ @.str, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread524 ] ; 2 uses
  %i.wl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i.i175) #25
  %i.wm = invoke ptr @locale_getKeywordsStart_78(i64 %i.wl, ptr nonnull %.0.i.i.i175)
          to label %bb.jb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.jb:                                            ; preds = %_ZNK6icu_786Locale7getNameEv.exit
  %i.wn = icmp eq i32 %.0108338, 0
  br i1 %i.wn, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !99
  %i.wq = icmp slt i32 %i.wp, 2
  %i.wr = icmp eq ptr %i.wm, null
  %or.cond = select i1 %i.wq, i1 %i.wr, i1 false
  br i1 %or.cond, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer14replaceVariantER10UErrorCode.exit.thread522, label %bb.jd

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc169, %.lr.ph.i, %.noexc193, %.noexc192, %.noexc191, %bb.ji, %bb.iv, %.lr.ph15.i, %bb.hk, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer4sameEPKcS3_.exit.thread.i, %bb.is, %bb.hm, %bb.gy, %bb.ha, %bb.hc, %bb.he, %bb.hg, %bb.jj, %._crit_edge.i, %.noexc188, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit41.thread.i, %.noexc186, %.noexc185, %bb.jg, %.noexc183, %.noexc182, %bb.jf, %.noexc180, %bb.je, %_ZNK6icu_786Locale7getNameEv.exit
  %lpad.loopexit.split-lp671 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ws = load i32, ptr %3, align 4, !tbaa !11
  %i.wt = icmp slt i32 %i.ws, 1
  br i1 %i.wt, label %bb.je, label %bb.jz

bb.je:                                            ; preds = %bb.jd
  %i.wu = load ptr, ptr %0, align 8, !tbaa !94
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %i.wu)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

.noexc180:                                        ; preds = %bb.je
  %i.wv = load ptr, ptr %4, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.wx = load i32, ptr %i.ww, align 8
  %i.wy = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %i.wv, i32 noundef %i.wx, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126 ; 0 uses

.noexc181:                                        ; preds = %.noexc180
  %i.wz = load ptr, ptr %i.qj, align 8, !tbaa !95 ; 2 uses
  %.not.i.i = icmp eq ptr %i.wz, null
  br i1 %.not.i.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.thread.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.i

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.i: ; preds = %.noexc181
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !20
  %.not.i176 = icmp eq i8 %i.xa, 0
  br i1 %.not.i176, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.thread.i, label %bb.jf

bb.jf:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.i
  %i.xb = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %2, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

.noexc182:                                        ; preds = %bb.jf
  %i.xc = load ptr, ptr %i.qj, align 8, !tbaa !95
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %i.xc)
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

.noexc183:                                        ; preds = %.noexc182
  %i.xd = load ptr, ptr %5, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xf = load i32, ptr %i.xe, align 8
  %i.xg = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.xb, ptr noundef %i.xd, i32 noundef %i.xf, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126 ; 0 uses

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.thread.i: ; preds = %.noexc183, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.i, %.noexc181
  %i.xh = load ptr, ptr %i.qo, align 8, !tbaa !96 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.xh, null
  br i1 %.not.i36.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.thread.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.i

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.i: ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.thread.i
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !20
  %.not45.i = icmp eq i8 %i.xi, 0
  br i1 %.not45.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.thread.i, label %bb.jg

bb.jg:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.i
  %i.xj = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %2, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

.noexc185:                                        ; preds = %bb.jg
  %i.xk = load ptr, ptr %i.qo, align 8, !tbaa !96
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef %i.xk)
          to label %.noexc186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

.noexc186:                                        ; preds = %.noexc185
  %i.xl = load ptr, ptr %6, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.xn = load i32, ptr %i.xm, align 8
  %i.xo = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.xj, ptr noundef %i.xl, i32 noundef %i.xn, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.thread.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126 ; 0 uses

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.thread.i: ; preds = %.noexc186, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.i, %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit.thread.i
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !99
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %bb.jh, label %.noexc190

bb.jh:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit37.thread.i
  %i.xs = load ptr, ptr %i.qj, align 8, !tbaa !95 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.xs, null
  br i1 %.not.i38.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit39.thread.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit39.i

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit39.i: ; preds = %bb.jh
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !20
  %.not46.i = icmp eq i8 %i.xt, 0
  br i1 %.not46.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit39.thread.i, label %.noexc188

_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit39.thread.i: ; preds = %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit39.i, %bb.jh
  %i.xu = load ptr, ptr %i.qo, align 8, !tbaa !96 ; 2 uses
  %.not.i40.i = icmp eq ptr %i.xu, null
  br i1 %.not.i40.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit41.thread.i, label %_ZN6icu_7812_GLOBAL__N_113AliasReplacer8notEmptyEPKc.exit41.i

end_hunk_0
