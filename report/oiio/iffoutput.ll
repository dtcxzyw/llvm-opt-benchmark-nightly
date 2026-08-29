Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffoutput?download=true
inline.NumInlined: 3241
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.amv, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.amw = trunc i32 %i.fb to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.amx = call i16 @llvm.bswap.i16(i16 %i.amw)
  store i16 %i.amx, ptr %i.m, align 16, !tbaa !96
  %i.amy = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.m, i64 noundef 2, i64 noundef 1)
          to label %bb.ew unwind label %bb.eo

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.amy, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.amz = zext i32 %.8346 to i64
  %i.ana = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01397.13, i64 noundef %i.amz, i64 noundef 1)
          to label %bb.ey unwind label %bb.eo

bb.ey:                                            ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605, %bb.eq, %bb.es, %bb.eu, %bb.ew, %bb.en, %_ZNSt6vectorIhSaIhEED2Ev.exit594, %_ZNSt6vectorIhSaIhEED2Ev.exit718
  %.sroa.63.14 = phi ptr [ %.sroa.63.8, %_ZNSt6vectorIhSaIhEED2Ev.exit718 ], [ %.sroa.63.13, %bb.ew ], [ %.sroa.63.13, %bb.eu ], [ %.sroa.63.13, %bb.es ], [ %.sroa.63.13, %bb.eq ], [ %.sroa.63.13, %bb.en ], [ %.sroa.63.51504, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605 ], [ %.sroa.63.2, %_ZNSt6vectorIhSaIhEED2Ev.exit594 ], [ %.sroa.63.121601, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734 ], [ %.sroa.63.13, %bb.ex ]
  %.sroa.01397.14 = phi ptr [ %.sroa.01397.8, %_ZNSt6vectorIhSaIhEED2Ev.exit718 ], [ %.sroa.01397.13, %bb.ew ], [ %.sroa.01397.13, %bb.eu ], [ %.sroa.01397.13, %bb.es ], [ %.sroa.01397.13, %bb.eq ], [ %.sroa.01397.13, %bb.en ], [ %.sroa.01397.51509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605 ], [ %.sroa.01397.2, %_ZNSt6vectorIhSaIhEED2Ev.exit594 ], [ %.sroa.01397.121607, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734 ], [ %.sroa.01397.13, %bb.ex ] ; 3 uses
  %.20 = phi i1 [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit718 ], [ false, %bb.ew ], [ false, %bb.eu ], [ false, %bb.es ], [ false, %bb.eq ], [ false, %bb.en ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit594 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i734 ], [ %i.ana, %bb.ex ]
  %.not.i.i.i751 = icmp eq ptr %.sroa.01397.14, null
  br i1 %.not.i.i.i751, label %_ZNSt6vectorIhSaIhEED2Ev.exit753, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.anb = ptrtoint ptr %.sroa.63.14 to i64
  %i.anc = ptrtoint ptr %.sroa.01397.14 to i64
  %i.and = sub i64 %i.anb, %i.anc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01397.14, i64 noundef %i.and) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit753

_ZNSt6vectorIhSaIhEED2Ev.exit753:                 ; preds = %bb.ey, %bb.ez
  br i1 %.20, label %bb.fa, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit596:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i975, %.body614.thread, %.body614.thread1556, %_ZNSt6vectorIhSaIhEED2Ev.exit721, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i923, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602, %bb.r, %_ZNSt6vectorIhSaIhEED2Ev.exit580, %bb.bl, %bb.eo
  %.sroa.63.15 = phi ptr [ %.sroa.63.13, %bb.eo ], [ %.sroa.63.3, %bb.bl ], [ %.sroa.63.51504, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i923 ], [ %.sroa.63.111589, %_ZNSt6vectorIhSaIhEED2Ev.exit721 ], [ %.sroa.63.16, %bb.r ], [ %.sroa.63.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.63.16, %.body614.thread ], [ %.sroa.63.51504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602 ], [ %.sroa.63.16, %.body614.thread1556 ], [ %.sroa.63.121601, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i975 ], [ %.sroa.63.121601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731 ]
  %.sroa.01397.15 = phi ptr [ %.sroa.01397.13, %bb.eo ], [ %.sroa.01397.3, %bb.bl ], [ %.sroa.01397.51509, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i923 ], [ %.sroa.01397.111592, %_ZNSt6vectorIhSaIhEED2Ev.exit721 ], [ %.sroa.01397.16, %bb.r ], [ %.sroa.01397.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.01397.16, %.body614.thread ], [ %.sroa.01397.51509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602 ], [ %.sroa.01397.16, %.body614.thread1556 ], [ %.sroa.01397.121607, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i975 ], [ %.sroa.01397.121607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731 ] ; 3 uses
  %.pn518 = phi { ptr, i32 } [ %i.amo, %bb.eo ], [ %.pn507.pn, %bb.bl ], [ %lpad.phi1757, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i923 ], [ %.pn484.pn.pn.pn1593, %_ZNSt6vectorIhSaIhEED2Ev.exit721 ], [ %i.hv, %bb.r ], [ %.pn507.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %i.wj, %.body614.thread ], [ %i.vg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i602 ], [ %i.wl, %.body614.thread1556 ], [ %lpad.phi1752, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i975 ], [ %i.alu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i731 ] ; 2 uses
  %.not.i.i.i754 = icmp eq ptr %.sroa.01397.15, null
  br i1 %.not.i.i.i754, label %.body, label %_ZNSt6vectorIhSaIhEED2Ev.exit596.thread

