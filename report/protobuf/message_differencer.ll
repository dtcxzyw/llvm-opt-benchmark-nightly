inline.NumInlined: 4932
inline.NumDeleted: 2065
begin_hunk_0_@_ZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_:bb.a

_ZNSt6vectorIiSaIiEE2atEm.exit184..thread254_crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit184
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !99
  br label %.thread254

.loopexit298:                                     ; preds = %.thread254, %bb.at
  %lpad.loopexit300 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp299:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp301 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.as:                                            ; preds = %bb.ap
  %.pre441 = load ptr, ptr %i.f, align 8, !tbaa !99 ; 2 uses
  br i1 %i.p, label %.thread254, label %bb.at

.thread254:                                       ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit184..thread254_crit_edge, %bb.as
  %i.gy = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE2atEm.exit184..thread254_crit_edge ], [ %.pre441, %bb.as ]
  store i32 0, ptr %i.aw, align 8, !tbaa !620
  %i.gz = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.ha = load i32, ptr %i.e, align 4, !tbaa !3
  %i.hb = trunc nsw i64 %indvars.iv433 to i32     ; 4 uses
  %i.hc = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7IsMatchEPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorEPKNS0_7MessageESB_iRKSt6vectorINS2_13SpecificFieldESaISD_EEPNS2_8ReporterEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.gy, ptr noundef %i.gz, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %10, i32 noundef %i.gj, i32 noundef %i.hb)
          to label %bb.au unwind label %.loopexit298

bb.at:                                            ; preds = %bb.as
  %i.hd = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.he = load i32, ptr %i.e, align 4, !tbaa !3
  %i.hf = trunc nsw i64 %indvars.iv433 to i32     ; 2 uses
  %i.hg = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7IsMatchEPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorEPKNS0_7MessageESB_iRKSt6vectorINS2_13SpecificFieldESaISD_EEPNS2_8ReporterEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %.pre441, ptr noundef %i.hd, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.he, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef null, i32 noundef %i.gi, i32 noundef %i.hf)
          to label %bb.ba unwind label %.loopexit298

bb.au:                                            ; preds = %.thread254
  br i1 %i.hc, label %.thread261.thread, label %bb.av

.thread261.thread:                                ; preds = %bb.au
  store i32 0, ptr %i.gh, align 4, !tbaa !3
  br label %.thread273

bb.av:                                            ; preds = %bb.au
  %i.hh = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !130
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !138
  %i.hn = icmp eq i32 %i.hm, 10
  br i1 %i.hn, label %bb.aw, label %.thread259

bb.aw:                                            ; preds = %bb.av
  %i.ho = load i32, ptr %i.aw, align 8, !tbaa !620 ; 4 uses
  %i.hp = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.hq = icmp slt i32 %i.ho, %i.hp
  br i1 %i.hq, label %bb.ax, label %.thread259

bb.ax:                                            ; preds = %bb.aw
  %i.hr = load ptr, ptr %i.gd, align 8, !tbaa !7
  %i.hs = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = ashr exact i64 %i.hv, 2                 ; 2 uses
  %.not.i.i185 = icmp ugt i64 %i.hw, %indvars.iv433
  br i1 %.not.i.i185, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %indvars.iv433, i64 noundef %i.hw) #39
          to label %.noexc186 unwind label %.thread284

.noexc186:                                        ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv433
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !3  ; 2 uses
  %i.hz = icmp eq i32 %i.hy, -1
  br i1 %i.hz, label %.thread261, label %_ZNSt6vectorIiSaIiEE2atEm.exit190

_ZNSt6vectorIiSaIiEE2atEm.exit190:                ; preds = %bb.az
  %i.ia = sext i32 %i.hy to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0219.0, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3
  %i.id = icmp slt i32 %i.ho, %i.ic
  br i1 %i.id, label %.thread261, label %.thread259

.thread284:                                       ; preds = %bb.ay
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.ba:                                            ; preds = %bb.at
  br i1 %i.hg, label %.thread268, label %.thread259

