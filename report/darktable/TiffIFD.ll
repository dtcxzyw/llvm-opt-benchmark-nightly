Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TiffIFD?download=true
inline.NumInlined: 930
inline.NumDeleted: 496
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN8rawspeed7TiffIFD13parseIFDEntryEPNS_11NORangesSetINS_6BufferEEERNS_10ByteStreamE:bb.a
    i16 46, label %bb.j
    i16 -4096, label %bb.s
    i16 330, label %bb.s
    i16 -30871, label %bb.s
  ]

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed11IOExceptionE
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed11IOExceptionE) #29
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit93

bb.d:                                             ; preds = %.body
  %i.n = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #29 ; 0 uses
  %i.p = add i32 %i.d, 12                         ; 2 uses
  store i32 %i.p, ptr %i.c, align 8, !tbaa !169
  %i.q = load i32, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %.not.i.i = icmp ugt i32 %i.p, %i.q
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #18
          to label %.noexc31 unwind label %bb.g

.noexc31:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  tail call void @__cxa_end_catch()
  br label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit87

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit93 unwind label %bb.ah

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.t, align 8, !tbaa !174
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !180  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.z = load i16, ptr %i.y, align 2, !tbaa !181
  %i.aa = icmp ult i16 %i.z, -14796               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i.i, %i.x
  br i1 %i.ab, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !181
  %i.ae = icmp ugt i16 %i.ad, -14796
  br i1 %i.ae, label %.critedge.i.i, label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i

.critedge.i.i:                                    ; preds = %bb.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i, %bb.h
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.i ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.h, ptr %5, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.af = invoke ptr @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc32 unwind label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit38

.noexc32:                                         ; preds = %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i: ; preds = %.noexc32, %bb.i
  %.sroa.06.0.i.i = phi ptr [ %i.af, %.noexc32 ], [ %.19.i.i.i.i.i, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 40 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !186 ; 3 uses
  store ptr %i.f, ptr %i.ag, align 8, !tbaa !186
  %.not.i.i.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i1.i, label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !188
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %i.ah) #29, !call_target !193, !inline_history !4636
  br label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit38: ; preds = %.critedge.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #29, !call_target !193, !inline_history !4637
  br label %.body46

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZN8rawspeed7TiffIFD14parseMakerNoteEPNS_11NORangesSetINS_6BufferEEEPKNS_9TiffEntryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.13") align 8 %7, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull %i.f)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %7, align 8, !tbaa !196   ; 5 uses
  store ptr null, ptr %7, align 8, !tbaa !196
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !199 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !200
  %.not.i.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = ptrtoint ptr %i.ap to i64
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !201
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !199
  br label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !202 ; 9 uses
  %i.ay = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #30
          to label %.noexc96 unwind label %bb.q

.noexc96:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i94 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i94)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #27
          to label %.noexc97 unwind label %bb.q   ; 9 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = ptrtoint ptr %i.ap to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !201
  %.not10.i.i.i.i = icmp eq ptr %i.ax, %i.ar
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check228

iter.check228:                                    ; preds = %.noexc97
  %i.bl = add i64 %i.ay, -8
  %i.bm = sub i64 %i.bl, %i.az                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 5 uses
  %min.iters.check212 = icmp ult i64 %i.bm, 24
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check213

vector.main.loop.iter.check213:                   ; preds = %iter.check228
  %min.iters.check214 = icmp ult i64 %i.bm, 120
  br i1 %min.iters.check214, label %vec.epilog.ph232, label %vector.ph215

vector.ph215:                                     ; preds = %vector.main.loop.iter.check213
  %i.bp = and i64 %i.bo, 12
  %n.vec216 = and i64 %i.bo, 4611686018427387888  ; 4 uses
  %i.bq = shl i64 %n.vec216, 3                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bi, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 %i.bq
  br label %vector.body217

vector.body217:                                   ; preds = %vector.ph215, %vector.body217
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next225, %vector.body217 ] ; 2 uses
  %i.bt = shl i64 %index218, 3                    ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.bi, i64 %i.bt ; 4 uses
  %next.gep220 = getelementptr i8, ptr %i.ax, i64 %i.bt ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4661)
  %i.bu = getelementptr i8, ptr %next.gep220, i64 32 ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep220, i64 64 ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep220, i64 96 ; 2 uses
  %wide.load221 = load <4 x i64>, ptr %next.gep220, align 8, !tbaa !201, !alias.scope !4661
  %wide.load222 = load <4 x i64>, ptr %i.bu, align 8, !tbaa !201, !alias.scope !4661
  %wide.load223 = load <4 x i64>, ptr %i.bv, align 8, !tbaa !201, !alias.scope !4661
  %wide.load224 = load <4 x i64>, ptr %i.bw, align 8, !tbaa !201, !alias.scope !4661
  %i.bx = getelementptr i8, ptr %next.gep219, i64 32
  %i.by = getelementptr i8, ptr %next.gep219, i64 64
  %i.bz = getelementptr i8, ptr %next.gep219, i64 96
  store <4 x i64> %wide.load221, ptr %next.gep219, align 8, !tbaa !201, !alias.scope !4660
  store <4 x i64> %wide.load222, ptr %i.bx, align 8, !tbaa !201, !alias.scope !4660
  store <4 x i64> %wide.load223, ptr %i.by, align 8, !tbaa !201, !alias.scope !4660
  store <4 x i64> %wide.load224, ptr %i.bz, align 8, !tbaa !201, !alias.scope !4660
  store <4 x ptr> splat (ptr null), ptr %next.gep220, align 8, !tbaa !201, !alias.scope !4661
  store <4 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !201, !alias.scope !4661
  store <4 x ptr> splat (ptr null), ptr %i.bv, align 8, !tbaa !201, !alias.scope !4661
  store <4 x ptr> splat (ptr null), ptr %i.bw, align 8, !tbaa !201, !alias.scope !4661
  %index.next225 = add nuw i64 %index218, 16      ; 2 uses
  %i.ca = icmp eq i64 %index.next225, %n.vec216
  br i1 %i.ca, label %middle.block226, label %vector.body217, !llvm.loop !4641

