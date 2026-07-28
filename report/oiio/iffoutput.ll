inline.NumInlined: 3235
inline.NumDeleted: 854
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %i.amj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

bb.ep:                                            ; preds = %bb.en
  %i.amk = trunc i32 %i.ey to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.aml = call i16 @llvm.bswap.i16(i16 %i.amk)
  store i16 %i.aml, ptr %i.p, align 16, !tbaa !95
  %i.amm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.p, i64 noundef 2, i64 noundef 1)
          to label %bb.eq unwind label %bb.eo

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.amm, label %bb.er, label %bb.ey

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 %i.es, ptr %i.o, align 16, !tbaa !95
  %i.amn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.o, i64 noundef 2, i64 noundef 1)
          to label %bb.es unwind label %bb.eo

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.amn, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.amo = trunc i32 %i.fa to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.amp = call i16 @llvm.bswap.i16(i16 %i.amo)
  store i16 %i.amp, ptr %i.n, align 16, !tbaa !95
  %i.amq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.n, i64 noundef 2, i64 noundef 1)
          to label %bb.eu unwind label %bb.eo

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.amq, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.amr = trunc i32 %i.fc to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ams = call i16 @llvm.bswap.i16(i16 %i.amr)
  store i16 %i.ams, ptr %i.m, align 16, !tbaa !95
  %i.amt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.m, i64 noundef 2, i64 noundef 1)
          to label %bb.ew unwind label %bb.eo

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.amt, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.amu = zext i32 %.8414 to i64
  %i.amv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01375.13, i64 noundef %i.amu, i64 noundef 1)
          to label %bb.ey unwind label %bb.eo

bb.ey:                                            ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617, %bb.eq, %bb.es, %bb.eu, %bb.ew, %bb.en, %_ZNSt6vectorIhSaIhEED2Ev.exit606, %_ZNSt6vectorIhSaIhEED2Ev.exit752
  %.sroa.55.14 = phi ptr [ %.sroa.55.8, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ %.sroa.55.13, %bb.ew ], [ %.sroa.55.13, %bb.eu ], [ %.sroa.55.13, %bb.es ], [ %.sroa.55.13, %bb.eq ], [ %.sroa.55.13, %bb.en ], [ %.sroa.55.51465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ %.sroa.55.2, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ %.sroa.55.121566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %.sroa.55.13, %bb.ex ]
  %.sroa.01375.14 = phi ptr [ %.sroa.01375.8, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ %.sroa.01375.13, %bb.ew ], [ %.sroa.01375.13, %bb.eu ], [ %.sroa.01375.13, %bb.es ], [ %.sroa.01375.13, %bb.eq ], [ %.sroa.01375.13, %bb.en ], [ %.sroa.01375.51470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ %.sroa.01375.2, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ %.sroa.01375.121572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %.sroa.01375.13, %bb.ex ] ; 3 uses
  %.20379 = phi i1 [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ false, %bb.ew ], [ false, %bb.eu ], [ false, %bb.es ], [ false, %bb.eq ], [ false, %bb.en ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %i.amv, %bb.ex ]
  %.not.i.i.i785 = icmp eq ptr %.sroa.01375.14, null
  br i1 %.not.i.i.i785, label %_ZNSt6vectorIhSaIhEED2Ev.exit787, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.amw = ptrtoint ptr %.sroa.55.14 to i64
  %i.amx = ptrtoint ptr %.sroa.01375.14 to i64
  %i.amy = sub i64 %i.amw, %i.amx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01375.14, i64 noundef %i.amy) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit787

_ZNSt6vectorIhSaIhEED2Ev.exit787:                 ; preds = %bb.ey, %bb.ez
  br i1 %.20379, label %bb.fa, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit608:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986, %.body626.thread, %.body626.thread1521, %_ZNSt6vectorIhSaIhEED2Ev.exit755, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614, %bb.r, %_ZNSt6vectorIhSaIhEED2Ev.exit580, %bb.bl, %bb.eo
  %.sroa.55.15 = phi ptr [ %.sroa.55.111556, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %.sroa.55.13, %bb.eo ], [ %.sroa.55.3, %bb.bl ], [ %.sroa.55.51465, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %.sroa.55.16, %bb.r ], [ %.sroa.55.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.55.16, %.body626.thread ], [ %.sroa.55.51465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %.sroa.55.16, %.body626.thread1521 ], [ %.sroa.55.121566, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %.sroa.55.121566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ]
  %.sroa.01375.15 = phi ptr [ %.sroa.01375.111557, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %.sroa.01375.13, %bb.eo ], [ %.sroa.01375.3, %bb.bl ], [ %.sroa.01375.51470, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %.sroa.01375.16, %bb.r ], [ %.sroa.01375.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.01375.16, %.body626.thread ], [ %.sroa.01375.51470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %.sroa.01375.16, %.body626.thread1521 ], [ %.sroa.01375.121572, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %.sroa.01375.121572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ] ; 3 uses
  %.pn518 = phi { ptr, i32 } [ %.pn484.pn.pn.pn1558, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %i.amj, %bb.eo ], [ %.pn507.pn, %bb.bl ], [ %lpad.phi1723, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %i.hv, %bb.r ], [ %.pn507.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %i.wg, %.body626.thread ], [ %i.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %i.wi, %.body626.thread1521 ], [ %lpad.phi1718, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %i.alp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ] ; 2 uses
  %.not.i.i.i788 = icmp eq ptr %.sroa.01375.15, null
  br i1 %.not.i.i.i788, label %.body, label %_ZNSt6vectorIhSaIhEED2Ev.exit608.thread

_ZNSt6vectorIhSaIhEED2Ev.exit608.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit608
  %i.amz = ptrtoint ptr %.sroa.55.15 to i64
  %i.ana = ptrtoint ptr %.sroa.01375.15 to i64
  %i.anb = sub i64 %i.amz, %i.ana
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01375.15, i64 noundef %i.anb) #30
  br label %.body

bb.fa:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit787, %bb.e
  %i.anc = load i8, ptr %i.ae, align 8, !tbaa !75
  %.not522 = icmp eq i8 %i.anc, 0
  br i1 %.not522, label %bb.hh, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !208
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull align 1 dereferenceable(5) @.str.30, i64 4, i64 0, ptr nonnull %14)
          to label %.noexc796 unwind label %bb.i

.noexc796:                                        ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !208
  %i.and = load ptr, ptr %15, align 8, !tbaa !17
  %i.ane = load i64, ptr %i.dc, align 8, !tbaa !13
  %i.anf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.and, i64 noundef %i.ane, i64 noundef 1)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %.noexc796
  %i.ang = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.anh = icmp eq ptr %i.ang, %i.dd
  br i1 %i.anh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794: ; preds = %bb.fc
  %i.ani = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.anj = add i64 %i.ani, 1
  call void @_ZdlPvm(ptr noundef %i.ang, i64 noundef %i.anj) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795