.thread261:                                       ; preds = %bb.az, %_ZNSt6vectorIiSaIiEE2atEm.exit190
  store i32 %i.ho, ptr %i.gh, align 4, !tbaa !3
  %i.if = icmp eq i32 %i.ho, 0
  br i1 %i.if, label %.thread273, label %.thread259

.thread259:                                       ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE2atEm.exit190, %bb.aw, %bb.ba, %.thread261, %bb.aq, %bb.ar, %_ZNSt6vectorIiSaIiEE2atEm.exit184
  %.1118 = phi i32 [ %.0117369, %bb.ar ], [ %.0117369, %_ZNSt6vectorIiSaIiEE2atEm.exit184 ], [ %i.hb, %.thread261 ], [ %.0117369, %bb.ba ], [ %.0117369, %bb.aq ], [ %.0117369, %bb.aw ], [ %.0117369, %_ZNSt6vectorIiSaIiEE2atEm.exit190 ], [ %.0117369, %bb.av ] ; 4 uses
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next434 to i32
  %exitcond436.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond436.not, label %._crit_edge, label %bb.an, !llvm.loop !651

._crit_edge:                                      ; preds = %.thread259
  %.not293 = icmp eq i32 %.1118, -1
  br i1 %.not293, label %._crit_edge.thread, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  br i1 %i.p, label %.thread273, label %.thread268

.thread273:                                       ; preds = %.thread261, %.thread261.thread, %bb.bb
  %.2119267275 = phi i32 [ %.1118, %bb.bb ], [ %i.hb, %.thread261.thread ], [ %i.hb, %.thread261 ] ; 3 uses
  %i.ig = sext i32 %.2119267275 to i64            ; 3 uses
  %i.ih = load ptr, ptr %i.gd, align 8, !tbaa !7
  %i.ii = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = ashr exact i64 %i.il, 2                 ; 2 uses
  %.not.i.i191 = icmp ugt i64 %i.im, %i.ig
  br i1 %.not.i.i191, label %bb.bc, label %.invoke541

bb.bc:                                            ; preds = %.thread273
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ig
  %i.io = load i32, ptr %i.in, align 4, !tbaa !3  ; 2 uses
  %.not151 = icmp eq i32 %i.io, -1
  br i1 %.not151, label %.thread268, label %_ZNSt6vectorIiSaIiEE2atEm.exit196

_ZNSt6vectorIiSaIiEE2atEm.exit196:                ; preds = %bb.bc
  %i.ip = sext i32 %i.io to i64                   ; 3 uses
  %i.iq = load ptr, ptr %i.ge, align 8, !tbaa !7
  %i.ir = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = ashr exact i64 %i.iu, 2                 ; 2 uses
  %.not.i.i197 = icmp ugt i64 %i.iv, %i.ip
  br i1 %.not.i.i197, label %bb.bd, label %.invoke541

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit196
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.ip
  store i32 -1, ptr %i.iw, align 4, !tbaa !3
  br label %.thread268

bb.be:                                            ; preds = %.invoke541
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.thread268:                                       ; preds = %bb.ba, %bb.bd, %bb.bc, %bb.bb
  %.2119267270 = phi i32 [ %.2119267275, %bb.bd ], [ %.2119267275, %bb.bc ], [ %.1118, %bb.bb ], [ %i.hf, %bb.ba ] ; 2 uses
  %.3123 = phi i1 [ false, %bb.bd ], [ true, %bb.bc ], [ true, %bb.bb ], [ true, %bb.ba ]
  %i.iy = load ptr, ptr %i.ge, align 8, !tbaa !7
  %i.iz = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 2                 ; 2 uses
  %.not.i.i200 = icmp ugt i64 %i.jd, %indvars.iv437
  br i1 %.not.i.i200, label %bb.bf, label %.invoke541

