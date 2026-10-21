Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpGPU?download=true
inline.NumInlined: 3934
inline.NumDeleted: 117
begin_hunk_0_@_ZN16OpenColorIO_v2_530_Add_Gamut_Compress_Inv_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextEjRKNS_5ACES227SharedCompressionParametersERKNS6_19GamutCompressParamsE:bb.a
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #18
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn97 = phi { ptr, i32 } [ %i.hn, %bb.cy ], [ %i.hm, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  br label %bb.dp

bb.da:                                            ; preds = %bb.ar
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.as
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #18
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn99 = phi { ptr, i32 } [ %i.hp, %bb.db ], [ %i.ho, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.dp

bb.dd:                                            ; preds = %bb.au
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #18
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pn101 = phi { ptr, i32 } [ %i.hr, %bb.de ], [ %i.hq, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.dp

bb.dg:                                            ; preds = %bb.ba
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #18
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn103 = phi { ptr, i32 } [ %i.ht, %bb.dh ], [ %i.hs, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.dp

bb.dj:                                            ; preds = %bb.bh
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.bi
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #18
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn105 = phi { ptr, i32 } [ %i.hv, %bb.dk ], [ %i.hu, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.dp

bb.dm:                                            ; preds = %bb.bj
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.bl, %bb.bk
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #18
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn107 = phi { ptr, i32 } [ %i.hx, %bb.dn ], [ %i.hw, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cp, %bb.cm, %bb.ce, %bb.ca, %bb.bw
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.do ], [ %.pn105, %bb.dl ], [ %i.hh, %bb.cq ], [ %.pn103, %bb.di ], [ %.pn101, %bb.df ], [ %.pn99, %bb.dc ], [ %.pn97, %bb.cz ], [ %.pn95, %bb.cw ], [ %.pn93, %bb.ct ], [ %.pn91, %bb.cp ], [ %.pn84.pn.pn.pn.pn.pn, %bb.cm ], [ %.pn80.pn.pn, %bb.ce ], [ %.pn76.pn.pn, %bb.ca ], [ %.pn.pn.pn, %bb.bw ] ; 2 uses
  %i.hy = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.d
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.dp
  %i.ia = load i64, ptr %i.d, align 8, !tbaa !22
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214, %bb.bs
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.bs ], [ %.pn107.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214 ], [ %.pn107.pn, %bb.dp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ic = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.if = load i64, ptr %i.id, align 8, !tbaa !22
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217, %bb.br
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.eu, %bb.br ], [ %.pn107.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ], [ %.pn107.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ih = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !22
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.bq
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.bq ], [ %.pn107.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %.pn107.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.im = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !22
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %bb.bp
  %.pn107.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.bp ], [ %.pn107.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %.pn107.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ir = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !22
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %bb.bo
  %.pn107.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.bo ], [ %.pn107.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.pn107.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.iw = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !22
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.bn
  %.pn107.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.bn ], [ %.pn107.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ], [ %.pn107.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.jb = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !22
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn107.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_535Add_ACES_OutputTransform_Fwd_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::Primaries", align 16 ; 8 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 8 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 6 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 7 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 6 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 8 uses
  %9 = alloca %"struct.OpenColorIO_v2_5::ACES2::ChromaCompressParams", align 16 ; 5 uses
  %10 = alloca %"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams", align 4 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %15 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %16 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %17 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %18 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %19 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %20 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %24 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %28 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %29 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %30 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %31 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %32 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %33 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %34 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %35 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %36 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %37 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %38 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %39 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !55     ; 5 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !57
  %i.d = fptrunc double %i.c to float             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !57
  %i.j = fptrunc <2 x double> %i.i to <2 x float>
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load <2 x double>, ptr %i.f, align 8, !tbaa !57
  %i.n = fptrunc <2 x double> %i.m to <2 x float>
  %i.o = fpext <2 x float> %i.n to <2 x double>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load <2 x double>, ptr %i.g, align 8, !tbaa !57
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  %i.s = fpext <2 x float> %i.r to <2 x double>
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = load <2 x double>, ptr %i.h, align 8, !tbaa !57
  %i.v = fptrunc <2 x double> %i.u to <2 x float>
  %i.w = fpext <2 x float> %i.v to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store <2 x double> %i.k, ptr %3, align 16, !tbaa !57
  store <2 x double> %i.o, ptr %i.l, align 16, !tbaa !57
  store <2 x double> %i.s, ptr %i.p, align 16, !tbaa !57
  store <2 x double> %i.w, ptr %i.t, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %4, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %5, ptr noundef nonnull align 8 dereferenceable(64) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4 %6, float noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %7, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4 %8, float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(164) %4, ptr noundef nonnull align 4 dereferenceable(164) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.x = call { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(44) %6) ; 2 uses
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %40 = extractvalue { <2 x float>, <2 x float> } %i.x, 1
  %41 = shufflevector <2 x float> %i.y, <2 x float> %40, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %41, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN16OpenColorIO_v2_55ACES224init_GamutCompressParamsEfRKNS0_9JMhParamsES3_RKNS0_15ToneScaleParamsERKNS0_27SharedCompressionParametersES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams") align 4 %10, float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(164) %4, ptr noundef nonnull align 4 dereferenceable(164) %5, ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(1460) %8, ptr noundef nonnull align 4 dereferenceable(164) %7)
  %i.z = load ptr, ptr %0, align 8, !tbaa !14
  %i.aa = call noundef i32 @_ZN16OpenColorIO_v2_516GpuShaderCreator20getNextResourceIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN16OpenColorIO_v2_516_Add_Reach_tableB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjRKNS_5ACES27Table1DE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(1452) %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZN16OpenColorIO_v2_519_Add_Tonescale_funcB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjbRKNS_5ACES29JMhParamsERKNS4_15ToneScaleParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.aa, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(164) %4, ptr noundef nonnull align 4 dereferenceable(44) %6)
          to label %bb.b unwind label %bb.bu

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.ac = load ptr, ptr %0, align 8, !tbaa !14
  %i.ad = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #18 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ae, ptr %13, align 8, !tbaa !17
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.677) #19
          to label %.noexc unwind label %bb.bv

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ag = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !19
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc149 unwind label %bb.bv ; 2 uses

.noexc149:                                        ; preds = %.noexc.i
  store ptr %i.ai, ptr %13, align 8, !tbaa !21
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc149, %bb.d
  %i.ak = phi ptr [ %i.ai, %.noexc149 ], [ %i.ae, %bb.d ] ; 2 uses
  switch i64 %i.ag, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !22
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull align 1 %i.ad, i64 %i.ag, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !23
  %i.ao = load ptr, ptr %13, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %14, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.h unwind label %bb.bw

bb.h:                                             ; preds = %bb.g
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.420)
          to label %bb.i unwind label %bb.bx      ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %15, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.j unwind label %bb.bz

bb.j:                                             ; preds = %bb.i
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.421)
          to label %bb.k unwind label %bb.ca      ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %16, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.l unwind label %bb.cc

bb.l:                                             ; preds = %bb.k
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.420)
          to label %bb.m unwind label %bb.cd      ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  invoke void @_ZN16OpenColorIO_v2_522_Add_RGB_to_JMh_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKNS_5ACES29JMhParamsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 4 dereferenceable(164) %4)
          to label %bb.n unwind label %bb.cf

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN16OpenColorIO_v2_518_Add_SinCos_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.o unwind label %bb.cf

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %17, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.p unwind label %bb.cg

