Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffoutput?download=true
inline.NumInlined: 3241
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

bb.ed:                                            ; preds = %.lr.ph2057
  %indvars.iv.next2385 = add nsw i64 %indvars.iv2384, -1 ; 3 uses
  %i.als = shl i64 %indvars.iv.next2385, 1
  %i.alt = and i64 %i.als, 4294967294
  %i.alu = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.alt
  %i.alv = load i16, ptr %i.alu, align 1
  %i.alw = call noundef i16 @llvm.bswap.i16(i16 %i.alv) ; 2 uses
  %i.alx = trunc i16 %i.alw to i8
  %i.aly = getelementptr inbounds nuw i8, ptr %.82054, i64 1
  store i8 %i.alx, ptr %.82054, align 1, !tbaa !152
  %i.alz = lshr i16 %i.alw, 8
  %i.ama = trunc nuw i16 %i.alz to i8
  store i8 %i.ama, ptr %i.aly, align 1, !tbaa !152
  %i.amb = and i64 %indvars.iv.next2385, 4294967295
  %i.amc = icmp eq i64 %i.amb, 0
  br i1 %i.amc, label %._crit_edge2058, label %.lr.ph2057

._crit_edge2058:                                  ; preds = %bb.ed, %.lr.ph2064
  %.8.lcssa = phi ptr [ %.72062, %.lr.ph2064 ], [ %i.akr, %bb.ed ] ; 2 uses
  %i.amd = add i32 %storemerge4912061, 1          ; 2 uses
  %.not492 = icmp ugt i32 %i.amd, %i.ez
  br i1 %.not492, label %._crit_edge2065, label %.lr.ph2064, !llvm.loop !466

._crit_edge2065:                                  ; preds = %._crit_edge2058, %bb.dt
  %.7.lcssa = phi ptr [ %.63312069, %bb.dt ], [ %.8.lcssa, %._crit_edge2058 ]
  %i.ame = add i32 %storemerge4892068, 1          ; 2 uses
  %.not490 = icmp ugt i32 %i.ame, %i.fb
  br i1 %.not490, label %.thread1535, label %bb.dt, !llvm.loop !467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i733
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.ep

.thread1535:                                      ; preds = %._crit_edge2065, %._crit_edge2103, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %.thread1602, %.thread1505, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612, %bb.ds, %bb.bh
  %.sroa.63.15 = phi ptr [ %.sroa.63.3, %bb.bh ], [ %.sroa.63.61512, %.thread1505 ], [ %.sroa.63.10, %bb.ds ], [ %.sroa.63.18, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.sroa.63.18, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612 ], [ %.sroa.63.141609, %.thread1602 ], [ %.sroa.63.61512, %._crit_edge2103 ], [ %.sroa.63.18, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.sroa.63.141609, %._crit_edge2065 ] ; 7 uses
  %.sroa.01405.15 = phi ptr [ %.sroa.01405.3, %bb.bh ], [ %.sroa.01405.61517, %.thread1505 ], [ %.sroa.01405.10, %bb.ds ], [ %.sroa.01405.18, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.sroa.01405.18, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612 ], [ %.sroa.01405.141615, %.thread1602 ], [ %.sroa.01405.61517, %._crit_edge2103 ], [ %.sroa.01405.18, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.sroa.01405.141615, %._crit_edge2065 ] ; 8 uses
  %.41490 = phi i32 [ %.01486, %bb.bh ], [ %.114871521, %.thread1505 ], [ %.21488, %bb.ds ], [ %i.ge, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %i.ge, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612 ], [ %.314891620, %.thread1602 ], [ %.114871521, %._crit_edge2103 ], [ %i.ge, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.314891620, %._crit_edge2065 ]
  %.8346 = phi i32 [ %.2340, %bb.bh ], [ %.33411522, %.thread1505 ], [ %.6344, %bb.ds ], [ %i.ga, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %i.ga, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612 ], [ %.73451621, %.thread1602 ], [ %.33411522, %._crit_edge2103 ], [ %i.ga, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ], [ %.73451621, %._crit_edge2065 ]
  %savedstack = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.amf = call noundef i32 @llvm.bswap.i32(i32 %.41490)
  store i32 %i.amf, ptr %i.q, align 16, !tbaa !45
  %i.amg = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.q, i64 noundef 4, i64 noundef 1)
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %.thread1535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  br i1 %i.amg, label %bb.eg, label %bb.ep

bb.ef:                                            ; preds = %bb.em, %bb.ek, %bb.ei, %bb.eg, %.thread1535, %bb.eo
  %i.amh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

bb.eg:                                            ; preds = %bb.ee
  %i.ami = trunc i32 %i.ex to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.amj = call noundef i16 @llvm.bswap.i16(i16 %i.ami)
  store i16 %i.amj, ptr %i.p, align 16, !tbaa !211
  %i.amk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.p, i64 noundef 2, i64 noundef 1)
          to label %bb.eh unwind label %bb.ef

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.amk, label %bb.ei, label %bb.ep

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 %i.er, ptr %i.o, align 16, !tbaa !211
  %i.aml = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.o, i64 noundef 2, i64 noundef 1)
          to label %bb.ej unwind label %bb.ef

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.aml, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %bb.ej
  %i.amm = trunc i32 %i.ez to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.amn = call noundef i16 @llvm.bswap.i16(i16 %i.amm)
  store i16 %i.amn, ptr %i.n, align 16, !tbaa !211
  %i.amo = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.n, i64 noundef 2, i64 noundef 1)
          to label %bb.el unwind label %bb.ef

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.amo, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.amp = trunc i32 %i.fb to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.amq = call noundef i16 @llvm.bswap.i16(i16 %i.amp)
  store i16 %i.amq, ptr %i.m, align 16, !tbaa !211
  %i.amr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.m, i64 noundef 2, i64 noundef 1)
          to label %bb.en unwind label %bb.ef

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.amr, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ams = zext i32 %.8346 to i64
  %i.amt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01405.15, i64 noundef %i.ams, i64 noundef 1)
          to label %bb.ep unwind label %bb.ef

bb.ep:                                            ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605, %bb.eh, %bb.ej, %bb.el, %bb.en, %bb.ee, %_ZNSt6vectorIhSaIhEED2Ev.exit594, %_ZNSt6vectorIhSaIhEED2Ev.exit718
  %.sroa.63.16 = phi ptr [ %.sroa.63.10, %_ZNSt6vectorIhSaIhEED2Ev.exit718 ], [ %.sroa.63.15, %bb.en ], [ %.sroa.63.15, %bb.el ], [ %.sroa.63.15, %bb.ej ], [ %.sroa.63.15, %bb.eh ], [ %.sroa.63.15, %bb.ee ], [ %.sroa.63.61512, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605 ], [ %.sroa.63.3, %_ZNSt6vectorIhSaIhEED2Ev.exit594 ], [ %.sroa.63.141609, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734 ], [ %.sroa.63.15, %bb.eo ]
  %.sroa.01405.16 = phi ptr [ %.sroa.01405.10, %_ZNSt6vectorIhSaIhEED2Ev.exit718 ], [ %.sroa.01405.15, %bb.en ], [ %.sroa.01405.15, %bb.el ], [ %.sroa.01405.15, %bb.ej ], [ %.sroa.01405.15, %bb.eh ], [ %.sroa.01405.15, %bb.ee ], [ %.sroa.01405.61517, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605 ], [ %.sroa.01405.3, %_ZNSt6vectorIhSaIhEED2Ev.exit594 ], [ %.sroa.01405.141615, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734 ], [ %.sroa.01405.15, %bb.eo ] ; 3 uses
  %.20 = phi i1 [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit718 ], [ false, %bb.en ], [ false, %bb.el ], [ false, %bb.ej ], [ false, %bb.eh ], [ false, %bb.ee ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit594 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734 ], [ %i.amt, %bb.eo ]
  %.not.i.i.i755 = icmp eq ptr %.sroa.01405.16, null
  br i1 %.not.i.i.i755, label %_ZNSt6vectorIhSaIhEED2Ev.exit757, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.amu = ptrtoint ptr %.sroa.63.16 to i64
  %i.amv = ptrtoint ptr %.sroa.01405.16 to i64
  %i.amw = sub i64 %i.amu, %i.amv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01405.16, i64 noundef %i.amw) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit757