bb.fd:                                            ; preds = %.noexc796
  %i.ank = landingpad { ptr, i32 }
          cleanup
  %i.anl = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.anm = icmp eq ptr %i.anl, %i.dd
  br i1 %i.anm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791: ; preds = %bb.fd
  %i.ann = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.ano) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %i.anf, label %bb.fe, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795
  %i.anp = mul i32 %i.ff, %i.fe                   ; 5 uses
  %i.anq = zext i32 %i.anp to i64                 ; 3 uses
  %i.anr = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i800 = icmp eq i8 %i.anr, 0               ; 2 uses
  %i.ans = load i8, ptr %i.ag, align 1
  %i.ant = lshr i8 %i.ans, 3                      ; 3 uses
  %narrow.i = select i1 %.not.i800, i8 0, i8 %i.ant
  %i.anu = zext nneg i8 %narrow.i to i32
  %i.anv = mul i32 %i.anp, %i.anu                 ; 8 uses
  %i.anw = and i32 %i.anv, 3                      ; 2 uses
  %.not.i801 = icmp eq i32 %i.anw, 0
  %i.anx = sub nuw nsw i32 4, %i.anw
  %i.any = select i1 %.not.i801, i32 0, i32 %i.anx
  %.0.i802 = add i32 %i.anv, 8
  %i.anz = add i32 %.0.i802, %i.any               ; 2 uses
  %i.aoa = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.aob = icmp eq i32 %i.aoa, 1
  %i.aoc = zext i32 %i.anv to i64                 ; 3 uses
  %.not.i.i.i.i803 = icmp eq i32 %i.anv, 0
  br i1 %.not.i.i.i.i803, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aod = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoc) #31
          to label %.noexc805 unwind label %bb.fh ; 3 uses

.noexc805:                                        ; preds = %bb.ff
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 %i.aoc
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aod, i8 0, i64 %i.aoc, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc805, %bb.fe
  %.sroa.01254.4 = phi ptr [ %i.aod, %.noexc805 ], [ null, %bb.fe ] ; 21 uses
  %.sroa.25.4 = phi ptr [ %i.aoe, %.noexc805 ], [ null, %bb.fe ] ; 13 uses
  br i1 %i.aob, label %bb.fg, label %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread

bb.fg:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aof = shl i32 %i.anv, 1                      ; 2 uses
  %i.aog = zext i32 %i.aof to i64                 ; 3 uses
  %.not1700 = icmp eq i32 %i.aof, 0
  br i1 %.not1700, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit820, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811: ; preds = %bb.fg
  %i.aoh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aog) #31
          to label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817 unwind label %.thread1606 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811
  store i8 0, ptr %i.aoh, align 1, !tbaa !16
  %i.aoi = add nsw i64 %i.aog, -1
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoh, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aoj, i8 0, i64 %i.aoi, i1 false)
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoh, i64 %i.aog
  %i.aol = ptrtoint ptr %i.aok to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit820

_ZNSt6vectorIhSaIhEE6resizeEm.exit820:            ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817, %bb.fg
  %.sroa.01242.1 = phi ptr [ %i.aoh, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817 ], [ null, %bb.fg ] ; 13 uses
  %.sroa.111248.0 = phi i64 [ %i.aol, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i817 ], [ 0, %bb.fg ] ; 4 uses
  %.not21552156 = icmp eq i8 %i.ant, 0
  %.not2155 = select i1 %.not.i800, i1 true, i1 %.not21552156
  br i1 %.not2155, label %._crit_edge2114, label %.lr.ph2113

.lr.ph2113:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit820
  %i.aom = zext nneg i8 %i.ant to i64
  %.03962110 = add nuw nsw i64 %i.aom, 4294967295
  %.not.i.i.i.i823 = icmp eq i32 %i.anp, 0
  %i.aon = add nsw i64 %i.anq, -1                 ; 2 uses
  %i.aoo = icmp eq i64 %i.aon, 0
  %.not5322105 = icmp ugt i32 %i.ep, %i.fc
  %.not5332098 = icmp ugt i32 %i.ey, %i.fa
  %i.aop = ptrtoint ptr %.sroa.01242.1 to i64
  %i.aoq = sext i32 %i.anp to i64
  %i.aor = icmp sgt i32 %i.anp, 0
  %30 = and i64 %.03962110, 4294967295
  %brmerge = select i1 %.not5322105, i1 true, i1 %.not5332098
  br label %bb.fi

._crit_edge2114:                                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit872, %_ZNSt6vectorIhSaIhEE6resizeEm.exit820
  %.0397.lcssa = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit820 ], [ %i.aso, %_ZNSt6vectorIhSaIhEED2Ev.exit872 ] ; 8 uses
  %i.aos = icmp ult i32 %.0397.lcssa, %i.anv
  br i1 %i.aos, label %bb.fz, label %.thread1672

bb.fh:                                            ; preds = %bb.ff
  %i.aot = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread1606:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i811
  %i.aou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

bb.fi:                                            ; preds = %.lr.ph2113, %_ZNSt6vectorIhSaIhEED2Ev.exit872
  %indvars.iv2409.a = phi i64 [ %30, %.lr.ph2113 ], [ %indvars.iv.next2410, %_ZNSt6vectorIhSaIhEED2Ev.exit872 ] ; 3 uses
  %.03972111 = phi i32 [ 0, %.lr.ph2113 ], [ %i.aso, %_ZNSt6vectorIhSaIhEED2Ev.exit872 ] ; 2 uses
  br i1 %.not.i.i.i.i823, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aov = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anq) #31
          to label %.noexc826 unwind label %bb.fw ; 5 uses

.noexc826:                                        ; preds = %bb.fj
  %i.aow = getelementptr i8, ptr %i.aov, i64 %i.anq ; 3 uses
  store i8 0, ptr %i.aov, align 1, !tbaa !16
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 1 ; 2 uses
  br i1 %i.aoo, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827, label %bb.fk

bb.fk:                                            ; preds = %.noexc826
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aox, i8 0, i64 %i.aon, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827:            ; preds = %bb.fk, %.noexc826, %bb.fi
  %.sroa.01236.0 = phi ptr [ %i.aov, %bb.fk ], [ %i.aov, %.noexc826 ], [ null, %bb.fi ] ; 7 uses
  %.sroa.13.0 = phi ptr [ %i.aow, %bb.fk ], [ %i.aow, %.noexc826 ], [ null, %bb.fi ]
  %.0.i.i.i.i.i824 = phi ptr [ %i.aow, %bb.fk ], [ %i.aox, %.noexc826 ], [ null, %bb.fi ]
  br i1 %brmerge, label %._crit_edge2109.split, label %.lr.ph2102

