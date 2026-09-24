Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/freetype?download=true
inline.NumInlined: 273
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv8freetype13FreeType2Impl18putTextBitmapBlendERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib:bb.a
  br i1 %i.k, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl18putTextBitmapBlendERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 539) #19
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %11, align 8, !tbaa !57    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !58
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.k
  %.pn74 = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bt

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.s = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !167
  %i.t = icmp eq i32 %i.s, 65536
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39, !noalias !167
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.v)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.n, %bb.o
  %i.w = invoke ptr @hb_buffer_create()
          to label %bb.p unwind label %bb.q       ; 6 uses

bb.p:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.r, label %bb.w

bb.q:                                             ; preds = %bb.y, %bb.x, %bb.w, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl18putTextBitmapBlendERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 543) #19
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.v:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %14, align 8, !tbaa !57   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.v
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !58
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.u
  %.pn76 = phi { ptr, i32 } [ %i.y, %bb.u ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.z, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.bs

bb.w:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %2, align 8, !tbaa !57
  invoke void @hb_buffer_add_utf8(ptr noundef nonnull %i.w, ptr noundef %i.af, i32 noundef -1, i32 noundef 0, i32 noundef -1)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  invoke void @hb_buffer_guess_segment_properties(ptr noundef nonnull %i.w)
          to label %bb.y unwind label %bb.q

bb.y:                                             ; preds = %bb.x
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51
  invoke void @hb_shape(ptr noundef %i.ah, ptr noundef nonnull %i.w, ptr noundef null, i32 noundef 0)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.ai = invoke ptr @hb_buffer_get_glyph_infos(ptr noundef nonnull %i.w, ptr noundef nonnull %i.a)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not78 = icmp eq ptr %i.ai, null
  br i1 %.not78, label %bb.ac, label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl18putTextBitmapBlendERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 552) #19
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ag:                                            ; preds = %bb.ad
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ag
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !58
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.af
  %.pn79 = phi { ptr, i32 } [ %i.ak, %bb.af ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %i.al, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.br

bb.ah:                                            ; preds = %bb.aa
  %i.ar = select i1 %8, i32 0, i32 %4
  %spec.select = add nsw i32 %i.ar, %.sroa.4.0.extract.trunc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.as = load <4 x double>, ptr %5, align 8, !tbaa !66
  %i.at = fptoui <4 x double> %i.as to <4 x i8>
  store <4 x i8> %i.at, ptr %i.b, align 4, !tbaa !58
  %i.au = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ai unwind label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %i.av = icmp eq i32 %i.au, 96
  br i1 %i.av, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aw = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.ax = icmp eq i32 %i.aw, 64
  %i.ay = select i1 %i.ax, { i64, i64 } { i64 ptrtoint (ptr @_ZN2cv8freetype13FreeType2Impl19putPixel_8UC3_blendERNS_3MatEiiPKhh to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN2cv8freetype13FreeType2Impl19putPixel_8UC1_blendERNS_3MatEiiPKhh to i64), i64 0 }
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak
  %i.az = phi { i64, i64 } [ %i.ay, %bb.ak ], [ { i64 ptrtoint (ptr @_ZN2cv8freetype13FreeType2Impl19putPixel_8UC4_blendERNS_3MatEiiPKhh to i64), i64 0 }, %bb.ai ]
  %.fr = freeze { i64, i64 } %i.az                ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %.fr, 0 ; 3 uses
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !40
  %.not133 = icmp eq i32 %i.ba, 0
  br i1 %.not133, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.al
  %.fca.1.extract = extractvalue { i64, i64 } %.fr, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %.fca.1.extract ; 3 uses
  %i.be = and i64 %.fca.0.extract, 1
  %.not85 = icmp eq i64 %i.be, 0
  %i.bf = inttoptr i64 %.fca.0.extract to ptr
  %.pre145 = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 2 uses
  br i1 %.not85, label %.lr.ph123.split.us, label %.lr.ph123.split

.lr.ph123.split.us:                               ; preds = %.lr.ph123, %._crit_edge.split.us.us
  %i.bg = phi ptr [ %i.df, %._crit_edge.split.us.us ], [ %.pre145, %.lr.ph123 ]
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %._crit_edge.split.us.us ], [ 0, %.lr.ph123 ] ; 2 uses
  %.sroa.4.1120.us = phi i32 [ %i.do, %._crit_edge.split.us.us ], [ %spec.select, %.lr.ph123 ] ; 2 uses
  %.sroa.050.0.in119.us = phi i64 [ %i.dj, %._crit_edge.split.us.us ], [ %3, %.lr.ph123 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %indvars.iv138
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !68
  %i.bj = invoke i32 @FT_Load_Glyph(ptr noundef %i.bg, i32 noundef %i.bi, i32 noundef 0)
          to label %bb.am unwind label %.split126.us

bb.am:                                            ; preds = %.lr.ph123.split.us
  %.not81.us = icmp eq i32 %i.bj, 0
  br i1 %.not81.us, label %bb.an, label %.split129.us

bb.an:                                            ; preds = %bb.am
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !84
  %i.bn = invoke i32 @FT_Render_Glyph(ptr noundef %i.bm, i32 noundef 0)
          to label %bb.ao unwind label %.split126.us

bb.ao:                                            ; preds = %bb.an
  %.not82.us = icmp eq i32 %i.bn, 0
  br i1 %.not82.us, label %bb.ap, label %.split131.us

bb.ap:                                            ; preds = %bb.ao
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !84 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 152 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !94
  %i.bu = lshr i64 %i.bt, 6
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sub i32 %.sroa.4.1120.us, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !95
  %i.bz = lshr i64 %i.by, 6
  %sext.us = shl i64 %.sroa.050.0.in119.us, 32
  %i.ca = ashr exact i64 %sext.us, 32
  %i.cb = add i64 %i.bz, %.sroa.050.0.in119.us
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !96 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph116.us, label %._crit_edge.split.us.us

.lr.ph116.us:                                     ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 160 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 168
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.us.us, %.lr.ph116.us
  %i.ch = phi i32 [ %i.cd, %.lr.ph116.us ], [ %i.db, %.loopexit.us.us ] ; 2 uses
  %.053113.us.us = phi i32 [ 0, %.lr.ph116.us ], [ %i.dc, %.loopexit.us.us ] ; 3 uses
  %i.ci = add nsw i32 %.053113.us.us, %i.bw       ; 3 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit.us.us, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load i32, ptr %22, align 8, !tbaa !103
  %.not83.us.us = icmp slt i32 %i.ci, %i.ck
  br i1 %.not83.us.us, label %.preheader.us.us, label %._crit_edge.split.us.us.loopexit

.preheader.us.us:                                 ; preds = %bb.ar
  %i.cl = load i32, ptr %i.cf, align 8, !tbaa !104 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us.us, label %.loopexit.us.us

.lr.ph.us.us:                                     ; preds = %.preheader.us.us, %bb.av
  %i.cn = phi i32 [ %i.cy, %bb.av ], [ %i.cl, %.preheader.us.us ] ; 3 uses
  %.0111.us.us.us = phi i32 [ %i.cz, %bb.av ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !105
  %i.cp = mul nuw nsw i32 %i.cn, %.053113.us.us
  %i.cq = add nsw i32 %i.cp, %.0111.us.us.us
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !58  ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.lr.ph.us.us
  %i.cv = add nsw i32 %.0111.us.us.us, %i.cc      ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = load i32, ptr %i.bc, align 4, !tbaa !106
  %.not84.us.us.us = icmp slt i32 %i.cv, %i.cx
  br i1 %.not84.us.us.us, label %bb.au, label %.loopexit.us.us.loopexit

bb.au:                                            ; preds = %bb.at
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.cv, ptr noundef nonnull %i.b, i8 noundef zeroext %i.ct)
          to label %._crit_edge146 unwind label %.split.us.split.us.split.us

._crit_edge146:                                   ; preds = %bb.au
  %.pre147 = load i32, ptr %i.cf, align 8, !tbaa !104
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge146, %bb.as, %.lr.ph.us.us
  %i.cy = phi i32 [ %.pre147, %._crit_edge146 ], [ %i.cn, %bb.as ], [ %i.cn, %.lr.ph.us.us ] ; 2 uses
  %i.cz = add nuw nsw i32 %.0111.us.us.us, 1      ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.cy
  br i1 %i.da, label %.lr.ph.us.us, label %.loopexit.us.us.loopexit, !llvm.loop !164

.loopexit.us.us.loopexit:                         ; preds = %bb.av, %bb.at
  %.pre148 = load i32, ptr %i.br, align 8, !tbaa !96
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %.preheader.us.us, %bb.aq
  %i.db = phi i32 [ %.pre148, %.loopexit.us.us.loopexit ], [ %i.ch, %.preheader.us.us ], [ %i.ch, %bb.aq ] ; 2 uses
  %i.dc = add nuw nsw i32 %.053113.us.us, 1       ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.db
  br i1 %i.dd, label %bb.aq, label %._crit_edge.split.us.us.loopexit, !llvm.loop !165

._crit_edge.split.us.us.loopexit:                 ; preds = %bb.ar, %.loopexit.us.us
  %.pre149 = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %.pre149, i64 152
  %.pre151 = load ptr, ptr %.phi.trans.insert150, align 8, !tbaa !84
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %bb.ap
  %i.de = phi ptr [ %.pre151, %._crit_edge.split.us.us.loopexit ], [ %i.bq, %bb.ap ] ; 2 uses
  %i.df = phi ptr [ %.pre149, %._crit_edge.split.us.us.loopexit ], [ %i.bo, %bb.ap ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !107
  %i.di = ashr i64 %i.dh, 6
  %i.dj = add nsw i64 %i.di, %i.ca
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !108
  %i.dm = lshr i64 %i.dl, 6
  %i.dn = trunc i64 %i.dm to i32
  %i.do = add i32 %.sroa.4.1120.us, %i.dn
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !40
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next139, %i.dq
  br i1 %i.dr, label %.lr.ph123.split.us, label %._crit_edge124, !llvm.loop !166

.split126.us:                                     ; preds = %bb.an, %.lr.ph123.split.us
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.split.us.split.us.split.us:                      ; preds = %bb.au
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

._crit_edge124:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.al
  invoke void @hb_buffer_destroy(ptr noundef nonnull %i.w)
          to label %bb.bp unwind label %bb.aw

bb.aw:                                            ; preds = %._crit_edge124, %bb.aj, %bb.ah
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.lr.ph123.split:                                  ; preds = %.lr.ph123, %._crit_edge.split
  %i.dv = phi ptr [ %i.go, %._crit_edge.split ], [ %.pre145, %.lr.ph123 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph123 ] ; 2 uses
  %.sroa.4.1120 = phi i32 [ %i.gx, %._crit_edge.split ], [ %spec.select, %.lr.ph123 ] ; 2 uses
  %.sroa.050.0.in119 = phi i64 [ %i.gs, %._crit_edge.split ], [ %3, %.lr.ph123 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %indvars.iv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !68
  %i.dy = invoke i32 @FT_Load_Glyph(ptr noundef %i.dv, i32 noundef %i.dx, i32 noundef 0)
          to label %bb.ax unwind label %.split126

bb.ax:                                            ; preds = %.lr.ph123.split
  %.not81 = icmp eq i32 %i.dy, 0
  br i1 %.not81, label %bb.bc, label %.split129.us

.split126:                                        ; preds = %bb.bc, %.lr.ph123.split
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.split129.us:                                     ; preds = %bb.ax, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %.split129.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl18putTextBitmapBlendERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 571) #19
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %.split129.us
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.bb:                                            ; preds = %bb.ay
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.bb
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !58
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ba
  %.pn88 = phi { ptr, i32 } [ %i.ea, %bb.ba ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.eb, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.bq

bb.bc:                                            ; preds = %bb.ax
  %i.eh = load ptr, ptr %i.bb, align 8, !tbaa !52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 152
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !84
  %i.ek = invoke i32 @FT_Render_Glyph(ptr noundef %i.ej, i32 noundef 0)
          to label %bb.bd unwind label %.split126

bb.bd:                                            ; preds = %bb.bc
  %.not82 = icmp eq i32 %i.ek, 0
  br i1 %.not82, label %bb.bi, label %.split131.us

.split131.us:                                     ; preds = %bb.bd, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %.split131.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl18putTextBitmapBlendERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 572) #19
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %.split131.us
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.bh:                                            ; preds = %bb.be
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %20, align 8, !tbaa !57   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.bh
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !58
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.bg
  %.pn86 = phi { ptr, i32 } [ %i.el, %bb.bg ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.em, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.bq

bb.bi:                                            ; preds = %bb.bd
  %i.es = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 152
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !84 ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 152 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !94
  %i.ey = lshr i64 %i.ex, 6
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = sub i32 %.sroa.4.1120, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !95
  %i.fd = lshr i64 %i.fc, 6
  %sext = shl i64 %.sroa.050.0.in119, 32
  %i.fe = ashr exact i64 %sext, 32
  %i.ff = add i64 %i.fd, %.sroa.050.0.in119
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = load i32, ptr %i.ev, align 8, !tbaa !96 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph116, label %._crit_edge.split

.lr.ph116:                                        ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 160 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 168
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph116, %.loopexit
  %i.fl = phi i32 [ %i.fh, %.lr.ph116 ], [ %i.gk, %.loopexit ] ; 2 uses
  %.053113 = phi i32 [ 0, %.lr.ph116 ], [ %i.gl, %.loopexit ] ; 3 uses
  %i.fm = add nsw i32 %.053113, %i.fa             ; 3 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fo = load i32, ptr %22, align 8, !tbaa !103
  %.not83 = icmp slt i32 %i.fm, %i.fo
  br i1 %.not83, label %.preheader, label %._crit_edge.split.loopexit

.preheader:                                       ; preds = %bb.bk
  %i.fp = load i32, ptr %i.fj, align 8, !tbaa !104 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.bo
  %i.fr = phi i32 [ %i.gg, %bb.bo ], [ %i.fp, %.preheader ] ; 3 uses
  %.0111 = phi i32 [ %i.gh, %bb.bo ], [ 0, %.preheader ] ; 3 uses
  %i.fs = load ptr, ptr %i.fk, align 8, !tbaa !105
  %i.ft = mul nuw nsw i32 %i.fr, %.053113
  %i.fu = add nsw i32 %i.ft, %.0111
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds i8, ptr %i.fs, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !58  ; 2 uses
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph
  %i.fz = add nsw i32 %.0111, %i.fg               ; 3 uses
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gb = load i32, ptr %i.bc, align 4, !tbaa !106
  %.not84 = icmp slt i32 %i.fz, %i.gb
  br i1 %.not84, label %bb.bn, label %.loopexit.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.gc = load ptr, ptr %i.bd, align 8, !tbaa !10
  %i.gd = getelementptr i8, ptr %i.gc, i64 %.fca.0.extract
  %i.ge = getelementptr i8, ptr %i.gd, i64 -1
  %i.gf = load ptr, ptr %i.ge, align 8, !nosanitize !36
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(88) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.fm, i32 noundef %i.fz, ptr noundef nonnull %i.b, i8 noundef zeroext %i.fx)
          to label %._crit_edge unwind label %.split

._crit_edge:                                      ; preds = %bb.bn
  %.pre141 = load i32, ptr %i.fj, align 8, !tbaa !104
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge, %.lr.ph, %bb.bl
  %i.gg = phi i32 [ %.pre141, %._crit_edge ], [ %i.fr, %.lr.ph ], [ %i.fr, %bb.bl ] ; 2 uses
  %i.gh = add nuw nsw i32 %.0111, 1               ; 2 uses
  %i.gi = icmp slt i32 %i.gh, %i.gg
  br i1 %i.gi, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !164

.split:                                           ; preds = %bb.bn
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.loopexit:                               ; preds = %bb.bm, %bb.bo
  %.pre142 = load i32, ptr %i.ev, align 8, !tbaa !96
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.bj
  %i.gk = phi i32 [ %.pre142, %.loopexit.loopexit ], [ %i.fl, %.preheader ], [ %i.fl, %bb.bj ] ; 2 uses
  %i.gl = add nuw nsw i32 %.053113, 1             ; 2 uses
  %i.gm = icmp slt i32 %i.gl, %i.gk
  br i1 %i.gm, label %bb.bj, label %._crit_edge.split.loopexit, !llvm.loop !165

._crit_edge.split.loopexit:                       ; preds = %bb.bk, %.loopexit
  %.pre143 = load ptr, ptr %i.bb, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre143, i64 152
  %.pre144 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %bb.bi
  %i.gn = phi ptr [ %.pre144, %._crit_edge.split.loopexit ], [ %i.eu, %bb.bi ] ; 2 uses
  %i.go = phi ptr [ %.pre143, %._crit_edge.split.loopexit ], [ %i.es, %bb.bi ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !107
  %i.gr = ashr i64 %i.gq, 6
  %i.gs = add nsw i64 %i.gr, %i.fe
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 136
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !108
  %i.gv = lshr i64 %i.gu, 6
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = add i32 %.sroa.4.1120, %i.gw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gy = load i32, ptr %i.a, align 4, !tbaa !40
  %i.gz = zext i32 %i.gy to i64
  %i.ha = icmp samesign ult i64 %indvars.iv.next, %i.gz
  br i1 %i.ha, label %.lr.ph123.split, label %._crit_edge124, !llvm.loop !166

bb.bp:                                            ; preds = %._crit_edge124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  ret void

bb.bq:                                            ; preds = %.split, %.split.us.split.us.split.us, %.split126, %.split126.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.aw
  %.pn88.pn.pn = phi { ptr, i32 } [ %i.du, %bb.aw ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.ds, %.split126.us ], [ %i.dz, %.split126 ], [ %i.gj, %.split ], [ %i.dt, %.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.ab
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn, %bb.bq ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.aj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.q
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn, %bb.br ], [ %i.x, %bb.q ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn88.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn.pn, %bb.bs ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn88.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8freetype13FreeType2Impl17putTextBitmapMonoERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(none) dead_on_return %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 25 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 20 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %3, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.c = icmp slt i32 %6, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl17putTextBitmapMonoERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 381) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %9, align 8, !tbaa !57     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !58
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.dr

bb.g:                                             ; preds = %bb.a
  switch i32 %7, label %bb.h [
    i32 8, label %bb.m
    i32 4, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl17putTextBitmapMonoERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 382) #19
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.l:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %11, align 8, !tbaa !57    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.l
  %i.p = load i64, ptr %i.n, align 8, !tbaa !58
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.k
  %.pn82 = phi { ptr, i32 } [ %i.k, %bb.k ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.l, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.dr

bb.m:                                             ; preds = %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.r = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !173
  %i.s = icmp eq i32 %i.r, 65536
  br i1 %i.s, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39, !noalias !173
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.u)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.n, %bb.o
  %i.v = invoke ptr @hb_buffer_create()
          to label %bb.p unwind label %bb.q       ; 6 uses

bb.p:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.r, label %bb.w

bb.q:                                             ; preds = %bb.y, %bb.x, %bb.w, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl17putTextBitmapMonoERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 386) #19
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.v:                                             ; preds = %bb.s
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %14, align 8, !tbaa !57    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.v
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !58
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.u
  %.pn84 = phi { ptr, i32 } [ %i.x, %bb.u ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.y, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.dq

bb.w:                                             ; preds = %bb.p
  %i.ae = load ptr, ptr %2, align 8, !tbaa !57
  invoke void @hb_buffer_add_utf8(ptr noundef nonnull %i.v, ptr noundef %i.ae, i32 noundef -1, i32 noundef 0, i32 noundef -1)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  invoke void @hb_buffer_guess_segment_properties(ptr noundef nonnull %i.v)
          to label %bb.y unwind label %bb.q

bb.y:                                             ; preds = %bb.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  invoke void @hb_shape(ptr noundef %i.ag, ptr noundef nonnull %i.v, ptr noundef null, i32 noundef 0)
          to label %bb.z unwind label %bb.q

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.ah = invoke ptr @hb_buffer_get_glyph_infos(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a)
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  %.not86 = icmp eq ptr %i.ah, null
  br i1 %.not86, label %bb.ac, label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl17putTextBitmapMonoERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 395) #19
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ag:                                            ; preds = %bb.ad
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %16, align 8, !tbaa !57   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.ag
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !58
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.af
  %.pn87 = phi { ptr, i32 } [ %i.aj, %bb.af ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.ak, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.dp

bb.ah:                                            ; preds = %bb.aa
  %i.aq = select i1 %8, i32 0, i32 %4
  %spec.select = add nsw i32 %i.aq, %.sroa.4.0.extract.trunc ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ar = load <4 x double>, ptr %5, align 8, !tbaa !66
  %i.as = fptoui <4 x double> %i.ar to <4 x i8>
  store <4 x i8> %i.as, ptr %i.b, align 4, !tbaa !58
  %i.at = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ai unwind label %bb.bv

bb.ai:                                            ; preds = %bb.ah
  %i.au = icmp eq i32 %i.at, 96
  br i1 %i.au, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.av = invoke noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ak unwind label %bb.bv

bb.ak:                                            ; preds = %bb.aj
  %i.aw = icmp eq i32 %i.av, 64
  %i.ax = select i1 %i.aw, { i64, i64 } { i64 ptrtoint (ptr @_ZN2cv8freetype13FreeType2Impl18putPixel_8UC3_monoERNS_3MatEiiPKh to i64), i64 0 }, { i64, i64 } { i64 ptrtoint (ptr @_ZN2cv8freetype13FreeType2Impl18putPixel_8UC1_monoERNS_3MatEiiPKh to i64), i64 0 }
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak
  %i.ay = phi { i64, i64 } [ %i.ax, %bb.ak ], [ { i64 ptrtoint (ptr @_ZN2cv8freetype13FreeType2Impl18putPixel_8UC4_monoERNS_3MatEiiPKh to i64), i64 0 }, %bb.ai ]
  %.fr = freeze { i64, i64 } %i.ay                ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %.fr, 0 ; 10 uses
  %i.az = load i32, ptr %i.a, align 4, !tbaa !40
  %.not144 = icmp eq i32 %i.az, 0
  br i1 %.not144, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.al
  %.fca.1.extract = extractvalue { i64, i64 } %.fr, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %22 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 16 uses
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %.fca.1.extract ; 24 uses
  %i.bd = and i64 %.fca.0.extract, 1
  %.not94 = icmp eq i64 %i.bd, 0
  %i.be = inttoptr i64 %.fca.0.extract to ptr     ; 8 uses
  %.pre156 = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  br i1 %.not94, label %.lr.ph134.split.us, label %.lr.ph134.split

.lr.ph134.split.us:                               ; preds = %.lr.ph134, %._crit_edge.split.us.us
  %i.bf = phi ptr [ %i.el, %._crit_edge.split.us.us ], [ %.pre156, %.lr.ph134 ]
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %._crit_edge.split.us.us ], [ 0, %.lr.ph134 ] ; 2 uses
  %.sroa.4.1131.us = phi i32 [ %i.eu, %._crit_edge.split.us.us ], [ %spec.select, %.lr.ph134 ] ; 2 uses
  %.sroa.057.0.in130.us = phi i64 [ %i.ep, %._crit_edge.split.us.us ], [ %3, %.lr.ph134 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %indvars.iv149
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !68
  %i.bi = invoke i32 @FT_Load_Glyph(ptr noundef %i.bf, i32 noundef %i.bh, i32 noundef 0)
          to label %bb.am unwind label %.split137.us

bb.am:                                            ; preds = %.lr.ph134.split.us
  %.not89.us = icmp eq i32 %i.bi, 0
  br i1 %.not89.us, label %bb.an, label %.split140.us

bb.an:                                            ; preds = %bb.am
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !84
  %i.bm = invoke i32 @FT_Render_Glyph(ptr noundef %i.bl, i32 noundef 2)
          to label %bb.ao unwind label %.split137.us

bb.ao:                                            ; preds = %bb.an
  %.not90.us = icmp eq i32 %i.bm, 0
  br i1 %.not90.us, label %bb.ap, label %.split142.us

bb.ap:                                            ; preds = %bb.ao
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !84 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 152 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !94
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = sub i32 %.sroa.4.1131.us, %i.bu
  %sext.us = shl i64 %.sroa.057.0.in130.us, 32
  %i.bw = ashr exact i64 %sext.us, 32
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !96 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph127.us, label %._crit_edge.split.us.us

.lr.ph127.us:                                     ; preds = %bb.ap
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !95
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = add i64 %i.cb, %.sroa.057.0.in130.us
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 160 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %i.cg = add i32 %i.cd, 7
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit120.us.us, %.lr.ph127.us
  %i.ch = phi i32 [ %i.bx, %.lr.ph127.us ], [ %i.eh, %.loopexit120.us.us ] ; 2 uses
  %.061124.us.us = phi i32 [ 0, %.lr.ph127.us ], [ %i.ei, %.loopexit120.us.us ] ; 3 uses
  %i.ci = add nsw i32 %.061124.us.us, %i.bv       ; 10 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit120.us.us, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load i32, ptr %22, align 8, !tbaa !103
  %.not91.us.us = icmp slt i32 %i.ci, %i.ck
  br i1 %.not91.us.us, label %.preheader119.us.us, label %._crit_edge.split.us.us.loopexit

.preheader119.us.us:                              ; preds = %bb.ar
  %i.cl = load i32, ptr %i.ce, align 8, !tbaa !104 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us.us, label %.loopexit120.us.us

.lr.ph.us.us:                                     ; preds = %.preheader119.us.us, %.loopexit.split.us.us.us.us
  %i.cn = phi i32 [ %i.ee, %.loopexit.split.us.us.us.us ], [ %i.cl, %.preheader119.us.us ] ; 2 uses
  %.060122.us.us.us = phi i32 [ %i.ef, %.loopexit.split.us.us.us.us ], [ 0, %.preheader119.us.us ] ; 3 uses
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !105
  %i.cp = mul nuw nsw i32 %i.cn, %.061124.us.us
  %i.cq = add nsw i32 %i.cp, %.060122.us.us.us
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !58  ; 3 uses
  %i.cu = zext i8 %i.ct to i32                    ; 7 uses
  %i.cv = icmp eq i8 %i.ct, 0
  br i1 %i.cv, label %.loopexit.split.us.us.us.us, label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.lr.ph.us.us
  %i.cw = shl nuw nsw i32 %.060122.us.us.us, 3    ; 2 uses
  %reass.sub.us.us.us = add i32 %i.cg, %i.cw      ; 12 uses
  %i.cx = add i32 %i.cw, %i.cd                    ; 3 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.av, label %bb.as

bb.as:                                            ; preds = %.preheader.us.us.us
  %i.cz = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.us.us.us.us = icmp slt i32 %i.cx, %i.cz
  br i1 %.not92.us.us.us.us, label %bb.at, label %.loopexit.split.us.us.us.us.loopexit

bb.at:                                            ; preds = %bb.as
  %.not93.us.us.us.us = icmp sgt i8 %i.ct, -1
  br i1 %.not93.us.us.us.us, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.cx, ptr noundef nonnull %i.b)
          to label %bb.av unwind label %.split.us.split.us.split.us.split.us

bb.av:                                            ; preds = %bb.au, %bb.at, %.preheader.us.us.us
  %i.da = add i32 %reass.sub.us.us.us, -6         ; 3 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.us.us.us.us.1 = icmp slt i32 %i.da, %i.dc
  br i1 %.not92.us.us.us.us.1, label %bb.ax, label %.loopexit.split.us.us.us.us.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.dd = and i32 %i.cu, 64
  %.not93.us.us.us.us.1 = icmp eq i32 %i.dd, 0
  br i1 %.not93.us.us.us.us.1, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.da, ptr noundef nonnull %i.b)
          to label %.thread unwind label %.split.us.split.us.split.us.split.us

.thread:                                          ; preds = %bb.ay, %bb.ax
  %i.de = add i32 %reass.sub.us.us.us, -5
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.df = icmp slt i32 %reass.sub.us.us.us, 5
  br i1 %i.df, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.az
  %i.dg = phi i32 [ %i.de, %.thread ], [ 0, %bb.az ] ; 2 uses
  %i.dh = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.us.us.us.us.2 = icmp slt i32 %i.dg, %i.dh
  br i1 %.not92.us.us.us.us.2, label %bb.bb, label %.loopexit.split.us.us.us.us.loopexit

bb.bb:                                            ; preds = %bb.ba
  %i.di = and i32 %i.cu, 32
  %.not93.us.us.us.us.2 = icmp eq i32 %i.di, 0
  br i1 %.not93.us.us.us.us.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.dg, ptr noundef nonnull %i.b)
          to label %bb.bd unwind label %.split.us.split.us.split.us.split.us

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az
  %i.dj = add i32 %reass.sub.us.us.us, -4         ; 3 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dl = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.us.us.us.us.3 = icmp slt i32 %i.dj, %i.dl
  br i1 %.not92.us.us.us.us.3, label %bb.bf, label %.loopexit.split.us.us.us.us.loopexit