middle.block226:                                  ; preds = %vector.body217
  %cmp.n227 = icmp eq i64 %i.bo, %n.vec216
  br i1 %cmp.n227, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block226
  %min.epilog.iters.check231 = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph232, !prof !205

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check213, %vec.epilog.iter.check229
  %vec.epilog.resume.val233 = phi i64 [ %n.vec216, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check213 ]
  %n.vec234 = and i64 %i.bo, 4611686018427387900  ; 3 uses
  %i.cb = shl i64 %n.vec234, 3                    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bi, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ax, i64 %i.cb
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph232
  %index236 = phi i64 [ %vec.epilog.resume.val233, %vec.epilog.ph232 ], [ %index.next240, %vec.epilog.vector.body235 ] ; 2 uses
  %i.ce = shl i64 %index236, 3                    ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.bi, i64 %i.ce
  %next.gep238 = getelementptr i8, ptr %i.ax, i64 %i.ce ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4661)
  %wide.load239 = load <4 x i64>, ptr %next.gep238, align 8, !tbaa !201, !alias.scope !4661
  store <4 x i64> %wide.load239, ptr %next.gep237, align 8, !tbaa !201, !alias.scope !4660
  store <4 x ptr> splat (ptr null), ptr %next.gep238, align 8, !tbaa !201, !alias.scope !4661
  %index.next240 = add nuw i64 %index236, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next240, %n.vec234
  br i1 %i.cf, label %vec.epilog.middle.block241, label %vec.epilog.vector.body235, !llvm.loop !4642

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body235
  %cmp.n242 = icmp eq i64 %i.bo, %n.vec234
  br i1 %cmp.n242, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check228, %vec.epilog.iter.check229, %vec.epilog.middle.block241
  %.012.i.i.i.i.ph = phi ptr [ %i.bi, %iter.check228 ], [ %i.br, %vec.epilog.iter.check229 ], [ %i.cc, %vec.epilog.middle.block241 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ax, %iter.check228 ], [ %i.bs, %vec.epilog.iter.check229 ], [ %i.cd, %vec.epilog.middle.block241 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4661)
  %i.cg = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !201, !alias.scope !4661
  store i64 %i.cg, ptr %.012.i.i.i.i, align 8, !tbaa !201, !alias.scope !4660
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !201, !alias.scope !4661
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i95 = icmp eq ptr %i.ch, %i.ar
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !4643

_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block226, %vec.epilog.middle.block241, %.noexc97
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bi, %.noexc97 ], [ %i.cc, %vec.epilog.middle.block241 ], [ %i.br, %middle.block226 ], [ %i.ci, %.lr.ph.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i, label %.noexc39, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ck = load ptr, ptr %i.as, align 8, !tbaa !200
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.cm) #28
  br label %.noexc39

.noexc39:                                         ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bi, ptr %i.aw, align 8, !tbaa !202
  store ptr %i.cj, ptr %i.aq, align 8, !tbaa !199
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cn, ptr %i.as, align 8, !tbaa !200
  br label %_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc39, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i86

bb.p:                                             ; preds = %bb.j
  %i.co = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.n
  %i.cp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
  %.not.i42 = icmp eq ptr %i.ap, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit44, label %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43

_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43: ; preds = %bb.q
  %i.cq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(104) %i.ap) #29, !call_target !210, !inline_history !4644
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit44

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit44: ; preds = %bb.q, %_ZNKSt14default_deleteIN8rawspeed7TiffIFDEEclEPS1_.exit.i43
  call void @_ZNSt10unique_ptrIN8rawspeed11TiffRootIFDESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #29
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit44, %bb.p
  %.pn25 = phi { ptr, i32 } [ %i.cp, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit44 ], [ %i.co, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body46

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4662
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i86, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit53
  %.0156 = phi i32 [ 0, %.lr.ph ], [ %i.fc, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit53 ] ; 2 uses
  %i.cy = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef %.0156)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.cz = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #27
          to label %.noexc45 unwind label %bb.aa, !inline_history !4645 ; 6 uses