._crit_edge2109.split:                            ; preds = %._crit_edge2103, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827
  %i.aoy = zext i32 %.03972111 to i64
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.01242.1, i64 %i.aoy ; 3 uses
  %i.apa = ptrtoint ptr %.0.i.i.i.i.i824 to i64
  %i.apb = ptrtoint ptr %.sroa.01236.0 to i64     ; 2 uses
  %i.apc = getelementptr inbounds i8, ptr %.sroa.01236.0, i64 %i.aoq ; 3 uses
  br i1 %i.aor, label %.lr.ph.i829, label %.loopexit

.lr.ph.i829:                                      ; preds = %._crit_edge2109.split
  %i.apd = ptrtoint ptr %i.apc to i64
  %i.ape = getelementptr inbounds i8, ptr %i.apc, i64 -1
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fv, %.lr.ph.i829
  %.045.i831 = phi ptr [ %.sroa.01236.0, %.lr.ph.i829 ], [ %.1.i835, %bb.fv ] ; 9 uses
  %.03944.i832 = phi ptr [ %i.aoz, %.lr.ph.i829 ], [ %.140.i834, %bb.fv ] ; 6 uses
  %i.apf = ptrtoint ptr %.045.i831 to i64         ; 3 uses
  %i.apg = sub i64 %i.apd, %i.apf
  %i.aph = trunc i64 %i.apg to i32                ; 4 uses
  %.sroa.speculated.i833 = call i32 @llvm.smin.i32(i32 %i.aph, i32 128) ; 4 uses
  %i.api = icmp sgt i32 %i.aph, 0
  br i1 %i.api, label %bb.fm, label %bb.fv

bb.fm:                                            ; preds = %bb.fl
  %i.apj = icmp ult ptr %.045.i831, %i.ape
  br i1 %i.apj, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  %i.apk = load i8, ptr %.045.i831, align 1, !tbaa !16 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %.045.i831, i64 1
  %i.apm = load i8, ptr %i.apl, align 1, !tbaa !16
  %i.apn = icmp eq i8 %i.apk, %i.apm
  br i1 %i.apn, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %.not41.i850 = icmp eq i32 %i.aph, 1
  br i1 %.not41.i850, label %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i861, label %.lr.ph.i.i851

.lr.ph.i.i851:                                    ; preds = %bb.fo
  %wide.trip.count.i.i852 = zext nneg i32 %.sroa.speculated.i833 to i64 ; 2 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fq, %.lr.ph.i.i851
  %indvars.iv.i.i853 = phi i64 [ 1, %.lr.ph.i.i851 ], [ %indvars.iv.next.i.i863, %bb.fq ] ; 4 uses
  %i.apo = getelementptr i8, ptr %.045.i831, i64 %indvars.iv.i.i853 ; 2 uses
  %i.app = getelementptr i8, ptr %i.apo, i64 -1
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !16
  %i.apr = load i8, ptr %i.apo, align 1, !tbaa !16
  %.not.i.i854 = icmp eq i8 %i.apq, %i.apr
  br i1 %.not.i.i854, label %bb.fq, label %._crit_edge.split.loop.exit25.i.i855

bb.fq:                                            ; preds = %bb.fp
  %indvars.iv.next.i.i863 = add i64 %indvars.iv.i.i853, 1 ; 2 uses
  %exitcond.not.i.i864 = icmp eq i64 %indvars.iv.next.i.i863, %wide.trip.count.i.i852
  br i1 %exitcond.not.i.i864, label %._crit_edge.i.i857, label %bb.fp, !llvm.loop !152

._crit_edge.split.loop.exit25.i.i855:             ; preds = %bb.fp
  %i.aps = trunc i64 %indvars.iv.i.i853 to i32
  %.pre.i856 = and i64 %indvars.iv.i.i853, 4294967295
  br label %._crit_edge.i.i857

._crit_edge.i.i857:                               ; preds = %bb.fq, %._crit_edge.split.loop.exit25.i.i855
  %.pre-phi.i858 = phi i64 [ %.pre.i856, %._crit_edge.split.loop.exit25.i.i855 ], [ %wide.trip.count.i.i852, %bb.fq ]
  %.0.lcssa.i.i859 = phi i32 [ %i.aps, %._crit_edge.split.loop.exit25.i.i855 ], [ %.sroa.speculated.i833, %bb.fq ] ; 2 uses
  %i.apt = icmp ugt i32 %.0.lcssa.i.i859, 1
  %i.apu = add nuw i32 %.0.lcssa.i.i859, 127
  %i.apv = and i32 %i.apu, 127
  %spec.select.i.i860 = select i1 %i.apt, i32 128, i32 0
  %i.apw = or disjoint i32 %i.apv, %spec.select.i.i860
  %i.apx = trunc nuw i32 %i.apw to i8
  br label %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i861

_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i861: ; preds = %._crit_edge.i.i857, %bb.fo
  %.0.lcssa24.i.i862 = phi i64 [ 1, %bb.fo ], [ %.pre-phi.i858, %._crit_edge.i.i857 ]
  %i.apy = phi i8 [ 0, %bb.fo ], [ %i.apx, %._crit_edge.i.i857 ]
  %i.apz = getelementptr inbounds nuw i8, ptr %.03944.i832, i64 1
  store i8 %i.apy, ptr %.03944.i832, align 1, !tbaa !16
  store i8 %i.apk, ptr %i.apz, align 1, !tbaa !16
  %i.aqa = getelementptr inbounds nuw i8, ptr %.03944.i832, i64 2
  %i.aqb = getelementptr inbounds nuw i8, ptr %.045.i831, i64 %.0.lcssa24.i.i862
  br label %bb.fv

bb.fr:                                            ; preds = %bb.fn, %bb.fm
  %.not.i838 = icmp eq i32 %i.aph, 1
  br i1 %.not.i838, label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i846, label %.lr.ph.i15.i839