_ZNSt6vectorIhSaIhEED2Ev.exit757:                 ; preds = %bb.ep, %bb.eq
  br i1 %.20, label %bb.er, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit596:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i983, %_ZNSt6vectorIhSaIhEED2Ev.exit721, %.body614.thread1564, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i931, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602, %_ZNSt6vectorIhSaIhEED2Ev.exit580, %bb.bg, %bb.ef
  %.sroa.63.17 = phi ptr [ %.sroa.63.15, %bb.ef ], [ %.sroa.63.4, %bb.bg ], [ %.sroa.63.61512, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i931 ], [ %.sroa.63.131597, %_ZNSt6vectorIhSaIhEED2Ev.exit721 ], [ %.sroa.63.141609, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731 ], [ %.sroa.63.4, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.63.18, %.body614.thread1564 ], [ %.sroa.63.61512, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602 ], [ %.sroa.63.141609, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i983 ]
  %.sroa.01405.17 = phi ptr [ %.sroa.01405.15, %bb.ef ], [ %.sroa.01405.4, %bb.bg ], [ %.sroa.01405.61517, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i931 ], [ %.sroa.01405.131600, %_ZNSt6vectorIhSaIhEED2Ev.exit721 ], [ %.sroa.01405.141615, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731 ], [ %.sroa.01405.4, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.01405.18, %.body614.thread1564 ], [ %.sroa.01405.61517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602 ], [ %.sroa.01405.141615, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i983 ] ; 3 uses
  %.pn518 = phi { ptr, i32 } [ %i.amh, %bb.ef ], [ %.pn507.pn, %bb.bg ], [ %lpad.loopexit.split-lp3056, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i931 ], [ %.pn484.pn.pn.pn1601, %_ZNSt6vectorIhSaIhEED2Ev.exit721 ], [ %i.aln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731 ], [ %.pn507.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %i.wg, %.body614.thread1564 ], [ %i.vc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602 ], [ %lpad.loopexit.split-lp3053, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i983 ] ; 2 uses
  %.not.i.i.i758 = icmp eq ptr %.sroa.01405.17, null
  br i1 %.not.i.i.i758, label %_ZNSt6vectorIhSaIhEED2Ev.exit760, label %_ZNSt6vectorIhSaIhEED2Ev.exit596.thread

_ZNSt6vectorIhSaIhEED2Ev.exit596.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit596
  %i.amx = ptrtoint ptr %.sroa.63.17 to i64
  %i.amy = ptrtoint ptr %.sroa.01405.17 to i64
  %i.amz = sub i64 %i.amx, %i.amy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01405.17, i64 noundef %i.amz) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit760

bb.er:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit757, %bb.e
  %i.ana = load i8, ptr %i.ae, align 8, !tbaa !204
  %.not522 = icmp eq i8 %i.ana, 0
  br i1 %.not522, label %bb.gv, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !516
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull align 1 dereferenceable(5) @.str.30, i64 4, i64 0, ptr nonnull %14)
          to label %.noexc766 unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc766:                                        ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !516
  %i.anb = load ptr, ptr %15, align 8, !tbaa !153
  %i.anc = load i64, ptr %i.dc, align 8, !tbaa !151
  %i.and = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.anb, i64 noundef %i.anc, i64 noundef 1)
          to label %bb.et unwind label %bb.eu

bb.et:                                            ; preds = %.noexc766
  %i.ane = load ptr, ptr %15, align 8, !tbaa !153 ; 2 uses
  %i.anf = icmp eq ptr %i.ane, %i.dd
  br i1 %i.anf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i764: ; preds = %bb.et
  %i.ang = load i64, ptr %i.dd, align 8, !tbaa !152
  %i.anh = add i64 %i.ang, 1
  call void @_ZdlPvm(ptr noundef %i.ane, i64 noundef %i.anh) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i765

bb.eu:                                            ; preds = %.noexc766
  %i.ani = landingpad { ptr, i32 }
          cleanup
  %i.anj = load ptr, ptr %15, align 8, !tbaa !153 ; 2 uses
  %i.ank = icmp eq ptr %i.anj, %i.dd
  br i1 %i.ank, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i761

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i761: ; preds = %bb.eu
  %i.anl = load i64, ptr %i.dd, align 8, !tbaa !152
  %i.anm = add i64 %i.anl, 1
  call void @_ZdlPvm(ptr noundef %i.anj, i64 noundef %i.anm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i762: ; preds = %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i761
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i765: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i764
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %i.and, label %bb.ev, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.ev:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i765
  %i.ann = mul i32 %i.fe, %i.fd                   ; 5 uses
  %i.ano = zext i32 %i.ann to i64                 ; 3 uses
  %i.anp = load i8, ptr %i.ae, align 8, !tbaa !207
  %.not.i770 = icmp eq i8 %i.anp, 0
  %i.anq = load i8, ptr %i.ag, align 1
  %i.anr = lshr i8 %i.anq, 3
  %narrow.i = select i1 %.not.i770, i8 0, i8 %i.anr
  %i.ans = zext nneg i8 %narrow.i to i32
  %i.ant = mul i32 %i.ann, %i.ans                 ; 8 uses
  %i.anu = and i32 %i.ant, 3                      ; 2 uses
  %.not.i771 = icmp eq i32 %i.anu, 0
  %i.anv = sub nuw nsw i32 4, %i.anu
  %i.anw = select i1 %.not.i771, i32 0, i32 %i.anv
  %.0.i772 = add i32 %i.ant, 8
  %i.anx = add i32 %.0.i772, %i.anw               ; 2 uses
  %i.any = load i32, ptr %i.bc, align 4, !tbaa !202
  %i.anz = icmp eq i32 %i.any, 1
  %i.aoa = zext i32 %i.ant to i64                 ; 3 uses
  %.not.i.i.i.i773 = icmp eq i32 %i.ant, 0
  br i1 %.not.i.i.i.i773, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoa) #31
          to label %.noexc775 unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc775:                                        ; preds = %bb.ew
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 %i.aoa
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aob, i8 0, i64 %i.aoa, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc775, %bb.ev
  %.sroa.01281.4 = phi ptr [ %i.aob, %.noexc775 ], [ null, %bb.ev ] ; 20 uses
  %.sroa.27.4 = phi ptr [ %i.aoc, %.noexc775 ], [ null, %bb.ev ] ; 12 uses
  br i1 %i.anz, label %bb.ex, label %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread

bb.ex:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aod = shl i32 %i.ant, 1                      ; 2 uses
  %i.aoe = zext i32 %i.aod to i64                 ; 3 uses
  %.not1736 = icmp eq i32 %i.aod, 0
  br i1 %.not1736, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit779, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998: ; preds = %bb.ex
  %i.aof = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoe) #31
          to label %.noexc778 unwind label %bb.fu ; 4 uses

.noexc778:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998
  store i8 0, ptr %i.aof, align 1, !tbaa !152
  %i.aog = add nsw i64 %i.aoe, -1
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aof, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aoh, i8 0, i64 %i.aog, i1 false)
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aof, i64 %i.aoe
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit779

_ZNSt6vectorIhSaIhEE6resizeEm.exit779:            ; preds = %.noexc778, %bb.ex
  %.sroa.01267.2 = phi ptr [ %i.aof, %.noexc778 ], [ null, %bb.ex ] ; 12 uses
  %.sroa.12.0 = phi ptr [ %i.aoi, %.noexc778 ], [ null, %bb.ex ] ; 5 uses
  %i.aoj = load i8, ptr %i.ae, align 8, !tbaa !207
  %.not.i780 = icmp eq i8 %i.aoj, 0
  %i.aok = load i8, ptr %i.ag, align 1
  %i.aol = lshr i8 %i.aok, 3                      ; 2 uses
  %.not21682169 = icmp eq i8 %i.aol, 0
  %.not2168 = select i1 %.not.i780, i1 true, i1 %.not21682169
  br i1 %.not2168, label %._crit_edge2127, label %.lr.ph2126

.lr.ph2126:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit779
  %i.aom = zext nneg i8 %i.aol to i64
  %.02922123 = add nsw i64 %i.aom, -1
  %.not.i.i.i.i782 = icmp eq i32 %i.ann, 0
  %i.aon = add nsw i64 %i.ano, -1                 ; 2 uses
  %i.aoo = icmp eq i64 %i.aon, 0
  %.not5322118 = icmp ugt i32 %i.eo, %i.fb
  %.not5332111 = icmp ugt i32 %i.ex, %i.ez
  %i.aop = ptrtoint ptr %.sroa.12.0 to i64
  %i.aoq = ptrtoint ptr %.sroa.01267.2 to i64
  %i.aor = sext i32 %i.ann to i64
  %i.aos = icmp sgt i32 %i.ann, 0
  %brmerge = select i1 %.not5322118, i1 true, i1 %.not5332111
  br label %bb.ey