bb.bf:                                            ; preds = %.thread268
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv437
  store i32 %.2119267270, ptr %i.je, align 4, !tbaa !3
  %i.jf = sext i32 %.2119267270 to i64            ; 3 uses
  %i.jg = load ptr, ptr %i.gd, align 8, !tbaa !7
  %i.jh = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = ashr exact i64 %i.jk, 2                 ; 2 uses
  %.not.i.i203 = icmp ugt i64 %i.jl, %i.jf
  br i1 %.not.i.i203, label %bb.bg, label %.invoke541

.invoke541:                                       ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit196, %.thread273, %bb.bf, %.thread268
  %i.jm = phi i64 [ %indvars.iv437, %.thread268 ], [ %i.jf, %bb.bf ], [ %i.ig, %.thread273 ], [ %i.ip, %_ZNSt6vectorIiSaIiEE2atEm.exit196 ]
  %i.jn = phi i64 [ %i.jd, %.thread268 ], [ %i.jl, %bb.bf ], [ %i.im, %.thread273 ], [ %i.iv, %_ZNSt6vectorIiSaIiEE2atEm.exit196 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %i.jm, i64 noundef %i.jn) #39
          to label %.cont542 unwind label %bb.be

.cont542:                                         ; preds = %.invoke541
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jf
  %i.jp = trunc nsw i64 %indvars.iv437 to i32
  store i32 %i.jp, ptr %i.jo, align 4, !tbaa !3
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.bg, %._crit_edge
  %.4124 = phi i1 [ %.3123, %bb.bg ], [ false, %._crit_edge ], [ false, %.preheader ] ; 2 uses
  %or.cond12.not = select i1 %.4124, i1 true, i1 %i.gf
  br i1 %or.cond12.not, label %bb.bh, label %.loopexit303

bb.bh:                                            ; preds = %._crit_edge.thread
  %13 = select i1 %.4124, i1 %.1139374, i1 false  ; 2 uses
  %indvars.iv.next438 = add nsw i64 %indvars.iv437, 1 ; 2 uses
  %lftr.wideiv439 = trunc i64 %indvars.iv.next438 to i32
  %exitcond440.not = icmp eq i32 %i.l, %lftr.wideiv439
  br i1 %exitcond440.not, label %.thread276, label %.preheader, !llvm.loop !652

.thread276:                                       ; preds = %bb.bh, %.loopexit304, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit
  %.4142.shrunk = phi i1 [ %i.eh, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit ], [ true, %.loopexit304 ], [ %13, %bb.bh ]
  %i.jq = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.jr = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20IsTreatedAsSmartListEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.jq)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %.thread276
  br i1 %i.jr, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %7, ptr %i.a, align 8, !tbaa !653
  store ptr %8, ptr %i.b, align 8, !tbaa !653
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !160
  %.not.i.i206 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i206, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt25__throw_bad_function_callv() #39
          to label %.noexc207 unwind label %bb.bm

.noexc207:                                        ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !159
  invoke void %i.jw(ptr noundef nonnull align 8 dereferenceable(32) %i.ju, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNKSt8functionIFvPSt6vectorIiSaIiEES3_EEclES3_S3_.exit unwind label %bb.bm, !inline_history !654

_ZNKSt8functionIFvPSt6vectorIiSaIiEES3_EEclES3_S3_.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.thread276
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bn:                                            ; preds = %_ZNKSt8functionIFvPSt6vectorIiSaIiEES3_EEclES3_S3_.exit, %bb.bi
  store ptr %i.u, ptr %0, align 8, !tbaa !154
  br label %.loopexit303

.loopexit303:                                     ; preds = %._crit_edge.thread, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit, %bb.bn
  %.4 = phi i1 [ %.4142.shrunk, %bb.bn ], [ false, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit ], [ false, %._crit_edge.thread ]
  %.not.i.i.i = icmp eq ptr %.sroa.0219.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %.loopexit303
  %i.jy = ptrtoint ptr %.sroa.0219.0 to i64
  %i.jz = sub i64 %.sroa.19.0, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0219.0, i64 noundef %i.jz) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit303, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.br