bb.bf:                                            ; preds = %bb.be
  %i.dm = and i32 %i.cu, 16
  %.not93.us.us.us.us.3 = icmp eq i32 %i.dm, 0
  br i1 %.not93.us.us.us.us.3, label %.thread204, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.dj, ptr noundef nonnull %i.b)
          to label %.thread204 unwind label %.split.us.split.us.split.us.split.us

.thread204:                                       ; preds = %bb.bg, %bb.bf
  %i.dn = add i32 %reass.sub.us.us.us, -3
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.do = icmp slt i32 %reass.sub.us.us.us, 3
  br i1 %i.do, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.thread204, %bb.bh
  %i.dp = phi i32 [ %i.dn, %.thread204 ], [ 0, %bb.bh ] ; 2 uses
  %i.dq = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.us.us.us.us.4 = icmp slt i32 %i.dp, %i.dq
  br i1 %.not92.us.us.us.us.4, label %bb.bj, label %.loopexit.split.us.us.us.us.loopexit

bb.bj:                                            ; preds = %bb.bi
  %i.dr = and i32 %i.cu, 8
  %.not93.us.us.us.us.4 = icmp eq i32 %i.dr, 0
  br i1 %.not93.us.us.us.us.4, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.dp, ptr noundef nonnull %i.b)
          to label %bb.bl unwind label %.split.us.split.us.split.us.split.us

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.ds = add i32 %reass.sub.us.us.us, -2         ; 3 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.du = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.us.us.us.us.5 = icmp slt i32 %i.ds, %i.du
  br i1 %.not92.us.us.us.us.5, label %bb.bn, label %.loopexit.split.us.us.us.us.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.dv = and i32 %i.cu, 4
  %.not93.us.us.us.us.5 = icmp eq i32 %i.dv, 0
  br i1 %.not93.us.us.us.us.5, label %.thread206, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.ds, ptr noundef nonnull %i.b)
          to label %.thread206 unwind label %.split.us.split.us.split.us.split.us