_ZNSt6vectorIhSaIhEED2Ev.exit596.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit596
  %i.ane = ptrtoint ptr %.sroa.63.15 to i64
  %i.anf = ptrtoint ptr %.sroa.01397.15 to i64
  %i.ang = sub i64 %i.ane, %i.anf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01397.15, i64 noundef %i.ang) #30
  br label %.body

bb.fa:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit753, %bb.e
  %i.anh = load i8, ptr %i.ae, align 8, !tbaa !75
  %.not522 = icmp eq i8 %i.anh, 0
  br i1 %.not522, label %bb.hg, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !208
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull align 1 dereferenceable(5) @.str.30, i64 4, i64 0, ptr nonnull %14)
          to label %.noexc762 unwind label %bb.i

.noexc762:                                        ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !208
  %i.ani = load ptr, ptr %15, align 8, !tbaa !17
  %i.anj = load i64, ptr %i.dc, align 8, !tbaa !13
  %i.ank = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.ani, i64 noundef %i.anj, i64 noundef 1)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %.noexc762
  %i.anl = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.anm = icmp eq ptr %i.anl, %i.dd
  br i1 %i.anm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i761, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i760: ; preds = %bb.fc
  %i.ann = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.ano) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i761

bb.fd:                                            ; preds = %.noexc762
  %i.anp = landingpad { ptr, i32 }
          cleanup
  %i.anq = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.anr = icmp eq ptr %i.anq, %i.dd
  br i1 %i.anr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i758, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i757: ; preds = %bb.fd
  %i.ans = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.ant = add i64 %i.ans, 1
  call void @_ZdlPvm(ptr noundef %i.anq, i64 noundef %i.ant) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i758

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i758: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i757
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i761: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %i.ank, label %bb.fe, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i761
  %i.anu = mul i32 %i.fe, %i.fd                   ; 5 uses
  %i.anv = zext i32 %i.anu to i64                 ; 3 uses
  %i.anw = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i766 = icmp eq i8 %i.anw, 0
  %i.anx = load i8, ptr %i.ag, align 1
  %i.any = lshr i8 %i.anx, 3
  %narrow.i = select i1 %.not.i766, i8 0, i8 %i.any
  %i.anz = zext nneg i8 %narrow.i to i32
  %i.aoa = mul i32 %i.anu, %i.anz                 ; 8 uses
  %i.aob = and i32 %i.aoa, 3                      ; 2 uses
  %.not.i767 = icmp eq i32 %i.aob, 0
  %i.aoc = sub nuw nsw i32 4, %i.aob
  %i.aod = select i1 %.not.i767, i32 0, i32 %i.aoc
  %.0.i768 = add i32 %i.aoa, 8
  %i.aoe = add i32 %.0.i768, %i.aod               ; 2 uses
  %i.aof = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.aog = icmp eq i32 %i.aof, 1
  %i.aoh = zext i32 %i.aoa to i64                 ; 3 uses
  %.not.i.i.i.i769 = icmp eq i32 %i.aoa, 0
  br i1 %.not.i.i.i.i769, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aoi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoh) #31
          to label %.noexc771 unwind label %bb.fh ; 3 uses

.noexc771:                                        ; preds = %bb.ff
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %i.aoh
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aoi, i8 0, i64 %i.aoh, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc771, %bb.fe
  %.sroa.01273.4 = phi ptr [ %i.aoi, %.noexc771 ], [ null, %bb.fe ] ; 21 uses
  %.sroa.27.4 = phi ptr [ %i.aoj, %.noexc771 ], [ null, %bb.fe ] ; 13 uses
  br i1 %i.aog, label %bb.fg, label %_ZNSt6vectorIhSaIhEED2Ev.exit839.thread

bb.fg:                                            ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aok = shl i32 %i.aoa, 1                      ; 2 uses
  %i.aol = zext i32 %i.aok to i64                 ; 3 uses
  %.not1734 = icmp eq i32 %i.aok, 0
  br i1 %.not1734, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit775, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i990

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i990: ; preds = %bb.fg
  %i.aom = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aol) #31
          to label %.noexc774 unwind label %.thread1641 ; 4 uses

.noexc774:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i990
  store i8 0, ptr %i.aom, align 1, !tbaa !16
  %i.aon = add nsw i64 %i.aol, -1
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aom, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aoo, i8 0, i64 %i.aon, i1 false)
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aom, i64 %i.aol
  %i.aoq = ptrtoint ptr %i.aop to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit775

_ZNSt6vectorIhSaIhEE6resizeEm.exit775:            ; preds = %.noexc774, %bb.fg
  %.sroa.01259.1 = phi ptr [ %i.aom, %.noexc774 ], [ null, %bb.fg ] ; 13 uses
  %.sroa.12.0 = phi i64 [ %i.aoq, %.noexc774 ], [ 0, %bb.fg ] ; 4 uses
  %i.aor = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i776 = icmp eq i8 %i.aor, 0
  %i.aos = load i8, ptr %i.ag, align 1
  %i.aot = lshr i8 %i.aos, 3                      ; 2 uses
  %.not21892190 = icmp eq i8 %i.aot, 0
  %.not2189 = select i1 %.not.i776, i1 true, i1 %.not21892190
  br i1 %.not2189, label %._crit_edge2148, label %.lr.ph2147