._crit_edge2127:                                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit834, %_ZNSt6vectorIhSaIhEE6resizeEm.exit779
  %.0293.lcssa = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit779 ], [ %i.asn, %_ZNSt6vectorIhSaIhEED2Ev.exit834 ] ; 8 uses
  %i.aot = icmp ult i32 %.0293.lcssa, %i.ant
  br i1 %i.aot, label %bb.fp, label %.thread1709

bb.ey:                                            ; preds = %.lr.ph2126, %_ZNSt6vectorIhSaIhEED2Ev.exit834
  %indvars.iv2398 = phi i64 [ %.02922123, %.lr.ph2126 ], [ %indvars.iv.next2399, %_ZNSt6vectorIhSaIhEED2Ev.exit834 ] ; 2 uses
  %.02932124 = phi i32 [ 0, %.lr.ph2126 ], [ %i.asn, %_ZNSt6vectorIhSaIhEED2Ev.exit834 ] ; 2 uses
  br i1 %.not.i.i.i.i782, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit786, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aou = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ano) #31
          to label %.noexc785 unwind label %bb.fm ; 5 uses

.noexc785:                                        ; preds = %bb.ez
  %i.aov = getelementptr i8, ptr %i.aou, i64 %i.ano ; 3 uses
  store i8 0, ptr %i.aou, align 1, !tbaa !152
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aou, i64 1 ; 2 uses
  br i1 %i.aoo, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit786, label %bb.fa

bb.fa:                                            ; preds = %.noexc785
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aow, i8 0, i64 %i.aon, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit786

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit786:            ; preds = %bb.fa, %.noexc785, %bb.ey
  %.sroa.01261.0 = phi ptr [ %i.aou, %bb.fa ], [ %i.aou, %.noexc785 ], [ null, %bb.ey ] ; 7 uses
  %.sroa.13.0 = phi ptr [ %i.aov, %bb.fa ], [ %i.aov, %.noexc785 ], [ null, %bb.ey ]
  %.0.i.i.i.i.i783 = phi ptr [ %i.aov, %bb.fa ], [ %i.aow, %.noexc785 ], [ null, %bb.ey ]
  br i1 %brmerge, label %._crit_edge2122.split, label %.lr.ph2115

._crit_edge2122.split:                            ; preds = %._crit_edge2116, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit786
  %i.aox = zext i32 %.02932124 to i64
  %i.aoy = getelementptr inbounds nuw i8, ptr %.sroa.01267.2, i64 %i.aox ; 3 uses
  %i.aoz = ptrtoint ptr %.0.i.i.i.i.i783 to i64
  %i.apa = ptrtoint ptr %.sroa.01261.0 to i64     ; 2 uses
  %i.apb = getelementptr inbounds i8, ptr %.sroa.01261.0, i64 %i.aor ; 3 uses
  br i1 %i.aos, label %.lr.ph.i788, label %.loopexit

.lr.ph.i788:                                      ; preds = %._crit_edge2122.split
  %i.apc = ptrtoint ptr %i.apb to i64
  %i.apd = getelementptr inbounds i8, ptr %i.apb, i64 -1
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fl, %.lr.ph.i788
  %.045.i790 = phi ptr [ %i.aoy, %.lr.ph.i788 ], [ %.1.i794, %bb.fl ] ; 6 uses
  %.03944.i791 = phi ptr [ %.sroa.01261.0, %.lr.ph.i788 ], [ %.140.i793, %bb.fl ] ; 9 uses
  %i.ape = ptrtoint ptr %.03944.i791 to i64       ; 3 uses
  %i.apf = sub i64 %i.apc, %i.ape
  %i.apg = trunc i64 %i.apf to i32                ; 4 uses
  %.sroa.speculated.i792 = call i32 @llvm.smin.i32(i32 %i.apg, i32 128) ; 4 uses
  %i.aph = icmp sgt i32 %i.apg, 0
  br i1 %i.aph, label %bb.fc, label %bb.fl

bb.fc:                                            ; preds = %bb.fb
  %i.api = icmp ult ptr %.03944.i791, %i.apd
  br i1 %i.api, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  %i.apj = load i8, ptr %.03944.i791, align 1, !tbaa !152 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.03944.i791, i64 1
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !152
  %i.apm = icmp eq i8 %i.apj, %i.apl
  br i1 %i.apm, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  %.not41.i809 = icmp eq i32 %i.apg, 1
  br i1 %.not41.i809, label %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i820, label %.lr.ph.i.i810

.lr.ph.i.i810:                                    ; preds = %bb.fe
  %wide.trip.count.i.i811 = zext nneg i32 %.sroa.speculated.i792 to i64 ; 2 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fg, %.lr.ph.i.i810
  %indvars.iv.i.i812 = phi i64 [ 1, %.lr.ph.i.i810 ], [ %indvars.iv.next.i.i822, %bb.fg ] ; 4 uses
  %i.apn = getelementptr i8, ptr %.03944.i791, i64 %indvars.iv.i.i812 ; 2 uses
  %i.apo = getelementptr i8, ptr %i.apn, i64 -1
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !152
  %i.apq = load i8, ptr %i.apn, align 1, !tbaa !152
  %.not.i.i813 = icmp eq i8 %i.app, %i.apq
  br i1 %.not.i.i813, label %bb.fg, label %._crit_edge.split.loop.exit25.i.i814

bb.fg:                                            ; preds = %bb.ff
  %indvars.iv.next.i.i822 = add i64 %indvars.iv.i.i812, 1 ; 2 uses
  %exitcond.not.i.i823 = icmp eq i64 %indvars.iv.next.i.i822, %wide.trip.count.i.i811
  br i1 %exitcond.not.i.i823, label %._crit_edge.i.i816, label %bb.ff, !llvm.loop !0

._crit_edge.split.loop.exit25.i.i814:             ; preds = %bb.ff
  %i.apr = trunc i64 %indvars.iv.i.i812 to i32
  %.pre.i815 = and i64 %indvars.iv.i.i812, 4294967295
  br label %._crit_edge.i.i816

._crit_edge.i.i816:                               ; preds = %bb.fg, %._crit_edge.split.loop.exit25.i.i814
  %.pre-phi.i817 = phi i64 [ %.pre.i815, %._crit_edge.split.loop.exit25.i.i814 ], [ %wide.trip.count.i.i811, %bb.fg ]
  %.0.lcssa.i.i818 = phi i32 [ %i.apr, %._crit_edge.split.loop.exit25.i.i814 ], [ %.sroa.speculated.i792, %bb.fg ] ; 2 uses
  %i.aps = icmp ugt i32 %.0.lcssa.i.i818, 1
  %i.apt = add nuw i32 %.0.lcssa.i.i818, 127
  %i.apu = and i32 %i.apt, 127
  %spec.select.i.i819 = select i1 %i.aps, i32 128, i32 0
  %i.apv = or disjoint i32 %i.apu, %spec.select.i.i819
  %i.apw = trunc nuw i32 %i.apv to i8
  br label %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i820

_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i820: ; preds = %._crit_edge.i.i816, %bb.fe
  %.0.lcssa24.i.i821 = phi i64 [ 1, %bb.fe ], [ %.pre-phi.i817, %._crit_edge.i.i816 ]
  %i.apx = phi i8 [ 0, %bb.fe ], [ %i.apw, %._crit_edge.i.i816 ]
  %i.apy = getelementptr inbounds nuw i8, ptr %.045.i790, i64 1
  store i8 %i.apx, ptr %.045.i790, align 1, !tbaa !152
  store i8 %i.apj, ptr %i.apy, align 1, !tbaa !152
  %i.apz = getelementptr inbounds nuw i8, ptr %.045.i790, i64 2
  %i.aqa = getelementptr inbounds nuw i8, ptr %.03944.i791, i64 %.0.lcssa24.i.i821
  br label %bb.fl

bb.fh:                                            ; preds = %bb.fd, %bb.fc
  %.not.i797 = icmp eq i32 %i.apg, 1
  br i1 %.not.i797, label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i805, label %.lr.ph.i15.i798