.thread206:                                       ; preds = %bb.bo, %bb.bn
  %i.dw = add i32 %reass.sub.us.us.us, -1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.dx = icmp slt i32 %reass.sub.us.us.us, 1
  br i1 %i.dx, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %.thread206, %bb.bp
  %i.dy = phi i32 [ %i.dw, %.thread206 ], [ 0, %bb.bp ] ; 2 uses
  %i.dz = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.us.us.us.us.6 = icmp slt i32 %i.dy, %i.dz
  br i1 %.not92.us.us.us.us.6, label %bb.br, label %.loopexit.split.us.us.us.us.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.ea = and i32 %i.cu, 2
  %.not93.us.us.us.us.6 = icmp eq i32 %i.ea, 0
  br i1 %.not93.us.us.us.us.6, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %i.dy, ptr noundef nonnull %i.b)
          to label %bb.bt unwind label %.split.us.split.us.split.us.split.us

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bp
  %i.eb = icmp slt i32 %reass.sub.us.us.us, 0
  %i.ec = load i32, ptr %i.bb, align 4
  %.not92.us.us.us.us.7 = icmp sge i32 %reass.sub.us.us.us, %i.ec
  %or.cond.not222 = select i1 %i.eb, i1 true, i1 %.not92.us.us.us.us.7
  %i.ed = and i32 %i.cu, 1
  %.not93.us.us.us.us.7 = icmp eq i32 %i.ed, 0
  %or.cond216 = or i1 %or.cond.not222, %.not93.us.us.us.us.7
  br i1 %or.cond216, label %.loopexit.split.us.us.us.us.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.ci, i32 noundef %reass.sub.us.us.us, ptr noundef nonnull %i.b)
          to label %.loopexit.split.us.us.us.us.loopexit unwind label %.split.us.split.us.split.us.split.us