.lr.ph2147:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit775
  %i.aou = zext nneg i8 %i.aot to i64
  %.02922144 = add nuw nsw i64 %i.aou, 4294967295
  %.not.i.i.i.i778 = icmp eq i32 %i.anu, 0
  %i.aov = add nsw i64 %i.anv, -1                 ; 2 uses
  %i.aow = icmp eq i64 %i.aov, 0
  %.not5322139 = icmp ugt i32 %i.eo, %i.fb
  %.not5332132 = icmp ugt i32 %i.ex, %i.ez
  %i.aox = ptrtoint ptr %.sroa.01259.1 to i64
  %i.aoy = sext i32 %i.anu to i64
  %i.aoz = icmp sgt i32 %i.anu, 0
  %i.apa = and i64 %.02922144, 4294967295
  %brmerge = select i1 %.not5322139, i1 true, i1 %.not5332132
  br label %bb.fi

._crit_edge2148:                                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit827, %_ZNSt6vectorIhSaIhEE6resizeEm.exit775
  %.0293.lcssa = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit775 ], [ %i.asx, %_ZNSt6vectorIhSaIhEED2Ev.exit827 ] ; 8 uses
  %i.apb = icmp ult i32 %.0293.lcssa, %i.aoa
  br i1 %i.apb, label %bb.fz, label %.thread1707

bb.fh:                                            ; preds = %bb.ff
  %i.apc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread1641:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i990
  %i.apd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit842

bb.fi:                                            ; preds = %.lr.ph2147, %_ZNSt6vectorIhSaIhEED2Ev.exit827
  %indvars.iv2443 = phi i64 [ %i.apa, %.lr.ph2147 ], [ %indvars.iv.next2444, %_ZNSt6vectorIhSaIhEED2Ev.exit827 ] ; 2 uses
  %.02932145 = phi i32 [ 0, %.lr.ph2147 ], [ %i.asx, %_ZNSt6vectorIhSaIhEED2Ev.exit827 ] ; 2 uses
  br i1 %.not.i.i.i.i778, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ape = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anv) #31
          to label %.noexc781 unwind label %bb.fw ; 5 uses

.noexc781:                                        ; preds = %bb.fj
  %i.apf = getelementptr i8, ptr %i.ape, i64 %i.anv ; 3 uses
  store i8 0, ptr %i.ape, align 1, !tbaa !16
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ape, i64 1 ; 2 uses
  br i1 %i.aow, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782, label %bb.fk

bb.fk:                                            ; preds = %.noexc781
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.apg, i8 0, i64 %i.aov, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782:            ; preds = %bb.fk, %.noexc781, %bb.fi
  %.sroa.01253.0 = phi ptr [ %i.ape, %bb.fk ], [ %i.ape, %.noexc781 ], [ null, %bb.fi ] ; 7 uses
  %.sroa.13.0 = phi ptr [ %i.apf, %bb.fk ], [ %i.apf, %.noexc781 ], [ null, %bb.fi ]
  %.0.i.i.i.i.i779 = phi ptr [ %i.apf, %bb.fk ], [ %i.apg, %.noexc781 ], [ null, %bb.fi ]
  br i1 %brmerge, label %._crit_edge2143.split, label %.lr.ph2136

._crit_edge2143.split:                            ; preds = %._crit_edge2137, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782
  %i.aph = zext i32 %.02932145 to i64
  %i.api = getelementptr inbounds nuw i8, ptr %.sroa.01259.1, i64 %i.aph ; 3 uses
  %i.apj = ptrtoint ptr %.0.i.i.i.i.i779 to i64
  %i.apk = ptrtoint ptr %.sroa.01253.0 to i64     ; 2 uses
  %i.apl = getelementptr inbounds i8, ptr %.sroa.01253.0, i64 %i.aoy ; 3 uses
  br i1 %i.aoz, label %.lr.ph.i784, label %.loopexit

.lr.ph.i784:                                      ; preds = %._crit_edge2143.split
  %i.apm = ptrtoint ptr %i.apl to i64
  %i.apn = getelementptr inbounds i8, ptr %i.apl, i64 -1
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fv, %.lr.ph.i784
  %.045.i786 = phi ptr [ %i.api, %.lr.ph.i784 ], [ %.1.i790, %bb.fv ] ; 6 uses
  %.03944.i787 = phi ptr [ %.sroa.01253.0, %.lr.ph.i784 ], [ %.140.i789, %bb.fv ] ; 9 uses
  %i.apo = ptrtoint ptr %.03944.i787 to i64       ; 3 uses
  %i.app = sub i64 %i.apm, %i.apo
  %i.apq = trunc i64 %i.app to i32                ; 4 uses
  %.sroa.speculated.i788 = call i32 @llvm.smin.i32(i32 %i.apq, i32 128) ; 4 uses
  %i.apr = icmp sgt i32 %i.apq, 0
  br i1 %i.apr, label %bb.fm, label %bb.fv