.lr.ph.i15.i798:                                  ; preds = %bb.fh
  %wide.trip.count.i16.i799 = zext nneg i32 %.sroa.speculated.i792 to i64
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fk, %.lr.ph.i15.i798
  %indvars.iv.i17.i800 = phi i64 [ 1, %.lr.ph.i15.i798 ], [ %indvars.iv.next.i18.i803, %bb.fk ] ; 3 uses
  %.02330.i.i801 = phi i8 [ 0, %.lr.ph.i15.i798 ], [ %i.aqd, %bb.fk ]
  %i.aqb = getelementptr i8, ptr %.03944.i791, i64 %indvars.iv.i17.i800 ; 2 uses
  %i.aqc = getelementptr i8, ptr %i.aqb, i64 -1
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !152 ; 3 uses
  %i.aqe = load i8, ptr %i.aqb, align 1, !tbaa !152
  %i.aqf = icmp eq i8 %i.aqd, %i.aqe
  %i.aqg = icmp eq i8 %.02330.i.i801, %i.aqd
  %or.cond.i.i802 = and i1 %i.aqg, %i.aqf
  br i1 %or.cond.i.i802, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.aqh = trunc nuw nsw i64 %indvars.iv.i17.i800 to i32
  %i.aqi = add nsw i32 %i.aqh, -2
  br label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i805

bb.fk:                                            ; preds = %bb.fi
  %indvars.iv.next.i18.i803 = add nuw nsw i64 %indvars.iv.i17.i800, 1 ; 2 uses
  %exitcond.not.i19.i804 = icmp eq i64 %indvars.iv.next.i18.i803, %wide.trip.count.i16.i799
  br i1 %exitcond.not.i19.i804, label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i805, label %bb.fi, !llvm.loop !1

_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i805: ; preds = %bb.fk, %bb.fj, %bb.fh
  %.1.i.i806 = phi i32 [ %i.aqi, %bb.fj ], [ 1, %bb.fh ], [ %.sroa.speculated.i792, %bb.fk ] ; 2 uses
  %i.aqj = trunc i32 %.1.i.i806 to i8
  %i.aqk = add i8 %i.aqj, -1
  %i.aql = getelementptr inbounds nuw i8, ptr %.045.i790, i64 1 ; 2 uses
  store i8 %i.aqk, ptr %.045.i790, align 1, !tbaa !152
  %i.aqm = sext i32 %.1.i.i806 to i64             ; 3 uses
  %i.aqn = ptrtoint ptr %i.aql to i64             ; 2 uses
  %i.aqo = sub i64 %i.aqn, %i.aoq
  %i.aqp = sub i64 %i.ape, %i.apa
  %i.aqq = sub i64 %i.aoz, %i.ape
  %.sroa.speculated7.i.i.i.i807 = call i64 @llvm.umin.i64(i64 %i.aqq, i64 %i.aqm)
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %i.arb = load i8, ptr %i.w, align 8, !tbaa !205
  %i.arc = lshr i8 %i.arb, 3
  %i.ard = zext nneg i8 %i.arc to i64
  %i.are = load i8, ptr %i.aa, align 1, !tbaa !206
  %i.arf = zext i8 %i.are to i64
  %i.arg = mul nuw nsw i64 %i.ard, %i.arf
  %i.arh = load i8, ptr %i.ae, align 8, !tbaa !207
  %.not.i.i.i825 = icmp eq i8 %i.arh, 0
  %i.ari = load i8, ptr %i.ag, align 1
  %i.arj = lshr i8 %i.ari, 3
  %narrow.i.i.i826 = select i1 %.not.i.i.i825, i8 0, i8 %i.arj
  %i.ark = zext nneg i8 %narrow.i.i.i826 to i64
  %i.arl = add nuw nsw i64 %i.arg, %i.ark
  %i.arm = zext i32 %.02892120 to i64
  %i.arn = mul nuw i64 %i.ara, %i.arm
  %i.aro = mul i64 %i.arn, %i.arl
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqy, i64 %i.aro
  br label %bb.fn

._crit_edge2116:                                  ; preds = %bb.fn
  %i.arq = add i32 %.02892120, 1                  ; 2 uses
  %.not532 = icmp ugt i32 %i.arq, %i.fb
  br i1 %.not532, label %._crit_edge2122.split, label %.lr.ph2115, !llvm.loop !470

bb.fn:                                            ; preds = %.lr.ph2115, %bb.fn
  %.02882113 = phi i32 [ %i.ex, %.lr.ph2115 ], [ %i.asi, %bb.fn ] ; 2 uses
  %.12912112 = phi ptr [ %.02902119, %.lr.ph2115 ], [ %i.ash, %bb.fn ] ; 2 uses
  %i.arr = load i8, ptr %i.w, align 8, !tbaa !205
  %i.ars = lshr i8 %i.arr, 3
  %i.art = zext nneg i8 %i.ars to i64
  %i.aru = load i8, ptr %i.aa, align 1, !tbaa !206
  %i.arv = zext i8 %i.aru to i64
  %i.arw = mul nuw nsw i64 %i.art, %i.arv         ; 2 uses
  %i.arx = load i8, ptr %i.ae, align 8, !tbaa !207
  %.not.i.i827 = icmp eq i8 %i.arx, 0
  %i.ary = load i8, ptr %i.ag, align 1
  %i.arz = lshr i8 %i.ary, 3
  %narrow.i.i828 = select i1 %.not.i.i827, i8 0, i8 %i.arz
  %i.asa = zext nneg i8 %narrow.i.i828 to i64
  %i.asb = add nuw nsw i64 %i.arw, %i.asa
  %i.asc = zext i32 %.02882113 to i64
  %i.asd = mul nuw nsw i64 %i.asb, %i.asc
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 %i.arw
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 %indvars.iv2398
  %.0.copyload = load i8, ptr %i.asg, align 1
  %i.ash = getelementptr inbounds nuw i8, ptr %.12912112, i64 1 ; 2 uses
  store i8 %.0.copyload, ptr %.12912112, align 1, !tbaa !152
  %i.asi = add i32 %.02882113, 1                  ; 2 uses
  %.not533 = icmp ugt i32 %i.asi, %i.ez
  br i1 %.not533, label %._crit_edge2116, label %bb.fn, !llvm.loop !471

.loopexit:                                        ; preds = %bb.fl, %._crit_edge2122.split
  %.0.lcssa.i787 = phi ptr [ %i.aoy, %._crit_edge2122.split ], [ %.1.i794, %bb.fl ]
  %i.asj = ptrtoint ptr %.0.lcssa.i787 to i64
  %i.ask = ptrtoint ptr %i.aoy to i64
  %i.asl = sub i64 %i.asj, %i.ask
  %i.asm = trunc i64 %i.asl to i32
  %i.asn = add i32 %.02932124, %i.asm             ; 2 uses
  %.not.i.i.i832 = icmp eq ptr %.sroa.01261.0, null
  br i1 %.not.i.i.i832, label %_ZNSt6vectorIhSaIhEED2Ev.exit834, label %bb.fo

bb.fo:                                            ; preds = %.loopexit
  %i.aso = ptrtoint ptr %.sroa.13.0 to i64
  %i.asp = sub i64 %i.aso, %i.apa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01261.0, i64 noundef %i.asp) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit834

_ZNSt6vectorIhSaIhEED2Ev.exit834:                 ; preds = %.loopexit, %bb.fo
  %indvars.iv.next2399 = add nsw i64 %indvars.iv2398, -1 ; 2 uses
  %i.asq = and i64 %indvars.iv.next2399, 2147483648
  %i.asr = icmp eq i64 %i.asq, 0
  br i1 %i.asr, label %bb.ey, label %._crit_edge2127, !llvm.loop !472

bb.fp:                                            ; preds = %._crit_edge2127
  %i.ass = zext i32 %.0293.lcssa to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01281.4, ptr align 1 %.sroa.01267.2, i64 %i.ass, i1 false)
  %i.ast = add i32 %.0293.lcssa, 8                ; 4 uses
  %i.asu = and i32 %.0293.lcssa, 3                ; 2 uses
  %.not.i835 = icmp eq i32 %i.asu, 0              ; 2 uses
  %i.asv = sub nuw nsw i32 4, %i.asu              ; 3 uses
  %i.asw = select i1 %.not.i835, i32 0, i32 %i.asv ; 2 uses
  %.0.i836 = add i32 %i.asw, %i.ast
  %i.asx = icmp ugt i32 %.0.i836, %i.ast
  br i1 %i.asx, label %bb.fq, label %.loopexit1742