.loopexit.split.us.us.us.us.loopexit:             ; preds = %bb.bt, %bb.bu, %bb.bq, %bb.bm, %bb.bi, %bb.be, %bb.ba, %bb.aw, %bb.as
  %.pre157 = load i32, ptr %i.ce, align 8, !tbaa !104
  br label %.loopexit.split.us.us.us.us

.loopexit.split.us.us.us.us:                      ; preds = %.loopexit.split.us.us.us.us.loopexit, %.lr.ph.us.us
  %i.ee = phi i32 [ %.pre157, %.loopexit.split.us.us.us.us.loopexit ], [ %i.cn, %.lr.ph.us.us ] ; 2 uses
  %i.ef = add nuw nsw i32 %.060122.us.us.us, 1    ; 2 uses
  %i.eg = icmp slt i32 %i.ef, %i.ee
  br i1 %i.eg, label %.lr.ph.us.us, label %.loopexit120.us.us.loopexit, !llvm.loop !170

.loopexit120.us.us.loopexit:                      ; preds = %.loopexit.split.us.us.us.us
  %.pre158 = load i32, ptr %i.bq, align 8, !tbaa !96
  br label %.loopexit120.us.us

.loopexit120.us.us:                               ; preds = %.loopexit120.us.us.loopexit, %.preheader119.us.us, %bb.aq
  %i.eh = phi i32 [ %.pre158, %.loopexit120.us.us.loopexit ], [ %i.ch, %.preheader119.us.us ], [ %i.ch, %bb.aq ] ; 2 uses
  %i.ei = add nuw nsw i32 %.061124.us.us, 1       ; 2 uses
  %i.ej = icmp slt i32 %i.ei, %i.eh
  br i1 %i.ej, label %bb.aq, label %._crit_edge.split.us.us.loopexit, !llvm.loop !171