.noexc45:                                         ; preds = %bb.u
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !noalias !4663
  %.sroa.2.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !4663
  invoke void @_ZN8rawspeed7TiffIFDC2EPS0_PNS_11NORangesSetINS_6BufferEEENS_10DataBufferEj(ptr noundef nonnull align 8 dereferenceable(104) %i.cz, ptr noundef nonnull %0, ptr noundef %1, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %i.cy)
          to label %_ZSt11make_uniqueIN8rawspeed7TiffIFDEJPS1_RPNS0_11NORangesSetINS0_6BufferEEERNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.v, !noalias !4663, !inline_history !4645

bb.v:                                             ; preds = %.noexc45
  %i.da = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 104) #28, !noalias !4663, !inline_history !4645
  br label %.body46

_ZSt11make_uniqueIN8rawspeed7TiffIFDEJPS1_RPNS0_11NORangesSetINS0_6BufferEEERNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc45
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !199 ; 6 uses
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !200
  %.not.i.i.i48 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i.i.i48, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt11make_uniqueIN8rawspeed7TiffIFDEJPS1_RPNS0_11NORangesSetINS0_6BufferEEERNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.dd = ptrtoint ptr %i.cz to i64
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !201
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !199
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit53

bb.x:                                             ; preds = %_ZSt11make_uniqueIN8rawspeed7TiffIFDEJPS1_RPNS0_11NORangesSetINS0_6BufferEEERNS0_10ByteStreamEjEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !202 ; 12 uses
  %i.dg = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64               ; 4 uses
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.y, label %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i98

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #30
          to label %.noexc116 unwind label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i98: ; preds = %bb.x
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i99 = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i99, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i100 = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %.not.i.i100)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #27
          to label %.noexc117 unwind label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc117:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i98
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  %i.ds = ptrtoint ptr %i.cz to i64
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !201
  %.not10.i.i.i.i101 = icmp eq ptr %i.df, %i.db
  br i1 %.not10.i.i.i.i101, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i113, label %iter.check

iter.check:                                       ; preds = %.noexc117
  %i.dt = add i64 %i.dg, -8
  %i.du = sub i64 %i.dt, %i.dh                    ; 3 uses
  %i.dv = lshr i64 %i.du, 3
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.du, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i102.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dx = add i64 %i.dg, -8
  %i.dy = sub i64 %i.dx, %i.dh
  %i.dz = and i64 %i.dy, -8
  %i.ea = add i64 %i.dz, 8                        ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dq, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.df, i64 %i.ea
  %bound0 = icmp ult ptr %i.dq, %i.ec
  %bound1 = icmp ult ptr %i.df, %i.eb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i102.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check199 = icmp ult i64 %i.du, 120
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %i.dw, 12
  %n.vec = and i64 %i.dw, 4611686018427387888     ; 4 uses
  %i.ee = shl i64 %n.vec, 3                       ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dq, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.df, i64 %i.ee
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dq, i64 %i.eh ; 4 uses
  %next.gep200 = getelementptr i8, ptr %i.df, i64 %i.eh ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4665)
  %i.ei = getelementptr i8, ptr %next.gep200, i64 32 ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep200, i64 64 ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep200, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep200, align 8, !tbaa !201, !alias.scope !4666
  %wide.load201 = load <4 x i64>, ptr %i.ei, align 8, !tbaa !201, !alias.scope !4666
  %wide.load202 = load <4 x i64>, ptr %i.ej, align 8, !tbaa !201, !alias.scope !4666
  %wide.load203 = load <4 x i64>, ptr %i.ek, align 8, !tbaa !201, !alias.scope !4666
  %i.el = getelementptr i8, ptr %next.gep, i64 32
  %i.em = getelementptr i8, ptr %next.gep, i64 64
  %i.en = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !201, !alias.scope !4667, !noalias !4668
  store <4 x i64> %wide.load201, ptr %i.el, align 8, !tbaa !201, !alias.scope !4667, !noalias !4668
  store <4 x i64> %wide.load202, ptr %i.em, align 8, !tbaa !201, !alias.scope !4667, !noalias !4668
  store <4 x i64> %wide.load203, ptr %i.en, align 8, !tbaa !201, !alias.scope !4667, !noalias !4668
  store <4 x ptr> splat (ptr null), ptr %next.gep200, align 8, !tbaa !201, !alias.scope !4666
  store <4 x ptr> splat (ptr null), ptr %i.ei, align 8, !tbaa !201, !alias.scope !4666
  store <4 x ptr> splat (ptr null), ptr %i.ej, align 8, !tbaa !201, !alias.scope !4666
  store <4 x ptr> splat (ptr null), ptr %i.ek, align 8, !tbaa !201, !alias.scope !4666
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !4654

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i113, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i102.preheader, label %vec.epilog.ph, !prof !205

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec204 = and i64 %i.dw, 4611686018427387900  ; 3 uses
  %i.ep = shl i64 %n.vec204, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.dq, i64 %i.ep  ; 2 uses
  %i.er = getelementptr i8, ptr %i.df, i64 %i.ep
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index205 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next209, %vec.epilog.vector.body ] ; 2 uses
  %i.es = shl i64 %index205, 3                    ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.dq, i64 %i.es
  %next.gep207 = getelementptr i8, ptr %i.df, i64 %i.es ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4665)
  %wide.load208 = load <4 x i64>, ptr %next.gep207, align 8, !tbaa !201, !alias.scope !4666
  store <4 x i64> %wide.load208, ptr %next.gep206, align 8, !tbaa !201, !alias.scope !4667, !noalias !4668
  store <4 x ptr> splat (ptr null), ptr %next.gep207, align 8, !tbaa !201, !alias.scope !4666
  %index.next209 = add nuw i64 %index205, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next209, %n.vec204
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4655

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n210 = icmp eq i64 %i.dw, %n.vec204
  br i1 %cmp.n210, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i113, label %.lr.ph.i.i.i.i102.preheader