bb.fm:                                            ; preds = %bb.fl
  %i.aps = icmp ult ptr %.03944.i787, %i.apn
  br i1 %i.aps, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm
  %i.apt = load i8, ptr %.03944.i787, align 1, !tbaa !16 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %.03944.i787, i64 1
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !16
  %i.apw = icmp eq i8 %i.apt, %i.apv
  br i1 %i.apw, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %.not41.i805 = icmp eq i32 %i.apq, 1
  br i1 %.not41.i805, label %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i816, label %.lr.ph.i.i806

.lr.ph.i.i806:                                    ; preds = %bb.fo
  %wide.trip.count.i.i807 = zext nneg i32 %.sroa.speculated.i788 to i64 ; 2 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fq, %.lr.ph.i.i806
  %indvars.iv.i.i808 = phi i64 [ 1, %.lr.ph.i.i806 ], [ %indvars.iv.next.i.i818, %bb.fq ] ; 4 uses
  %i.apx = getelementptr i8, ptr %.03944.i787, i64 %indvars.iv.i.i808 ; 2 uses
  %i.apy = getelementptr i8, ptr %i.apx, i64 -1
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !16
  %i.aqa = load i8, ptr %i.apx, align 1, !tbaa !16
  %.not.i.i809 = icmp eq i8 %i.apz, %i.aqa
  br i1 %.not.i.i809, label %bb.fq, label %._crit_edge.split.loop.exit25.i.i810

bb.fq:                                            ; preds = %bb.fp
  %indvars.iv.next.i.i818 = add i64 %indvars.iv.i.i808, 1 ; 2 uses
  %exitcond.not.i.i819 = icmp eq i64 %indvars.iv.next.i.i818, %wide.trip.count.i.i807
  br i1 %exitcond.not.i.i819, label %._crit_edge.i.i812, label %bb.fp, !llvm.loop !152

._crit_edge.split.loop.exit25.i.i810:             ; preds = %bb.fp
  %i.aqb = trunc i64 %indvars.iv.i.i808 to i32
  %.pre.i811 = and i64 %indvars.iv.i.i808, 4294967295
  br label %._crit_edge.i.i812

._crit_edge.i.i812:                               ; preds = %bb.fq, %._crit_edge.split.loop.exit25.i.i810
  %.pre-phi.i813 = phi i64 [ %.pre.i811, %._crit_edge.split.loop.exit25.i.i810 ], [ %wide.trip.count.i.i807, %bb.fq ]
  %.0.lcssa.i.i814 = phi i32 [ %i.aqb, %._crit_edge.split.loop.exit25.i.i810 ], [ %.sroa.speculated.i788, %bb.fq ] ; 2 uses
  %i.aqc = icmp ugt i32 %.0.lcssa.i.i814, 1
  %i.aqd = add nuw i32 %.0.lcssa.i.i814, 127
  %i.aqe = and i32 %i.aqd, 127
  %spec.select.i.i815 = select i1 %i.aqc, i32 128, i32 0
  %i.aqf = or disjoint i32 %i.aqe, %spec.select.i.i815
  %i.aqg = trunc nuw i32 %i.aqf to i8
  br label %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i816

_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i816: ; preds = %._crit_edge.i.i812, %bb.fo
  %.0.lcssa24.i.i817 = phi i64 [ 1, %bb.fo ], [ %.pre-phi.i813, %._crit_edge.i.i812 ]
  %i.aqh = phi i8 [ 0, %bb.fo ], [ %i.aqg, %._crit_edge.i.i812 ]
  %i.aqi = getelementptr inbounds nuw i8, ptr %.045.i786, i64 1
  store i8 %i.aqh, ptr %.045.i786, align 1, !tbaa !16
  store i8 %i.apt, ptr %i.aqi, align 1, !tbaa !16
  %i.aqj = getelementptr inbounds nuw i8, ptr %.045.i786, i64 2
  %i.aqk = getelementptr inbounds nuw i8, ptr %.03944.i787, i64 %.0.lcssa24.i.i817
  br label %bb.fv

bb.fr:                                            ; preds = %bb.fn, %bb.fm
  %.not.i793 = icmp eq i32 %i.apq, 1
  br i1 %.not.i793, label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i801, label %.lr.ph.i15.i794

.lr.ph.i15.i794:                                  ; preds = %bb.fr
  %wide.trip.count.i16.i795 = zext nneg i32 %.sroa.speculated.i788 to i64
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %.lr.ph.i15.i794
  %indvars.iv.i17.i796 = phi i64 [ 1, %.lr.ph.i15.i794 ], [ %indvars.iv.next.i18.i799, %bb.fu ] ; 3 uses
  %.02330.i.i797 = phi i8 [ 0, %.lr.ph.i15.i794 ], [ %i.aqn, %bb.fu ]
  %i.aql = getelementptr i8, ptr %.03944.i787, i64 %indvars.iv.i17.i796 ; 2 uses
  %i.aqm = getelementptr i8, ptr %i.aql, i64 -1
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !16 ; 3 uses
  %i.aqo = load i8, ptr %i.aql, align 1, !tbaa !16
  %i.aqp = icmp eq i8 %i.aqn, %i.aqo
  %i.aqq = icmp eq i8 %.02330.i.i797, %i.aqn
  %or.cond.i.i798 = and i1 %i.aqq, %i.aqp
  br i1 %or.cond.i.i798, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.aqr = trunc nuw nsw i64 %indvars.iv.i17.i796 to i32
  %i.aqs = add nsw i32 %i.aqr, -2
  br label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i801