._crit_edge.split.us.us.loopexit:                 ; preds = %bb.ar, %.loopexit120.us.us
  %.pre159 = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %.pre159, i64 152
  %.pre161 = load ptr, ptr %.phi.trans.insert160, align 8, !tbaa !84
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %bb.ap
  %i.ek = phi ptr [ %.pre161, %._crit_edge.split.us.us.loopexit ], [ %i.bp, %bb.ap ] ; 2 uses
  %i.el = phi ptr [ %.pre159, %._crit_edge.split.us.us.loopexit ], [ %i.bn, %bb.ap ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 128
  %i.en = load i64, ptr %i.em, align 8, !tbaa !107
  %i.eo = ashr i64 %i.en, 6
  %i.ep = add nsw i64 %i.eo, %i.bw
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 136
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !108
  %i.es = lshr i64 %i.er, 6
  %i.et = trunc i64 %i.es to i32
  %i.eu = add i32 %.sroa.4.1131.us, %i.et
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.ev = load i32, ptr %i.a, align 4, !tbaa !40
  %i.ew = zext i32 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next150, %i.ew
  br i1 %i.ex, label %.lr.ph134.split.us, label %._crit_edge135, !llvm.loop !172

.split137.us:                                     ; preds = %bb.an, %.lr.ph134.split.us
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.split.us.split.us.split.us.split.us:             ; preds = %bb.bu, %bb.bs, %bb.bo, %bb.bk, %bb.bg, %bb.bc, %bb.ay, %bb.au
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

._crit_edge135:                                   ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.al
  invoke void @hb_buffer_destroy(ptr noundef nonnull %i.v)
          to label %bb.dn unwind label %bb.bv

bb.bv:                                            ; preds = %._crit_edge135, %bb.aj, %bb.ah
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.lr.ph134.split:                                  ; preds = %.lr.ph134, %._crit_edge.split
  %i.fb = phi ptr [ %i.kd, %._crit_edge.split ], [ %.pre156, %.lr.ph134 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph134 ] ; 2 uses
  %.sroa.4.1131 = phi i32 [ %i.km, %._crit_edge.split ], [ %spec.select, %.lr.ph134 ] ; 2 uses
  %.sroa.057.0.in130 = phi i64 [ %i.kh, %._crit_edge.split ], [ %3, %.lr.ph134 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %indvars.iv
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !68
  %i.fe = invoke i32 @FT_Load_Glyph(ptr noundef %i.fb, i32 noundef %i.fd, i32 noundef 0)
          to label %bb.bw unwind label %.split137

bb.bw:                                            ; preds = %.lr.ph134.split
  %.not89 = icmp eq i32 %i.fe, 0
  br i1 %.not89, label %bb.cb, label %.split140.us

.split137:                                        ; preds = %bb.cb, %.lr.ph134.split
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.split140.us:                                     ; preds = %bb.bw, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %.split140.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl17putTextBitmapMonoERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 414) #19
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %.split140.us
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

bb.ca:                                            ; preds = %bb.bx
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %18, align 8, !tbaa !57   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.ca
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !58
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.bz
  %.pn97 = phi { ptr, i32 } [ %i.fg, %bb.bz ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.fh, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.do

bb.cb:                                            ; preds = %bb.bw
  %i.fn = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 152
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !84
  %i.fq = invoke i32 @FT_Render_Glyph(ptr noundef %i.fp, i32 noundef 2)
          to label %bb.cc unwind label %.split137

bb.cc:                                            ; preds = %bb.cb
  %.not90 = icmp eq i32 %i.fq, 0
  br i1 %.not90, label %bb.ch, label %.split142.us

.split142.us:                                     ; preds = %bb.cc, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %.split142.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl17putTextBitmapMonoERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 415) #19
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  unreachable

bb.cf:                                            ; preds = %.split142.us
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.cg:                                            ; preds = %bb.cd
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %20, align 8, !tbaa !57   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.cg
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !58
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.cf
  %.pn95 = phi { ptr, i32 } [ %i.fr, %bb.cf ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.fs, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.do

bb.ch:                                            ; preds = %bb.cc
  %i.fy = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 152
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !84 ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 152 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !94
  %i.ge = lshr i64 %i.gd, 6
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = sub i32 %.sroa.4.1131, %i.gf
  %sext = shl i64 %.sroa.057.0.in130, 32
  %i.gh = ashr exact i64 %sext, 32
  %i.gi = load i32, ptr %i.gb, align 8, !tbaa !96 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph127, label %._crit_edge.split

.lr.ph127:                                        ; preds = %bb.ch
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !95
  %i.gm = lshr i64 %i.gl, 6
  %i.gn = add i64 %i.gm, %.sroa.057.0.in130
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ga, i64 160 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  %i.gr = add i32 %i.go, 7
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph127, %.loopexit120
  %i.gs = phi i32 [ %i.gi, %.lr.ph127 ], [ %i.jz, %.loopexit120 ] ; 2 uses
  %.061124 = phi i32 [ 0, %.lr.ph127 ], [ %i.ka, %.loopexit120 ] ; 3 uses
  %i.gt = add nsw i32 %.061124, %i.gg             ; 10 uses
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %.loopexit120, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gv = load i32, ptr %22, align 8, !tbaa !103
  %.not91 = icmp slt i32 %i.gt, %i.gv
  br i1 %.not91, label %.preheader119, label %._crit_edge.split.loopexit

.preheader119:                                    ; preds = %bb.cj
  %i.gw = load i32, ptr %i.gp, align 8, !tbaa !104 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph, label %.loopexit120

.lr.ph:                                           ; preds = %.preheader119, %.loopexit.split
  %i.gy = phi i32 [ %i.jw, %.loopexit.split ], [ %i.gw, %.preheader119 ] ; 2 uses
  %.060122 = phi i32 [ %i.jx, %.loopexit.split ], [ 0, %.preheader119 ] ; 3 uses
  %i.gz = load ptr, ptr %i.gq, align 8, !tbaa !105
  %i.ha = mul nuw nsw i32 %i.gy, %.061124
  %i.hb = add nsw i32 %i.ha, %.060122
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds i8, ptr %i.gz, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !58  ; 3 uses
  %i.hf = zext i8 %i.he to i32                    ; 7 uses
  %i.hg = icmp eq i8 %i.he, 0
  br i1 %i.hg, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.hh = shl nuw nsw i32 %.060122, 3             ; 2 uses
  %reass.sub = add i32 %i.gr, %i.hh               ; 12 uses
  %i.hi = add i32 %i.hh, %i.go                    ; 3 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %.preheader
  %i.hk = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92 = icmp slt i32 %i.hi, %i.hk
  br i1 %.not92, label %bb.cl, label %.loopexit.split.loopexit

bb.cl:                                            ; preds = %bb.ck
  %.not93 = icmp sgt i8 %i.he, -1
  br i1 %.not93, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hl = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.hm = getelementptr i8, ptr %i.hl, i64 %.fca.0.extract
  %i.hn = getelementptr i8, ptr %i.hm, i64 -1
  %i.ho = load ptr, ptr %i.hn, align 8, !nosanitize !36
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %i.hi, ptr noundef nonnull %i.b)
          to label %bb.cn unwind label %.split

.split:                                           ; preds = %bb.dm, %bb.dk, %bb.dg, %bb.dc, %bb.cy, %bb.cu, %bb.cq, %bb.cm
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cn:                                            ; preds = %bb.cl, %bb.cm, %.preheader
  %i.hq = add i32 %reass.sub, -6                  ; 3 uses
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hs = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.1 = icmp slt i32 %i.hq, %i.hs
  br i1 %.not92.1, label %bb.cp, label %.loopexit.split.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.ht = and i32 %i.hf, 64
  %.not93.1 = icmp eq i32 %i.ht, 0
  br i1 %.not93.1, label %.thread208, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hu = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.hv = getelementptr i8, ptr %i.hu, i64 %.fca.0.extract
  %i.hw = getelementptr i8, ptr %i.hv, i64 -1
  %i.hx = load ptr, ptr %i.hw, align 8, !nosanitize !36
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %i.hq, ptr noundef nonnull %i.b)
          to label %.thread208 unwind label %.split