bb.p:                                             ; preds = %bb.o
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.420)
          to label %bb.q unwind label %bb.ch      ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %18, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.r unwind label %bb.cj

bb.r:                                             ; preds = %bb.q
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.422)
          to label %bb.s unwind label %bb.ck      ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %19, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.t unwind label %bb.cm

bb.t:                                             ; preds = %bb.s
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.420)
          to label %bb.u unwind label %bb.cn      ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %20, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %._crit_edge.i.i150 unwind label %bb.cp

._crit_edge.i.i150:                               ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.aw, ptr %22, align 8, !tbaa !17
  store i32 1937006410, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 4, ptr %i.ax, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i8 0, ptr %i.ay, align 4, !tbaa !22
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText9floatDeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.v unwind label %bb.cq

bb.v:                                             ; preds = %._crit_edge.i.i150
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.w unwind label %bb.cr

bb.w:                                             ; preds = %bb.v
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.13)
          to label %bb.x unwind label %bb.cr

bb.x:                                             ; preds = %bb.w
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.y unwind label %bb.cr

bb.y:                                             ; preds = %bb.x
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.176)
          to label %bb.z unwind label %bb.cr

bb.z:                                             ; preds = %bb.y
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.aa unwind label %bb.cr

bb.aa:                                            ; preds = %bb.z
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.423)
          to label %bb.ab unwind label %bb.cr     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bf = load ptr, ptr %21, align 8, !tbaa !21   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !22
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bk = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aw
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_535Add_ACES_OutputTransform_Fwd_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE:bb.a

