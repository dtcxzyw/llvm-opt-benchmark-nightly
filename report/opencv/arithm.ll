Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/arithm?download=true
inline.NumInlined: 484
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE:bb.a
  br i1 %or.cond7, label %._crit_edge356, label %bb.ak

._crit_edge356:                                   ; preds = %bb.aj
  %.pre357 = load i32, ptr %7, align 8, !tbaa !47
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bd = invoke noundef zeroext i1 @_ZN2cvneERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.bb, ptr noundef nonnull align 4 dereferenceable(52) %i.bc)
          to label %bb.al unwind label %bb.ag

bb.al:                                            ; preds = %bb.ak
  %.pre358 = load i32, ptr %7, align 8, !tbaa !47 ; 4 uses
  br i1 %i.bd, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.be = load i32, ptr %9, align 8, !tbaa !47
  %i.bf = xor i32 %i.be, %.pre358
  %i.bg = and i32 %i.bf, 4095
  %.not211 = icmp eq i32 %i.bg, 0
  br i1 %.not211, label %._crit_edge, label %bb.an

._crit_edge:                                      ; preds = %bb.am
  br i1 %.0171, label %bb.av, label %bb.ba

bb.an:                                            ; preds = %._crit_edge356, %bb.am, %bb.al
  %i.bh = phi i32 [ %.pre357, %._crit_edge356 ], [ %.pre358, %bb.am ], [ %.pre358, %bb.al ]
  %i.bi = and i32 %i.bh, 4095
  %i.bj = invoke noundef zeroext i1 @_ZN2cv11checkScalarERKNS_3MatEiNS_11_InputArray8KindFlagES4_(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.bi, i32 noundef %i.o, i32 noundef %i.m)
          to label %bb.ao unwind label %bb.ag

bb.ao:                                            ; preds = %bb.an
  br i1 %i.bj, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -209, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 2318) #21
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

bb.at:                                            ; preds = %bb.aq
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.at
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !18
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269, %bb.as
  %.pn212 = phi { ptr, i32 } [ %i.bk, %bb.as ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %i.bl, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.da

bb.au:                                            ; preds = %bb.ao
  br i1 %.0171, label %._crit_edge359, label %bb.av

._crit_edge359:                                   ; preds = %bb.au
  %.pre360 = load i32, ptr %7, align 8, !tbaa !47
  br label %bb.ba

bb.av:                                            ; preds = %._crit_edge, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 2322) #21
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

bb.az:                                            ; preds = %bb.aw
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %14, align 8, !tbaa !17   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %bb.az
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !18
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272, %bb.ay
  %.pn214 = phi { ptr, i32 } [ %i.br, %bb.ay ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %i.bs, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.da

bb.ba:                                            ; preds = %._crit_edge359, %._crit_edge
  %i.by = phi i32 [ %.pre358, %._crit_edge ], [ %.pre360, %._crit_edge359 ]
  %i.bz = phi i64 [ 0, %._crit_edge ], [ 2, %._crit_edge359 ]
  %.0170304 = phi i1 [ false, %._crit_edge ], [ true, %._crit_edge359 ] ; 3 uses
  %.fr342 = freeze i32 %i.by                      ; 3 uses
  %i.ca = lshr i32 %.fr342, 5
  %i.cb = and i32 %i.ca, 127                      ; 3 uses
  %i.cc = add nuw nsw i32 %i.cb, 1                ; 7 uses
  %i.cd = and i32 %.fr342, 31                     ; 3 uses
  %i.ce = shl i32 %.fr342, 2
  %i.cf = and i32 %i.ce, 124
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 1275511473185297, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 15
  %i.ck = mul nuw nsw i32 %i.cj, %i.cc            ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64              ; 6 uses
  %i.cm = trunc nuw nsw i32 %i.ck to i16          ; 2 uses
  %.lhs.trunc = add nuw nsw i16 %i.cm, 1023
  %i.cn = udiv i16 %.lhs.trunc, %i.cm
  %.zext = zext nneg i16 %i.cn to i64
  invoke void @_ZNK2cv12_OutputArray14createSameSizeERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.co = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc275 unwind label %bb.bi

.noexc275:                                        ; preds = %bb.bb
  %i.cp = icmp eq i32 %i.co, 65536
  br i1 %i.cp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc275
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21, !noalias !162
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.cr)
          to label %_ZNK2cv11_InputArray6getMatEi.exit278 unwind label %bb.bi

bb.bd:                                            ; preds = %.noexc275
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit278 unwind label %bb.bi