bb.fu:                                            ; preds = %bb.fs
  %indvars.iv.next.i18.i799 = add nuw nsw i64 %indvars.iv.i17.i796, 1 ; 2 uses
  %exitcond.not.i19.i800 = icmp eq i64 %indvars.iv.next.i18.i799, %wide.trip.count.i16.i795
  br i1 %exitcond.not.i19.i800, label %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i801, label %bb.fs, !llvm.loop !153

_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i801: ; preds = %bb.fu, %bb.ft, %bb.fr
  %.1.i.i802 = phi i32 [ %i.aqs, %bb.ft ], [ 1, %bb.fr ], [ %.sroa.speculated.i788, %bb.fu ] ; 2 uses
  %i.aqt = trunc i32 %.1.i.i802 to i8
  %i.aqu = add i8 %i.aqt, -1
  %i.aqv = getelementptr inbounds nuw i8, ptr %.045.i786, i64 1 ; 2 uses
  store i8 %i.aqu, ptr %.045.i786, align 1, !tbaa !16
  %i.aqw = sext i32 %.1.i.i802 to i64             ; 3 uses
  %i.aqx = ptrtoint ptr %i.aqv to i64             ; 2 uses
  %i.aqy = sub i64 %i.aqx, %i.aox
  %i.aqz = sub i64 %i.apo, %i.apk
  %i.ara = sub i64 %i.apj, %i.apo
  %.sroa.speculated7.i.i.i.i803 = call i64 @llvm.umin.i64(i64 %i.ara, i64 %i.aqw)
  %i.arb = sub i64 %.sroa.12.0, %i.aqx
  %.sroa.speculated.i.i.i.i804 = call noundef i64 @llvm.umin.i64(i64 %i.arb, i64 %.sroa.speculated7.i.i.i.i803)
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.01259.1, i64 %i.aqy
  %i.ard = getelementptr inbounds nuw i8, ptr %.sroa.01253.0, i64 %i.aqz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arc, ptr align 1 %i.ard, i64 %.sroa.speculated.i.i.i.i804, i1 false)
  %i.are = getelementptr inbounds i8, ptr %i.aqv, i64 %i.aqw
  %i.arf = getelementptr inbounds i8, ptr %.03944.i787, i64 %i.aqw
  br label %bb.fv

bb.fv:                                            ; preds = %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i801, %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i816, %bb.fl
  %.140.i789 = phi ptr [ %i.aqk, %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i816 ], [ %i.arf, %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i801 ], [ %.03944.i787, %bb.fl ] ; 2 uses
  %.1.i790 = phi ptr [ %i.aqj, %_ZN11OpenImageIO4v3_19IffOutput18compress_duplicateERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i816 ], [ %i.are, %_ZN11OpenImageIO4v3_19IffOutput17compress_verbatimERPKhRPhiNS0_4spanIS2_Lm18446744073709551615EEENS7_IhLm18446744073709551615EEE.exit.i801 ], [ %.045.i786, %bb.fl ] ; 2 uses
  %i.arg = icmp ult ptr %.140.i789, %i.apl
  br i1 %i.arg, label %bb.fl, label %.loopexit, !llvm.loop !154

bb.fw:                                            ; preds = %bb.fj
  %i.arh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

.lr.ph2136:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782, %._crit_edge2137
  %.02892141 = phi i32 [ %i.asa, %._crit_edge2137 ], [ %i.eo, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782 ] ; 2 uses
  %.02902140 = phi ptr [ %i.asr, %._crit_edge2137 ], [ %.sroa.01253.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit782 ]
  %i.ari = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.arj = load i32, ptr %i.al, align 4, !tbaa !80
  %i.ark = zext i32 %i.arj to i64
  %i.arl = load i8, ptr %i.w, align 8, !tbaa !77
  %i.arm = lshr i8 %i.arl, 3
  %i.arn = zext nneg i8 %i.arm to i64
  %i.aro = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.arp = zext i8 %i.aro to i64
  %i.arq = mul nuw nsw i64 %i.arn, %i.arp
  %i.arr = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i.i821 = icmp eq i8 %i.arr, 0
  %i.ars = load i8, ptr %i.ag, align 1
  %i.art = lshr i8 %i.ars, 3
  %narrow.i.i.i822 = select i1 %.not.i.i.i821, i8 0, i8 %i.art
  %i.aru = zext nneg i8 %narrow.i.i.i822 to i64
  %i.arv = add nuw nsw i64 %i.arq, %i.aru
  %i.arw = zext i32 %.02892141 to i64
  %i.arx = mul nuw i64 %i.ark, %i.arw
  %i.ary = mul i64 %i.arx, %i.arv
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.ary
  br label %bb.fx

._crit_edge2137:                                  ; preds = %bb.fx
  %i.asa = add i32 %.02892141, 1                  ; 2 uses
  %.not532 = icmp ugt i32 %i.asa, %i.fb
  br i1 %.not532, label %._crit_edge2143.split, label %.lr.ph2136, !llvm.loop !211