bb.dq:                                            ; preds = %bb.ay
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #18
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pn130 = phi { ptr, i32 } [ %i.fi, %bb.dq ], [ %i.fh, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.en

bb.ds:                                            ; preds = %bb.az
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.ba
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #18
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn132 = phi { ptr, i32 } [ %i.fk, %bb.dt ], [ %i.fj, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.en

bb.dv:                                            ; preds = %bb.be
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.bf
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #18
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn134 = phi { ptr, i32 } [ %i.fm, %bb.dw ], [ %i.fl, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.en

bb.dy:                                            ; preds = %bb.bg
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dz:                                            ; preds = %bb.bh
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #18
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.pn136 = phi { ptr, i32 } [ %i.fo, %bb.dz ], [ %i.fn, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.en

bb.eb:                                            ; preds = %bb.bi
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ec:                                            ; preds = %bb.bj
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #18
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.pn138 = phi { ptr, i32 } [ %i.fq, %bb.ec ], [ %i.fp, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.en

bb.ee:                                            ; preds = %bb.bk
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ef:                                            ; preds = %bb.bl
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #18
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.pn140 = phi { ptr, i32 } [ %i.fs, %bb.ef ], [ %i.fr, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  br label %bb.en

bb.eh:                                            ; preds = %bb.bm
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ei:                                            ; preds = %bb.bn
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #18
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.pn142 = phi { ptr, i32 } [ %i.fu, %bb.ei ], [ %i.ft, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.en

bb.ek:                                            ; preds = %bb.br
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.el:                                            ; preds = %bb.bs
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #18
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.pn144 = phi { ptr, i32 } [ %i.fw, %bb.el ], [ %i.fv, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ej, %bb.eg, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.do, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cv, %bb.cs, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.ce, %bb.cb, %bb.by
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %bb.em ], [ %i.dq, %bb.cf ], [ %.pn142, %bb.ej ], [ %.pn140, %bb.eg ], [ %.pn138, %bb.ed ], [ %.pn136, %bb.ea ], [ %.pn134, %bb.dx ], [ %.pn132, %bb.du ], [ %.pn130, %bb.dr ], [ %.pn128, %bb.do ], [ %.pn126, %bb.dl ], [ %.pn124, %bb.di ], [ %.pn122, %bb.df ], [ %.pn120, %bb.dc ], [ %.pn116.pn.pn, %bb.cz ], [ %.pn114, %bb.cv ], [ %.pn110.pn.pn, %bb.cs ], [ %.pn108, %bb.co ], [ %.pn106, %bb.cl ], [ %.pn104, %bb.ci ], [ %.pn102, %bb.ce ], [ %.pn100, %bb.cb ], [ %.pn, %bb.by ] ; 2 uses
  %i.fx = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ae
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.en
  %i.fz = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bv
  %.pn144.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.bv ], [ %.pn144.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn144.pn, %bb.en ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.gb = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !22
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.bu
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.di, %bb.bu ], [ %.pn144.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %.pn144.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.gg = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !22
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn144.pn.pn.pn
}

declare void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4, float noundef) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4, float noundef, ptr noundef nonnull align 4 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(164)) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef, ptr noundef nonnull align 4 dereferenceable(44)) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_55ACES224init_GamutCompressParamsEfRKNS0_9JMhParamsES3_RKNS0_15ToneScaleParamsERKNS0_27SharedCompressionParametersES3_(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams") align 4, float noundef, ptr noundef nonnull align 4 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(1460), ptr noundef nonnull align 4 dereferenceable(164)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i32 @_ZN16OpenColorIO_v2_516GpuShaderCreator20getNextResourceIndexEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_535Add_ACES_OutputTransform_Inv_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::Primaries", align 16 ; 8 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 8 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 6 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 7 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 6 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 8 uses
  %9 = alloca %"struct.OpenColorIO_v2_5::ACES2::ChromaCompressParams", align 16 ; 5 uses
  %10 = alloca %"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams", align 4 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %15 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %16 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %17 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %21 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %22 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %23 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %24 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %25 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %26 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %27 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %28 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %32 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %33 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %34 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %35 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %36 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %37 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !55     ; 5 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !57
  %i.d = fptrunc double %i.c to float             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !57
  %i.j = fptrunc <2 x double> %i.i to <2 x float>
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load <2 x double>, ptr %i.f, align 8, !tbaa !57
  %i.n = fptrunc <2 x double> %i.m to <2 x float>
  %i.o = fpext <2 x float> %i.n to <2 x double>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load <2 x double>, ptr %i.g, align 8, !tbaa !57
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  %i.s = fpext <2 x float> %i.r to <2 x double>
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = load <2 x double>, ptr %i.h, align 8, !tbaa !57
  %i.v = fptrunc <2 x double> %i.u to <2 x float>
  %i.w = fpext <2 x float> %i.v to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store <2 x double> %i.k, ptr %3, align 16, !tbaa !57
  store <2 x double> %i.o, ptr %i.l, align 16, !tbaa !57
  store <2 x double> %i.s, ptr %i.p, align 16, !tbaa !57
  store <2 x double> %i.w, ptr %i.t, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %4, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %5, ptr noundef nonnull align 8 dereferenceable(64) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4 %6, float noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %7, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4 %8, float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(164) %4, ptr noundef nonnull align 4 dereferenceable(164) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.x = call { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(44) %6) ; 2 uses
  %i.y = extractvalue { <2 x float>, <2 x float> } %i.x, 0
  %38 = extractvalue { <2 x float>, <2 x float> } %i.x, 1
  %39 = shufflevector <2 x float> %i.y, <2 x float> %38, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %39, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN16OpenColorIO_v2_55ACES224init_GamutCompressParamsEfRKNS0_9JMhParamsES3_RKNS0_15ToneScaleParamsERKNS0_27SharedCompressionParametersES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams") align 4 %10, float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(164) %4, ptr noundef nonnull align 4 dereferenceable(164) %5, ptr noundef nonnull align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(1460) %8, ptr noundef nonnull align 4 dereferenceable(164) %7)
  %i.z = load ptr, ptr %0, align 8, !tbaa !14
  %i.aa = call noundef i32 @_ZN16OpenColorIO_v2_516GpuShaderCreator20getNextResourceIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ab = load ptr, ptr %0, align 8, !tbaa !14
  %i.ac = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #18 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ad, ptr %11, align 8, !tbaa !17
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.677) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.af, ptr %i.a, align 8, !tbaa !19
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ah = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ah, ptr %11, align 8, !tbaa !21
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.aj = phi ptr [ %i.ah, %.noexc.i ], [ %i.ad, %bb.b ] ; 2 uses
  switch i64 %i.af, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !22
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ac, i64 %i.af, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !23
  %i.an = load ptr, ptr %11, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  invoke void @_ZN16OpenColorIO_v2_516_Add_Reach_tableB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjRKNS_5ACES27Table1DE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(1452) %i.ap)
          to label %bb.f unwind label %bb.bq

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN16OpenColorIO_v2_519_Add_Tonescale_funcB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjbRKNS_5ACES29JMhParamsERKNS4_15ToneScaleParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.aa, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(164) %4, ptr noundef nonnull align 4 dereferenceable(44) %6)
          to label %bb.g unwind label %bb.br

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %14, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.h unwind label %bb.bs

bb.h:                                             ; preds = %bb.g
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.420)
          to label %bb.i unwind label %bb.bt      ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %15, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.j unwind label %bb.bv