_ZNK2cv11_InputArray6getMatEi.exit278:            ; preds = %bb.bc, %bb.bd
  %i.cs = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cvL14getInRangeFuncEiE10inRangeTab, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !9  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %7, ptr %i.a, align 16, !tbaa !38
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %16, ptr %i.cv, align 8, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.cw, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %7, ptr %i.b, align 16, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %16, ptr %i.cx, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %8, ptr %i.cy, align 16, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %9, ptr %i.cz, align 8, !tbaa !38
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.da, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %or.cond9 = and i1 %.0171, %.0170304            ; 2 uses
  %i.db = select i1 %or.cond9, ptr %i.a, ptr %i.b
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull %i.db, ptr noundef nonnull %i.c, i32 noundef -1)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit278
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !43
  %.fr343 = freeze i64 %i.dd                      ; 10 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.fr343, i64 %.zext) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.de = mul nuw nsw i64 %i.bz, %i.cl
  %i.df = zext nneg i32 %i.cc to i64              ; 46 uses
  %i.dg = add nuw nsw i64 %i.de, %i.df
  %i.dh = mul nuw nsw i64 %.sroa.speculated, %i.dg
  %i.di = shl nuw nsw i32 %i.cc, 3
  %23 = zext nneg i32 %i.di to i64
  %24 = add nuw nsw i64 %i.dh, %23                ; 2 uses
  %i.dj = add nuw nsw i64 %24, 128                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.dk, ptr %18, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not.i.i = icmp samesign ugt i64 %24, 904
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !32
  br i1 %.not.i.i, label %bb.bf, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.bf:                                            ; preds = %bb.be
  %i.dm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #23
          to label %.noexc279 unwind label %bb.bk ; 2 uses

.noexc279:                                        ; preds = %bb.bf
  store ptr %i.dm, ptr %18, align 8, !tbaa !31
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %.noexc279, %bb.be
  %i.dn = phi ptr [ %i.dm, %.noexc279 ], [ %i.dk, %bb.be ] ; 45 uses
  %i.do = mul nuw nsw i64 %.sroa.speculated, %i.df
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = add i64 %i.dq, 15
  %i.ds = and i64 %i.dr, -16
  %i.dt = inttoptr i64 %i.ds to ptr               ; 3 uses
  br i1 %or.cond9, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.du = mul nuw nsw i64 %.sroa.speculated, %i.cl ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = add i64 %i.dw, 15
  %i.dy = and i64 %i.dx, -16
  %i.dz = inttoptr i64 %i.dy to ptr               ; 3 uses
  %i.ea = load i32, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.eb = load i32, ptr %9, align 8, !tbaa !47
  %i.ec = xor i32 %i.eb, %i.ea
  %i.ed = and i32 %i.ec, 4095
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bq, label %bb.bl

bb.bh:                                            ; preds = %bb.ba
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bi:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit278
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.bk:                                            ; preds = %bb.bf
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit293

bb.bl:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 2349) #21
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.bp:                                            ; preds = %bb.bm
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.bp
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !18
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.bo
  %.pn216 = phi { ptr, i32 } [ %i.ej, %bb.bo ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %i.ek, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.split.us

bb.bq:                                            ; preds = %bb.bg
  %i.eq = and i32 %i.ea, 31                       ; 2 uses
  %i.er = icmp ne i32 %i.eq, %i.cd
  %i.es = icmp samesign ult i32 %i.cd, 4
  %or.cond13 = and i1 %i.es, %i.er
  br i1 %or.cond13, label %bb.br, label %bb.cl

bb.br:                                            ; preds = %bb.bq
  %i.et = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.du
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = add i64 %i.eu, 15
  %i.ew = and i64 %i.ev, -16
  %i.ex = inttoptr i64 %i.ew to ptr               ; 4 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.df ; 3 uses
  %i.ez = invoke noundef ptr @_ZN2cv14getConvertFuncEii(i32 noundef %i.eq, i32 noundef 4)
          to label %bb.bs unwind label %bb.bx     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !28
  %.sroa.0296.0.insert.insert = or disjoint i64 %i.df, 4294967296 ; 2 uses
  invoke void %i.ez(ptr noundef %i.fb, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef %i.ex, i64 noundef 1, i64 %.sroa.0296.0.insert.insert, ptr noundef null)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !28
  invoke void %i.ez(ptr noundef %i.fd, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef nonnull %i.ey, i64 noundef 1, i64 %.sroa.0296.0.insert.insert, ptr noundef null)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cvL9getMinValEiE3tab, i64 %i.cs
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !34
  %i.fg = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fh = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fg) ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cvL9getMaxValEiE3tab, i64 %i.cs
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !34
  %i.fk = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fl = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fk)
  %i.fm = add nsw i32 %i.fh, 1
  br label %bb.by

bb.bv:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %i.cc, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.ex, i64 noundef 0)
          to label %bb.cb unwind label %bb.cf

bb.bw:                                            ; preds = %bb.cm, %bb.cl
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.bx:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.by:                                            ; preds = %bb.bu, %bb.ca
  %indvars.iv = phi i64 [ 0, %bb.bu ], [ %indvars.iv.next, %bb.ca ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !36 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !36 ; 2 uses
  %i.ft = icmp sgt i32 %i.fq, %i.fs
  %i.fu = icmp sgt i32 %i.fq, %i.fl
  %or.cond251 = or i1 %i.fu, %i.ft
  %i.fv = icmp slt i32 %i.fs, %i.fh
  %or.cond252 = or i1 %i.fv, %or.cond251
  br i1 %or.cond252, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !36
  store i32 %i.fh, ptr %i.fr, align 4, !tbaa !36
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.df
  br i1 %exitcond.not, label %bb.bv, label %bb.by, !llvm.loop !144

bb.cb:                                            ; preds = %bb.bv
  %i.fw = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.cc unwind label %bb.cg     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.cc, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.ey, i64 noundef 0)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.fx = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.ce unwind label %bb.cj     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.cl

bb.cf:                                            ; preds = %bb.bv
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cb
  %i.fz = landingpad { ptr, i32 }
end_hunk_0