bb.bp:                                            ; preds = %.loopexit298, %.loopexit.split-lp299, %.loopexit305, %.loopexit.split-lp306, %_ZNSt14_Function_baseD2Ev.exit172, %bb.bm, %bb.be, %bb.ah
  %.pn159.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp308, %.loopexit.split-lp306 ], [ %i.jx, %bb.bm ], [ %.pn157, %_ZNSt14_Function_baseD2Ev.exit172 ], [ %i.ix, %bb.be ], [ %i.fh, %bb.ah ], [ %lpad.loopexit307, %.loopexit305 ], [ %lpad.loopexit300, %.loopexit298 ], [ %lpad.loopexit.split-lp301, %.loopexit.split-lp299 ] ; 2 uses
  %.not.i.i.i209 = icmp eq ptr %.sroa.0219.0, null
  br i1 %.not.i.i.i209, label %_ZNSt6vectorIiSaIiEED2Ev.exit210, label %bb.bq

bb.bq:                                            ; preds = %.thread284, %bb.bp
  %.pn159.pn291 = phi { ptr, i32 } [ %i.ie, %.thread284 ], [ %.pn159.pn, %bb.bp ]
  %i.ka = ptrtoint ptr %.sroa.0219.0 to i64
  %i.kb = sub i64 %.sroa.19.0, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0219.0, i64 noundef %i.kb) #42
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit210

_ZNSt6vectorIiSaIiEED2Ev.exit210:                 ; preds = %bb.bp, %bb.bq
  %.pn159.pn283 = phi { ptr, i32 } [ %.pn159.pn291, %bb.bq ], [ %.pn159.pn, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  resume { ptr, i32 } %.pn159.pn283

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt6vectorIiSaIiEE2atEm.exit163
  %.5 = phi i1 [ true, %_ZNSt6vectorIiSaIiEE2atEm.exit163 ], [ %.4, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer17CompareFieldValueERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer34CompareFieldValueUsingParentFieldsERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEiiPSt6vectorINS2_13SpecificFieldESaISA_EE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf4util18MessageDifferencer24GetFieldComparisonResultERKNS0_7MessageES5_PKNS0_15FieldDescriptorEiiPKNS1_12FieldContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.a = load ptr, ptr %.in, align 8, !tbaa !106  ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6)
  ret i32 %i.e
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer16CheckPathChangedERKSt6vectorINS2_13SpecificFieldESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !509    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !509  ; 2 uses
  %.not1921.not = icmp eq ptr %i.a, %i.c
  br i1 %.not1921.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %select.unfold
  %.sroa.013.022 = phi ptr [ %i.m, %select.unfold ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 16
  %.not20 = icmp eq i8 %i.h, 0
  br i1 %.not20, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %.not12 = icmp eq i32 %i.j, %i.l
  br i1 %.not12, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 96 ; 2 uses
  %.not19.not = icmp eq ptr %i.m, %i.c
  br i1 %.not19.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %select.unfold, %bb.a
  %.not19.lcssa = phi i1 [ false, %bb.a ], [ false, %select.unfold ], [ true, %bb.c ]
  ret i1 %.not19.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer21IsUnknownFieldIgnoredERKNS0_7MessageES5_RKNS2_13SpecificFieldERKSt6vectorIS6_SaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(89) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 2 uses
  %.not16.not = icmp eq ptr %i.b, %i.d
  br i1 %.not16.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.012.017 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.012.017, align 8, !tbaa !113 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(89) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8 ; 2 uses
  %.not.not = icmp eq ptr %i.j, %i.d
  %or.cond = select i1 %i.i, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.i, %.lr.ph ]
  ret i1 %.not.lcssa
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal22GetAnyFieldDescriptorsERKNS0_7MessageEPPKNS0_15FieldDescriptorES8_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK6google8protobuf10Reflection9GetStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8internal15ParseAnyTypeUrlESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64, ptr, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindMessageTypeByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120), i64, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite22ParsePartialFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEvT_SH_T0_(ptr %0, ptr %1) unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPKN6google8protobuf12UnknownFieldEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterINS4_4util12_GLOBAL__N_120UnknownFieldOrderingEEEEvT_SK_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
end_hunk_0