.thread208:                                       ; preds = %bb.cq, %bb.cp
  %i.hy = add i32 %reass.sub, -5
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cn
  %i.hz = icmp slt i32 %reass.sub, 5
  br i1 %i.hz, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %.thread208, %bb.cr
  %i.ia = phi i32 [ %i.hy, %.thread208 ], [ 0, %bb.cr ] ; 2 uses
  %i.ib = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.2 = icmp slt i32 %i.ia, %i.ib
  br i1 %.not92.2, label %bb.ct, label %.loopexit.split.loopexit

bb.ct:                                            ; preds = %bb.cs
  %i.ic = and i32 %i.hf, 32
  %.not93.2 = icmp eq i32 %i.ic, 0
  br i1 %.not93.2, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.id = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.ie = getelementptr i8, ptr %i.id, i64 %.fca.0.extract
  %i.if = getelementptr i8, ptr %i.ie, i64 -1
  %i.ig = load ptr, ptr %i.if, align 8, !nosanitize !36
  invoke void %i.ig(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %i.ia, ptr noundef nonnull %i.b)
          to label %bb.cv unwind label %.split

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cr
  %i.ih = add i32 %reass.sub, -4                  ; 3 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ij = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.3 = icmp slt i32 %i.ih, %i.ij
  br i1 %.not92.3, label %bb.cx, label %.loopexit.split.loopexit