bb.j:                                             ; preds = %bb.i
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.421)
          to label %bb.k unwind label %bb.bw      ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %16, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.l unwind label %bb.by

bb.l:                                             ; preds = %bb.k
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str.420)
          to label %bb.m unwind label %bb.bz      ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  invoke void @_ZN16OpenColorIO_v2_522_Add_RGB_to_JMh_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKNS_5ACES29JMhParamsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 4 dereferenceable(164) %5)
          to label %bb.n unwind label %bb.cb

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN16OpenColorIO_v2_518_Add_SinCos_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.o unwind label %bb.cb

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %17, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %._crit_edge.i.i144 unwind label %bb.cc

._crit_edge.i.i144:                               ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.at, ptr %19, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.at, ptr noundef nonnull align 1 dereferenceable(9) @.str.425, i64 9, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 9, ptr %i.au, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 25
  store i8 0, ptr %i.av, align 1, !tbaa !22
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText9floatDeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.p unwind label %bb.cd

bb.p:                                             ; preds = %._crit_edge.i.i144
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.q unwind label %bb.ce

bb.q:                                             ; preds = %bb.p
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.13)
          to label %bb.r unwind label %bb.ce

bb.r:                                             ; preds = %bb.q
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.s unwind label %bb.ce

bb.s:                                             ; preds = %bb.r
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.407)
          to label %bb.t unwind label %bb.ce