bb.fq:                                            ; preds = %bb.fp
  %i.asy = ptrtoint ptr %.sroa.27.4 to i64
  %i.asz = ptrtoint ptr %.sroa.01281.4 to i64
  %i.ata = sub i64 %i.asy, %i.asz                 ; 7 uses
  %i.atb = add i32 %i.asw, %.0293.lcssa
  %i.atc = zext i32 %i.atb to i64                 ; 2 uses
  %i.atd = icmp ult i64 %i.ata, %i.atc
  br i1 %i.atd, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit840

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012: ; preds = %bb.fq
  %i.ate = sub nuw nsw i64 %i.atc, %i.ata         ; 2 uses
  %.sroa.speculated.i.i1013 = call i64 @llvm.umax.i64(i64 %i.ata, i64 %i.ate)
  %i.atf = add nuw nsw i64 %.sroa.speculated.i.i1013, %i.ata ; 2 uses
  %i.atg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atf) #31
          to label %.noexc1020 unwind label %bb.fu ; 4 uses

.noexc1020:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.ata ; 2 uses
  store i8 0, ptr %i.ath, align 1, !tbaa !152
  %i.ati = add nsw i64 %i.ate, -1                 ; 2 uses
  %i.atj = icmp eq i64 %i.ati, 0
  br i1 %i.atj, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014, label %bb.fr

bb.fr:                                            ; preds = %.noexc1020
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ath, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.atk, i8 0, i64 %i.ati, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014: ; preds = %bb.fr, %.noexc1020
  %.not35.i1015 = icmp eq ptr %.sroa.27.4, %.sroa.01281.4
  br i1 %.not35.i1015, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016, label %bb.fs

bb.fs:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atg, ptr align 1 %.sroa.01281.4, i64 %i.ata, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016: ; preds = %bb.fs, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014
  %.not.i33.i1017 = icmp eq ptr %.sroa.01281.4, null
  br i1 %.not.i33.i1017, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01281.4, i64 noundef %i.ata) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018: ; preds = %bb.ft, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atf
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit840

bb.fu:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998
  %.sroa.01267.0 = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998 ], [ %.sroa.01267.2, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012 ]
  %.sroa.18.0 = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998 ], [ %.sroa.12.0, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012 ]
  %i.atm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt6vectorIhSaIhEE6resizeEm.exit840:            ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018, %bb.fq
  %.sroa.01281.0 = phi ptr [ %.sroa.01281.4, %bb.fq ], [ %i.atg, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018 ] ; 3 uses
  %.sroa.27.0 = phi ptr [ %.sroa.27.4, %bb.fq ], [ %i.atl, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018 ] ; 2 uses
  br i1 %.not.i835, label %.loopexit1742, label %.lr.ph2152.preheader

.lr.ph2152.preheader:                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit840
  %i.atn = getelementptr i8, ptr %.sroa.01281.0, i64 %i.ass
  %umax2409 = zext nneg i32 %i.asv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.atn, i8 0, i64 range(i64 0, 8) %umax2409, i1 false), !tbaa !152
  %i.ato = add i32 %.0293.lcssa, %i.asv
  br label %.loopexit1742

.loopexit1742:                                    ; preds = %.lr.ph2152.preheader, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840, %bb.fp
  %.sroa.01281.1 = phi ptr [ %.sroa.01281.4, %bb.fp ], [ %.sroa.01281.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840 ], [ %.sroa.01281.0, %.lr.ph2152.preheader ] ; 2 uses
  %.sroa.27.1 = phi ptr [ %.sroa.27.4, %bb.fp ], [ %.sroa.27.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840 ], [ %.sroa.27.0, %.lr.ph2152.preheader ] ; 2 uses
  %.2299 = phi i32 [ %.0293.lcssa, %bb.fp ], [ %.0293.lcssa, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840 ], [ %i.ato, %.lr.ph2152.preheader ] ; 2 uses
  %.not.i.i.i841 = icmp eq ptr %.sroa.01267.2, null
  br i1 %.not.i.i.i841, label %.thread1687, label %.split

.thread1709:                                      ; preds = %._crit_edge2127
  %.not.i.i.i8411716 = icmp eq ptr %.sroa.01267.2, null
  br i1 %.not.i.i.i8411716, label %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread, label %.split.thread

.split.thread:                                    ; preds = %.thread1709
  %i.atp = ptrtoint ptr %.sroa.12.0 to i64
  %i.atq = ptrtoint ptr %.sroa.01267.2 to i64
  %i.atr = sub i64 %i.atp, %i.atq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01267.2, i64 noundef %i.atr) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread

.split:                                           ; preds = %.loopexit1742
  %i.ats = ptrtoint ptr %.sroa.12.0 to i64
  %i.att = ptrtoint ptr %.sroa.01267.2 to i64
  %i.atu = sub i64 %i.ats, %i.att
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01267.2, i64 noundef %i.atu) #30
  br label %.thread1687

bb.fv:                                            ; preds = %bb.fm, %bb.fu
  %.sroa.01267.1 = phi ptr [ %.sroa.01267.0, %bb.fu ], [ %.sroa.01267.2, %bb.fm ] ; 3 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0, %bb.fu ], [ %.sroa.12.0, %bb.fm ]
  %.pn534.pn.pn.pn = phi { ptr, i32 } [ %i.atm, %bb.fu ], [ %i.aqx, %bb.fm ] ; 2 uses
  %.not.i.i.i844 = icmp eq ptr %.sroa.01267.1, null
  br i1 %.not.i.i.i844, label %_ZNSt6vectorIhSaIhEED2Ev.exit846, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.atv = ptrtoint ptr %.sroa.18.1 to i64
  %i.atw = ptrtoint ptr %.sroa.01267.1 to i64
  %i.atx = sub i64 %i.atv, %i.atw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01267.1, i64 noundef %i.atx) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit846

_ZNSt6vectorIhSaIhEED2Ev.exit843.thread:          ; preds = %.thread1709, %.split.thread, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aty = ptrtoint ptr %.sroa.27.4 to i64
  %i.atz = ptrtoint ptr %.sroa.01281.4 to i64
  %i.aua = sub i64 %i.aty, %i.atz
  %.not5242144 = icmp ugt i32 %i.eo, %i.fb
  br i1 %.not5242144, label %.thread1687, label %.lr.ph2148

.lr.ph2148:                                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread
  %30 = load ptr, ptr %i.s, align 8, !tbaa !155   ; 3 uses
  %i.aub = load i32, ptr %i.al, align 4, !tbaa !212
  %i.auc = load i8, ptr %i.w, align 8, !tbaa !205
  %i.aud = lshr i8 %i.auc, 3
  %i.aue = zext nneg i8 %i.aud to i64
  %i.auf = load i8, ptr %i.aa, align 1, !tbaa !206
  %i.aug = zext i8 %i.auf to i64
  %i.auh = mul nuw nsw i64 %i.aue, %i.aug         ; 3 uses
  %i.aui = load i8, ptr %i.ae, align 8, !tbaa !207 ; 2 uses
  %.not.i.i847 = icmp eq i8 %i.aui, 0
  %i.auj = load i8, ptr %i.ag, align 1            ; 2 uses
  %i.auk = lshr i8 %i.auj, 3
  %narrow.i.i848 = select i1 %.not.i.i847, i8 0, i8 %i.auk
  %i.aul = zext nneg i8 %narrow.i.i848 to i64
  %i.aum = add nuw nsw i64 %i.auh, %i.aul         ; 3 uses
  %.not5262136 = icmp ugt i32 %i.ex, %i.ez
  %.not.i849 = icmp eq i8 %i.aui, 0
  %31 = lshr i8 %i.auj, 3
  %narrow.i850 = select i1 %.not.i849, i8 0, i8 %31
  %narrow.i850.fr = freeze i8 %narrow.i850        ; 2 uses
  %32 = zext i8 %narrow.i850.fr to i32            ; 2 uses
  %33 = icmp eq i8 %narrow.i850.fr, 0
  %.02129 = add nsw i32 %32, -1
  %34 = zext i32 %.02129 to i64                   ; 6 uses
  %invariant.gep2741 = getelementptr inbounds nuw i8, ptr %30, i64 %i.auh
  %scevgep = getelementptr i8, ptr %30, i64 1
  %35 = add nuw nsw i64 %i.auh, %34               ; 2 uses
  %scevgep2974 = getelementptr i8, ptr %scevgep, i64 %35
  %scevgep2975 = getelementptr i8, ptr %30, i64 %35
  %scevgep2976 = getelementptr i8, ptr %.sroa.01281.4, i64 1
  %brmerge2743 = or i1 %.not5262136, %33
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph2148, %._crit_edge2141
  %.02862147 = phi i64 [ 0, %.lr.ph2148 ], [ %.1.lcssa, %._crit_edge2141 ] ; 2 uses
  %storemerge5232145 = phi i32 [ %i.eo, %.lr.ph2148 ], [ %i.awv, %._crit_edge2141 ] ; 3 uses
  br i1 %brmerge2743, label %._crit_edge2141, label %.lr.ph2133.preheader