bb.fx:                                            ; preds = %.lr.ph2136, %bb.fx
  %.02882134 = phi i32 [ %i.ex, %.lr.ph2136 ], [ %i.ass, %bb.fx ] ; 2 uses
  %.12912133 = phi ptr [ %.02902140, %.lr.ph2136 ], [ %i.asr, %bb.fx ] ; 2 uses
  %i.asb = load i8, ptr %i.w, align 8, !tbaa !77
  %i.asc = lshr i8 %i.asb, 3
  %i.asd = zext nneg i8 %i.asc to i64
  %i.ase = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.asf = zext i8 %i.ase to i64
  %i.asg = mul nuw nsw i64 %i.asd, %i.asf         ; 2 uses
  %i.ash = load i8, ptr %i.ae, align 8, !tbaa !79
  %.not.i.i823 = icmp eq i8 %i.ash, 0
  %i.asi = load i8, ptr %i.ag, align 1
  %i.asj = lshr i8 %i.asi, 3
  %narrow.i.i824 = select i1 %.not.i.i823, i8 0, i8 %i.asj
  %i.ask = zext nneg i8 %narrow.i.i824 to i64
  %i.asl = add nuw nsw i64 %i.asg, %i.ask
  %i.asm = zext i32 %.02882134 to i64
  %i.asn = mul nuw nsw i64 %i.asl, %i.asm
  %i.aso = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.asn
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 %i.asg
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 %indvars.iv2443
  %.0.copyload = load i8, ptr %i.asq, align 1
  %i.asr = getelementptr inbounds nuw i8, ptr %.12912133, i64 1 ; 2 uses
  store i8 %.0.copyload, ptr %.12912133, align 1, !tbaa !16
  %i.ass = add i32 %.02882134, 1                  ; 2 uses
  %.not533 = icmp ugt i32 %i.ass, %i.ez
  br i1 %.not533, label %._crit_edge2137, label %bb.fx, !llvm.loop !212

.loopexit:                                        ; preds = %bb.fv, %._crit_edge2143.split
  %.0.lcssa.i783 = phi ptr [ %i.api, %._crit_edge2143.split ], [ %.1.i790, %bb.fv ]
  %i.ast = ptrtoint ptr %.0.lcssa.i783 to i64
  %i.asu = ptrtoint ptr %i.api to i64
  %i.asv = sub i64 %i.ast, %i.asu
  %i.asw = trunc i64 %i.asv to i32
  %i.asx = add i32 %.02932145, %i.asw             ; 2 uses
  %.not.i.i.i825 = icmp eq ptr %.sroa.01253.0, null
  br i1 %.not.i.i.i825, label %_ZNSt6vectorIhSaIhEED2Ev.exit827, label %bb.fy

bb.fy:                                            ; preds = %.loopexit
  %i.asy = ptrtoint ptr %.sroa.13.0 to i64
  %i.asz = sub i64 %i.asy, %i.apk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01253.0, i64 noundef %i.asz) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit827

_ZNSt6vectorIhSaIhEED2Ev.exit827:                 ; preds = %.loopexit, %bb.fy
  %indvars.iv.next2444 = add nsw i64 %indvars.iv2443, -1 ; 2 uses
  %30 = and i64 %indvars.iv.next2444, 2147483648
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %bb.fi, label %._crit_edge2148, !llvm.loop !213

bb.fz:                                            ; preds = %._crit_edge2148
  %i.ata = zext i32 %.0293.lcssa to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01273.4, ptr align 1 %.sroa.01259.1, i64 %i.ata, i1 false)
  %i.atb = add i32 %.0293.lcssa, 8                ; 4 uses
  %i.atc = and i32 %.0293.lcssa, 3                ; 2 uses
  %.not.i831 = icmp eq i32 %i.atc, 0              ; 2 uses
  %i.atd = sub nuw nsw i32 4, %i.atc              ; 3 uses
  %i.ate = select i1 %.not.i831, i32 0, i32 %i.atd ; 2 uses
  %.0.i832 = add i32 %i.ate, %i.atb
  %i.atf = icmp ugt i32 %.0.i832, %i.atb
  br i1 %i.atf, label %bb.ga, label %.loopexit1740

bb.ga:                                            ; preds = %bb.fz
  %i.atg = ptrtoint ptr %.sroa.27.4 to i64
  %i.ath = ptrtoint ptr %.sroa.01273.4 to i64
  %i.ati = sub i64 %i.atg, %i.ath                 ; 7 uses
  %i.atj = add i32 %i.ate, %.0293.lcssa
  %i.atk = zext i32 %i.atj to i64                 ; 2 uses
  %i.atl = icmp ult i64 %i.ati, %i.atk
  br i1 %i.atl, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1004, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit836

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1004: ; preds = %bb.ga
  %i.atm = sub nuw nsw i64 %i.atk, %i.ati         ; 2 uses
  %.sroa.speculated.i.i1005 = call i64 @llvm.umax.i64(i64 %i.ati, i64 %i.atm)
  %i.atn = add nuw nsw i64 %.sroa.speculated.i.i1005, %i.ati ; 2 uses
  %i.ato = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atn) #31
          to label %.noexc1012 unwind label %bb.ge ; 4 uses

.noexc1012:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1004
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 %i.ati ; 2 uses
  store i8 0, ptr %i.atp, align 1, !tbaa !16
  %i.atq = add nsw i64 %i.atm, -1                 ; 2 uses
  %i.atr = icmp eq i64 %i.atq, 0
  br i1 %i.atr, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1006, label %bb.gb