bb.t:                                             ; preds = %bb.s
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.u unwind label %bb.ce

bb.u:                                             ; preds = %bb.t
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.408)
          to label %bb.v unwind label %bb.ce      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.bc = load ptr, ptr %18, align 8, !tbaa !21   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = load ptr, ptr %19, align 8, !tbaa !21   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.at
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !22
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %20, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.w unwind label %bb.cg

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.420)
          to label %bb.x unwind label %bb.ch      ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %21, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.y unwind label %bb.cj

bb.y:                                             ; preds = %bb.x
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.428)
          to label %bb.z unwind label %bb.ck      ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %22, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.aa unwind label %bb.cm
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_535Add_ACES_OutputTransform_Inv_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE:bb.a
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.bf
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #18
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn131 = phi { ptr, i32 } [ %i.fk, %bb.ds ], [ %i.fj, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.ed

bb.du:                                            ; preds = %bb.bg
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dv:                                            ; preds = %bb.bh
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #18
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.pn133 = phi { ptr, i32 } [ %i.fm, %bb.dv ], [ %i.fl, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.ed

bb.dx:                                            ; preds = %bb.bi
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.bj
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #18
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn135 = phi { ptr, i32 } [ %i.fo, %bb.dy ], [ %i.fn, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.ed

bb.ea:                                            ; preds = %bb.bn
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.eb:                                            ; preds = %bb.bo
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #18
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.pn137 = phi { ptr, i32 } [ %i.fq, %bb.eb ], [ %i.fp, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.dz, %bb.dw, %bb.dt, %bb.dq, %bb.dn, %bb.dk, %bb.dh, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cb, %bb.ca, %bb.bx, %bb.bu
  %.pn137.pn = phi { ptr, i32 } [ %.pn137, %bb.ec ], [ %i.do, %bb.cb ], [ %.pn135, %bb.dz ], [ %.pn133, %bb.dw ], [ %.pn131, %bb.dt ], [ %.pn129, %bb.dq ], [ %.pn127, %bb.dn ], [ %.pn125, %bb.dk ], [ %.pn121.pn.pn, %bb.dh ], [ %.pn119, %bb.dd ], [ %.pn117, %bb.da ], [ %.pn115, %bb.cx ], [ %.pn113, %bb.cu ], [ %.pn111, %bb.cr ], [ %.pn109, %bb.co ], [ %.pn107, %bb.cl ], [ %.pn105, %bb.ci ], [ %.pn101.pn.pn, %bb.cf ], [ %.pn99, %bb.ca ], [ %.pn97, %bb.bx ], [ %.pn, %bb.bu ] ; 2 uses
  %i.fr = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.ed
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !22
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.br
  %.pn137.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.br ], [ %.pn137.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %.pn137.pn, %bb.ed ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.fw = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !22
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185, %bb.bq
  %.pn137.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.bq ], [ %.pn137.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %.pn137.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.gb = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ad
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.gd = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn137.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521Add_RGB_to_JMh_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.OpenColorIO_v2_5::Primaries", align 16 ; 7 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !55     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !57
  %i.f = fptrunc <2 x double> %i.e to <2 x float>
  %i.g = fpext <2 x float> %i.f to <2 x double>
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load <2 x double>, ptr %i.b, align 8, !tbaa !57
  %i.j = fptrunc <2 x double> %i.i to <2 x float>
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !57
  %i.n = fptrunc <2 x double> %i.m to <2 x float>
  %i.o = fpext <2 x float> %i.n to <2 x double>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load <2 x double>, ptr %i.d, align 8, !tbaa !57
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  %i.s = fpext <2 x float> %i.r to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store <2 x double> %i.g, ptr %3, align 16, !tbaa !57
  store <2 x double> %i.k, ptr %i.h, align 16, !tbaa !57
  store <2 x double> %i.o, ptr %i.l, align 16, !tbaa !57
  store <2 x double> %i.s, ptr %i.p, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  call void @_ZN16OpenColorIO_v2_522_Add_RGB_to_JMh_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKNS_5ACES29JMhParamsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 4 dereferenceable(164) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_521Add_JMh_to_RGB_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.OpenColorIO_v2_5::Primaries", align 16 ; 7 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !55     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !57
  %i.f = fptrunc <2 x double> %i.e to <2 x float>
  %i.g = fpext <2 x float> %i.f to <2 x double>
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load <2 x double>, ptr %i.b, align 8, !tbaa !57
  %i.j = fptrunc <2 x double> %i.i to <2 x float>
  %i.k = fpext <2 x float> %i.j to <2 x double>
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !57
  %i.n = fptrunc <2 x double> %i.m to <2 x float>
  %i.o = fpext <2 x float> %i.n to <2 x double>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.q = load <2 x double>, ptr %i.d, align 8, !tbaa !57
  %i.r = fptrunc <2 x double> %i.q to <2 x float>
  %i.s = fpext <2 x float> %i.r to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store <2 x double> %i.g, ptr %3, align 16, !tbaa !57
  store <2 x double> %i.k, ptr %i.h, align 16, !tbaa !57
  store <2 x double> %i.o, ptr %i.l, align 16, !tbaa !57
  store <2 x double> %i.s, ptr %i.p, align 16, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  call void @_ZN16OpenColorIO_v2_526_Add_WrapHueChannel_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
  call void @_ZN16OpenColorIO_v2_518_Add_SinCos_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
  call void @_ZN16OpenColorIO_v2_522_Add_JMh_to_RGB_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKNS_5ACES29JMhParamsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 4 dereferenceable(164) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_533Add_Tonescale_Compress_Fwd_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 6 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 6 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 5 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 6 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::ChromaCompressParams", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !55
  %i.c = load double, ptr %i.b, align 8, !tbaa !57
  %i.d = fptrunc double %i.c to float             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %3, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4 %4, float noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %5, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4 %6, float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(164) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.e = call { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(44) %4) ; 2 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.e, 0
  %17 = extractvalue { <2 x float>, <2 x float> } %i.e, 1
  %18 = shufflevector <2 x float> %i.f, <2 x float> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %18, ptr %7, align 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN16OpenColorIO_v2_516GpuShaderCreator20getNextResourceIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.k, ptr %8, align 8, !tbaa !17
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.677) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.m, ptr %i.a, align 8, !tbaa !19
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %8, align 8, !tbaa !21
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.j, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %8, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void @_ZN16OpenColorIO_v2_516_Add_Reach_tableB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjRKNS_5ACES27Table1DE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(1452) %i.w)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN16OpenColorIO_v2_519_Add_Tonescale_funcB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjbRKNS_5ACES29JMhParamsERKNS4_15ToneScaleParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.h, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(44) %4)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN16OpenColorIO_v2_526_Add_WrapHueChannel_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.h unwind label %bb.aa

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN16OpenColorIO_v2_518_Add_SinCos_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.i unwind label %bb.aa

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %11, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %._crit_edge.i.i45 unwind label %bb.ab

._crit_edge.i.i45:                                ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.x, ptr %13, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, ptr noundef nonnull align 1 dereferenceable(9) @.str.425, i64 9, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 25
  store i8 0, ptr %i.z, align 1, !tbaa !22
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText9floatDeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %._crit_edge.i.i45
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.k unwind label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.13)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.407)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.408)
          to label %bb.p unwind label %bb.ad      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.x, align 8, !tbaa !22
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %14, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %._crit_edge.i.i52 unwind label %bb.af

