Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_tiff?download=true
inline.NumInlined: 1328
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv11TiffDecoder8readDataERNS_3MatE:bb.a

bb.pg:                                            ; preds = %bb.pf
  %i.aqc = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.pi unwind label %bb.ph     ; 3 uses

bb.ph:                                            ; preds = %bb.pg
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1346

bb.pi:                                            ; preds = %bb.pg
  %.not792 = icmp eq ptr %i.aqc, null             ; 2 uses
  br i1 %.not792, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !97
  %i.aqg = icmp slt i32 %i.aqf, 3
  br i1 %i.aqg, label %bb.px, label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pi
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #21
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %97)
          to label %bb.pl unwind label %bb.pr

bb.pl:                                            ; preds = %bb.pk
  %i.aqh = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 2 uses
  %i.aqi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqh, ptr noundef nonnull @.str.7, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1132 unwind label %bb.ps ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1132: ; preds = %bb.pl
  %i.aqj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aqh, i32 noundef 1044)
          to label %bb.pm unwind label %bb.ps

bb.pm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1132
  %i.aqk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqj, ptr noundef nonnull @.str.66, i64 noundef 93)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1134 unwind label %bb.ps ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1134: ; preds = %bb.pm
  br i1 %.not792, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1134
  %i.aql = load ptr, ptr %i.aqc, align 8, !tbaa !98
  br label %bb.po

bb.po:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1134, %bb.pn
  %i.aqm = phi ptr [ %i.aql, %bb.pn ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1134 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #21
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %98, ptr noundef nonnull align 8 dereferenceable(128) %97)
          to label %bb.pp unwind label %bb.pt

bb.pp:                                            ; preds = %bb.po
  %i.aqn = load ptr, ptr %98, align 8, !tbaa !89
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.aqm, ptr noundef nonnull @.str.1, i32 noundef 1044, ptr noundef nonnull @__func__._ZN2cv11TiffDecoder8readDataERNS_3MatE, ptr noundef %i.aqn)
          to label %bb.pq unwind label %bb.pu

bb.pq:                                            ; preds = %bb.pp
  %i.aqo = load ptr, ptr %98, align 8, !tbaa !89  ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 2 uses
  %i.aqq = icmp eq ptr %i.aqo, %i.aqp
  br i1 %i.aqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1135: ; preds = %bb.pq
  %i.aqr = load i64, ptr %i.aqp, align 8, !tbaa !75
  %i.aqs = add i64 %i.aqr, 1
  call void @_ZdlPvm(ptr noundef %i.aqo, i64 noundef %i.aqs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1137: ; preds = %bb.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1135
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #21
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %97) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #21
  br label %bb.px

bb.pr:                                            ; preds = %bb.pk
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  br label %bb.pw

bb.ps:                                            ; preds = %bb.pm, %bb.pl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1132
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  br label %bb.pv

bb.pt:                                            ; preds = %bb.po
  %i.aqv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140