.lr.ph.i.i.i.i102.preheader:                      ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i103.ph = phi ptr [ %i.dq, %iter.check ], [ %i.dq, %vector.memcheck ], [ %i.ef, %vec.epilog.iter.check ], [ %i.eq, %vec.epilog.middle.block ]
  %.0911.i.i.i.i104.ph = phi ptr [ %i.df, %iter.check ], [ %i.df, %vector.memcheck ], [ %i.eg, %vec.epilog.iter.check ], [ %i.er, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.i.i.i.i102.preheader, %.lr.ph.i.i.i.i102
  %.012.i.i.i.i103 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i102 ], [ %.012.i.i.i.i103.ph, %.lr.ph.i.i.i.i102.preheader ] ; 2 uses
  %.0911.i.i.i.i104 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i102 ], [ %.0911.i.i.i.i104.ph, %.lr.ph.i.i.i.i102.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4665)
  %i.eu = load i64, ptr %.0911.i.i.i.i104, align 8, !tbaa !201, !alias.scope !4665
  store i64 %i.eu, ptr %.012.i.i.i.i103, align 8, !tbaa !201, !alias.scope !4664
  store ptr null, ptr %.0911.i.i.i.i104, align 8, !tbaa !201, !alias.scope !4665
  %i.ev = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i104, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i103, i64 8 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ev, %i.db
  br i1 %.not.i.i.i.i105, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i113, label %.lr.ph.i.i.i.i102, !llvm.loop !4656

_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i113: ; preds = %.lr.ph.i.i.i.i102, %middle.block, %vec.epilog.middle.block, %.noexc117
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.dq, %.noexc117 ], [ %i.eq, %vec.epilog.middle.block ], [ %i.ef, %middle.block ], [ %i.ew, %.lr.ph.i.i.i.i102 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 8
  %.not.i23.i115 = icmp eq ptr %i.df, null
  br i1 %.not.i23.i115, label %.noexc49, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i113
  %i.ey = load ptr, ptr %i.cw, align 8, !tbaa !200
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = sub i64 %i.ez, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.fa) #28
  br label %.noexc49

.noexc49:                                         ; preds = %bb.z, %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i113
  store ptr %i.dq, ptr %i.cx, align 8, !tbaa !202
  store ptr %i.ex, ptr %i.cv, align 8, !tbaa !199
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  store ptr %i.fb, ptr %i.cw, align 8, !tbaa !200
  br label %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit53

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit53: ; preds = %bb.w, %.noexc49
  %i.fc = add nuw i32 %.0156, 1                   ; 2 uses
  %i.fd = load i32, ptr %i.ct, align 4, !tbaa !4662
  %i.fe = icmp ult i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.t, label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i86, !llvm.loop !4657

bb.aa:                                            ; preds = %bb.u, %bb.t
  %i.ff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
  br label %.body46