.lr.ph.i15.i839:                                  ; preds = %bb.fr
  %wide.trip.count.i16.i840 = zext nneg i32 %.sroa.speculated.i833 to i64
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %.lr.ph.i15.i839
  %indvars.iv.i17.i841 = phi i64 [ 1, %.lr.ph.i15.i839 ], [ %indvars.iv.next.i18.i844, %bb.fu ] ; 3 uses
  %.02330.i.i842 = phi i8 [ 0, %.lr.ph.i15.i839 ], [ %i.aqe, %bb.fu ]
  %i.aqc = getelementptr i8, ptr %.045.i831, i64 %indvars.iv.i17.i841 ; 2 uses
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 -1
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !16 ; 3 uses
  %i.aqf = load i8, ptr %i.aqc, align 1, !tbaa !16
  %i.aqg = icmp eq i8 %i.aqe, %i.aqf
  %i.aqh = icmp eq i8 %.02330.i.i842, %i.aqe
  %or.cond.i.i843 = and i1 %i.aqh, %i.aqg
  br i1 %or.cond.i.i843, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.aqi = trunc nuw nsw i64 %indvars.iv.i17.i841 to i32
  %i.aqj = add nsw i32 %i.aqi, -2
  br label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i846

bb.fu:                                            ; preds = %bb.fs
  %indvars.iv.next.i18.i844 = add nuw nsw i64 %indvars.iv.i17.i841, 1 ; 2 uses
  %exitcond.not.i19.i845 = icmp eq i64 %indvars.iv.next.i18.i844, %wide.trip.count.i16.i840
  br i1 %exitcond.not.i19.i845, label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i846, label %bb.fs, !llvm.loop !153

_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i846: ; preds = %bb.fu, %bb.ft, %bb.fr
  %.1.i.i847 = phi i32 [ %i.aqj, %bb.ft ], [ 1, %bb.fr ], [ %.sroa.speculated.i833, %bb.fu ] ; 2 uses
  %i.aqk = trunc i32 %.1.i.i847 to i8
  %i.aql = add i8 %i.aqk, -1
  %i.aqm = getelementptr inbounds nuw i8, ptr %.03944.i832, i64 1 ; 2 uses
  store i8 %i.aql, ptr %.03944.i832, align 1, !tbaa !16
  %i.aqn = sext i32 %.1.i.i847 to i64             ; 3 uses
  %i.aqo = ptrtoint ptr %i.aqm to i64             ; 2 uses
  %i.aqp = sub i64 %i.aqo, %i.aop
  %i.aqq = sub i64 %i.apf, %i.apb
  %i.aqr = sub i64 %i.apa, %i.apf
  %.sroa.speculated7.i.i.i.i848 = call i64 @llvm.umin.i64(i64 %i.aqr, i64 %i.aqn)
  %i.aqs = sub i64 %.sroa.111248.0, %i.aqo
  %.sroa.speculated.i.i.i.i849 = call noundef i64 @llvm.umin.i64(i64 %i.aqs, i64 %.sroa.speculated7.i.i.i.i848)
  %i.aqt = getelementptr inbounds nuw i8, ptr %.sroa.01242.1, i64 %i.aqp
  %i.aqu = getelementptr inbounds nuw i8, ptr %.sroa.01236.0, i64 %i.aqq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqt, ptr align 1 %i.aqu, i64 %.sroa.speculated.i.i.i.i849, i1 false)
  %i.aqv = getelementptr inbounds i8, ptr %i.aqm, i64 %i.aqn
  %i.aqw = getelementptr inbounds i8, ptr %.045.i831, i64 %i.aqn
  br label %bb.fv

bb.fv:                                            ; preds = %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i846, %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i861, %bb.fl
  %.140.i834 = phi ptr [ %i.aqa, %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i861 ], [ %i.aqv, %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i846 ], [ %.03944.i832, %bb.fl ] ; 2 uses
  %.1.i835 = phi ptr [ %i.aqb, %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i861 ], [ %i.aqw, %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i846 ], [ %.045.i831, %bb.fl ] ; 2 uses
  %i.aqx = icmp ult ptr %.1.i835, %i.apc
  br i1 %i.aqx, label %bb.fl, label %.loopexit, !llvm.loop !154

bb.fw:                                            ; preds = %bb.fj
  %i.aqy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.lr.ph2102:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827, %._crit_edge2103
  %.03932107 = phi i32 [ %i.arr, %._crit_edge2103 ], [ %i.ep, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827 ] ; 2 uses
  %.03942106 = phi ptr [ %i.asi, %._crit_edge2103 ], [ %.sroa.01236.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit827 ]
  %i.aqz = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.ara = load i32, ptr %i.al, align 4, !tbaa !80
  %i.arb = zext i32 %i.ara to i64
  %i.arc = load i8, ptr %i.w, align 8, !tbaa !77
  %i.ard = lshr i8 %i.arc, 3
  %i.are = zext nneg i8 %i.ard to i64
  %i.arf = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.arg = zext i8 %i.arf to i64
  %i.arh = mul nuw nsw i64 %i.are, %i.arg
  %i.ari = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i.i866 = icmp eq i8 %i.ari, 0
  %i.arj = load i8, ptr %i.ag, align 1
  %i.ark = lshr i8 %i.arj, 3
  %narrow.i.i.i867 = select i1 %.not.i.i.i866, i8 0, i8 %i.ark
  %i.arl = zext nneg i8 %narrow.i.i.i867 to i64
  %i.arm = add nuw nsw i64 %i.arh, %i.arl
  %i.arn = zext i32 %.03932107 to i64
  %i.aro = mul nuw i64 %i.arb, %i.arn
  %i.arp = mul i64 %i.aro, %i.arm
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arp
  br label %bb.fx

._crit_edge2103:                                  ; preds = %bb.fx
  %i.arr = add i32 %.03932107, 1                  ; 2 uses
  %.not532 = icmp ugt i32 %i.arr, %i.fc
  br i1 %.not532, label %._crit_edge2109.split, label %.lr.ph2102, !llvm.loop !211

bb.fx:                                            ; preds = %.lr.ph2102, %bb.fx
  %.03912100 = phi i32 [ %i.ey, %.lr.ph2102 ], [ %i.asj, %bb.fx ] ; 2 uses
  %.13952099 = phi ptr [ %.03942106, %.lr.ph2102 ], [ %i.asi, %bb.fx ] ; 2 uses
  %i.ars = load i8, ptr %i.w, align 8, !tbaa !77
  %i.art = lshr i8 %i.ars, 3
  %i.aru = zext nneg i8 %i.art to i64
  %i.arv = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.arw = zext i8 %i.arv to i64
  %i.arx = mul nuw nsw i64 %i.aru, %i.arw         ; 2 uses
  %i.ary = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i868 = icmp eq i8 %i.ary, 0
  %i.arz = load i8, ptr %i.ag, align 1
  %i.asa = lshr i8 %i.arz, 3
  %narrow.i.i869 = select i1 %.not.i.i868, i8 0, i8 %i.asa
  %i.asb = zext nneg i8 %narrow.i.i869 to i64
  %i.asc = add nuw nsw i64 %i.arx, %i.asb
  %i.asd = zext i32 %.03912100 to i64
  %i.ase = mul nuw nsw i64 %i.asc, %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.ase
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asf, i64 %i.arx
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 %indvars.iv2409.a
  %.0.copyload = load i8, ptr %i.ash, align 1
  %i.asi = getelementptr inbounds nuw i8, ptr %.13952099, i64 1 ; 2 uses
  store i8 %.0.copyload, ptr %.13952099, align 1, !tbaa !16
  %i.asj = add i32 %.03912100, 1                  ; 2 uses
  %.not533 = icmp ugt i32 %i.asj, %i.fa
  br i1 %.not533, label %._crit_edge2103, label %bb.fx, !llvm.loop !212