.lr.ph2133.preheader:                             ; preds = %bb.fx
  %i.aun = mul i32 %i.aub, %storemerge5232145
  %i.auo = zext i32 %i.aun to i64                 ; 2 uses
  %i.aup = mul nuw nsw i64 %i.aum, %i.auo
  %gep2742 = getelementptr inbounds nuw i8, ptr %invariant.gep2741, i64 %i.aup
  br label %.lr.ph2133

.lr.ph2133:                                       ; preds = %.lr.ph2133.preheader, %._crit_edge2134
  %.12138 = phi i64 [ %i.aws, %._crit_edge2134 ], [ %.02862147, %.lr.ph2133.preheader ] ; 9 uses
  %storemerge5252137 = phi i32 [ %i.awu, %._crit_edge2134 ], [ %i.ex, %.lr.ph2133.preheader ] ; 3 uses
  %i.auq = zext i32 %storemerge5252137 to i64     ; 2 uses
  %umax2406 = call i64 @llvm.umax.i64(i64 %.12138, i64 %i.aua) ; 2 uses
  %i.aur = trunc i64 %.12138 to i32
  %i.aus = add i32 %32, %i.aur
  %i.aut = mul nuw nsw i64 %i.aum, %i.auq
  %gep2740 = getelementptr inbounds nuw i8, ptr %gep2742, i64 %i.aut ; 2 uses
  %i.auu = sub i64 %umax2406, %.12138
  %i.auv = call i64 @llvm.umin.i64(i64 %34, i64 %i.auu) ; 4 uses
  %i.auw = add nuw nsw i64 %i.auv, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.auv, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph2133
  %i.aux = getelementptr i8, ptr %.sroa.01281.4, i64 %.12138
  %i.auy = getelementptr i8, ptr %scevgep2976, i64 %.12138
  %i.auz = getelementptr i8, ptr %i.auy, i64 %i.auv
  %i.ava = add nuw nsw i64 %i.auo, %i.auq
  %i.avb = mul nuw nsw i64 %i.aum, %i.ava         ; 2 uses
  %i.avc = sub nsw i64 %i.avb, %i.auv
  %i.avd = getelementptr i8, ptr %scevgep2975, i64 %i.avc
  %i.ave = getelementptr i8, ptr %scevgep2974, i64 %i.avb
  %bound0 = icmp ult ptr %i.aux, %i.ave
  %bound1 = icmp ult ptr %i.avd, %i.auz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.avf = and i64 %i.auw, 7                      ; 2 uses
  %i.avg = icmp eq i64 %i.avf, 0
  %i.avh = select i1 %i.avg, i64 8, i64 %i.avf
  %n.vec = sub nsw i64 %i.auw, %i.avh             ; 3 uses
  %i.avi = sub nsw i64 %34, %n.vec
  %i.avj = add i64 %.12138, %n.vec
  %i.avk = getelementptr i8, ptr %.sroa.01281.4, i64 %.12138
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.avl = sub i64 %34, %index
  %i.avm = getelementptr inbounds nuw i8, ptr %gep2740, i64 %i.avl
  %i.avn = getelementptr inbounds i8, ptr %i.avm, i64 -7
  %wide.load = load <8 x i8>, ptr %i.avn, align 1, !tbaa !152, !alias.scope !517
  %reverse = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.avo = getelementptr i8, ptr %i.avk, i64 %index
  store <8 x i8> %reverse, ptr %i.avo, align 1, !tbaa !152, !alias.scope !518, !noalias !517
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.avp = icmp eq i64 %index.next, %n.vec
  br i1 %i.avp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !476

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph2133
  %indvars.iv2402.ph = phi i64 [ %34, %vector.memcheck ], [ %34, %.lr.ph2133 ], [ %i.avi, %vector.body ]
  %.22130.ph = phi i64 [ %.12138, %vector.memcheck ], [ %.12138, %.lr.ph2133 ], [ %i.avj, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.gh
  %indvars.iv2402 = phi i64 [ %indvars.iv.next2403, %bb.gh ], [ %indvars.iv2402.ph, %scalar.ph.preheader ] ; 2 uses
  %.22130 = phi i64 [ %i.aws, %bb.gh ], [ %.22130.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond2407.not = icmp eq i64 %.22130, %umax2406
  br i1 %exitcond2407.not, label %bb.fy, label %bb.gh

bb.fy:                                            ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !519
  store i32 %storemerge5252137, ptr %11, align 16, !tbaa !152, !alias.scope !520, !noalias !519
  store i32 %storemerge5232145, ptr %i.de, align 16, !tbaa !152, !alias.scope !520, !noalias !519
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !521
  store i64 0, ptr %i.dh, align 8, !noalias !521
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dg, align 8, !tbaa !218, !noalias !521
  store ptr %i.di, ptr %6, align 8, !tbaa !219, !noalias !521
  store i64 500, ptr %i.df, align 8, !tbaa !220, !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !521
  store ptr @.str.31, ptr %1, align 8, !tbaa !221, !noalias !521
  store i64 70, ptr %.sroa.2.0..sroa_idx.i16.i1060, align 8, !tbaa !222, !noalias !521
  store i32 0, ptr %i.dj, align 8, !tbaa !225, !noalias !521
  store ptr %6, ptr %i.dk, align 8, !tbaa !227, !noalias !521
  store i64 34, ptr %i.dl, align 8, !tbaa !229, !noalias !521
  store ptr %11, ptr %.sroa.2.0..sroa_idx.i17.i1061, align 8, !tbaa !152, !noalias !521
  store ptr null, ptr %i.dm, align 8, !tbaa !230, !noalias !521
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.31, i64 70, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc1066 unwind label %.loopexit.split-lp1766.loopexit.split-lp

.noexc1066:                                       ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !521
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.avq = load i64, ptr %i.dh, align 8, !tbaa !231, !noalias !523 ; 6 uses
  %i.avr = icmp ult i64 %i.avq, 4611686018427387903
  call void @llvm.assume(i1 %i.avr)
  %i.avs = load ptr, ptr %6, align 8, !tbaa !219, !noalias !523 ; 3 uses
  store ptr %i.dn, ptr %13, align 8, !tbaa !148, !alias.scope !523
  %i.avt = icmp eq ptr %i.avs, null
  %i.avu = icmp ne i64 %i.avq, 0
  %or.cond.i.i.i1024 = and i1 %i.avu, %i.avt
  br i1 %or.cond.i.i.i1024, label %.noexc.i.i1029, label %bb.fz

.noexc.i.i1029:                                   ; preds = %.noexc1066
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i1030 unwind label %.loopexit.split-lp1766.loopexit.split-lp

.noexc.i1030:                                     ; preds = %.noexc.i.i1029
  unreachable

bb.fz:                                            ; preds = %.noexc1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !523
  store i64 %i.avq, ptr %i.a, align 8, !tbaa !222, !noalias !523
  %i.avv = icmp samesign ugt i64 %i.avq, 15
  br i1 %i.avv, label %.noexc.i.i.i1027, label %._crit_edge.i.i.i.i1025

.noexc.i.i.i1027:                                 ; preds = %bb.fz
  %i.avw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i1028 unwind label %.loopexit.split-lp1766.loopexit.split-lp ; 2 uses

.noexc7.i1028:                                    ; preds = %.noexc.i.i.i1027
  store ptr %i.avw, ptr %13, align 8, !tbaa !153, !alias.scope !523
  %i.avx = load i64, ptr %i.a, align 8, !tbaa !222, !noalias !523
  store i64 %i.avx, ptr %i.dn, align 8, !tbaa !152, !alias.scope !523
  br label %._crit_edge.i.i.i.i1025

._crit_edge.i.i.i.i1025:                          ; preds = %.noexc7.i1028, %bb.fz
  %i.avy = phi ptr [ %i.avw, %.noexc7.i1028 ], [ %i.dn, %bb.fz ] ; 2 uses
  switch i64 %i.avq, label %bb.gb [
    i64 1, label %bb.ga
    i64 0, label %bb.gc
  ]

bb.ga:                                            ; preds = %._crit_edge.i.i.i.i1025
  %i.avz = load i8, ptr %i.avs, align 1, !tbaa !152
  store i8 %i.avz, ptr %i.avy, align 1, !tbaa !152
  br label %bb.gc

bb.gb:                                            ; preds = %._crit_edge.i.i.i.i1025
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.avy, ptr align 1 %i.avs, i64 %i.avq, i1 false)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %._crit_edge.i.i.i.i1025
  %i.awa = load i64, ptr %i.a, align 8, !tbaa !222, !noalias !523 ; 2 uses
  store i64 %i.awa, ptr %i.do, align 8, !tbaa !151, !alias.scope !523
  %i.awb = load ptr, ptr %13, align 8, !tbaa !153, !alias.scope !523
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 %i.awa
  store i8 0, ptr %i.awc, align 1, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !523
  %i.awd = load ptr, ptr %6, align 8, !tbaa !219, !noalias !521 ; 2 uses
  %.not.i.i.i1026 = icmp eq ptr %i.awd, %i.di
  br i1 %.not.i.i.i1026, label %.noexc858, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @free(ptr noundef %i.awd) #29
  br label %.noexc858

.loopexit.split-lp1766.loopexit.split-lp:         ; preds = %bb.fy, %.noexc.i.i.i1027, %.noexc.i.i1029
  %lpad.loopexit.split-lp3059 = landingpad { ptr, i32 }
          cleanup
  %i.awe = load ptr, ptr %6, align 8, !tbaa !219, !noalias !521 ; 2 uses
  %.not.i.i8.i1022 = icmp eq ptr %i.awe, %i.di
  br i1 %.not.i.i8.i1022, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023, label %bb.ge

bb.ge:                                            ; preds = %.loopexit.split-lp1766.loopexit.split-lp
  call void @free(ptr noundef %i.awe) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023: ; preds = %bb.ge, %.loopexit.split-lp1766.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !521
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit846

.noexc858:                                        ; preds = %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !519
  %i.awf = load ptr, ptr %13, align 8, !tbaa !153
  store ptr %i.awf, ptr %12, align 8, !tbaa !158
  %i.awg = load i64, ptr %i.do, align 8, !tbaa !151
  store i64 %i.awg, ptr %i.dp, align 8, !tbaa !159
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %12)
          to label %bb.gf unwind label %bb.gg

