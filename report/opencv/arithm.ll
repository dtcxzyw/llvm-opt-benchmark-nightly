Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/arithm?download=true
inline.NumInlined: 484
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv7inRangeERKNS_11_InputArrayES2_S2_RKNS_12_OutputArrayE:bb.a
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
  %.pre360 = load i32, ptr %7, align 8, !tbaa !46
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
  store ptr %7, ptr %i.a, align 16, !tbaa !37
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %16, ptr %i.cv, align 8, !tbaa !37
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.cw, align 16, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %7, ptr %i.b, align 16, !tbaa !37
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %16, ptr %i.cx, align 8, !tbaa !37
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %8, ptr %i.cy, align 16, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %9, ptr %i.cz, align 8, !tbaa !37
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.da, align 16, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %or.cond9 = and i1 %.0171, %.0170304            ; 2 uses
  %i.db = select i1 %or.cond9, ptr %i.a, ptr %i.b
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull %i.db, ptr noundef nonnull %i.c, i32 noundef -1)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit278
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !42
  %.fr343 = freeze i64 %i.dd                      ; 10 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.fr343, i64 %.zext) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.de = mul nuw nsw i64 %i.bz, %i.cl
  %i.df = zext nneg i32 %i.cc to i64              ; 46 uses
  %i.dg = add nuw nsw i64 %i.de, %i.df
  %i.dh = mul nuw nsw i64 %.sroa.speculated, %i.dg
  %i.di = shl nuw nsw i32 %i.cc, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dh, %i.dj            ; 2 uses
  %i.dl = add nuw nsw i64 %i.dk, 128              ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.dm, ptr %18, align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not.i.i = icmp samesign ugt i64 %i.dk, 904
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !32
  br i1 %.not.i.i, label %bb.bf, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.bf:                                            ; preds = %bb.be
  %i.do = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dl) #23
          to label %.noexc279 unwind label %bb.bk ; 2 uses

.noexc279:                                        ; preds = %bb.bf
  store ptr %i.do, ptr %18, align 8, !tbaa !31
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %.noexc279, %bb.be
  %i.dp = phi ptr [ %i.do, %.noexc279 ], [ %i.dm, %bb.be ] ; 48 uses
  %i.dq = mul nuw nsw i64 %.sroa.speculated, %i.df
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = add i64 %i.ds, 15
  %i.du = and i64 %i.dt, -16
  %i.dv = inttoptr i64 %i.du to ptr               ; 3 uses
  br i1 %or.cond9, label %bb.bg, label %.critedge

bb.bg:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.dw = mul nuw nsw i64 %.sroa.speculated, %i.cl ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = add i64 %i.dy, 15
  %i.ea = and i64 %i.dz, -16
  %i.eb = inttoptr i64 %i.ea to ptr               ; 3 uses
  %i.ec = load i32, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.ed = load i32, ptr %9, align 8, !tbaa !46
  %i.ee = xor i32 %i.ed, %i.ec
  %i.ef = and i32 %i.ee, 4095
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.bq, label %bb.bl

bb.bh:                                            ; preds = %bb.ba
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bi:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit278
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.bk:                                            ; preds = %bb.bf
  %i.ek = landingpad { ptr, i32 }
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
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

bb.bp:                                            ; preds = %bb.bm
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %19, align 8, !tbaa !17   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.bp
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !18
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280, %bb.bo
  %.pn216 = phi { ptr, i32 } [ %i.el, %bb.bo ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ], [ %i.em, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.split.us

bb.bq:                                            ; preds = %bb.bg
  %i.es = and i32 %i.ec, 31                       ; 2 uses
  %i.et = icmp ne i32 %i.es, %i.cd
  %i.eu = icmp samesign ult i32 %i.cd, 4
  %or.cond13 = and i1 %i.eu, %i.et
  br i1 %or.cond13, label %bb.br, label %bb.cl

bb.br:                                            ; preds = %bb.bq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dw
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = add i64 %i.ew, 15
  %i.ey = and i64 %i.ex, -16
  %i.ez = inttoptr i64 %i.ey to ptr               ; 4 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.df ; 3 uses
  %i.fb = invoke noundef ptr @_ZN2cv14getConvertFuncEii(i32 noundef %i.es, i32 noundef 4)
          to label %bb.bs unwind label %bb.bx     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !28
  %.sroa.0296.0.insert.insert = or disjoint i64 %i.df, 4294967296 ; 2 uses
  invoke void %i.fb(ptr noundef %i.fd, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef %i.ez, i64 noundef 1, i64 %.sroa.0296.0.insert.insert, ptr noundef null)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !28
  invoke void %i.fb(ptr noundef %i.ff, i64 noundef 1, ptr noundef null, i64 noundef 1, ptr noundef nonnull %i.fa, i64 noundef 1, i64 %.sroa.0296.0.insert.insert, ptr noundef null)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cvL9getMinValEiE3tab, i64 %i.cs
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !34
  %i.fi = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fj = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fi) ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cvL9getMaxValEiE3tab, i64 %i.cs
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !34
  %i.fm = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fn = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fm)
  %i.fo = add nsw i32 %i.fj, 1
  br label %bb.by

bb.bv:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef %i.cc, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.ez, i64 noundef 0)
          to label %bb.cb unwind label %bb.cf