.loopexit:                                        ; preds = %bb.fv, %._crit_edge2109.split
  %.039.lcssa.i828 = phi ptr [ %i.aoz, %._crit_edge2109.split ], [ %.140.i834, %bb.fv ]
  %i.ask = ptrtoint ptr %.039.lcssa.i828 to i64
  %i.asl = ptrtoint ptr %i.aoz to i64
  %i.asm = sub i64 %i.ask, %i.asl
  %i.asn = trunc i64 %i.asm to i32
  %i.aso = add i32 %.03972111, %i.asn             ; 2 uses
  %.not.i.i.i870 = icmp eq ptr %.sroa.01236.0, null
  br i1 %.not.i.i.i870, label %_ZNSt6vectorIhSaIhEED2Ev.exit872, label %bb.fy

bb.fy:                                            ; preds = %.loopexit
  %i.asp = ptrtoint ptr %.sroa.13.0 to i64
  %i.asq = sub i64 %i.asp, %i.apb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01236.0, i64 noundef %i.asq) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit872

_ZNSt6vectorIhSaIhEED2Ev.exit872:                 ; preds = %.loopexit, %bb.fy
  %indvars.iv.next2410 = add nsw i64 %indvars.iv2409.a, -1
  %i.asr = icmp sgt i64 %indvars.iv2409.a, 0
  br i1 %i.asr, label %bb.fi, label %._crit_edge2114, !llvm.loop !213

bb.fz:                                            ; preds = %._crit_edge2114
  %i.ass = zext i32 %.0397.lcssa to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01254.4, ptr align 1 %.sroa.01242.1, i64 %i.ass, i1 false)
  %i.ast = add i32 %.0397.lcssa, 8                ; 4 uses
  %i.asu = and i32 %.0397.lcssa, 3                ; 2 uses
  %.not.i876 = icmp eq i32 %i.asu, 0              ; 2 uses
  %i.asv = sub nuw nsw i32 4, %i.asu              ; 3 uses
  %i.asw = select i1 %.not.i876, i32 0, i32 %i.asv ; 2 uses
  %.0.i877 = add i32 %i.asw, %i.ast
  %i.asx = icmp ugt i32 %.0.i877, %i.ast
  br i1 %i.asx, label %bb.ga, label %.loopexit1706

bb.ga:                                            ; preds = %bb.fz
  %i.asy = ptrtoint ptr %.sroa.25.4 to i64
  %i.asz = ptrtoint ptr %.sroa.01254.4 to i64
  %i.ata = sub i64 %i.asy, %i.asz                 ; 7 uses
  %i.atb = add i32 %i.asw, %.0397.lcssa
  %i.atc = zext i32 %i.atb to i64                 ; 2 uses
  %i.atd = icmp ult i64 %i.ata, %i.atc
  br i1 %i.atd, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit892

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883: ; preds = %bb.ga
  %i.ate = sub nuw nsw i64 %i.atc, %i.ata         ; 2 uses
  %.sroa.speculated.i.i.i884 = call i64 @llvm.umax.i64(i64 %i.ata, i64 %i.ate)
  %i.atf = add nuw nsw i64 %.sroa.speculated.i.i.i884, %i.ata ; 2 uses
  %i.atg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atf) #31
          to label %.noexc891 unwind label %bb.ge ; 4 uses

.noexc891:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.ata ; 2 uses
  store i8 0, ptr %i.ath, align 1, !tbaa !16
  %i.ati = add nsw i64 %i.ate, -1                 ; 2 uses
  %i.atj = icmp eq i64 %i.ati, 0
  br i1 %i.atj, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885, label %bb.gb

bb.gb:                                            ; preds = %.noexc891
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ath, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.atk, i8 0, i64 %i.ati, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885: ; preds = %bb.gb, %.noexc891
  %.not35.i.i886 = icmp eq ptr %.sroa.25.4, %.sroa.01254.4
  br i1 %.not35.i.i886, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887, label %bb.gc

bb.gc:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atg, ptr align 1 %.sroa.01254.4, i64 %i.ata, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887: ; preds = %bb.gc, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i885
  %.not.i33.i.i888 = icmp eq ptr %.sroa.01254.4, null
  br i1 %.not.i33.i.i888, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01254.4, i64 noundef %i.ata) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889: ; preds = %bb.gd, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i887
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.atf
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit892

bb.ge:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i883
  %i.atm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

_ZNSt6vectorIhSaIhEE6resizeEm.exit892:            ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889, %bb.ga
  %.sroa.01254.0 = phi ptr [ %.sroa.01254.4, %bb.ga ], [ %i.atg, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889 ] ; 3 uses
  %.sroa.25.0 = phi ptr [ %.sroa.25.4, %bb.ga ], [ %i.atl, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i889 ] ; 2 uses
  br i1 %.not.i876, label %.loopexit1706, label %.lr.ph2139.preheader

.lr.ph2139.preheader:                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit892
  %i.atn = getelementptr i8, ptr %.sroa.01254.0, i64 %i.ass
  %umax2420 = zext nneg i32 %i.asv to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.atn, i8 0, i64 %umax2420, i1 false), !tbaa !16
  %i.ato = add i32 %.0397.lcssa, %i.asv
  br label %.loopexit1706

.loopexit1706:                                    ; preds = %.lr.ph2139.preheader, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892, %bb.fz
  %.sroa.01254.1 = phi ptr [ %.sroa.01254.4, %bb.fz ], [ %.sroa.01254.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892 ], [ %.sroa.01254.0, %.lr.ph2139.preheader ] ; 2 uses
  %.sroa.25.1 = phi ptr [ %.sroa.25.4, %bb.fz ], [ %.sroa.25.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892 ], [ %.sroa.25.0, %.lr.ph2139.preheader ] ; 2 uses
  %.2403 = phi i32 [ %.0397.lcssa, %bb.fz ], [ %.0397.lcssa, %_ZNSt6vectorIhSaIhEE6resizeEm.exit892 ], [ %i.ato, %.lr.ph2139.preheader ] ; 2 uses
  %.not.i.i.i893 = icmp eq ptr %.sroa.01242.1, null
  br i1 %.not.i.i.i893, label %.thread1650, label %bb.gf