_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i98, %bb.y
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
  %i.fg = load ptr, ptr %i.cz, align 8, !tbaa !188
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(104) %i.cz) #29, !call_target !210, !inline_history !4644
  br label %.body46

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.fj, align 8, !tbaa !174
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !180 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.not10.i.i.i.i.i57 = icmp eq ptr %i.fm, null
  br i1 %.not10.i.i.i.i.i57, label %.critedge.i.i71, label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %bb.ab, %.lr.ph.i.i.i.i.i58
  %.012.i.i.i.i.i59 = phi ptr [ %.1.i.i.i.i.i64, %.lr.ph.i.i.i.i.i58 ], [ %i.fm, %bb.ab ] ; 3 uses
  %.0811.i.i.i.i.i60 = phi ptr [ %.19.i.i.i.i.i61, %.lr.ph.i.i.i.i.i58 ], [ %i.fn, %bb.ab ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i59, i64 32
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !181
  %i.fq = icmp ult i16 %i.fp, %i.i                ; 2 uses
  %.19.i.i.i.i.i61 = select i1 %i.fq, ptr %.0811.i.i.i.i.i60, ptr %.012.i.i.i.i.i59 ; 6 uses
  %.1.in.v.i.i.i.i.i62 = select i1 %i.fq, i64 24, i64 16
  %.1.in.i.i.i.i.i63 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i59, i64 %.1.in.v.i.i.i.i.i62
  %.1.i.i.i.i.i64 = load ptr, ptr %.1.in.i.i.i.i.i63, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %.1.i.i.i.i.i64, null
  br i1 %.not.i.i.i.i.i65, label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i66, label %.lr.ph.i.i.i.i.i58, !llvm.loop !0

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i66: ; preds = %.lr.ph.i.i.i.i.i58
  %i.fr = icmp eq ptr %.19.i.i.i.i.i61, %i.fn
  br i1 %i.fr, label %.critedge.i.i71, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i66
  %i.fs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i61, i64 32
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !181
  %i.fu = icmp ult i16 %i.i, %i.ft
  br i1 %i.fu, label %.critedge.i.i71, label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i67

.critedge.i.i71:                                  ; preds = %bb.ac, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i66, %bb.ab
  %.08.lcssa.i.i.i11.i.i72 = phi ptr [ %.19.i.i.i.i.i61, %bb.ac ], [ %.19.i.i.i.i.i61, %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i.i66 ], [ %i.fn, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.h, ptr %3, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.fv = invoke ptr @_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.fk, ptr %.08.lcssa.i.i.i11.i.i72, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc74 unwind label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit81

.noexc74:                                         ; preds = %.critedge.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i67

_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i67: ; preds = %.noexc74, %bb.ac
  %.sroa.06.0.i.i68 = phi ptr [ %i.fv, %.noexc74 ], [ %.19.i.i.i.i.i61, %bb.ac ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i68, i64 40 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !186 ; 3 uses
  store ptr %i.f, ptr %i.fw, align 8, !tbaa !186
  %.not.i.i.i.i1.i69 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i1.i69, label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit87, label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i70

_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i70: ; preds = %_ZNSt3mapIN8rawspeed7TiffTagESt10unique_ptrINS0_9TiffEntryESt14default_deleteIS3_EESt4lessIS1_ESaISt4pairIKS1_S6_EEEixERSA_.exit.i67
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !188
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(48) %i.fx) #29, !call_target !193, !inline_history !4636
  br label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit87

_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit81: ; preds = %.critedge.i.i71
  %i.gb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
  %i.gc = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #29, !call_target !193, !inline_history !4637
  br label %.body46

.body46:                                          ; preds = %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.aa, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit81, %bb.r, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit38
  %.sroa.0133.0 = phi ptr [ null, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit81 ], [ null, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit38 ], [ %i.f, %bb.r ], [ %i.f, %bb.aa ], [ %i.f, %bb.v ], [ %i.f, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  %.pn27 = phi { ptr, i32 } [ %i.gb, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit81 ], [ %i.al, %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit38 ], [ %.pn25, %bb.r ], [ %i.ff, %bb.aa ], [ %i.da, %bb.v ], [ %lpad.loopexit.split-lp245, %_ZNSt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS1_EED2Ev.exit56.loopexit.split-lp.loopexit.split-lp ] ; 4 uses
  %.3 = extractvalue { ptr, i32 } %.pn27, 1
  %i.gf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed17RawspeedExceptionE) #29
  %i.gg = icmp eq i32 %.3, %i.gf
  br i1 %i.gg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.body46
  %.318 = extractvalue { ptr, i32 } %.pn27, 0
  %i.gh = call ptr @__cxa_begin_catch(ptr %.318) #29 ; 0 uses
  %i.gi = ptrtoint ptr %.sroa.0133.0 to i64
  store i64 %i.gi, ptr %8, align 8, !tbaa !186
  invoke void @_ZN8rawspeed7TiffIFD3addESt10unique_ptrINS_9TiffEntryESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 %8)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gj = load ptr, ptr %8, align 8, !tbaa !186   ; 3 uses
  %.not.i82 = icmp eq ptr %i.gj, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit84, label %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i83

_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i83: ; preds = %bb.ae
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !188
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(48) %i.gj) #29, !call_target !193, !inline_history !4637
  br label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit84

_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit84: ; preds = %bb.ae, %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i83
  call void @__cxa_end_catch()
  br label %_ZNSt10unique_ptrIN8rawspeed9TiffEntryESt14default_deleteIS1_EED2Ev.exit87
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag:bb.a
bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN8rawspeed7TiffIFDESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre70 = load ptr, ptr %i.h, align 8, !tbaa !4625
  br label %_ZSt22__uninitialized_move_aIPPKN8rawspeed7TiffIFDES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN8rawspeed7TiffIFDESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  br i1 %i.ai, label %bb.s, label %_ZSt22__uninitialized_move_aIPPKN8rawspeed7TiffIFDES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr %1, align 8, !tbaa !201
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !201
  br label %_ZSt22__uninitialized_move_aIPPKN8rawspeed7TiffIFDES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