bb.pu:                                            ; preds = %bb.pp
  %i.aqw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqx = load ptr, ptr %98, align 8, !tbaa !89  ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 2 uses
  %i.aqz = icmp eq ptr %i.aqx, %i.aqy
  br i1 %i.aqz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138: ; preds = %bb.pu
  %i.ara = load i64, ptr %i.aqy, align 8, !tbaa !75
  %i.arb = add i64 %i.ara, 1
  call void @_ZdlPvm(ptr noundef %i.aqx, i64 noundef %i.arb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140: ; preds = %bb.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138, %bb.pt
  %.pn793 = phi { ptr, i32 } [ %i.aqv, %bb.pt ], [ %i.aqw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1138 ], [ %i.aqw, %bb.pu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #21
  br label %bb.pv

bb.pv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140, %bb.ps
  %.pn793.pn = phi { ptr, i32 } [ %.pn793, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1140 ], [ %i.aqu, %bb.ps ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %97) #21
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pr
  %.pn793.pn.pn = phi { ptr, i32 } [ %.pn793.pn, %bb.pv ], [ %i.aqt, %bb.pr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #21
  br label %.loopexit1346

bb.px:                                            ; preds = %bb.pj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1137
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %100)
          to label %bb.py unwind label %bb.qa

bb.py:                                            ; preds = %bb.px
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull @__func__._ZN2cv11TiffDecoder8readDataERNS_3MatE, ptr noundef nonnull @.str.1, i32 noundef 1044) #24
          to label %bb.pz unwind label %bb.qb

bb.pz:                                            ; preds = %bb.py
  unreachable

bb.qa:                                            ; preds = %bb.px
  %i.arc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143

bb.qb:                                            ; preds = %bb.py
  %i.ard = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.are = load ptr, ptr %99, align 8, !tbaa !89  ; 2 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 2 uses
  %i.arg = icmp eq ptr %i.are, %i.arf
  br i1 %i.arg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141: ; preds = %bb.qb
  %i.arh = load i64, ptr %i.arf, align 8, !tbaa !75
  %i.ari = add i64 %i.arh, 1
  call void @_ZdlPvm(ptr noundef %i.are, i64 noundef %i.ari) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1143: ; preds = %bb.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141, %bb.qa
  %.pn798 = phi { ptr, i32 } [ %i.arc, %bb.qa ], [ %i.ard, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1141 ], [ %i.ard, %bb.qb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #21
  br label %.loopexit1346

bb.qc:                                            ; preds = %bb.oh, %bb.pf, %bb.nh
  br i1 %i.xi, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.qc
  %i.arj = sext i32 %.05451437 to i64             ; 7 uses
  %.sroa.01278.0.insert.ext = zext i32 %.sroa.speculated to i64
  %.sroa.01278.0.insert.insert = or disjoint i64 %.sroa.01278.0.insert.ext, 4294967296 ; 5 uses
  %i.ark = sext i32 %.sroa.speculated to i64
  %i.arl = shl nsw i64 %i.ark, 1                  ; 2 uses
  br label %bb.qd

bb.qd:                                            ; preds = %.lr.ph, %bb.sq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.sq ] ; 10 uses
  %i.arm = mul nuw nsw i64 %i.tl, %indvars.iv
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.arm ; 11 uses
  br i1 %i.tu, label %bb.qe, label %_ZN2cvL13_unpack10To16EPKhS1_PtS2_m.exit

bb.qe:                                            ; preds = %bb.qd
  %i.aro = mul nuw nsw i64 %indvars.iv, %i.ts
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.aro ; 24 uses
  %i.arq = load i16, ptr %i.b, align 2, !tbaa !94
  switch i16 %i.arq, label %_ZN2cvL13_unpack10To16EPKhS1_PtS2_m.exit [
    i16 10, label %bb.qf
    i16 12, label %bb.qs
    i16 14, label %bb.qz
  ]

bb.qf:                                            ; preds = %bb.qe
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.tl ; 5 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.ts
  %i.art = load i16, ptr %i.c, align 2, !tbaa !94
  %i.aru = zext i16 %i.art to i32
  %i.arv = load i32, ptr %i.e, align 4, !tbaa !76
  %i.arw = mul i32 %i.arv, %i.aru
  %i.arx = zext i32 %i.arw to i64                 ; 2 uses
  %i.ary = lshr i64 %i.arx, 2
  %i.arz = ptrtoint ptr %i.ars to i64
  %i.asa = call i64 @llvm.umin.i64(i64 %i.vq, i64 %i.ary)
  %.sroa.speculated199.i = call i64 @llvm.umin.i64(i64 %i.vn, i64 %i.asa) ; 3 uses
  %.not77.i = icmp eq i64 %.sroa.speculated199.i, 0
  br i1 %.not77.i, label %._crit_edge.i, label %.preheader58.i

.preheader58.i:                                   ; preds = %bb.qf, %.preheader58.i
  %.04164.i = phi i64 [ %i.asq, %.preheader58.i ], [ 0, %bb.qf ]
  %.04263.i = phi ptr [ %i.aso, %.preheader58.i ], [ %i.arn, %bb.qf ] ; 6 uses
  %.04462.i = phi ptr [ %i.asp, %.preheader58.i ], [ %i.arp, %bb.qf ] ; 2 uses
  %133 = getelementptr inbounds nuw i8, ptr %.04263.i, i64 1
  %134 = load i8, ptr %.04263.i, align 1, !tbaa !75
  %135 = getelementptr inbounds nuw i8, ptr %.04263.i, i64 2
  %136 = load i8, ptr %133, align 1, !tbaa !75
  %i.asb = getelementptr inbounds nuw i8, ptr %.04263.i, i64 3
  %137 = load i8, ptr %135, align 1, !tbaa !75
  %i.asc = getelementptr inbounds nuw i8, ptr %.04263.i, i64 4
  %138 = load i8, ptr %i.asb, align 1, !tbaa !75
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !75
  %.sroa.17.0.insert.ext156.i = zext i8 %134 to i64
  %.sroa.17.0.insert.shift157.i = shl nuw nsw i64 %.sroa.17.0.insert.ext156.i, 32
  %.sroa.15.0.insert.ext137.i = zext i8 %136 to i64
  %.sroa.15.0.insert.shift138.i = shl nuw nsw i64 %.sroa.15.0.insert.ext137.i, 24
  %.sroa.15.0.insert.insert140.i = or disjoint i64 %.sroa.15.0.insert.shift138.i, %.sroa.17.0.insert.shift157.i ; 2 uses
  %.sroa.13.0.insert.ext118.i = zext i8 %137 to i64
  %.sroa.13.0.insert.shift119.i = shl nuw nsw i64 %.sroa.13.0.insert.ext118.i, 16
  %.sroa.13.0.insert.insert121.i = or disjoint i64 %.sroa.15.0.insert.insert140.i, %.sroa.13.0.insert.shift119.i ; 2 uses
  %.sroa.11.0.insert.ext99.i = zext i8 %138 to i64
  %.sroa.11.0.insert.shift100.i = shl nuw nsw i64 %.sroa.11.0.insert.ext99.i, 8 ; 2 uses
  %.sroa.11.0.insert.insert102.i = or disjoint i64 %.sroa.13.0.insert.insert121.i, %.sroa.11.0.insert.shift100.i
  %.sroa.0.0.insert.ext84.i = zext i8 %i.asd to i64
  %.sroa.0.0.insert.insert86.i = or disjoint i64 %.sroa.11.0.insert.shift100.i, %.sroa.0.0.insert.ext84.i
  %i.ase = trunc nuw i64 %.sroa.0.0.insert.insert86.i to i16
  %i.asf = lshr i64 %.sroa.11.0.insert.insert102.i, 10
  %i.asg = trunc i64 %i.asf to i16
  %i.ash = lshr i64 %.sroa.13.0.insert.insert121.i, 20
  %i.asi = trunc i64 %i.ash to i16
  %139 = lshr i64 %.sroa.15.0.insert.insert140.i, 30
  %140 = trunc nuw nsw i64 %139 to i16
  %i.asj = insertelement <4 x i16> poison, i16 %140, i64 0
  %i.ask = insertelement <4 x i16> %i.asj, i16 %i.asi, i64 1
  %i.asl = insertelement <4 x i16> %i.ask, i16 %i.asg, i64 2
  %i.asm = insertelement <4 x i16> %i.asl, i16 %i.ase, i64 3
  %i.asn = and <4 x i16> %i.asm, <i16 -1, i16 1023, i16 1023, i16 1023>
  store <4 x i16> %i.asn, ptr %.04462.i, align 2, !tbaa !94
  %i.aso = getelementptr inbounds nuw i8, ptr %.04263.i, i64 5 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %.04462.i, i64 8 ; 3 uses
  %i.asq = add nuw nsw i64 %.04164.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.asq, %.sroa.speculated199.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.preheader58.i, !llvm.loop !181

._crit_edge.loopexit.i:                           ; preds = %.preheader58.i
  %.pre.i = ptrtoint ptr %i.asp to i64
  %.pre202.i = sub i64 %i.arz, %.pre.i
  %.pre204.i = ashr exact i64 %.pre202.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.qf
  %.pre-phi205.i = phi i64 [ %.pre204.i, %._crit_edge.loopexit.i ], [ %i.vm, %bb.qf ]
  %.044.lcssa.i = phi ptr [ %i.asp, %._crit_edge.loopexit.i ], [ %i.arp, %bb.qf ]
  %.042.lcssa.i = phi ptr [ %i.aso, %._crit_edge.loopexit.i ], [ %i.arn, %bb.qf ]
  %i.asr = shl nuw nsw i64 %.sroa.speculated199.i, 2
  %i.ass = sub nsw i64 %i.arx, %i.asr
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.pre-phi205.i, i64 %i.ass) ; 2 uses
  %.not.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not.i, label %_ZN2cvL13_unpack10To16EPKhS1_PtS2_m.exit, label %.preheader56.i