bb.gf:                                            ; preds = %.noexc858
  %i.awh = load ptr, ptr %13, align 8, !tbaa !153 ; 2 uses
  %i.awi = icmp eq ptr %i.awh, %i.dn
  br i1 %i.awi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i856: ; preds = %bb.gf
  %i.awj = load i64, ptr %i.dn, align 8, !tbaa !152
  %i.awk = add i64 %i.awj, 1
  call void @_ZdlPvm(ptr noundef %i.awh, i64 noundef %i.awk) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857

bb.gg:                                            ; preds = %.noexc858
  %i.awl = landingpad { ptr, i32 }
          cleanup
  %i.awm = load ptr, ptr %13, align 8, !tbaa !153 ; 2 uses
  %i.awn = icmp eq ptr %i.awm, %i.dn
  br i1 %i.awn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i853: ; preds = %bb.gg
  %i.awo = load i64, ptr %i.dn, align 8, !tbaa !152
  %i.awp = add i64 %i.awo, 1
  call void @_ZdlPvm(ptr noundef %i.awm, i64 noundef %i.awp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i853
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit846

bb.gh:                                            ; preds = %scalar.ph
  %i.awq = getelementptr inbounds nuw i8, ptr %gep2740, i64 %indvars.iv2402
  %i.awr = load i8, ptr %i.awq, align 1, !tbaa !152
  %i.aws = add i64 %.22130, 1                     ; 4 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %.sroa.01281.4, i64 %.22130
  store i8 %i.awr, ptr %i.awt, align 1, !tbaa !152
  %indvars.iv.next2403 = add nsw i64 %indvars.iv2402, -1
  %lftr.wideiv = trunc i64 %i.aws to i32
  %exitcond2408 = icmp eq i32 %i.aus, %lftr.wideiv
  br i1 %exitcond2408, label %._crit_edge2134, label %scalar.ph, !llvm.loop !485

._crit_edge2134:                                  ; preds = %bb.gh
  %i.awu = add i32 %storemerge5252137, 1          ; 2 uses
  %.not526 = icmp ugt i32 %i.awu, %i.ez
  br i1 %.not526, label %._crit_edge2141, label %.lr.ph2133, !llvm.loop !486

._crit_edge2141:                                  ; preds = %._crit_edge2134, %bb.fx
  %.1.lcssa = phi i64 [ %.02862147, %bb.fx ], [ %i.aws, %._crit_edge2134 ]
  %i.awv = add i32 %storemerge5232145, 1          ; 2 uses
  %.not524 = icmp ugt i32 %i.awv, %i.fb
  br i1 %.not524, label %.thread1687, label %bb.fx, !llvm.loop !487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i856
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.gt

.thread1687:                                      ; preds = %._crit_edge2141, %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread, %.loopexit1742, %.split
  %.33001671 = phi i32 [ %.2299, %.split ], [ %.2299, %.loopexit1742 ], [ %i.ant, %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread ], [ %i.ant, %._crit_edge2141 ]
  %.sroa.27.21665 = phi ptr [ %.sroa.27.1, %.split ], [ %.sroa.27.1, %.loopexit1742 ], [ %.sroa.27.4, %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread ], [ %.sroa.27.4, %._crit_edge2141 ] ; 7 uses
  %.sroa.01281.21658 = phi ptr [ %.sroa.01281.1, %.split ], [ %.sroa.01281.1, %.loopexit1742 ], [ %.sroa.01281.4, %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread ], [ %.sroa.01281.4, %._crit_edge2141 ] ; 8 uses
  %.114851656 = phi i32 [ %i.ast, %.split ], [ %i.ast, %.loopexit1742 ], [ %i.anx, %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread ], [ %i.anx, %._crit_edge2141 ]
  %savedstack867 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.aww = call noundef i32 @llvm.bswap.i32(i32 %.114851656)
  store i32 %i.aww, ptr %i.l, align 16, !tbaa !45
  %i.awx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.l, i64 noundef 4, i64 noundef 1)
          to label %bb.gi unwind label %bb.gj

bb.gi:                                            ; preds = %.thread1687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.stackrestore.p0(ptr %savedstack867)
  br i1 %i.awx, label %bb.gk, label %bb.gt

bb.gj:                                            ; preds = %bb.gq, %bb.go, %bb.gm, %bb.gk, %.thread1687, %bb.gs
  %i.awy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit846

bb.gk:                                            ; preds = %bb.gi
  %i.awz = trunc i32 %i.ex to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.axa = call noundef i16 @llvm.bswap.i16(i16 %i.awz)
  store i16 %i.axa, ptr %i.k, align 16, !tbaa !211
  %i.axb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.k, i64 noundef 2, i64 noundef 1)
          to label %bb.gl unwind label %bb.gj

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.axb, label %bb.gm, label %bb.gt

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.er, ptr %i.j, align 16, !tbaa !211
  %i.axc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.j, i64 noundef 2, i64 noundef 1)
          to label %bb.gn unwind label %bb.gj

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %i.axc, label %bb.go, label %bb.gt

bb.go:                                            ; preds = %bb.gn
  %i.axd = trunc i32 %i.ez to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.axe = call noundef i16 @llvm.bswap.i16(i16 %i.axd)
  store i16 %i.axe, ptr %i.i, align 16, !tbaa !211
  %i.axf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.i, i64 noundef 2, i64 noundef 1)
          to label %bb.gp unwind label %bb.gj

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.axf, label %bb.gq, label %bb.gt