._crit_edge.i.i52:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ap, ptr %16, align 8, !tbaa !17
  store i32 1937006410, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 4, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i8 0, ptr %i.ar, align 4, !tbaa !22
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText9floatDeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %._crit_edge.i.i52
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.r unwind label %bb.ah

bb.r:                                             ; preds = %bb.q
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.13)
          to label %bb.s unwind label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.176)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.423)
          to label %bb.w unwind label %bb.ah      ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.w
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.bd = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ap
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !22
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_533Add_Tonescale_Compress_Fwd_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.bm = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !22
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.br = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.k
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.bt = load i64, ptr %i.k, align 8, !tbaa !22
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.y:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.z:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.h, %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ab:                                            ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge.i.i45
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.ad:                                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ad
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !22
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ac ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.ca, %bb.ad ]
  %i.cg = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.x
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ci = load i64, ptr %i.x, align 8, !tbaa !22
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.by, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.aj

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %._crit_edge.i.i52
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.ah:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ah
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !22
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.ag
  %.pn35 = phi { ptr, i32 } [ %i.cl, %bb.ag ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.cm, %bb.ah ]
  %i.cs = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ap
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.cu = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.af
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %i.ck, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.aa
  %.pn39 = phi { ptr, i32 } [ %i.bx, %bb.aa ], [ %.pn35.pn.pn, %bb.ai ], [ %.pn.pn.pn, %bb.ae ] ; 2 uses
  %i.cw = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.aj
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !22
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.z
  %.pn39.pn = phi { ptr, i32 } [ %i.bw, %bb.z ], [ %.pn39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn39, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.db = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.y
  %.pn39.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.y ], [ %.pn39.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn39.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.dg = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.k
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.di = load i64, ptr %i.k, align 8, !tbaa !22
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn39.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_533Add_Tonescale_Compress_Inv_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 6 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 6 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 5 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 6 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::ChromaCompressParams", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !55
  %i.c = load double, ptr %i.b, align 8, !tbaa !57
  %i.d = fptrunc double %i.c to float             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %3, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4 %4, float noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %5, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4 %6, float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(164) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.e = call { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef %i.d, ptr noundef nonnull align 4 dereferenceable(44) %4) ; 2 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.e, 0
  %17 = extractvalue { <2 x float>, <2 x float> } %i.e, 1
  %18 = shufflevector <2 x float> %i.f, <2 x float> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %18, ptr %7, align 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = call noundef i32 @_ZN16OpenColorIO_v2_516GpuShaderCreator20getNextResourceIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = call noundef ptr @_ZNK16OpenColorIO_v2_516GpuShaderCreator12getPixelNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.k, ptr %8, align 8, !tbaa !17
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.677) #19
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.m, ptr %i.a, align 8, !tbaa !19
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %8, align 8, !tbaa !21
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.k, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.j, align 1, !tbaa !22
  store i8 %i.r, ptr %i.q, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %8, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  invoke void @_ZN16OpenColorIO_v2_516_Add_Reach_tableB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjRKNS_5ACES27Table1DE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(1452) %i.w)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN16OpenColorIO_v2_519_Add_Tonescale_funcB5cxx11ERSt10shared_ptrINS_16GpuShaderCreatorEEjbRKNS_5ACES29JMhParamsERKNS4_15ToneScaleParamsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.h, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(44) %4)
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN16OpenColorIO_v2_526_Add_WrapHueChannel_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.h unwind label %bb.aa

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN16OpenColorIO_v2_518_Add_SinCos_ShaderERSt10shared_ptrINS_16GpuShaderCreatorEERNS_13GpuShaderTextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %bb.i unwind label %bb.aa

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %11, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %._crit_edge.i.i45 unwind label %bb.ab