_ZSt22__uninitialized_move_aIPPKN8rawspeed7TiffIFDES4_SaIS3_EET0_T_S7_S6_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.au = phi ptr [ %.pre70, %bb.q ], [ %i.ar, %bb.r ], [ %i.ar, %bb.s ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.n
  store ptr %i.av, ptr %i.h, align 8, !tbaa !4625
  %i.aw = icmp sgt i64 %i.n, 8
  br i1 %i.aw, label %bb.t, label %bb.u, !prof !4693

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN8rawspeed7TiffIFDES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN8rawspeed7TiffIFDESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN8rawspeed7TiffIFDES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  %i.ax = icmp eq i64 %i.n, 8
  br i1 %i.ax, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN8rawspeed7TiffIFDESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.v:                                             ; preds = %bb.u
  %i.ay = load ptr, ptr %2, align 8, !tbaa !201
  store ptr %i.ay, ptr %1, align 8, !tbaa !201
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN8rawspeed7TiffIFDESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.w:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %0, align 8, !tbaa !4624  ; 5 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bb = sub i64 %i.k, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 4 uses
  %i.bd = sub nsw i64 1152921504606846975, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.e
  br i1 %i.be, label %bb.x, label %_ZNKSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #30
  unreachable

_ZNKSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.e)
  %i.bf = add nsw i64 %.sroa.speculated.i, %i.bc  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.bc
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE12_M_check_lenEmPKc.exit
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #27
  br label %_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bl = phi ptr [ %i.bk, %bb.y ], [ null, %_ZNKSt6vectorIPKN8rawspeed7TiffIFDESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bm = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bn = sub i64 %i.bm, %i.ba                    ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, 8
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !4693

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bl, ptr align 8 %i.az, i64 %i.bn, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE11_M_allocateEm.exit
  %i.bp = icmp eq i64 %i.bn, 8
  br i1 %i.bp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.az, align 8, !tbaa !201
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !201
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.br = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn ; 3 uses
  %i.bs = icmp sgt i64 %i.d, 8
  br i1 %i.bs, label %bb.ad, label %bb.ae, !prof !4693

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.br, ptr align 8 %2, i64 %i.d, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bt = icmp eq i64 %i.d, 8
  br i1 %i.bt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bu = load ptr, ptr %2, align 8, !tbaa !201
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !201
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.d ; 3 uses
  %i.bw = sub i64 %i.k, %i.bm                     ; 4 uses
  %i.bx = icmp sgt i64 %i.bw, 8
  br i1 %i.bx, label %bb.ah, label %bb.ai, !prof !4693

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %1, i64 %i.bw, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.by = icmp eq i64 %i.bw, 8
  br i1 %i.by, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bz = load ptr, ptr %1, align 8, !tbaa !201
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !201
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 %i.bw
  %.not.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !4626
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.cd) #28
  br label %_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bl, ptr %0, align 8, !tbaa !4624
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !4625
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bi
  store ptr %i.ce, ptr %i.f, align 8, !tbaa !4626
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN8rawspeed7TiffIFDESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN8rawspeed7TiffIFDESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPKN8rawspeed7TiffIFDESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !202    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !201
  store i64 %i.r, ptr %i.q, align 8, !tbaa !201
  store ptr null, ptr %2, align 8, !tbaa !201
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.t, 120
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.v, 12
  %n.vec = and i64 %i.v, 4611686018427387888      ; 4 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 4 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.aa ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4710)
  %i.ab = getelementptr i8, ptr %next.gep36, i64 32 ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep36, i64 64 ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep36, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep36, align 8, !tbaa !201, !alias.scope !4710
  %wide.load37 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !201, !alias.scope !4710
  %wide.load38 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !201, !alias.scope !4710
  %wide.load39 = load <4 x i64>, ptr %i.ad, align 8, !tbaa !201, !alias.scope !4710
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !201, !alias.scope !4709
  store <4 x i64> %wide.load37, ptr %i.ae, align 8, !tbaa !201, !alias.scope !4709
  store <4 x i64> %wide.load38, ptr %i.af, align 8, !tbaa !201, !alias.scope !4709
  store <4 x i64> %wide.load39, ptr %i.ag, align 8, !tbaa !201, !alias.scope !4709
  store <4 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !201, !alias.scope !4710
  store <4 x ptr> splat (ptr null), ptr %i.ab, align 8, !tbaa !201, !alias.scope !4710
  store <4 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !201, !alias.scope !4710
  store <4 x ptr> splat (ptr null), ptr %i.ad, align 8, !tbaa !201, !alias.scope !4710
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !4697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !205

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.v, 4611686018427387900    ; 3 uses
  %i.ai = shl i64 %n.vec40, 3                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 2 uses
  %i.al = shl i64 %index41, 3                     ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.p, i64 %i.al
  %next.gep43 = getelementptr i8, ptr %i.c, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4710)
  %wide.load44 = load <4 x i64>, ptr %next.gep43, align 8, !tbaa !201, !alias.scope !4710
  store <4 x i64> %wide.load44, ptr %next.gep42, align 8, !tbaa !201, !alias.scope !4709
  store <4 x ptr> splat (ptr null), ptr %next.gep43, align 8, !tbaa !201, !alias.scope !4710
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4698

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.v, %n.vec40
  br i1 %cmp.n46, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4710)
  %i.an = load i64, ptr %.0911.i.i.i, align 8, !tbaa !201, !alias.scope !4710
  store i64 %i.an, ptr %.012.i.i.i, align 8, !tbaa !201, !alias.scope !4709
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !201, !alias.scope !4710
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !4699

_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.aj, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.ap, %.lr.ph.i.i.i ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 8 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %iter.check65