bb.gq:                                            ; preds = %bb.gp
  %i.axg = trunc i32 %i.fb to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.axh = call noundef i16 @llvm.bswap.i16(i16 %i.axg)
  store i16 %i.axh, ptr %i.h, align 16, !tbaa !211
  %i.axi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.h, i64 noundef 2, i64 noundef 1)
          to label %bb.gr unwind label %bb.gj

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.axi, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.axj = zext i32 %.33001671 to i64
  %i.axk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01281.21658, i64 noundef %i.axj, i64 noundef 1)
          to label %bb.gt unwind label %bb.gj

bb.gt:                                            ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857, %bb.gl, %bb.gn, %bb.gp, %bb.gr, %bb.gi
  %.sroa.27.21664 = phi ptr [ %.sroa.27.21665, %bb.gl ], [ %.sroa.27.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857 ], [ %.sroa.27.21665, %bb.gi ], [ %.sroa.27.21665, %bb.gn ], [ %.sroa.27.21665, %bb.gr ], [ %.sroa.27.21665, %bb.gp ], [ %.sroa.27.21665, %bb.gs ]
  %.sroa.01281.21659 = phi ptr [ %.sroa.01281.21658, %bb.gl ], [ %.sroa.01281.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857 ], [ %.sroa.01281.21658, %bb.gi ], [ %.sroa.01281.21658, %bb.gn ], [ %.sroa.01281.21658, %bb.gr ], [ %.sroa.01281.21658, %bb.gp ], [ %.sroa.01281.21658, %bb.gs ] ; 3 uses
  %.26 = phi i1 [ false, %bb.gl ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857 ], [ false, %bb.gi ], [ false, %bb.gn ], [ false, %bb.gr ], [ false, %bb.gp ], [ %i.axk, %bb.gs ]
  %.not.i.i.i882 = icmp eq ptr %.sroa.01281.21659, null
  br i1 %.not.i.i.i882, label %_ZNSt6vectorIhSaIhEED2Ev.exit884, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.axl = ptrtoint ptr %.sroa.27.21664 to i64
  %i.axm = ptrtoint ptr %.sroa.01281.21659 to i64
  %i.axn = sub i64 %i.axl, %i.axm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01281.21659, i64 noundef %i.axn) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit884

_ZNSt6vectorIhSaIhEED2Ev.exit884:                 ; preds = %bb.gt, %bb.gu
  br i1 %.26, label %bb.gv, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit846:                 ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854, %bb.fw, %bb.fv, %bb.gj
  %.sroa.01281.3 = phi ptr [ %.sroa.01281.4, %bb.fw ], [ %.sroa.01281.21658, %bb.gj ], [ %.sroa.01281.4, %bb.fv ], [ %.sroa.01281.4, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023 ], [ %.sroa.01281.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854 ] ; 3 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.4, %bb.fw ], [ %.sroa.27.21665, %bb.gj ], [ %.sroa.27.4, %bb.fv ], [ %.sroa.27.4, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023 ], [ %.sroa.27.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854 ]
  %.pn534.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn534.pn.pn.pn, %bb.fw ], [ %i.awy, %bb.gj ], [ %.pn534.pn.pn.pn, %bb.fv ], [ %lpad.loopexit.split-lp3059, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023 ], [ %i.awl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854 ] ; 2 uses
  %.not.i.i.i885 = icmp eq ptr %.sroa.01281.3, null
  br i1 %.not.i.i.i885, label %_ZNSt6vectorIhSaIhEED2Ev.exit760, label %_ZNSt6vectorIhSaIhEED2Ev.exit846.thread

_ZNSt6vectorIhSaIhEED2Ev.exit846.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit846
  %i.axo = ptrtoint ptr %.sroa.27.3 to i64
  %i.axp = ptrtoint ptr %.sroa.01281.3 to i64
  %i.axq = sub i64 %i.axo, %i.axp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01281.3, i64 noundef %i.axq) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit760

bb.gv:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit884, %bb.er
  %i.axr = add nuw nsw i32 %.03472156, 1          ; 2 uses
  %i.axs = load i32, ptr %i.al, align 4, !tbaa !212 ; 3 uses
  %i.axt = add i32 %i.axs, 63
  %i.axu = lshr i32 %i.axt, 6
  %i.axv = icmp samesign ult i32 %i.axr, %i.axu
  %indvar.next = add i64 %indvar, 1
  br i1 %i.axv, label %bb.e, label %._crit_edge2158.loopexit, !llvm.loop !488

._crit_edge2158.loopexit:                         ; preds = %bb.gv
  %.pre2412 = load i32, ptr %i.ax, align 8, !tbaa !213
  br label %._crit_edge2158

._crit_edge2158:                                  ; preds = %._crit_edge2158.loopexit, %.preheader
  %i.axw = phi i32 [ %.pre2412, %._crit_edge2158.loopexit ], [ %i.el, %.preheader ] ; 2 uses
  %i.axx = phi i32 [ %i.axs, %._crit_edge2158.loopexit ], [ %i.em, %.preheader ]
  %i.axy = add nuw nsw i32 %.03602160, 1          ; 2 uses
  %i.axz = add i32 %i.axw, 63
  %i.aya = lshr i32 %i.axz, 6
  %i.ayb = icmp samesign ult i32 %i.axy, %i.aya
  br i1 %i.ayb, label %.preheader, label %._crit_edge2161, !llvm.loop !489

._crit_edge2161:                                  ; preds = %._crit_edge2158, %.preheader1770
  %i.ayc = invoke noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.gw unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gw:                                            ; preds = %._crit_edge2161
  %i.ayd = trunc i64 %i.ayc to i32
  %i.aye = add i32 %i.ayd, -8                     ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !524
  %i.ayh = sub i32 %i.aye, %i.ayg
  %i.ayi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 4, i32 noundef 0)
          to label %.lr.ph.i.i888 unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i.i888:                                    ; preds = %bb.gw
  %savedstack893 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ayj = call noundef i32 @llvm.bswap.i32(i32 %i.aye)
  store i32 %i.ayj, ptr %i.g, align 16, !tbaa !45
  %i.ayk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.gx unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gx:                                            ; preds = %.lr.ph.i.i888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.stackrestore.p0(ptr %savedstack893)
  br i1 %i.ayk, label %bb.gy, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.es, %bb.j, %bb.ew, %._crit_edge2161, %.lr.ph.i.i896, %.lr.ph.i.i888, %bb.ha, %bb.gy, %bb.gw
  %lpad.loopexit.split-lp3050 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit760

bb.gy:                                            ; preds = %bb.gx
  %i.ayl = load i32, ptr %i.ayf, align 4, !tbaa !524
  %i.aym = add i32 %i.ayl, 4
  %i.ayn = zext i32 %i.aym to i64
  %i.ayo = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ayn, i32 noundef 0)
          to label %.lr.ph.i.i896 unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i.i896:                                    ; preds = %bb.gy
  %savedstack901 = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ayp = call noundef i32 @llvm.bswap.i32(i32 %i.ayh)
  store i32 %i.ayp, ptr %i.f, align 16, !tbaa !45
  %i.ayq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef 1)
          to label %bb.gz unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gz:                                            ; preds = %.lr.ph.i.i896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.stackrestore.p0(ptr %savedstack901)
  br i1 %i.ayq, label %bb.ha, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef 0)
          to label %bb.hb unwind label %.loopexit.split-lp1751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hb:                                            ; preds = %bb.ha
  %i.ayr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !156
  %i.ayt = load ptr, ptr %i.t, align 8, !tbaa !210
  %i.ayu = icmp eq ptr %i.ays, %i.ayt
  br i1 %i.ayu, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ayv = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #29 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit:       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit884, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNSt6vectorIhSaIhEED2Ev.exit757, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i765, %bb.gx, %bb.gz, %bb.hb, %bb.hc
  %i.ayw = phi i1 [ true, %bb.hc ], [ false, %bb.gz ], [ false, %bb.gx ], [ true, %bb.hb ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i765 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit757 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit884 ]
  %.not.i.i.i904 = icmp eq ptr %.sroa.01466.0, null
  br i1 %.not.i.i.i904, label %_ZNSt6vectorIhSaIhEED2Ev.exit906, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit
  %i.ayx = ptrtoint ptr %.sroa.111471.0 to i64
  %i.ayy = ptrtoint ptr %.sroa.01466.0 to i64
  %i.ayz = sub i64 %i.ayx, %i.ayy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01466.0, i64 noundef %i.ayz) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit906

_ZNSt6vectorIhSaIhEED2Ev.exit906:                 ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit, %bb.hd
end_hunk_1