bb.cx:                                            ; preds = %bb.cw
  %i.ik = and i32 %i.hf, 16
  %.not93.3 = icmp eq i32 %i.ik, 0
  br i1 %.not93.3, label %.thread210, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.il = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.im = getelementptr i8, ptr %i.il, i64 %.fca.0.extract
  %i.in = getelementptr i8, ptr %i.im, i64 -1
  %i.io = load ptr, ptr %i.in, align 8, !nosanitize !36
  invoke void %i.io(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %i.ih, ptr noundef nonnull %i.b)
          to label %.thread210 unwind label %.split

.thread210:                                       ; preds = %bb.cy, %bb.cx
  %i.ip = add i32 %reass.sub, -3
  br label %bb.da

bb.cz:                                            ; preds = %bb.cv
  %i.iq = icmp slt i32 %reass.sub, 3
  br i1 %i.iq, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %.thread210, %bb.cz
  %i.ir = phi i32 [ %i.ip, %.thread210 ], [ 0, %bb.cz ] ; 2 uses
  %i.is = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.4 = icmp slt i32 %i.ir, %i.is
  br i1 %.not92.4, label %bb.db, label %.loopexit.split.loopexit

bb.db:                                            ; preds = %bb.da
  %i.it = and i32 %i.hf, 8
  %.not93.4 = icmp eq i32 %i.it, 0
  br i1 %.not93.4, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.iu = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.iv = getelementptr i8, ptr %i.iu, i64 %.fca.0.extract
  %i.iw = getelementptr i8, ptr %i.iv, i64 -1
  %i.ix = load ptr, ptr %i.iw, align 8, !nosanitize !36
  invoke void %i.ix(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %i.ir, ptr noundef nonnull %i.b)
          to label %bb.dd unwind label %.split

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.cz
  %i.iy = add i32 %reass.sub, -2                  ; 3 uses
  %i.iz = icmp slt i32 %i.iy, 0
  br i1 %i.iz, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ja = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.5 = icmp slt i32 %i.iy, %i.ja
  br i1 %.not92.5, label %bb.df, label %.loopexit.split.loopexit

bb.df:                                            ; preds = %bb.de
  %i.jb = and i32 %i.hf, 4
  %.not93.5 = icmp eq i32 %i.jb, 0
  br i1 %.not93.5, label %.thread212, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jc = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.jd = getelementptr i8, ptr %i.jc, i64 %.fca.0.extract
  %i.je = getelementptr i8, ptr %i.jd, i64 -1
  %i.jf = load ptr, ptr %i.je, align 8, !nosanitize !36
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %i.iy, ptr noundef nonnull %i.b)
          to label %.thread212 unwind label %.split

.thread212:                                       ; preds = %bb.dg, %bb.df
  %i.jg = add i32 %reass.sub, -1
  br label %bb.di

bb.dh:                                            ; preds = %bb.dd
  %i.jh = icmp slt i32 %reass.sub, 1
  br i1 %i.jh, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %.thread212, %bb.dh
  %i.ji = phi i32 [ %i.jg, %.thread212 ], [ 0, %bb.dh ] ; 2 uses
  %i.jj = load i32, ptr %i.bb, align 4, !tbaa !106
  %.not92.6 = icmp slt i32 %i.ji, %i.jj
  br i1 %.not92.6, label %bb.dj, label %.loopexit.split.loopexit