iter.check65:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ar = add i64 %i.d, -8
  %i.as = sub i64 %i.ar, %i.m                     ; 3 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 5 uses
  %min.iters.check49 = icmp ult i64 %i.as, 24
  br i1 %min.iters.check49, label %.lr.ph.i.i.i17.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check65
  %i.av = add i64 %i.d, -8
  %i.aw = sub i64 %i.av, %i.m
  %i.ax = and i64 %i.aw, -8                       ; 2 uses
  %i.ay = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = getelementptr i8, ptr %1, i64 %i.ax
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %bound0 = icmp ult ptr %i.aq, %i.bb
  %bound1 = icmp ult ptr %1, %i.az
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader, label %vector.main.loop.iter.check50

vector.main.loop.iter.check50:                    ; preds = %vector.memcheck
  %min.iters.check51 = icmp ult i64 %i.as, 120
  br i1 %min.iters.check51, label %vec.epilog.ph69, label %vector.ph52

vector.ph52:                                      ; preds = %vector.main.loop.iter.check50
  %i.bc = and i64 %i.au, 12
  %n.vec53 = and i64 %i.au, 4611686018427387888   ; 4 uses
  %i.bd = shl i64 %n.vec53, 3                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.aq, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %1, i64 %i.bd
  br label %vector.body54

vector.body54:                                    ; preds = %vector.ph52, %vector.body54
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next62, %vector.body54 ] ; 2 uses
  %i.bg = shl i64 %index55, 3                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.aq, i64 %i.bg ; 4 uses
  %next.gep57 = getelementptr i8, ptr %1, i64 %i.bg ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4712)
  %i.bh = getelementptr i8, ptr %next.gep57, i64 32 ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep57, i64 64 ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep57, i64 96 ; 2 uses
  %wide.load58 = load <4 x i64>, ptr %next.gep57, align 8, !tbaa !201, !alias.scope !4713
  %wide.load59 = load <4 x i64>, ptr %i.bh, align 8, !tbaa !201, !alias.scope !4713
  %wide.load60 = load <4 x i64>, ptr %i.bi, align 8, !tbaa !201, !alias.scope !4713
  %wide.load61 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !201, !alias.scope !4713
  %i.bk = getelementptr i8, ptr %next.gep56, i64 32
  %i.bl = getelementptr i8, ptr %next.gep56, i64 64
  %i.bm = getelementptr i8, ptr %next.gep56, i64 96
  store <4 x i64> %wide.load58, ptr %next.gep56, align 8, !tbaa !201, !alias.scope !4714, !noalias !4715
  store <4 x i64> %wide.load59, ptr %i.bk, align 8, !tbaa !201, !alias.scope !4714, !noalias !4715
  store <4 x i64> %wide.load60, ptr %i.bl, align 8, !tbaa !201, !alias.scope !4714, !noalias !4715
  store <4 x i64> %wide.load61, ptr %i.bm, align 8, !tbaa !201, !alias.scope !4714, !noalias !4715
  store <4 x ptr> splat (ptr null), ptr %next.gep57, align 8, !tbaa !201, !alias.scope !4713
  store <4 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !201, !alias.scope !4713
  store <4 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !201, !alias.scope !4713
  store <4 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !201, !alias.scope !4713
  %index.next62 = add nuw i64 %index55, 16        ; 2 uses
  %i.bn = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.bn, label %middle.block63, label %vector.body54, !llvm.loop !4706

middle.block63:                                   ; preds = %vector.body54
  %cmp.n64 = icmp eq i64 %i.au, %n.vec53
  br i1 %cmp.n64, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %vec.epilog.iter.check66

vec.epilog.iter.check66:                          ; preds = %middle.block63
  %min.epilog.iters.check68 = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check68, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph69, !prof !205

vec.epilog.ph69:                                  ; preds = %vector.main.loop.iter.check50, %vec.epilog.iter.check66
  %vec.epilog.resume.val70 = phi i64 [ %n.vec53, %vec.epilog.iter.check66 ], [ 0, %vector.main.loop.iter.check50 ]
  %n.vec71 = and i64 %i.au, 4611686018427387900   ; 3 uses
  %i.bo = shl i64 %n.vec71, 3                     ; 2 uses
  %i.bp = getelementptr i8, ptr %i.aq, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.bo
  br label %vec.epilog.vector.body72

vec.epilog.vector.body72:                         ; preds = %vec.epilog.vector.body72, %vec.epilog.ph69
  %index73 = phi i64 [ %vec.epilog.resume.val70, %vec.epilog.ph69 ], [ %index.next77, %vec.epilog.vector.body72 ] ; 2 uses
  %i.br = shl i64 %index73, 3                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.aq, i64 %i.br
  %next.gep75 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4712)
  %wide.load76 = load <4 x i64>, ptr %next.gep75, align 8, !tbaa !201, !alias.scope !4713
  store <4 x i64> %wide.load76, ptr %next.gep74, align 8, !tbaa !201, !alias.scope !4714, !noalias !4715
  store <4 x ptr> splat (ptr null), ptr %next.gep75, align 8, !tbaa !201, !alias.scope !4713
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.bs, label %vec.epilog.middle.block78, label %vec.epilog.vector.body72, !llvm.loop !4707