._crit_edge.i.i45:                                ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.x, ptr %13, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.x, ptr noundef nonnull align 1 dereferenceable(9) @.str.425, i64 9, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 25
  store i8 0, ptr %i.z, align 1, !tbaa !22
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText9floatDeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %._crit_edge.i.i45
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.k unwind label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.13)
          to label %bb.l unwind label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.m unwind label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.407)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.408)
          to label %bb.p unwind label %bb.ad      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.x, align 8, !tbaa !22
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLineD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText7newLineEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenColorIO_v2_5::GpuShaderText::GpuShaderLine") align 8 %14, ptr noundef nonnull align 8 dereferenceable(764) %1)
          to label %._crit_edge.i.i52 unwind label %bb.af

._crit_edge.i.i52:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ap, ptr %16, align 8, !tbaa !17
  store i8 74, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.ar, align 1, !tbaa !22
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText9floatDeclERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(764) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %._crit_edge.i.i52
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.r unwind label %bb.ah

bb.r:                                             ; preds = %bb.q
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.13)
          to label %bb.s unwind label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.176)
          to label %bb.u unwind label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_513GpuShaderText13GpuShaderLinelsEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.423)
          to label %bb.w unwind label %bb.ah      ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.w
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.bd = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ap
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !22
end_hunk_3