.thread1672:                                      ; preds = %._crit_edge2114
  %.not.i.i.i8931679 = icmp eq ptr %.sroa.01242.1, null
  br i1 %.not.i.i.i8931679, label %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread, label %.thread1686

.thread1686:                                      ; preds = %.thread1672
  %i.atp = ptrtoint ptr %.sroa.01242.1 to i64
  %i.atq = sub i64 %.sroa.111248.0, %i.atp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01242.1, i64 noundef %i.atq) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread

bb.gf:                                            ; preds = %.loopexit1706
  %i.atr = ptrtoint ptr %.sroa.01242.1 to i64
  %i.ats = sub i64 %.sroa.111248.0, %i.atr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01242.1, i64 noundef %i.ats) #30
  br label %.thread1650

bb.gg:                                            ; preds = %bb.fw, %bb.ge
  %.pn534.pn.pn.pn = phi { ptr, i32 } [ %i.aqy, %bb.fw ], [ %i.atm, %bb.ge ] ; 2 uses
  %.not.i.i.i896 = icmp eq ptr %.sroa.01242.1, null
  br i1 %.not.i.i.i896, label %_ZNSt6vectorIhSaIhEED2Ev.exit898, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.att = ptrtoint ptr %.sroa.01242.1 to i64
  %i.atu = sub i64 %.sroa.111248.0, %i.att
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01242.1, i64 noundef %i.atu) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit898

_ZNSt6vectorIhSaIhEED2Ev.exit895.thread:          ; preds = %.thread1672, %.thread1686, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.atv = ptrtoint ptr %.sroa.25.4 to i64
  %i.atw = ptrtoint ptr %.sroa.01254.4 to i64
  %i.atx = sub i64 %i.atv, %i.atw
  %.not5242131 = icmp ugt i32 %i.ep, %i.fc
  br i1 %.not5242131, label %.thread1650, label %.lr.ph2135

.lr.ph2135:                                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit895.thread
  %i.aty = load ptr, ptr %i.s, align 8, !tbaa !18 ; 3 uses
  %i.atz = load i32, ptr %i.al, align 4, !tbaa !105 ; 2 uses
  %i.aua = load i8, ptr %i.w, align 8, !tbaa !77
  %i.aub = lshr i8 %i.aua, 3
  %i.auc = zext nneg i8 %i.aub to i64
  %i.aud = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.aue = zext i8 %i.aud to i64
  %i.auf = mul nuw nsw i64 %i.auc, %i.aue         ; 3 uses
  %i.aug = load i8, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %.not.i.i899 = icmp eq i8 %i.aug, 0
  %i.auh = load i8, ptr %i.ag, align 1            ; 2 uses
  %i.aui = lshr i8 %i.auh, 3
  %narrow.i.i900 = select i1 %.not.i.i899, i8 0, i8 %i.aui
  %i.auj = zext nneg i8 %narrow.i.i900 to i64
  %i.auk = add nuw nsw i64 %i.auf, %i.auj         ; 3 uses
  %.not5262123 = icmp ugt i32 %i.ey, %i.fa
  %.not.i901 = icmp eq i8 %i.aug, 0
  %i.aul = lshr i8 %i.auh, 3
  %narrow.i902 = select i1 %.not.i901, i8 0, i8 %i.aul
  %narrow.i902.fr = freeze i8 %narrow.i902        ; 2 uses
  %i.aum = zext i8 %narrow.i902.fr to i32         ; 2 uses
  %i.aun = icmp eq i8 %narrow.i902.fr, 0
  %.03172116 = add nsw i32 %i.aum, -1
  %i.auo = zext i32 %.03172116 to i64             ; 7 uses
  %invariant.gep2774 = getelementptr inbounds nuw i8, ptr %i.aty, i64 %i.auf
  %scevgep3016 = getelementptr i8, ptr %.sroa.01254.4, i64 1
  %i.aup = add nuw nsw i64 %i.auf, %i.auo         ; 2 uses
  %scevgep3018 = getelementptr i8, ptr %i.aty, i64 %i.aup
  %scevgep3020 = getelementptr i8, ptr %i.aty, i64 1
  %scevgep3021 = getelementptr i8, ptr %scevgep3020, i64 %i.aup
  %brmerge2776 = or i1 %.not5262123, %i.aun
  br label %bb.gi

bb.gi:                                            ; preds = %.lr.ph2135, %._crit_edge2128
  %indvar = phi i32 [ 0, %.lr.ph2135 ], [ %indvar.next, %._crit_edge2128 ] ; 2 uses
  %.03492134 = phi i64 [ 0, %.lr.ph2135 ], [ %.1350.lcssa, %._crit_edge2128 ] ; 2 uses
  %storemerge5232132 = phi i32 [ %i.ep, %.lr.ph2135 ], [ %i.awx, %._crit_edge2128 ] ; 3 uses
  %i.auq = add i32 %i.en, %indvar
  %i.aur = mul i32 %i.auq, %i.atz
  %i.aus = zext i32 %i.aur to i64
  br i1 %brmerge2776, label %._crit_edge2128, label %.lr.ph2120.preheader

.lr.ph2120.preheader:                             ; preds = %bb.gi
  %i.aut = mul i32 %i.atz, %storemerge5232132
  %i.auu = zext i32 %i.aut to i64
  %i.auv = mul nuw nsw i64 %i.auk, %i.auu
  %gep2775 = getelementptr inbounds nuw i8, ptr %invariant.gep2774, i64 %i.auv
  br label %.lr.ph2120