.preheader56.i:                                   ; preds = %._crit_edge.i, %.loopexit.i
  %.03774.i = phi i64 [ %i.auj, %.loopexit.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 5 uses
  %.273.i = phi ptr [ %.4.4.i, %.loopexit.i ], [ %.042.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.14572.i = phi ptr [ %i.aui, %.loopexit.i ], [ %.044.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.ast = icmp ult ptr %.273.i, %i.arr
  br i1 %i.ast, label %bb.qg, label %bb.qh

bb.qg:                                            ; preds = %.preheader56.i
  %i.asu = getelementptr inbounds nuw i8, ptr %.273.i, i64 1
  %i.asv = load i8, ptr %.273.i, align 1, !tbaa !75
  %i.asw = zext i8 %i.asv to i64
  %i.asx = shl nuw nsw i64 %i.asw, 32
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %.preheader56.i
  %.4.i = phi ptr [ %i.asu, %bb.qg ], [ %.273.i, %.preheader56.i ] ; 4 uses
  %.sroa.17.0.insert.ext.i = phi i64 [ %i.asx, %bb.qg ], [ 0, %.preheader56.i ]
  %i.asy = icmp ult ptr %.4.i, %i.arr
  br i1 %i.asy, label %bb.qi, label %bb.qj

bb.qi:                                            ; preds = %bb.qh
  %i.asz = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.ata = load i8, ptr %.4.i, align 1, !tbaa !75
  %i.atb = zext i8 %i.ata to i64
  %i.atc = shl nuw nsw i64 %i.atb, 24
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  %.4.1.i = phi ptr [ %i.asz, %bb.qi ], [ %.4.i, %bb.qh ] ; 4 uses
  %.sroa.15.0.insert.ext142.i = phi i64 [ %i.atc, %bb.qi ], [ 0, %bb.qh ] ; 2 uses
  %i.atd = icmp ult ptr %.4.1.i, %i.arr
  br i1 %i.atd, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %bb.qj
  %i.ate = getelementptr inbounds nuw i8, ptr %.4.1.i, i64 1
  %i.atf = load i8, ptr %.4.1.i, align 1, !tbaa !75
  %i.atg = zext i8 %i.atf to i64
  %i.ath = shl nuw nsw i64 %i.atg, 16
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  %.4.2.i = phi ptr [ %i.ate, %bb.qk ], [ %.4.1.i, %bb.qj ] ; 4 uses
  %.sroa.13.0.insert.ext128.i = phi i64 [ %i.ath, %bb.qk ], [ 0, %bb.qj ] ; 2 uses
  %i.ati = icmp ult ptr %.4.2.i, %i.arr
  br i1 %i.ati, label %bb.qm, label %bb.qn

bb.qm:                                            ; preds = %bb.ql
  %i.atj = getelementptr inbounds nuw i8, ptr %.4.2.i, i64 1
  %i.atk = load i8, ptr %.4.2.i, align 1, !tbaa !75
  %i.atl = zext i8 %i.atk to i64
  %i.atm = shl nuw nsw i64 %i.atl, 8
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.ql
  %.4.3.i = phi ptr [ %i.atj, %bb.qm ], [ %.4.2.i, %bb.ql ] ; 4 uses
  %.sroa.11.0.insert.ext114.i = phi i64 [ %i.atm, %bb.qm ], [ 0, %bb.ql ] ; 3 uses
  %i.atn = icmp ult ptr %.4.3.i, %i.arr
  br i1 %i.atn, label %bb.qo, label %.preheader.i

bb.qo:                                            ; preds = %bb.qn
  %i.ato = getelementptr inbounds nuw i8, ptr %.4.3.i, i64 1
  %i.atp = load i8, ptr %.4.3.i, align 1, !tbaa !75
  %i.atq = zext i8 %i.atp to i64
  %i.atr = or disjoint i64 %.sroa.11.0.insert.ext114.i, %i.atq
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.qo, %bb.qn
  %.4.4.i = phi ptr [ %i.ato, %bb.qo ], [ %.4.3.i, %bb.qn ]
  %.sroa.0.0.insert.ext96.i = phi i64 [ %i.atr, %bb.qo ], [ %.sroa.11.0.insert.ext114.i, %bb.qn ]
  %.not49.i = icmp eq i64 %.03774.i, 0
  br i1 %.not49.i, label %_ZN2cvL13_unpack10To16EPKhS1_PtS2_m.exit, label %bb.qp, !llvm.loop !182

bb.qp:                                            ; preds = %.preheader.i
  %.sroa.15.0.insert.insert.i = or i64 %.sroa.15.0.insert.ext142.i, %.sroa.17.0.insert.ext.i
  %i.ats = lshr i64 %.sroa.15.0.insert.insert.i, 30
  %i.att = trunc nuw nsw i64 %i.ats to i16
  store i16 %i.att, ptr %.14572.i, align 2, !tbaa !94
  %i.atu = icmp eq i64 %.03774.i, 1
  br i1 %i.atu, label %_ZN2cvL13_unpack10To16EPKhS1_PtS2_m.exit, label %bb.qq, !llvm.loop !182

bb.qq:                                            ; preds = %bb.qp
  %i.atv = getelementptr inbounds nuw i8, ptr %.14572.i, i64 2
  %.sroa.13.0.insert.insert126.i = or i64 %.sroa.13.0.insert.ext128.i, %.sroa.15.0.insert.ext142.i
  %i.atw = lshr i64 %.sroa.13.0.insert.insert126.i, 20
  %i.atx = trunc nuw nsw i64 %i.atw to i16
  %i.aty = and i16 %i.atx, 1023
  store i16 %i.aty, ptr %i.atv, align 2, !tbaa !94
  %i.atz = icmp ult i64 %.03774.i, 3
  br i1 %i.atz, label %_ZN2cvL13_unpack10To16EPKhS1_PtS2_m.exit, label %bb.qr, !llvm.loop !182

bb.qr:                                            ; preds = %bb.qq
  %i.aua = getelementptr inbounds nuw i8, ptr %.14572.i, i64 4
  %.sroa.11.0.insert.insert112.i = or i64 %.sroa.11.0.insert.ext114.i, %.sroa.13.0.insert.ext128.i
  %i.aub = lshr i64 %.sroa.11.0.insert.insert112.i, 10
  %i.auc = trunc nuw nsw i64 %i.aub to i16
  %i.aud = and i16 %i.auc, 1023
  store i16 %i.aud, ptr %i.aua, align 2, !tbaa !94
  %i.aue = icmp eq i64 %.03774.i, 3
  br i1 %i.aue, label %_ZN2cvL13_unpack10To16EPKhS1_PtS2_m.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.qr
  %i.auf = getelementptr inbounds nuw i8, ptr %.14572.i, i64 6
  %i.aug = trunc nuw i64 %.sroa.0.0.insert.ext96.i to i16
  %i.auh = and i16 %i.aug, 1023
  %i.aui = getelementptr inbounds nuw i8, ptr %.14572.i, i64 8
  store i16 %i.auh, ptr %i.auf, align 2, !tbaa !94
  %i.auj = add i64 %.03774.i, -4
  br label %.preheader56.i, !llvm.loop !182

bb.qs:                                            ; preds = %bb.qe
  %i.auk = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.tl ; 3 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.ts
  %i.aum = load i16, ptr %i.c, align 2, !tbaa !94
  %i.aun = zext i16 %i.aum to i32
  %i.auo = load i32, ptr %i.e, align 4, !tbaa !76
  %i.aup = mul i32 %i.auo, %i.aun
  %i.auq = zext i32 %i.aup to i64                 ; 2 uses
  %i.aur = lshr i64 %i.auq, 1
  %i.aus = ptrtoint ptr %i.aul to i64
  %i.aut = call i64 @llvm.umin.i64(i64 %i.vo, i64 %i.aur)
  %.sroa.speculated118.i = call i64 @llvm.umin.i64(i64 %i.vp, i64 %i.aut) ; 6 uses
  %.not77.i1145 = icmp eq i64 %.sroa.speculated118.i, 0
  br i1 %.not77.i1145, label %._crit_edge.i1155, label %.preheader58.i1146.preheader

.preheader58.i1146.preheader:                     ; preds = %bb.qs
  %xtraiter = and i64 %.sroa.speculated118.i, 1
  %i.auu = icmp eq i64 %.sroa.speculated118.i, 1
  br i1 %i.auu, label %.preheader58.i1146.epil.preheader, label %.preheader58.i1146.preheader.new

.preheader58.i1146.preheader.new:                 ; preds = %.preheader58.i1146.preheader
  %unroll_iter = and i64 %.sroa.speculated118.i, 134217726
  br label %.preheader58.i1146

.preheader58.i1146:                               ; preds = %.preheader58.i1146, %.preheader58.i1146.preheader.new
  %.04263.i1148 = phi ptr [ %i.arn, %.preheader58.i1146.preheader.new ], [ %i.avr, %.preheader58.i1146 ] ; 7 uses
  %.04462.i1149 = phi ptr [ %i.arp, %.preheader58.i1146.preheader.new ], [ %i.avs, %.preheader58.i1146 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader58.i1146.preheader.new ], [ %niter.next.1, %.preheader58.i1146 ]
  %i.auv = getelementptr inbounds nuw i8, ptr %.04263.i1148, i64 1
  %i.auw = load i8, ptr %.04263.i1148, align 1, !tbaa !75
  %i.aux = getelementptr inbounds nuw i8, ptr %.04263.i1148, i64 2
  %i.auy = load i8, ptr %i.auv, align 1, !tbaa !75
  %i.auz = load i8, ptr %i.aux, align 1, !tbaa !75
  %.sroa.11.0.insert.ext99.i1150 = zext i8 %i.auw to i32
  %.sroa.11.0.insert.shift100.i1151 = shl nuw nsw i32 %.sroa.11.0.insert.ext99.i1150, 16
  %.sroa.9.0.insert.ext90.i = zext i8 %i.auy to i32
  %.sroa.9.0.insert.shift91.i = shl nuw nsw i32 %.sroa.9.0.insert.ext90.i, 8 ; 2 uses
  %.sroa.9.0.insert.insert93.i = or disjoint i32 %.sroa.9.0.insert.shift91.i, %.sroa.11.0.insert.shift100.i1151
  %.sroa.0.0.insert.ext83.i = zext i8 %i.auz to i32
  %.sroa.0.0.insert.insert85.i = or disjoint i32 %.sroa.9.0.insert.shift91.i, %.sroa.0.0.insert.ext83.i
  %i.ava = trunc nuw i32 %.sroa.0.0.insert.insert85.i to i16
  %i.avb = and i16 %i.ava, 4095
  %i.avc = getelementptr inbounds nuw i8, ptr %.04462.i1149, i64 2
  store i16 %i.avb, ptr %i.avc, align 2, !tbaa !94
  %i.avd = lshr i32 %.sroa.9.0.insert.insert93.i, 12
  %i.ave = trunc nuw nsw i32 %i.avd to i16
  store i16 %i.ave, ptr %.04462.i1149, align 2, !tbaa !94
  %i.avf = getelementptr inbounds nuw i8, ptr %.04263.i1148, i64 3
  %i.avg = getelementptr inbounds nuw i8, ptr %.04462.i1149, i64 4
  %i.avh = getelementptr inbounds nuw i8, ptr %.04263.i1148, i64 4
  %i.avi = load i8, ptr %i.avf, align 1, !tbaa !75
  %i.avj = getelementptr inbounds nuw i8, ptr %.04263.i1148, i64 5
  %i.avk = load i8, ptr %i.avh, align 1, !tbaa !75
  %i.avl = load i8, ptr %i.avj, align 1, !tbaa !75
  %.sroa.11.0.insert.ext99.i1150.1 = zext i8 %i.avi to i32
  %.sroa.11.0.insert.shift100.i1151.1 = shl nuw nsw i32 %.sroa.11.0.insert.ext99.i1150.1, 16
  %.sroa.9.0.insert.ext90.i.1 = zext i8 %i.avk to i32
  %.sroa.9.0.insert.shift91.i.1 = shl nuw nsw i32 %.sroa.9.0.insert.ext90.i.1, 8 ; 2 uses
  %.sroa.9.0.insert.insert93.i.1 = or disjoint i32 %.sroa.9.0.insert.shift91.i.1, %.sroa.11.0.insert.shift100.i1151.1
  %.sroa.0.0.insert.ext83.i.1 = zext i8 %i.avl to i32
  %.sroa.0.0.insert.insert85.i.1 = or disjoint i32 %.sroa.9.0.insert.shift91.i.1, %.sroa.0.0.insert.ext83.i.1
  %i.avm = trunc nuw i32 %.sroa.0.0.insert.insert85.i.1 to i16
  %i.avn = and i16 %i.avm, 4095
end_hunk_0
begin_hunk_1_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11TiffEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11TiffEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv16BaseImageEncoderD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11TiffEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv11TiffEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11TiffEncoderESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !153  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !75
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #21
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775696
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.156) #24
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 208                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 44343134792571037)
  %i.l = select i1 %i.j, i64 44343134792571037, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 208                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #21
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #21
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !286

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN2cv3MatEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 208 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.v, %.lr.ph.i.i.i27 ], [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i29 = phi ptr [ %i.u, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i29) #21
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i29) #21
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 208 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !286

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i27 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #23
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !84
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !86
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #21 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #22
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN2cv11TiffDecoder5closeEv, null, null, ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !82}
!4 = distinct !{!4, !82}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !18, i64 8, !9, i64 16}
!20 = !{!"p1 _ZTSN2cv12MatAllocatorE", !15, i64 0}
!21 = !{!"p1 _ZTSN2cv8UMatDataE", !15, i64 0}
!22 = !{!"_ZTSN2cv10DataLayoutE", !9, i64 0}
!23 = !{!"_ZTSN2cv8MatShapeE", !10, i64 0, !22, i64 4, !10, i64 8, !9, i64 12}
!24 = !{!"_ZTSN2cv7MatStepE", !9, i64 0}
!25 = !{!"_ZTSN2cv3MatE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !20, i64 56, !21, i64 64, !23, i64 72, !24, i64 128}
!26 = !{!"bool", !9, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIhSaIhEE", !29, i64 0}
!31 = !{!"_ZTSSt4lessIiE"}
!32 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !31, i64 0}
!33 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!34 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!35 = !{!"_ZTSSt18_Rb_tree_node_base", !33, i64 0, !34, i64 8, !34, i64 16, !34, i64 24}
!36 = !{!"_ZTSSt15_Rb_tree_header", !35, i64 0, !18, i64 32}
!37 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !32, i64 0, !36, i64 8}
!38 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE", !37, i64 0}
!39 = !{!"_ZTSSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE", !38, i64 0}
!40 = !{!"_ZTSN2cv12Endianness_tE", !9, i64 0}
!41 = !{!"_ZTSN2cv10ExifReaderE", !30, i64 0, !39, i64 24, !40, i64 72}
!42 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !9, i64 0}
!43 = !{!"_ZTSN2cv3VecIdLi4EEE", !42, i64 0}
!44 = !{!"_ZTSN2cv7Scalar_IdEE", !43, i64 0}
!45 = !{!"p1 int", !15, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIiSaIiEE", !48, i64 0}
!50 = !{!"p1 _ZTSN2cv3MatE", !15, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !53, i64 0}
!55 = !{!"_ZTSN2cv9AnimationE", !10, i64 0, !44, i64 8, !49, i64 40, !54, i64 64, !25, i64 88}
!56 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !15, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSN2cv16BaseImageDecoderE", !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !19, i64 24, !19, i64 56, !25, i64 88, !26, i64 296, !26, i64 297, !41, i64 304, !18, i64 384, !55, i64 392, !10, i64 688, !60, i64 696}
!62 = !{!61, !26, i64 296}
!63 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!64 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0}
!65 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0, !64, i64 8}
!66 = !{!"_ZTSSt10shared_ptrIvE", !65, i64 0}
!67 = !{!"_ZTSN2cv3PtrIvEE", !66, i64 0}
!68 = !{!"_ZTSN2cv11TiffDecoderE", !61, i64 0, !67, i64 720, !26, i64 736, !18, i64 744}
!69 = !{!68, !18, i64 744}
!70 = !{!15, !15, i64 0}
!71 = !{!64, !63, i64 0}
!72 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!73 = !{!72, !10, i64 8}
!74 = !{!72, !10, i64 12}
!75 = !{!9, !9, i64 0}
!76 = !{!10, !10, i64 0}
!77 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!78 = !{!57, !56, i64 0}
!79 = !{!57, !56, i64 8}
!80 = !{!27, !16, i64 0}
!81 = !{!27, !16, i64 16}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!57, !56, i64 16}
!84 = !{!51, !50, i64 0}
!85 = !{!51, !50, i64 8}
!86 = !{!51, !50, i64 16}
!87 = !{!46, !45, i64 0}
!88 = !{!46, !45, i64 16}
!89 = !{!19, !16, i64 0}
!90 = !{!19, !18, i64 8}
!91 = !{!65, !15, i64 0}
!92 = !{!"p1 long", !15, i64 0}
!93 = !{!"short", !9, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"_ZTSN2cv5utils7logging8LogLevelE", !9, i64 0}
!96 = !{!"_ZTSN2cv5utils7logging6LogTagE", !16, i64 0, !95, i64 8}
!97 = !{!96, !95, i64 8}
!98 = !{!96, !16, i64 0}
!99 = !{!61, !10, i64 8}
!100 = !{!61, !10, i64 12}
!101 = !{!68, !26, i64 736}
!102 = !{!61, !10, i64 16}
!103 = !{!"_ZTSN2cv20TiffDecoderBufHelperE", !50, i64 0, !92, i64 8}
!104 = !{!103, !50, i64 0}
!105 = !{}
!106 = !{i64 8}
!107 = !{!25, !10, i64 12}
!108 = !{!25, !10, i64 8}
!109 = !{!25, !10, i64 0}
!110 = !{!103, !92, i64 8}
!111 = !{!18, !18, i64 0}
!112 = !{!25, !16, i64 24}
!113 = !{!17, !16, i64 0}
!114 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!115 = !{!"_ZTSSt6locale", !114, i64 0}
!116 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !115, i64 56}
!117 = !{!116, !16, i64 40}
!118 = !{!116, !16, i64 32}
!119 = !{!"_ZTSSi", !18, i64 8}
!120 = !{!119, !18, i64 8}
!121 = !{!"_ZTSN2cv10AutoBufferIhLm1032EEE", !16, i64 0, !18, i64 8, !9, i64 16}
!122 = !{!121, !16, i64 0}
!123 = !{!121, !18, i64 8}
!124 = !{!"_ZTSN2cv5Rect_IiEE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!125 = !{!124, !10, i64 0}
!126 = !{!124, !10, i64 4}
!127 = !{!124, !10, i64 8}
!128 = !{!124, !10, i64 12}
!129 = !{!"_ZTSN2cv5Size_IiEE", !10, i64 0, !10, i64 4}
!130 = !{!129, !10, i64 0}
!131 = !{!129, !10, i64 4}
!132 = !{!"_ZTSN2cv11_InputArrayE", !10, i64 0, !15, i64 8, !129, i64 16}
!133 = !{!132, !10, i64 0}
!134 = !{!132, !15, i64 8}
!135 = !{!46, !45, i64 8}
!136 = !{!"_ZTSSt18_Bit_iterator_base", !92, i64 0, !10, i64 8}
!137 = !{!"_ZTSSt13_Bit_iterator", !136, i64 0}
!138 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !137, i64 0, !137, i64 16, !92, i64 32}
!139 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !138, i64 0}
!140 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !139, i64 0}
!141 = !{!"_ZTSSt6vectorIbSaIbEE", !140, i64 0}
!142 = !{!"_ZTSN2cv16BaseImageEncoderE", !60, i64 8, !141, i64 32, !19, i64 72, !19, i64 104, !56, i64 136, !26, i64 144, !19, i64 152, !49, i64 184}
!143 = !{!"_ZTSN2cv20TiffEncoderBufHelperE", !56, i64 0, !18, i64 8}
!144 = !{!143, !56, i64 0}
!145 = !{!143, !18, i64 8}
!146 = !{!"_ZTSSt14_Sp_ebo_helperILi0EPFvPvELb0EE", !15, i64 0}
!147 = !{!146, !15, i64 0}
!148 = !{!"p1 _ZTS4tiff", !15, i64 0}
!149 = !{!"_ZTSNSt19_Sp_counted_deleterIP4tiffPFvPvESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !146, i64 0, !148, i64 8}
!150 = !{!149, !148, i64 8}
!151 = !{!27, !16, i64 8}
!152 = !{!"_ZTSSt9type_info", !16, i64 8}
!153 = !{!152, !16, i64 8}
!154 = distinct !{!154, !"_ZN2cvL7makePtrINS_11TiffDecoderEJEEENS_3PtrIT_EEDpRKT0_"}
!155 = distinct !{!155, !154, !"_ZN2cvL7makePtrINS_11TiffDecoderEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!156 = distinct !{!156, !"_ZSt11make_sharedIN2cv11TiffDecoderEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!157 = distinct !{!157, !156, !"_ZSt11make_sharedIN2cv11TiffDecoderEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!158 = distinct !{null, null, null, null, null}
!159 = distinct !{null, null, null, null, null, null}
!160 = !{!157, !155}
!161 = !{!"p1 _ZTSN2cv16BaseImageDecoderE", !15, i64 0}
!162 = !{!"_ZTSSt12__shared_ptrIN2cv16BaseImageDecoderELN9__gnu_cxx12_Lock_policyE2EE", !161, i64 0, !64, i64 8}
!163 = !{!162, !161, i64 0}
!164 = !{!50, !50, i64 0}
!165 = !{!92, !92, i64 0}
!166 = !{!61, !18, i64 384}
end_hunk_1