bb.gb:                                            ; preds = %.noexc1012
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atp, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ats, i8 0, i64 %i.atq, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1006

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1006: ; preds = %bb.gb, %.noexc1012
  %.not35.i1007 = icmp eq ptr %.sroa.27.4, %.sroa.01273.4
  br i1 %.not35.i1007, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1008, label %bb.gc

bb.gc:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1006
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ato, ptr align 1 %.sroa.01273.4, i64 %i.ati, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1008

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1008: ; preds = %bb.gc, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1006
  %.not.i33.i1009 = icmp eq ptr %.sroa.01273.4, null
  br i1 %.not.i33.i1009, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1010, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1008
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01273.4, i64 noundef %i.ati) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1010

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1010: ; preds = %bb.gd, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1008
  %i.att = getelementptr inbounds nuw i8, ptr %i.ato, i64 %i.atn
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit836

bb.ge:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1004
  %i.atu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

_ZNSt6vectorIhSaIhEE6resizeEm.exit836:            ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1010, %bb.ga
  %.sroa.01273.0 = phi ptr [ %.sroa.01273.4, %bb.ga ], [ %i.ato, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1010 ] ; 3 uses
  %.sroa.27.0 = phi ptr [ %.sroa.27.4, %bb.ga ], [ %i.att, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1010 ] ; 2 uses
  br i1 %.not.i831, label %.loopexit1740, label %.lr.ph2173.preheader

.lr.ph2173.preheader:                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit836
  %i.atv = getelementptr i8, ptr %.sroa.01273.0, i64 %i.ata
  %umax2454 = zext nneg i32 %i.atd to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.atv, i8 0, i64 %umax2454, i1 false), !tbaa !16
  %i.atw = add i32 %.0293.lcssa, %i.atd
  br label %.loopexit1740

.loopexit1740:                                    ; preds = %.lr.ph2173.preheader, %_ZNSt6vectorIhSaIhEE6resizeEm.exit836, %bb.fz
  %.sroa.01273.1 = phi ptr [ %.sroa.01273.4, %bb.fz ], [ %.sroa.01273.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit836 ], [ %.sroa.01273.0, %.lr.ph2173.preheader ] ; 2 uses
  %.sroa.27.1 = phi ptr [ %.sroa.27.4, %bb.fz ], [ %.sroa.27.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit836 ], [ %.sroa.27.0, %.lr.ph2173.preheader ] ; 2 uses
  %.2299 = phi i32 [ %.0293.lcssa, %bb.fz ], [ %.0293.lcssa, %_ZNSt6vectorIhSaIhEE6resizeEm.exit836 ], [ %i.atw, %.lr.ph2173.preheader ] ; 2 uses
  %.not.i.i.i837 = icmp eq ptr %.sroa.01259.1, null
  br i1 %.not.i.i.i837, label %.thread1685, label %.split

.thread1707:                                      ; preds = %._crit_edge2148
  %.not.i.i.i8371714 = icmp eq ptr %.sroa.01259.1, null
  br i1 %.not.i.i.i8371714, label %_ZNSt6vectorIhSaIhEED2Ev.exit839.thread, label %.split.thread

.split.thread:                                    ; preds = %.thread1707
  %i.atx = ptrtoint ptr %.sroa.01259.1 to i64
  %i.aty = sub i64 %.sroa.12.0, %i.atx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01259.1, i64 noundef %i.aty) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit839.thread

.split:                                           ; preds = %.loopexit1740
  %i.atz = ptrtoint ptr %.sroa.01259.1 to i64
  %i.aua = sub i64 %.sroa.12.0, %i.atz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01259.1, i64 noundef %i.aua) #30
  br label %.thread1685

bb.gf:                                            ; preds = %bb.fw, %bb.ge
  %.pn534.pn.pn.pn = phi { ptr, i32 } [ %i.arh, %bb.fw ], [ %i.atu, %bb.ge ] ; 2 uses
  %.not.i.i.i840 = icmp eq ptr %.sroa.01259.1, null
  br i1 %.not.i.i.i840, label %_ZNSt6vectorIhSaIhEED2Ev.exit842, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aub = ptrtoint ptr %.sroa.01259.1 to i64
  %i.auc = sub i64 %.sroa.12.0, %i.aub
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01259.1, i64 noundef %i.auc) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit842

_ZNSt6vectorIhSaIhEED2Ev.exit839.thread:          ; preds = %.thread1707, %.split.thread, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aud = ptrtoint ptr %.sroa.27.4 to i64
  %i.aue = ptrtoint ptr %.sroa.01273.4 to i64
  %i.auf = sub i64 %i.aud, %i.aue
  %.not5242165 = icmp ugt i32 %i.eo, %i.fb
  br i1 %.not5242165, label %.thread1685, label %.lr.ph2169