vec.epilog.middle.block78:                        ; preds = %vec.epilog.vector.body72
  %cmp.n79 = icmp eq i64 %i.au, %n.vec71
  br i1 %cmp.n79, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %iter.check65, %vector.memcheck, %vec.epilog.iter.check66, %vec.epilog.middle.block78
  %.012.i.i.i18.ph = phi ptr [ %i.aq, %iter.check65 ], [ %i.aq, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check66 ], [ %i.bp, %vec.epilog.middle.block78 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check65 ], [ %1, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check66 ], [ %i.bq, %vec.epilog.middle.block78 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bv, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bu, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4712)
  %i.bt = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !201, !alias.scope !4712
  store i64 %i.bt, ptr %.012.i.i.i18, align 8, !tbaa !201, !alias.scope !4711
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !201, !alias.scope !4712
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !4708

_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block63, %vec.epilog.middle.block78, %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aq, %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bp, %vec.epilog.middle.block78 ], [ %i.be, %middle.block63 ], [ %i.bv, %.lr.ph.i.i.i17 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !200
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #28
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8rawspeed7TiffIFDESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !202
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !199
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !200
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19TiffParserExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #33
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19TiffParserExceptionE, i64 16), ptr %0, align 8, !tbaa !188
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #24

declare void @_ZN8rawspeed9TiffEntryC1EPNS_7TiffIFDERNS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK8rawspeed11NORangesSetINS_6BufferEE44rangeIsOverlappingExistingElementOfSortedSetERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4616
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4614 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !4628 ; 11 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !4629 ; 4 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.04.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.e, %bb.b ]
  %i.h = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.04.i.i) #32 ; 2 uses
  %i.i = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !4716

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %i.k = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = zext nneg i32 %.sroa.2.0.copyload to i64
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.015.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.sroa.011.014.i = phi ptr [ %i.e, %.lr.ph.i ], [ %.sroa.011.1.i, %bb.e ] ; 3 uses
  %i.n = lshr i64 %.015.i, 1                      ; 4 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.012.i.i = phi i64 [ %i.p, %.preheader.i.i ], [ %i.n, %bb.c ]
  %i.o = phi ptr [ %i.q, %.preheader.i.i ], [ %.sroa.011.014.i, %bb.c ]
  %i.p = add nsw i64 %.012.i.i, -1                ; 2 uses
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.o) #32 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.p, 0
  br i1 %.not6.i.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.preheader.i.i, !llvm.loop !4717

_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %.preheader.i.i, %bb.c
  %.sroa.0.0.i = phi ptr [ %.sroa.011.014.i, %bb.c ], [ %i.q, %.preheader.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 32
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.r, align 8, !tbaa !4628 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40
  %.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !4629 ; 2 uses
  %i.s = icmp sgt i32 %.sroa.22.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = zext nneg i32 %.sroa.22.0.copyload.i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i.i, i64 %i.t
  %i.v = icmp ult ptr %.sroa.01.0.copyload.i.i, %.sroa.01.0.copyload
  %i.w = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.01.0.copyload
  %.not.i.i.i = icmp ult ptr %i.u, %i.m
  %i.x = select i1 %i.w, i1 %.not.i.i.i, i1 %i.v
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.y = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.0.i) #32
  %i.z = xor i64 %i.n, -1
  %i.aa = add nsw i64 %.015.i, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.sroa.011.1.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.011.014.i, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ] ; 2 uses
  %.1.i = phi i64 [ %i.aa, %bb.d ], [ %i.n, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ] ; 2 uses
  %i.ab = icmp sgt i64 %.1.i, 0
  br i1 %i.ab, label %bb.c, label %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit, !llvm.loop !4718

_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit: ; preds = %bb.e, %bb.b
  %.sroa.011.0.lcssa.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.011.1.i, %bb.e ] ; 4 uses
  %i.ac = icmp eq ptr %.sroa.011.0.lcssa.i, %i.f
  br i1 %i.ac, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i, i64 32 ; 3 uses
  %i.ae = icmp eq ptr %1, %i.ad
  br i1 %i.ae, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !4619 ; 4 uses
  %i.ah = icmp eq ptr %.sroa.01.0.copyload, %i.ag
  br i1 %i.ah, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit

_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit: ; preds = %bb.g
  %i.ai = icmp ult ptr %i.ag, %.sroa.01.0.copyload ; 3 uses
  %spec.select6.i.i = select i1 %i.ai, ptr %i.ad, ptr %1
  %i.aj = select i1 %i.ai, ptr %.sroa.01.0.copyload, ptr %i.ag ; 2 uses
  %i.ak = select i1 %i.ai, ptr %i.ag, ptr %.sroa.01.0.copyload ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %spec.select6.i.i, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !165 ; 2 uses
  %i.an = icmp sgt i32 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp uge ptr %i.aj, %i.ak
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.ar = icmp ugt ptr %i.aq, %i.aj
  %.0.i.i = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %.0.i.i, label %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit14, label %.critedge

.critedge:                                        ; preds = %_ZSt15partition_pointISt23_Rb_tree_const_iteratorIN8rawspeed6BufferEEZNKS1_11NORangesSetIS2_E44rangeIsOverlappingExistingElementOfSortedSetERKS2_EUlS7_E_ET_S9_S9_T0_.exit, %_ZN8rawspeed13RangesOverlapINS_6BufferEEEbRKT_S4_.exit
end_hunk_1