.lr.ph2120:                                       ; preds = %.lr.ph2120.preheader, %._crit_edge2121
  %.13502125 = phi i64 [ %i.awu, %._crit_edge2121 ], [ %.03492134, %.lr.ph2120.preheader ] ; 10 uses
  %storemerge5252124 = phi i32 [ %i.aww, %._crit_edge2121 ], [ %i.ey, %.lr.ph2120.preheader ] ; 4 uses
  %i.auw = zext i32 %storemerge5252124 to i64
  %umax2417 = call i64 @llvm.umax.i64(i64 %.13502125, i64 %i.atx) ; 3 uses
  %i.aux = trunc i64 %.13502125 to i32
  %i.auy = add i32 %i.aum, %i.aux
  %i.auz = mul nuw nsw i64 %i.auk, %i.auw
  %gep2773 = getelementptr inbounds nuw i8, ptr %gep2775, i64 %i.auz ; 2 uses
  %i.ava = sub i64 %umax2417, %.13502125
  %umin3023 = call i64 @llvm.umin.i64(i64 %i.auo, i64 %i.ava) ; 2 uses
  %i.avb = add nuw nsw i64 %umin3023, 1           ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin3023, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph2120
  %i.avc = zext i32 %storemerge5252124 to i64
  %i.avd = add nuw nsw i64 %i.aus, %i.avc
  %i.ave = mul nuw nsw i64 %i.auk, %i.avd         ; 2 uses
  %scevgep3022 = getelementptr i8, ptr %scevgep3021, i64 %i.ave
  %scevgep = getelementptr i8, ptr %.sroa.01254.4, i64 %.13502125
  %i.avf = sub i64 %umax2417, %.13502125
  %umin = call i64 @llvm.umin.i64(i64 %i.auo, i64 %i.avf) ; 2 uses
  %i.avg = getelementptr i8, ptr %scevgep3016, i64 %.13502125
  %scevgep3017 = getelementptr i8, ptr %i.avg, i64 %umin
  %i.avh = sub nsw i64 %i.ave, %umin
  %scevgep3019 = getelementptr i8, ptr %scevgep3018, i64 %i.avh
  %bound0 = icmp ult ptr %scevgep, %scevgep3022
  %bound1 = icmp ult ptr %scevgep3019, %scevgep3017
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a

bb.n:                                             ; preds = %.lr.ph94, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55
  %.293 = phi i32 [ %.1.lcssa, %.lr.ph94 ], [ %i.em, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55 ]
  %i.ee = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.ef = add i64 %i.ee, 1                        ; 3 uses
  %i.eg = load i64, ptr %i.am, align 8, !tbaa !134
  %i.eh = icmp ugt i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

bb.o:                                             ; preds = %bb.n
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !131
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ef), !inline_history !500
  %.pre.i53 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i54 = add i64 %.pre.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.n, %bb.o
  %.pre-phi.i52 = phi i64 [ %i.ef, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ej = phi i64 [ %i.ee, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.ek = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !148
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 48, ptr %i.el, align 1, !tbaa !16
  %i.em = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.em, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !710

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.en = select i1 %.not88, i8 112, i8 80
  %i.eo = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %i.ep = add i64 %i.eo, 1                        ; 3 uses
  %i.eq = load i64, ptr %i.am, align 8, !tbaa !134
  %i.er = icmp ugt i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !131
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ep), !inline_history !500
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.ep, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.eu = phi i64 [ %i.eo, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ev = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !148
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eu
  store i8 %i.en, ptr %i.ew, align 1, !tbaa !16
  %i.ex = icmp slt i32 %i.j, 0
  %i.ey = load i64, ptr %i.aj, align 8, !tbaa !148 ; 3 uses
  %i.ez = add i64 %i.ey, 1                        ; 5 uses
  %i.fa = load i64, ptr %i.am, align 8, !tbaa !134
  %i.fb = icmp ugt i64 %i.ez, %i.fa               ; 2 uses
  br i1 %i.ex, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fb, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !131
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ez), !inline_history !500
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.ez, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.fe = phi i64 [ %i.ey, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.ff = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !148
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe
  store i8 45, ptr %i.fg, align 1, !tbaa !16
  %i.fh = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fb, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !131
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ez), !inline_history !500
  %.pre.i65 = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.s, %bb.t
  %.pre-phi.i64 = phi i64 [ %i.ez, %bb.s ], [ %.pre2.i66, %bb.t ]
  %i.fk = phi i64 [ %i.ey, %bb.s ], [ %.pre.i65, %bb.t ]
  %i.fl = load ptr, ptr %3, align 8, !tbaa !133
  store i64 %.pre-phi.i64, ptr %i.aj, align 8, !tbaa !148
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 43, ptr %i.fm, align 1, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.032 = phi i32 [ %i.fh, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fn = or i32 %.032, 1
  %i.fo = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fn, i1 true)
  %i.fp = xor i32 %i.fo, 31
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !136
  %i.ft = zext nneg i32 %.032 to i64
  %i.fu = add i64 %i.fs, %i.ft
  %i.fv = lshr i64 %i.fu, 32
  %i.fw = trunc nuw i64 %i.fv to i32
  %i.fx = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.032, i32 noundef %i.fw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !265
  %i.c = and i32 %i.b, 7
  %i.d = icmp eq i32 %i.c, 2                      ; 5 uses
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.f, %i.d
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !148  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !134
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !131
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !500
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !148 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !133
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !148
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !16
  br label %bb.bf

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !134  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !131
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !507
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !134
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !148
  %i.aa = load ptr, ptr %4, align 8, !tbaa !133
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bf

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ac = bitcast double %0 to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 4503599627370495         ; 5 uses
  %i.ae = and i64 %i.ac, 9218868437227405312      ; 3 uses
  %i.af = lshr exact i64 %i.ae, 52
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %.not = icmp eq i64 %i.ae, 0                    ; 3 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ag, -1075
  %i.ai = shl nuw nsw i64 %i.ad, 1
  %i.aj = or disjoint i64 %i.ai, 9007199254740992
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = add nuw nsw i64 %i.ak, 4294967286
  %i.an = sub nuw nsw i32 -1063, %i.al
  %6 = and i64 %i.am, 4294967295
  %i.ao = shl i64 %i.ad, %6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0108 = phi i32 [ %i.ah, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %.0107 = phi i64 [ %i.aj, %bb.h ], [ %i.ao, %bb.i ]
  %i.ap = mul nsw i32 %.0108, 315653
  %i.aq = ashr i32 %i.ap, 20                      ; 4 uses
  %.neg125 = add nsw i32 %i.aq, -2                ; 2 uses
  %i.ar = sub nsw i32 2, %i.aq                    ; 3 uses
  %i.as = mul nsw i32 %i.ar, 1741647
  %i.at = ashr i32 %i.as, 19                      ; 2 uses
  %i.au = add nsw i32 %i.at, %.0108
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %.0107, %i.av
  %i.ax = trunc nsw i32 %i.aq to i16
  %.lhs.trunc = sub nsw i16 294, %i.ax
  %i.ay = udiv i16 %.lhs.trunc, 27                ; 2 uses
  %narrow = mul nuw nsw i16 %i.ay, 27
  %i.az = zext nneg i16 %narrow to i32
  %i.ba = add nsw i32 %i.az, -292                 ; 3 uses
  %i.bb = zext nneg i16 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bb ; 2 uses
  %.sroa.037.0.copyload.i.i = load i64, ptr %i.bc, align 16, !tbaa !136 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !136 ; 2 uses
  %i.bd = icmp eq i32 %i.ar, %i.ba
  br i1 %i.bd, label %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = sub nsw i32 %i.ar, %i.ba                ; 2 uses
  %i.bf = mul nsw i32 %i.ba, 1741647
  %i.bg = ashr i32 %i.bf, 19
  %i.bh = add nsw i32 %i.be, %i.bg
  %i.bi = sub nsw i32 %i.at, %i.bh                ; 2 uses
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !136
  %i.bm = zext i64 %.sroa.5.0.copyload.i.i to i128
  %i.bn = zext i64 %i.bl to i128                  ; 2 uses
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = trunc nuw i128 %i.bp to i64
  %i.br = trunc i128 %i.bo to i64
  %i.bs = zext i64 %.sroa.037.0.copyload.i.i to i128
  %i.bt = mul nuw i128 %i.bn, %i.bs               ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64
  %i.bw = trunc i128 %i.bt to i64
  %i.bx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.br, i64 %i.bv) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0       ; 2 uses
  %i.ca = zext i1 %i.by to i64
  %i.cb = add nuw i64 %i.ca, %i.bq
  %i.cc = sub nsw i32 64, %i.bi
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = shl i64 %i.cb, %i.cd
  %i.cf = shl i64 %i.bz, %i.cd
  %i.cg = zext i32 %i.bi to i64                   ; 2 uses
  %i.ch = lshr i64 %i.bz, %i.cg
  %i.ci = or i64 %i.ce, %i.ch
  %i.cj = lshr i64 %i.bw, %i.cg
  %i.ck = or i64 %i.cf, %i.cj
  %i.cl = add i64 %i.ck, 1
  br label %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit

_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit: ; preds = %bb.j, %bb.k
  %.sroa.041.0.i.i = phi i64 [ %i.cl, %bb.k ], [ %.sroa.037.0.copyload.i.i, %bb.j ]
  %.sroa.3.0.i.i = phi i64 [ %i.ci, %bb.k ], [ %.sroa.5.0.copyload.i.i, %bb.j ]
  %i.cm = zext i64 %i.aw to i128                  ; 2 uses
  %i.cn = zext i64 %.sroa.3.0.i.i to i128
  %i.co = mul nuw i128 %i.cn, %i.cm               ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = trunc i128 %i.co to i64
  %i.cs = zext i64 %.sroa.041.0.i.i to i128
  %i.ct = mul nuw i128 %i.cs, %i.cm
  %i.cu = lshr i128 %i.ct, 64
  %i.cv = trunc nuw i128 %i.cu to i64
  %i.cw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cr, i64 %i.cv) ; 2 uses
  %i.cx = extractvalue { i64, i1 } %i.cw, 1
  %i.cy = extractvalue { i64, i1 } %i.cw, 0       ; 2 uses
  %i.cz = zext i1 %i.cx to i64
  %i.da = add nuw i64 %i.cz, %i.cq                ; 3 uses
  %i.db = icmp ne i64 %i.cy, 0                    ; 4 uses
  %i.dc = icmp ugt i64 %i.da, 999999999999999999  ; 2 uses
  %i.dd = mul nuw i64 %i.da, 10
  %.0112 = select i1 %i.dc, i32 19, i32 18        ; 4 uses
  %.0111 = select i1 %i.dc, i64 %i.da, i64 %i.dd  ; 3 uses
  br i1 %i.d, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %i.de = add nsw i32 %.0112, %.neg125            ; 3 uses
  %i.df = icmp sgt i32 %i.de, 0
  %i.dg = sub nuw nsw i32 2147483647, %i.de
  %i.dh = icmp sgt i32 %1, %i.dg
  %or.cond.i = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.m:                                             ; preds = %bb.l
  %i.di = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull @.str.54)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.dj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.di) #29
  resume { ptr, i32 } %i.dj

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.l
  %i.dk = add nsw i32 %i.de, %1
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %.0187 = phi i32 [ %i.dk, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit ] ; 20 uses
  %.not131 = icmp sgt i32 %.0112, %.0187
  br i1 %.not131, label %bb.q, label %.thread217