.lr.ph2169:                                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit839.thread
  %i.aug = load ptr, ptr %i.s, align 8, !tbaa !18 ; 3 uses
  %i.auh = load i32, ptr %i.al, align 4, !tbaa !105
  %i.aui = load i8, ptr %i.w, align 8, !tbaa !77
  %i.auj = lshr i8 %i.aui, 3
  %i.auk = zext nneg i8 %i.auj to i64
  %i.aul = load i8, ptr %i.aa, align 1, !tbaa !78
  %i.aum = zext i8 %i.aul to i64
  %i.aun = mul nuw nsw i64 %i.auk, %i.aum         ; 3 uses
  %i.auo = load i8, ptr %i.ae, align 8, !tbaa !79 ; 2 uses
  %.not.i.i843 = icmp eq i8 %i.auo, 0
  %i.aup = load i8, ptr %i.ag, align 1            ; 2 uses
  %i.auq = lshr i8 %i.aup, 3
  %narrow.i.i844 = select i1 %.not.i.i843, i8 0, i8 %i.auq
  %i.aur = zext nneg i8 %narrow.i.i844 to i64
  %i.aus = add nuw nsw i64 %i.aun, %i.aur         ; 3 uses
  %.not5262157 = icmp ugt i32 %i.ex, %i.ez
  %.not.i845 = icmp eq i8 %i.auo, 0
  %i.aut = lshr i8 %i.aup, 3
  %narrow.i846 = select i1 %.not.i845, i8 0, i8 %i.aut
  %narrow.i846.fr = freeze i8 %narrow.i846        ; 2 uses
  %i.auu = zext i8 %narrow.i846.fr to i32         ; 2 uses
  %i.auv = icmp eq i8 %narrow.i846.fr, 0
  %.02150 = add nsw i32 %i.auu, -1
  %i.auw = zext i32 %.02150 to i64                ; 7 uses
  %invariant.gep2805 = getelementptr inbounds nuw i8, ptr %i.aug, i64 %i.aun
  %scevgep3047 = getelementptr i8, ptr %.sroa.01273.4, i64 1
  %i.aux = add nuw nsw i64 %i.aun, %i.auw         ; 2 uses
  %scevgep3049 = getelementptr i8, ptr %i.aug, i64 %i.aux
  %scevgep3051 = getelementptr i8, ptr %i.aug, i64 1
  %scevgep3052 = getelementptr i8, ptr %scevgep3051, i64 %i.aux
  %brmerge2807 = or i1 %.not5262157, %i.auv
  br label %bb.gh

bb.gh:                                            ; preds = %.lr.ph2169, %._crit_edge2162
  %.02862168 = phi i64 [ 0, %.lr.ph2169 ], [ %.1.lcssa, %._crit_edge2162 ] ; 2 uses
  %storemerge5232166 = phi i32 [ %i.eo, %.lr.ph2169 ], [ %i.axe, %._crit_edge2162 ] ; 3 uses
  br i1 %brmerge2807, label %._crit_edge2162, label %.lr.ph2154.preheader

.lr.ph2154.preheader:                             ; preds = %bb.gh
  %i.auy = mul i32 %i.auh, %storemerge5232166
  %i.auz = zext i32 %i.auy to i64                 ; 2 uses
  %i.ava = mul nuw nsw i64 %i.aus, %i.auz
  %gep2806 = getelementptr inbounds nuw i8, ptr %invariant.gep2805, i64 %i.ava
  br label %.lr.ph2154

.lr.ph2154:                                       ; preds = %.lr.ph2154.preheader, %._crit_edge2155
  %.12159 = phi i64 [ %i.axb, %._crit_edge2155 ], [ %.02862168, %.lr.ph2154.preheader ] ; 10 uses
  %storemerge5252158 = phi i32 [ %i.axd, %._crit_edge2155 ], [ %i.ex, %.lr.ph2154.preheader ] ; 4 uses
  %i.avb = zext i32 %storemerge5252158 to i64
  %umax2451 = call i64 @llvm.umax.i64(i64 %.12159, i64 %i.auf) ; 3 uses
  %i.avc = trunc i64 %.12159 to i32
  %i.avd = add i32 %i.auu, %i.avc
  %i.ave = mul nuw nsw i64 %i.aus, %i.avb
  %gep2804 = getelementptr inbounds nuw i8, ptr %gep2806, i64 %i.ave ; 2 uses
  %i.avf = sub i64 %umax2451, %.12159
  %i.avg = call i64 @llvm.umin.i64(i64 %i.auw, i64 %i.avf) ; 2 uses
  %i.avh = add nuw nsw i64 %i.avg, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.avg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph2154
  %i.avi = zext i32 %storemerge5252158 to i64
  %i.avj = add nuw nsw i64 %i.auz, %i.avi
  %i.avk = mul nuw nsw i64 %i.aus, %i.avj         ; 2 uses
  %scevgep3053 = getelementptr i8, ptr %scevgep3052, i64 %i.avk
  %scevgep = getelementptr i8, ptr %.sroa.01273.4, i64 %.12159
  %i.avl = sub i64 %umax2451, %.12159
  %umin = call i64 @llvm.umin.i64(i64 %i.auw, i64 %i.avl) ; 2 uses
  %i.avm = getelementptr i8, ptr %scevgep3047, i64 %.12159
  %scevgep3048 = getelementptr i8, ptr %i.avm, i64 %umin
  %i.avn = sub nsw i64 %i.avk, %umin
  %scevgep3050 = getelementptr i8, ptr %scevgep3049, i64 %i.avn
  %bound0 = icmp ult ptr %scevgep, %scevgep3053
  %bound1 = icmp ult ptr %scevgep3050, %scevgep3048
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.avo = and i64 %i.avh, 7                      ; 2 uses
  %i.avp = icmp eq i64 %i.avo, 0
end_hunk_0