bb.dj:                                            ; preds = %bb.di
  %i.jk = and i32 %i.hf, 2
  %.not93.6 = icmp eq i32 %i.jk, 0
  br i1 %.not93.6, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jl = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.jm = getelementptr i8, ptr %i.jl, i64 %.fca.0.extract
  %i.jn = getelementptr i8, ptr %i.jm, i64 -1
  %i.jo = load ptr, ptr %i.jn, align 8, !nosanitize !36
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %i.ji, ptr noundef nonnull %i.b)
          to label %bb.dl unwind label %.split

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.dh
  %i.jp = icmp slt i32 %reass.sub, 0
  %i.jq = load i32, ptr %i.bb, align 4
  %.not92.7 = icmp sge i32 %reass.sub, %i.jq
  %or.cond217.not220 = select i1 %i.jp, i1 true, i1 %.not92.7
  %i.jr = and i32 %i.hf, 1
  %.not93.7 = icmp eq i32 %i.jr, 0
  %or.cond218 = or i1 %or.cond217.not220, %.not93.7
  br i1 %or.cond218, label %.loopexit.split.loopexit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.js = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.jt = getelementptr i8, ptr %i.js, i64 %.fca.0.extract
  %i.ju = getelementptr i8, ptr %i.jt, i64 -1
  %i.jv = load ptr, ptr %i.ju, align 8, !nosanitize !36
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.gt, i32 noundef %reass.sub, ptr noundef nonnull %i.b)
          to label %.loopexit.split.loopexit unwind label %.split

.loopexit.split.loopexit:                         ; preds = %bb.dl, %bb.dm, %bb.di, %bb.de, %bb.da, %bb.cw, %bb.cs, %bb.co, %bb.ck
  %.pre152 = load i32, ptr %i.gp, align 8, !tbaa !104
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit, %.lr.ph
  %i.jw = phi i32 [ %.pre152, %.loopexit.split.loopexit ], [ %i.gy, %.lr.ph ] ; 2 uses
  %i.jx = add nuw nsw i32 %.060122, 1             ; 2 uses
  %i.jy = icmp slt i32 %i.jx, %i.jw
  br i1 %i.jy, label %.lr.ph, label %.loopexit120.loopexit, !llvm.loop !170

.loopexit120.loopexit:                            ; preds = %.loopexit.split
  %.pre153 = load i32, ptr %i.gb, align 8, !tbaa !96
  br label %.loopexit120

.loopexit120:                                     ; preds = %.loopexit120.loopexit, %.preheader119, %bb.ci
  %i.jz = phi i32 [ %.pre153, %.loopexit120.loopexit ], [ %i.gs, %.preheader119 ], [ %i.gs, %bb.ci ] ; 2 uses
  %i.ka = add nuw nsw i32 %.061124, 1             ; 2 uses
  %i.kb = icmp slt i32 %i.ka, %i.jz
  br i1 %i.kb, label %bb.ci, label %._crit_edge.split.loopexit, !llvm.loop !171

._crit_edge.split.loopexit:                       ; preds = %bb.cj, %.loopexit120
  %.pre154 = load ptr, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre154, i64 152
  %.pre155 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %bb.ch
  %i.kc = phi ptr [ %.pre155, %._crit_edge.split.loopexit ], [ %i.ga, %bb.ch ] ; 2 uses
  %i.kd = phi ptr [ %.pre154, %._crit_edge.split.loopexit ], [ %i.fy, %bb.ch ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 128
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !107
  %i.kg = ashr i64 %i.kf, 6
  %i.kh = add nsw i64 %i.kg, %i.gh
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 136
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !108
  %i.kk = lshr i64 %i.kj, 6
  %i.kl = trunc i64 %i.kk to i32
  %i.km = add i32 %.sroa.4.1131, %i.kl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = load i32, ptr %i.a, align 4, !tbaa !40
  %i.ko = zext i32 %i.kn to i64
  %i.kp = icmp samesign ult i64 %indvars.iv.next, %i.ko
  br i1 %i.kp, label %.lr.ph134.split, label %._crit_edge135, !llvm.loop !172

bb.dn:                                            ; preds = %._crit_edge135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  ret void

bb.do:                                            ; preds = %.split, %.split.us.split.us.split.us.split.us, %.split137, %.split137.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.bv
  %.pn97.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.bv ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %i.ey, %.split137.us ], [ %i.ff, %.split137 ], [ %i.hp, %.split ], [ %i.ez, %.split.us.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %bb.ab
  %.pn97.pn.pn.pn = phi { ptr, i32 } [ %.pn97.pn.pn, %bb.do ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %i.ai, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.q
  %.pn97.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn97.pn.pn.pn, %bb.dp ], [ %i.w, %bb.q ], [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn97.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn97.pn.pn.pn.pn, %bb.dq ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn97.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8freetype13FreeType2Impl14putTextOutlineERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %3, i32 noundef %4, ptr nofree noundef readonly align 8 captures(none) dead_on_return %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %struct.FT_Outline_, align 8       ; 7 uses
  %16 = alloca %struct.FT_Matrix_, align 8        ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.031.0.extract.trunc = trunc i64 %3 to i32
  %i.b = tail call ptr @hb_buffer_create()        ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl14putTextOutlineERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 297) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %9, align 8, !tbaa !57     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !58
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ac

bb.g:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !57
  tail call void @hb_buffer_add_utf8(ptr noundef nonnull %i.b, ptr noundef %i.j, i32 noundef -1, i32 noundef 0, i32 noundef -1)
  tail call void @hb_buffer_guess_segment_properties(ptr noundef nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  tail call void @hb_shape(ptr noundef %i.l, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !40
  %i.m = call ptr @hb_buffer_get_glyph_infos(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not44 = icmp eq ptr %i.m, null
  br i1 %.not44, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8freetype13FreeType2Impl14putTextOutlineERKNS_17_InputOutputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point_IiEEiNS_7Scalar_IdEEiib, ptr noundef nonnull @.str.1, i32 noundef 306) #19
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %11, align 8, !tbaa !57    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.l
  %i.s = load i64, ptr %i.q, align 8, !tbaa !58
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.k
  %.pn45 = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.o, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ab

bb.m:                                             ; preds = %bb.g
  %i.u = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 11 uses
  store ptr %1, ptr %i.u, align 8, !tbaa !175
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = load <2 x double>, ptr %5, align 8, !tbaa !66
  store <2 x double> %i.x, ptr %i.v, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aa = load <2 x double>, ptr %i.y, align 8, !tbaa !66
  store <2 x double> %i.aa, ptr %i.z, align 8, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 %6, ptr %i.ae, align 8, !tbaa !41
end_hunk_0