bb.q:                                             ; preds = %bb.p
  %i.dl = icmp slt i32 %.0187, 1
  %i.dm = add nsw i32 %.0112, %.neg125            ; 2 uses
  br i1 %i.dl, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  store i32 %i.dm, ptr %i.a, align 4, !tbaa !3
  %i.dn = icmp slt i32 %.0187, 0
  br i1 %i.dn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.do, align 8, !tbaa !148
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !134
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.u, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.u:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !131
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !507
  %.pre.i140 = load i64, ptr %i.dp, align 8, !tbaa !134
  %i.du = icmp ne i64 %.pre.i140, 0
  %i.dv = zext i1 %i.du to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.t, %bb.u
  %i.dw = phi i64 [ 1, %bb.t ], [ %i.dv, %bb.u ]
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !148
  %i.dy = zext i1 %i.db to i64
  %i.dz = or i64 %.0111, %i.dy
  %i.ea = icmp ugt i64 %i.dz, 5000000000000000000
  %i.eb = load ptr, ptr %4, align 8, !tbaa !133   ; 2 uses
  br i1 %i.ea, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.eb, align 1, !tbaa !16
  br label %.thread

bb.w:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.eb, align 1, !tbaa !16
  br label %.thread

bb.x:                                             ; preds = %bb.q
  %i.ec = sub nsw i32 %i.dm, %.0187               ; 2 uses
  store i32 %i.ec, ptr %i.a, align 4, !tbaa !3
  %i.ed = zext i64 %.0111 to i128
  %i.ee = mul nuw nsw i128 %i.ed, 7922816251426433760
  %sum.shift = lshr i128 %i.ee, 96
  %i.ef = trunc nuw nsw i128 %sum.shift to i64    ; 3 uses
  %.neg126 = mul i64 %i.ef, -10000000000
  %i.eg = add i64 %.neg126, %.0111                ; 5 uses
  %i.eh = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !133   ; 6 uses
  %i.ej = and i32 %i.eh, 1
  %.not.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = mul nuw nsw i64 %i.ef, 720575941
  %i.el = lshr i64 %i.ek, 24
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %i.en = lshr i64 %i.em, 32                      ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i8
  %i.ep = add nuw nsw i8 %i.eo, 48
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.eq = mul nuw nsw i64 %i.ef, 450359963
  %i.er = lshr i64 %i.eq, 20
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %i.et = lshr i64 %i.es, 32                      ; 2 uses
end_hunk_1