bb.bw:                                            ; preds = %bb.cm, %bb.cl
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.bx:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

bb.by:                                            ; preds = %bb.bu, %bb.ca
  %indvars.iv = phi i64 [ 0, %bb.bu ], [ %indvars.iv.next, %bb.ca ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !49 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !49 ; 2 uses
  %i.fv = icmp sgt i32 %i.fs, %i.fu
  %i.fw = icmp sgt i32 %i.fs, %i.fn
  %or.cond251 = or i1 %i.fw, %i.fv
  %i.fx = icmp slt i32 %i.fu, %i.fj
  %or.cond252 = or i1 %i.fx, %or.cond251
  br i1 %or.cond252, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 %i.fo, ptr %i.fr, align 4, !tbaa !49
  store i32 %i.fj, ptr %i.ft, align 4, !tbaa !49
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.df
  br i1 %exitcond.not, label %bb.bv, label %bb.by, !llvm.loop !144

bb.cb:                                            ; preds = %bb.bv
  %i.fy = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.cc unwind label %bb.cg     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.cc, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.fa, i64 noundef 0)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.fz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.ce unwind label %bb.cj     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.cl

bb.cf:                                            ; preds = %bb.bv
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cb
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn218 = phi { ptr, i32 } [ %i.gb, %bb.cg ], [ %i.ga, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %.split.us

bb.ci:                                            ; preds = %bb.cc
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.cd
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn220 = phi { ptr, i32 } [ %i.gd, %bb.cj ], [ %i.gc, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %.split.us

bb.cl:                                            ; preds = %bb.ce, %bb.bq
  %i.ge = load i32, ptr %7, align 8, !tbaa !46
  %i.gf = and i32 %i.ge, 4095
  invoke void @_ZN2cv22convertAndUnrollScalarERKNS_3MatEiPhm(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %i.gf, ptr noundef %i.dv, i64 noundef %.sroa.speculated)
          to label %bb.cm unwind label %bb.bw

bb.cm:                                            ; preds = %bb.cl
  %i.gg = load i32, ptr %7, align 8, !tbaa !46
  %i.gh = and i32 %i.gg, 4095
  invoke void @_ZN2cv22convertAndUnrollScalarERKNS_3MatEiPhm(ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef %i.gh, ptr noundef %i.eb, i64 noundef %.sroa.speculated)
          to label %.critedge unwind label %bb.bw

.critedge:                                        ; preds = %bb.cm, %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %.0169 = phi ptr [ null, %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit ], [ %i.dv, %bb.cm ] ; 3 uses
  %.0168 = phi ptr [ null, %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit ], [ %i.eb, %bb.cm ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 5 uses
  %.not344 = icmp eq i64 %.fr343, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  %.sroa.gep354 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.sel.v.sroa.sel = select i1 %.0171, ptr %i.gj, ptr %.sroa.gep354 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 12 uses
  %i.gl = and i32 %i.cc, 3                        ; 3 uses
  %.not.i = icmp eq i32 %i.gl, 0
  %spec.select.i = select i1 %.not.i, i32 4, i32 %i.gl ; 2 uses
  %.not307 = icmp samesign ugt i32 %spec.select.i, %i.cb
  %i.gm = zext nneg i32 %spec.select.i to i64
  br i1 %.not344, label %.critedge.split, label %.critedge.split.us

.critedge.split.us:                               ; preds = %.critedge
  %i.gn = icmp eq i32 %i.cb, 0
  br i1 %i.gn, label %.critedge.split.us.split.us, label %.critedge.split.us.split.preheader

.critedge.split.us.split.preheader:               ; preds = %.critedge.split.us
  %invariant.gep = getelementptr i8, ptr %i.dp, i64 %i.df
  %invariant.gep441 = getelementptr i8, ptr %i.dp, i64 %i.df
  br label %.critedge.split.us.split

.critedge.split.us.split.us:                      ; preds = %.critedge.split.us
  br i1 %.0170304, label %.critedge.split.us.split.us.split.us, label %.critedge.split.us.split.us.split

.critedge.split.us.split.us.split.us:             ; preds = %.critedge.split.us.split.us
  br i1 %.0171, label %.critedge.split.us.split.us.split.us.split.us.split.us, label %.critedge.split.us.split.us.split.us.split

.critedge.split.us.split.us.split.us.split.us.split.us: ; preds = %.critedge.split.us.split.us.split.us, %._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us
  %.0163.us.us.us.us.us = phi i64 [ %i.hb, %._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %.critedge.split.us.split.us.split.us ] ; 2 uses
  %i.go = load i64, ptr %i.gi, align 8, !tbaa !43
  %i.gp = icmp ult i64 %.0163.us.us.us.us.us, %i.go
  br i1 %i.gp, label %.preheader.us.us.us.us.us.preheader, label %.critedge255

.preheader.us.us.us.us.us.preheader:              ; preds = %.critedge.split.us.split.us.split.us.split.us.split.us
  %.pre363 = load ptr, ptr %i.c, align 16, !tbaa !44
  %.pre364 = load ptr, ptr %i.gk, align 8
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %.preheader.us.us.us.us.us.preheader, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us
  %i.gq = phi ptr [ %i.gy, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us ], [ %.pre364, %.preheader.us.us.us.us.us.preheader ]
  %i.gr = phi ptr [ %i.gw, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us ], [ %.pre363, %.preheader.us.us.us.us.us.preheader ]
  %.0162313.us.us.us.us.us.us.us.us.us = phi i64 [ %i.gz, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.preheader ] ; 2 uses
  %i.gs = sub nuw i64 %.fr343, %.0162313.us.us.us.us.us.us.us.us.us
  %i.gt = call i64 @llvm.umin.i64(i64 %i.gs, i64 %.sroa.speculated) ; 3 uses
  %.sroa.0.0.insert.insert.us.us.us.us.us.us.us.us.us = or disjoint i64 %i.gt, 4294967296
  invoke void %i.cu(ptr noundef %i.gr, i64 noundef 0, ptr noundef %.0169, i64 noundef 0, ptr noundef %.0168, i64 noundef 0, ptr noundef %i.gq, i64 noundef 0, i64 %.sroa.0.0.insert.insert.us.us.us.us.us.us.us.us.us)
          to label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us unwind label %.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us

_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us: ; preds = %.preheader.us.us.us.us.us
  %i.gu = mul nuw nsw i64 %i.gt, %i.cl
  %i.gv = load ptr, ptr %i.c, align 16, !tbaa !44
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gu ; 2 uses
  store ptr %i.gw, ptr %i.c, align 16, !tbaa !44
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !44
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gt ; 2 uses
  store ptr %i.gy, ptr %i.gk, align 8, !tbaa !44
  %i.gz = add i64 %.0162313.us.us.us.us.us.us.us.us.us, %.sroa.speculated ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %.fr343
  br i1 %i.ha, label %.preheader.us.us.us.us.us, label %._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us, !llvm.loop !145

._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us: ; preds = %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us.us.us.us.us
  %i.hb = add nuw i64 %.0163.us.us.us.us.us, 1
  %i.hc = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split.us.split.us.split.us.split.us.split.us unwind label %.split326.us.split.us.split.us.split.us.split.us, !llvm.loop !146 ; 0 uses

.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us.split.us: ; preds = %.preheader.us.us.us.us.us
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split326.us.split.us.split.us.split.us.split.us: ; preds = %._crit_edge314.split.us.us.us.split.us.us.split.us.us.split.us.us
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge.split.us.split.us.split.us.split:       ; preds = %.critedge.split.us.split.us.split.us, %._crit_edge314.split.us.us.us.split.us.us.split
  %.0163.us.us.us = phi i64 [ %i.hu, %._crit_edge314.split.us.us.us.split.us.us.split ], [ 0, %.critedge.split.us.split.us.split.us ] ; 2 uses
  %i.hf = load i64, ptr %i.gi, align 8, !tbaa !43
  %i.hg = icmp ult i64 %.0163.us.us.us, %i.hf
  br i1 %i.hg, label %.preheader.us.us.us.preheader, label %.critedge255

.preheader.us.us.us.preheader:                    ; preds = %.critedge.split.us.split.us.split.us.split
  %.pre361 = load ptr, ptr %i.c, align 16, !tbaa !44
  %.pre362 = load ptr, ptr %i.gk, align 8
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us
  %i.hh = phi ptr [ %i.hr, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us ], [ %.pre362, %.preheader.us.us.us.preheader ]
  %i.hi = phi ptr [ %i.hp, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us ], [ %.pre361, %.preheader.us.us.us.preheader ]
  %.0162313.us.us.us.us.us = phi i64 [ %i.hs, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us ], [ 0, %.preheader.us.us.us.preheader ] ; 2 uses
  %i.hj = sub nuw i64 %.fr343, %.0162313.us.us.us.us.us
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hj, i64 %.sroa.speculated) ; 3 uses
  %i.hl = mul nuw nsw i64 %i.hk, %i.cl            ; 2 uses
  %i.hm = load ptr, ptr %i.gj, align 16, !tbaa !44 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  store ptr %i.hn, ptr %i.gj, align 16, !tbaa !44
  %.sroa.0.0.insert.insert.us.us.us.us.us = or disjoint i64 %i.hk, 4294967296
  invoke void %i.cu(ptr noundef %i.hi, i64 noundef 0, ptr noundef %i.hm, i64 noundef 0, ptr noundef %.0168, i64 noundef 0, ptr noundef %i.hh, i64 noundef 0, i64 %.sroa.0.0.insert.insert.us.us.us.us.us)
          to label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us unwind label %.split.us.split.us.split.us.split.us.split.us.split

_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us: ; preds = %.preheader.us.us.us
  %i.ho = load ptr, ptr %i.c, align 16, !tbaa !44
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hl ; 2 uses
  store ptr %i.hp, ptr %i.c, align 16, !tbaa !44
  %i.hq = load ptr, ptr %i.gk, align 8, !tbaa !44
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hk ; 2 uses
  store ptr %i.hr, ptr %i.gk, align 8, !tbaa !44
  %i.hs = add i64 %.0162313.us.us.us.us.us, %.sroa.speculated ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %.fr343
  br i1 %i.ht, label %.preheader.us.us.us, label %._crit_edge314.split.us.us.us.split.us.us.split, !llvm.loop !145

._crit_edge314.split.us.us.us.split.us.us.split:  ; preds = %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us.us.us
  %i.hu = add nuw i64 %.0163.us.us.us, 1
  %i.hv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split.us.split.us.split.us.split unwind label %.split326.us.split.us.split.us.split, !llvm.loop !146 ; 0 uses

.split.us.split.us.split.us.split.us.split.us.split: ; preds = %.preheader.us.us.us
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split326.us.split.us.split.us.split:             ; preds = %._crit_edge314.split.us.us.us.split.us.us.split
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge.split.us.split.us.split:                ; preds = %.critedge.split.us.split.us, %._crit_edge314.split.us.us.us.split
  %.0163.us.us = phi i64 [ %i.ip, %._crit_edge314.split.us.us.us.split ], [ 0, %.critedge.split.us.split.us ] ; 2 uses
  %i.hy = load i64, ptr %i.gi, align 8, !tbaa !43
  %i.hz = icmp ult i64 %.0163.us.us, %i.hy
  br i1 %i.hz, label %.preheader.us.us, label %.critedge255

.preheader.us.us:                                 ; preds = %.critedge.split.us.split.us.split, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us
  %.0162313.us.us.us = phi i64 [ %i.in, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us ], [ 0, %.critedge.split.us.split.us.split ] ; 2 uses
  %i.ia = sub nuw i64 %.fr343, %.0162313.us.us.us
  %i.ib = call i64 @llvm.umin.i64(i64 %i.ia, i64 %.sroa.speculated) ; 3 uses
  %i.ic = mul nuw nsw i64 %i.ib, %i.cl            ; 3 uses
  br i1 %.0171, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.preheader.us.us
  %i.id = load ptr, ptr %i.gj, align 16, !tbaa !44 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ic
  store ptr %i.ie, ptr %i.gj, align 16, !tbaa !44
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.preheader.us.us
  %.0161.us.us.us = phi ptr [ %.0169, %.preheader.us.us ], [ %i.id, %bb.cn ]
  %i.if = load ptr, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !44 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ic
  store ptr %i.ig, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.ih = load ptr, ptr %i.c, align 16, !tbaa !44
  %i.ii = load ptr, ptr %i.gk, align 8
  %.sroa.0.0.insert.insert.us.us.us = or disjoint i64 %i.ib, 4294967296
  invoke void %i.cu(ptr noundef %i.ih, i64 noundef 0, ptr noundef %.0161.us.us.us, i64 noundef 0, ptr noundef %i.if, i64 noundef 0, ptr noundef %i.ii, i64 noundef 0, i64 %.sroa.0.0.insert.insert.us.us.us)
          to label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us unwind label %.split.us.split.us.split.us.split

_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us:     ; preds = %bb.co
  %i.ij = load ptr, ptr %i.c, align 16, !tbaa !44
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.ic
  store ptr %i.ik, ptr %i.c, align 16, !tbaa !44
  %i.il = load ptr, ptr %i.gk, align 8, !tbaa !44
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ib
  store ptr %i.im, ptr %i.gk, align 8, !tbaa !44
  %i.in = add i64 %.0162313.us.us.us, %.sroa.speculated ; 2 uses
  %i.io = icmp ult i64 %i.in, %.fr343
  br i1 %i.io, label %.preheader.us.us, label %._crit_edge314.split.us.us.us.split, !llvm.loop !145

._crit_edge314.split.us.us.us.split:              ; preds = %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us.us.us
  %i.ip = add nuw i64 %.0163.us.us, 1
  %i.iq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %.critedge.split.us.split.us.split unwind label %.split326.us.split.us.split, !llvm.loop !146 ; 0 uses

.split.us.split.us.split.us.split:                ; preds = %bb.co
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split326.us.split.us.split:                      ; preds = %._crit_edge314.split.us.us.us.split
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.critedge.split.us.split:                         ; preds = %.critedge.split.us.split.preheader, %._crit_edge314.split.us322
  %.0163.us = phi i64 [ %i.us, %._crit_edge314.split.us322 ], [ 0, %.critedge.split.us.split.preheader ] ; 2 uses
  %i.it = load i64, ptr %i.gi, align 8, !tbaa !43
  %i.iu = icmp ult i64 %.0163.us, %i.it
  br i1 %i.iu, label %.preheader.us, label %.critedge255

.preheader.us:                                    ; preds = %.critedge.split.us.split, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us321
  %.0162313.us316 = phi i64 [ %i.uq, %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us321 ], [ 0, %.critedge.split.us.split ] ; 2 uses
  %i.iv = sub i64 %.fr343, %.0162313.us316
  %i.iw = call i64 @llvm.umin.i64(i64 %i.iv, i64 %.sroa.speculated) ; 32 uses
  %i.ix = trunc nuw nsw i64 %i.iw to i32
  %i.iy = mul nuw nsw i64 %i.iw, %i.cl            ; 3 uses
  br i1 %.0171, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.preheader.us
  %i.iz = load ptr, ptr %i.gj, align 16, !tbaa !44 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iy
  store ptr %i.ja, ptr %i.gj, align 16, !tbaa !44
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.preheader.us
  %.0161.us317 = phi ptr [ %.0169, %.preheader.us ], [ %i.iz, %bb.cp ]
  br i1 %.0170304, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jb = load ptr, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !44 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iy
  store ptr %i.jc, ptr %.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0160.us318 = phi ptr [ %.0168, %bb.cq ], [ %i.jb, %bb.cr ]
  %i.jd = load ptr, ptr %i.c, align 16, !tbaa !44
  %i.je = mul nuw nsw i32 %i.cc, %i.ix
  %.sroa.0.0.insert.ext.us319 = zext nneg i32 %i.je to i64
  %.sroa.0.0.insert.insert.us320 = or disjoint i64 %.sroa.0.0.insert.ext.us319, 4294967296
  invoke void %i.cu(ptr noundef %i.jd, i64 noundef 0, ptr noundef %.0161.us317, i64 noundef 0, ptr noundef %.0160.us318, i64 noundef 0, ptr noundef nonnull %i.dp, i64 noundef 0, i64 %.sroa.0.0.insert.insert.us320)
          to label %bb.ct unwind label %.split.split.us

bb.ct:                                            ; preds = %bb.cs
  %i.jf = load ptr, ptr %i.gk, align 8, !tbaa !44 ; 21 uses
  %.not107.i.us = icmp eq i64 %i.iw, 0            ; 5 uses
  switch i32 %i.gl, label %default.unreachable [
    i32 1, label %.preheader.i.us
    i32 2, label %.preheader80.i.us
    i32 3, label %.preheader82.i.us
    i32 0, label %.preheader84.i.us
  ]

.preheader84.i.us:                                ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us321, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.preheader84.i.us
  %xtraiter = and i64 %i.iw, 1
  %i.jg = icmp eq i64 %i.iw, 1
  br i1 %i.jg, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us.preheader.new

.lr.ph.i.us.preheader.new:                        ; preds = %.lr.ph.i.us.preheader
  %unroll_iter = and i64 %i.iw, 32766
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.i.us.preheader.new
  %.387.i.us = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %i.ki, %.lr.ph.i.us ] ; 2 uses
  %.37486.i.us = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %i.kh, %.lr.ph.i.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.us.preheader.new ], [ %niter.next.1, %.lr.ph.i.us ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.387.i.us ; 4 uses
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !18
  %i.jj = getelementptr i8, ptr %i.jh, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !18
  %i.jl = and i8 %i.jk, %i.ji
  %i.jm = getelementptr i8, ptr %i.jh, i64 2
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !18
  %i.jo = and i8 %i.jl, %i.jn
  %i.jp = getelementptr i8, ptr %i.jh, i64 3
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !18
  %i.jr = and i8 %i.jo, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.37486.i.us
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !18
  %i.jt = add nuw nsw i64 %.387.i.us, %i.df       ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jt ; 4 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !18
  %i.jw = getelementptr i8, ptr %i.ju, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !18
  %i.jy = and i8 %i.jx, %i.jv
  %i.jz = getelementptr i8, ptr %i.ju, i64 2
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !18
  %i.kb = and i8 %i.jy, %i.ka
  %i.kc = getelementptr i8, ptr %i.ju, i64 3
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !18
  %i.ke = and i8 %i.kb, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.37486.i.us
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store i8 %i.ke, ptr %i.kg, align 1, !tbaa !18
  %i.kh = add nuw nsw i64 %.37486.i.us, 2         ; 2 uses
  %i.ki = add nuw nsw i64 %i.jt, %i.df            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.us.loopexit412.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !147

.preheader82.i.us:                                ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us321, label %.lr.ph90.i.us.preheader

.lr.ph90.i.us.preheader:                          ; preds = %.preheader82.i.us
  %xtraiter415 = and i64 %i.iw, 1
  %i.kj = icmp eq i64 %i.iw, 1
  br i1 %i.kj, label %.lr.ph90.i.us.epil.preheader, label %.lr.ph90.i.us.preheader.new

.lr.ph90.i.us.preheader.new:                      ; preds = %.lr.ph90.i.us.preheader
  %unroll_iter418 = and i64 %i.iw, 32766
  br label %.lr.ph90.i.us

.lr.ph90.i.us:                                    ; preds = %.lr.ph90.i.us, %.lr.ph90.i.us.preheader.new
  %.289.i.us = phi i64 [ 0, %.lr.ph90.i.us.preheader.new ], [ %i.lf, %.lr.ph90.i.us ] ; 2 uses
  %.27388.i.us = phi i64 [ 0, %.lr.ph90.i.us.preheader.new ], [ %i.le, %.lr.ph90.i.us ] ; 3 uses
  %niter419 = phi i64 [ 0, %.lr.ph90.i.us.preheader.new ], [ %niter419.next.1, %.lr.ph90.i.us ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.289.i.us ; 3 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !18
  %i.km = getelementptr i8, ptr %i.kk, i64 1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !18
  %i.ko = and i8 %i.kn, %i.kl
  %i.kp = getelementptr i8, ptr %i.kk, i64 2
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !18
  %i.kr = and i8 %i.ko, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.27388.i.us
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !18
  %i.kt = add nuw nsw i64 %.289.i.us, %i.df       ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.kt ; 3 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !18
  %i.kw = getelementptr i8, ptr %i.ku, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !18
  %i.ky = and i8 %i.kx, %i.kv
  %i.kz = getelementptr i8, ptr %i.ku, i64 2
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !18
  %i.lb = and i8 %i.ky, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.27388.i.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  store i8 %i.lb, ptr %i.ld, align 1, !tbaa !18
  %i.le = add nuw nsw i64 %.27388.i.us, 2         ; 2 uses
  %i.lf = add nuw nsw i64 %i.kt, %i.df            ; 2 uses
  %niter419.next.1 = add i64 %niter419, 2         ; 2 uses
  %niter419.ncmp.1 = icmp eq i64 %niter419.next.1, %unroll_iter418
  br i1 %niter419.ncmp.1, label %.loopexit.i.us.loopexit411.unr-lcssa, label %.lr.ph90.i.us, !llvm.loop !148

.preheader80.i.us:                                ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us321, label %.lr.ph93.i.us.preheader

.lr.ph93.i.us.preheader:                          ; preds = %.preheader80.i.us
  %xtraiter420 = and i64 %i.iw, 1
  %i.lg = icmp eq i64 %i.iw, 1
  br i1 %i.lg, label %.lr.ph93.i.us.epil.preheader, label %.lr.ph93.i.us.preheader.new

.lr.ph93.i.us.preheader.new:                      ; preds = %.lr.ph93.i.us.preheader
  %unroll_iter423 = and i64 %i.iw, 32766
  br label %.lr.ph93.i.us

.lr.ph93.i.us:                                    ; preds = %.lr.ph93.i.us, %.lr.ph93.i.us.preheader.new
  %.192.i.us = phi i64 [ 0, %.lr.ph93.i.us.preheader.new ], [ %i.lw, %.lr.ph93.i.us ] ; 2 uses
  %.17291.i.us = phi i64 [ 0, %.lr.ph93.i.us.preheader.new ], [ %i.lv, %.lr.ph93.i.us ] ; 3 uses
  %niter424 = phi i64 [ 0, %.lr.ph93.i.us.preheader.new ], [ %niter424.next.1, %.lr.ph93.i.us ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.192.i.us ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !18
  %i.lj = getelementptr i8, ptr %i.lh, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !18
  %i.ll = and i8 %i.lk, %i.li
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.17291.i.us
  store i8 %i.ll, ptr %i.lm, align 1, !tbaa !18
  %i.ln = add nuw nsw i64 %.192.i.us, %i.df       ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ln ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !18
  %i.lq = getelementptr i8, ptr %i.lo, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !18
  %i.ls = and i8 %i.lr, %i.lp
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.17291.i.us
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  store i8 %i.ls, ptr %i.lu, align 1, !tbaa !18
  %i.lv = add nuw nsw i64 %.17291.i.us, 2         ; 2 uses
  %i.lw = add nuw nsw i64 %i.ln, %i.df            ; 2 uses
  %niter424.next.1 = add i64 %niter424, 2         ; 2 uses
  %niter424.ncmp.1 = icmp eq i64 %niter424.next.1, %unroll_iter423
  br i1 %niter424.ncmp.1, label %.loopexit.i.us.loopexit410.unr-lcssa, label %.lr.ph93.i.us, !llvm.loop !149

.preheader.i.us:                                  ; preds = %bb.ct
  br i1 %.not107.i.us, label %_ZN2cvL13inRangeReduceEPKhPhmi.exit.us321, label %iter.check

iter.check:                                       ; preds = %.preheader.i.us
  %min.iters.check = icmp samesign ult i64 %i.iw, 8
  br i1 %min.iters.check, label %.lr.ph96.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.jf, i64 %i.iw
  %i.lx = add nsw i64 %i.iw, -1
  %i.ly = mul nsw i64 %i.lx, %i.df
  %scevgep398 = getelementptr i8, ptr %i.dp, i64 %i.ly ; 4 uses
  %23 = icmp ult ptr %i.dp, %scevgep398
  %umin = select i1 %23, ptr %i.dp, ptr %scevgep398
  %24 = icmp ugt ptr %i.dp, %scevgep398
  %umax.sroa.sel.v = select i1 %24, ptr %i.dp, ptr %scevgep398
  %umax.sroa.sel = getelementptr i8, ptr %umax.sroa.sel.v, i64 1
  %bound0 = icmp ult ptr %i.jf, %umax.sroa.sel
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph96.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check400 = icmp samesign ult i64 %i.iw, 16
  br i1 %min.iters.check400, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lz = and i64 %i.iw, 8
  %n.vec = and i64 %i.iw, 32752                   ; 5 uses
  %i.ma = mul nuw nsw i64 %n.vec, %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %i.mb = mul i64 %index, %i.df                   ; 2 uses
  %i.mc = or disjoint i64 %index, 2
  %i.md = mul i64 %i.mc, %i.df
  %i.me = or disjoint i64 %index, 3
  %i.mf = mul i64 %i.me, %i.df
  %i.mg = or disjoint i64 %index, 4
  %i.mh = mul i64 %i.mg, %i.df
  %i.mi = or disjoint i64 %index, 5
  %i.mj = mul i64 %i.mi, %i.df
  %i.mk = or disjoint i64 %index, 6
  %i.ml = mul i64 %i.mk, %i.df
  %i.mm = or disjoint i64 %index, 7
  %i.mn = mul i64 %i.mm, %i.df
  %i.mo = or disjoint i64 %index, 8
  %i.mp = mul i64 %i.mo, %i.df
  %i.mq = or disjoint i64 %index, 9
  %i.mr = mul i64 %i.mq, %i.df
  %i.ms = or disjoint i64 %index, 10
  %i.mt = mul i64 %i.ms, %i.df
  %i.mu = or disjoint i64 %index, 11
  %i.mv = mul i64 %i.mu, %i.df
  %i.mw = or disjoint i64 %index, 12
  %i.mx = mul i64 %i.mw, %i.df
  %i.my = or disjoint i64 %index, 13
  %i.mz = mul i64 %i.my, %i.df
  %i.na = or disjoint i64 %index, 14
  %i.nb = mul i64 %i.na, %i.df
  %i.nc = or disjoint i64 %index, 15
  %i.nd = mul i64 %i.nc, %i.df
  %i.ne = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mb
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.mb
  %i.nf = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.md
  %i.ng = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mh
  %i.ni = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mj
  %i.nj = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ml
  %i.nk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mn
  %i.nl = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mp
  %i.nm = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mr
  %i.nn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mt
  %i.no = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mv
  %i.np = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mx
  %i.nq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.mz
  %i.nr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.nb
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.nd
  %i.nt = load i8, ptr %i.ne, align 1, !tbaa !18, !alias.scope !163
  %i.nu = load i8, ptr %gep, align 1, !tbaa !18, !alias.scope !163
  %i.nv = load i8, ptr %i.nf, align 1, !tbaa !18, !alias.scope !163
  %i.nw = load i8, ptr %i.ng, align 1, !tbaa !18, !alias.scope !163
  %i.nx = load i8, ptr %i.nh, align 1, !tbaa !18, !alias.scope !163
  %i.ny = load i8, ptr %i.ni, align 1, !tbaa !18, !alias.scope !163
  %i.nz = load i8, ptr %i.nj, align 1, !tbaa !18, !alias.scope !163
  %i.oa = load i8, ptr %i.nk, align 1, !tbaa !18, !alias.scope !163
  %i.ob = load i8, ptr %i.nl, align 1, !tbaa !18, !alias.scope !163
  %i.oc = load i8, ptr %i.nm, align 1, !tbaa !18, !alias.scope !163
  %i.od = load i8, ptr %i.nn, align 1, !tbaa !18, !alias.scope !163
  %i.oe = load i8, ptr %i.no, align 1, !tbaa !18, !alias.scope !163
  %i.of = load i8, ptr %i.np, align 1, !tbaa !18, !alias.scope !163
  %i.og = load i8, ptr %i.nq, align 1, !tbaa !18, !alias.scope !163
  %i.oh = load i8, ptr %i.nr, align 1, !tbaa !18, !alias.scope !163
  %i.oi = load i8, ptr %i.ns, align 1, !tbaa !18, !alias.scope !163
  %i.oj = insertelement <16 x i8> poison, i8 %i.nt, i64 0
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 1
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 2
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 3
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 4
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 5
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 6
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 7
  %i.or = insertelement <16 x i8> %i.oq, i8 %i.ob, i64 8
  %i.os = insertelement <16 x i8> %i.or, i8 %i.oc, i64 9
  %i.ot = insertelement <16 x i8> %i.os, i8 %i.od, i64 10
  %i.ou = insertelement <16 x i8> %i.ot, i8 %i.oe, i64 11
  %i.ov = insertelement <16 x i8> %i.ou, i8 %i.of, i64 12
  %i.ow = insertelement <16 x i8> %i.ov, i8 %i.og, i64 13
  %i.ox = insertelement <16 x i8> %i.ow, i8 %i.oh, i64 14
  %i.oy = insertelement <16 x i8> %i.ox, i8 %i.oi, i64 15
  %i.oz = getelementptr inbounds nuw i8, ptr %i.jf, i64 %index
  store <16 x i8> %i.oy, ptr %i.oz, align 1, !tbaa !18, !alias.scope !164, !noalias !163
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.pa = icmp eq i64 %index.next, %n.vec
  br i1 %i.pa, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iw, %n.vec
  br i1 %cmp.n, label %.loopexit.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.lz, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph96.i.us.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec401 = and i64 %i.iw, 32760                ; 4 uses
  %i.pb = mul nuw nsw i64 %n.vec401, %i.df
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index402 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next403, %vec.epilog.vector.body ] ; 9 uses
  %i.pc = mul i64 %index402, %i.df                ; 2 uses
  %i.pd = or disjoint i64 %index402, 2
  %i.pe = mul i64 %i.pd, %i.df
  %i.pf = or disjoint i64 %index402, 3
  %i.pg = mul i64 %i.pf, %i.df
  %i.ph = or disjoint i64 %index402, 4
  %i.pi = mul i64 %i.ph, %i.df
  %i.pj = or disjoint i64 %index402, 5
  %i.pk = mul i64 %i.pj, %i.df
  %i.pl = or disjoint i64 %index402, 6
  %i.pm = mul i64 %i.pl, %i.df
  %i.pn = or disjoint i64 %index402, 7
  %i.po = mul i64 %i.pn, %i.df
  %i.pp = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.pc
  %gep442 = getelementptr i8, ptr %invariant.gep441, i64 %i.pc
  %i.pq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.pe
  %i.pr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.pg
  %i.ps = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.pi
  %i.pt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.pk
  %i.pu = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.pm
  %i.pv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.po
  %i.pw = load i8, ptr %i.pp, align 1, !tbaa !18, !alias.scope !163
  %i.px = load i8, ptr %gep442, align 1, !tbaa !18, !alias.scope !163
  %i.py = load i8, ptr %i.pq, align 1, !tbaa !18, !alias.scope !163
  %i.pz = load i8, ptr %i.pr, align 1, !tbaa !18, !alias.scope !163
  %i.qa = load i8, ptr %i.ps, align 1, !tbaa !18, !alias.scope !163
  %i.qb = load i8, ptr %i.pt, align 1, !tbaa !18, !alias.scope !163
  %i.qc = load i8, ptr %i.pu, align 1, !tbaa !18, !alias.scope !163
  %i.qd = load i8, ptr %i.pv, align 1, !tbaa !18, !alias.scope !163
  %i.qe = insertelement <8 x i8> poison, i8 %i.pw, i64 0
  %i.qf = insertelement <8 x i8> %i.qe, i8 %i.px, i64 1
  %i.qg = insertelement <8 x i8> %i.qf, i8 %i.py, i64 2
  %i.qh = insertelement <8 x i8> %i.qg, i8 %i.pz, i64 3
  %i.qi = insertelement <8 x i8> %i.qh, i8 %i.qa, i64 4
  %i.qj = insertelement <8 x i8> %i.qi, i8 %i.qb, i64 5
  %i.qk = insertelement <8 x i8> %i.qj, i8 %i.qc, i64 6
  %i.ql = insertelement <8 x i8> %i.qk, i8 %i.qd, i64 7
  %i.qm = getelementptr inbounds nuw i8, ptr %i.jf, i64 %index402
  store <8 x i8> %i.ql, ptr %i.qm, align 1, !tbaa !18, !alias.scope !164, !noalias !163
  %index.next403 = add nuw i64 %index402, 8       ; 2 uses
  %i.qn = icmp eq i64 %index.next403, %n.vec401
  br i1 %i.qn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n404 = icmp eq i64 %i.iw, %n.vec401
  br i1 %cmp.n404, label %.loopexit.i.us, label %.lr.ph96.i.us.preheader

.lr.ph96.i.us.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.095.i.us.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ma, %vec.epilog.iter.check ], [ %i.pb, %vec.epilog.middle.block ] ; 2 uses
  %.07194.i.us.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec401, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter425 = and i64 %i.iw, 3                 ; 2 uses
  %lcmp.mod426.not = icmp eq i64 %xtraiter425, 0
  br i1 %lcmp.mod426.not, label %.lr.ph96.i.us.prol.loopexit, label %.lr.ph96.i.us.prol

.lr.ph96.i.us.prol:                               ; preds = %.lr.ph96.i.us.preheader, %.lr.ph96.i.us.prol
  %.095.i.us.prol = phi i64 [ %i.qs, %.lr.ph96.i.us.prol ], [ %.095.i.us.ph, %.lr.ph96.i.us.preheader ] ; 2 uses
  %.07194.i.us.prol = phi i64 [ %i.qr, %.lr.ph96.i.us.prol ], [ %.07194.i.us.ph, %.lr.ph96.i.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.us.prol ], [ 0, %.lr.ph96.i.us.preheader ]
  %i.qo = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.095.i.us.prol
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !18
  %i.qq = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us.prol
  store i8 %i.qp, ptr %i.qq, align 1, !tbaa !18
  %i.qr = add nuw nsw i64 %.07194.i.us.prol, 1    ; 2 uses
  %i.qs = add nuw nsw i64 %.095.i.us.prol, %i.df  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter425
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.us.prol.loopexit, label %.lr.ph96.i.us.prol, !llvm.loop !155

.lr.ph96.i.us.prol.loopexit:                      ; preds = %.lr.ph96.i.us.prol, %.lr.ph96.i.us.preheader
  %.095.i.us.unr = phi i64 [ %.095.i.us.ph, %.lr.ph96.i.us.preheader ], [ %i.qs, %.lr.ph96.i.us.prol ]
  %.07194.i.us.unr = phi i64 [ %.07194.i.us.ph, %.lr.ph96.i.us.preheader ], [ %i.qr, %.lr.ph96.i.us.prol ]
  %i.qt = sub nsw i64 %.07194.i.us.ph, %i.iw
  %i.qu = icmp ugt i64 %i.qt, -4
  br i1 %i.qu, label %.loopexit.i.us, label %.lr.ph96.i.us

.lr.ph96.i.us:                                    ; preds = %.lr.ph96.i.us.prol.loopexit, %.lr.ph96.i.us
  %.095.i.us = phi i64 [ %i.ro, %.lr.ph96.i.us ], [ %.095.i.us.unr, %.lr.ph96.i.us.prol.loopexit ] ; 2 uses
  %.07194.i.us = phi i64 [ %i.rn, %.lr.ph96.i.us ], [ %.07194.i.us.unr, %.lr.ph96.i.us.prol.loopexit ] ; 5 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.095.i.us
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !18
  %i.qx = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !18
  %i.qy = add nuw nsw i64 %.095.i.us, %i.df       ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !18
  %i.rb = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.07194.i.us
end_hunk_0
