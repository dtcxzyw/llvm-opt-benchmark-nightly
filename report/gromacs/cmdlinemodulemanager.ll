Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/cmdlinemodulemanager?download=true
inline.NumInlined: 811
inline.NumDeleted: 445
begin_hunk_0_@_ZN3gmx24CommandLineModuleManager14addModuleGroupEPKc:bb.a
  %.not10.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc6
  %i.ac = add i64 %i.q, -8
  %i.ad = sub i64 %i.ac, %i.r                     ; 3 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i64 %i.ad, 120
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 4611686018427387888     ; 4 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.aa, i64 %i.ah  ; 2 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ak ; 4 uses
  %next.gep18 = getelementptr i8, ptr %i.p, i64 %i.ak ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.al = getelementptr i8, ptr %next.gep18, i64 32
  %i.am = getelementptr i8, ptr %next.gep18, i64 64
  %i.an = getelementptr i8, ptr %next.gep18, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep18, align 8, !tbaa !65, !alias.scope !207
  %wide.load19 = load <4 x i64>, ptr %i.al, align 8, !tbaa !65, !alias.scope !207
  %wide.load20 = load <4 x i64>, ptr %i.am, align 8, !tbaa !65, !alias.scope !207
  %wide.load21 = load <4 x i64>, ptr %i.an, align 8, !tbaa !65, !alias.scope !207
  %i.ao = getelementptr i8, ptr %next.gep, i64 32
  %i.ap = getelementptr i8, ptr %next.gep, i64 64
  %i.aq = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !206
  store <4 x i64> %wide.load19, ptr %i.ao, align 8, !tbaa !65, !alias.scope !206
  store <4 x i64> %wide.load20, ptr %i.ap, align 8, !tbaa !65, !alias.scope !206
  store <4 x i64> %wide.load21, ptr %i.aq, align 8, !tbaa !65, !alias.scope !206
  %i.ar = getelementptr i8, ptr %next.gep18, i64 32
  %i.as = getelementptr i8, ptr %next.gep18, i64 64
  %i.at = getelementptr i8, ptr %next.gep18, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep18, align 8, !tbaa !65, !alias.scope !207
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !65, !alias.scope !207
  store <4 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !65, !alias.scope !207
  store <4 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !65, !alias.scope !207
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !210

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.af, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec22, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.p, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index23, 3                     ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.aa, i64 %i.ay
  %next.gep25 = getelementptr i8, ptr %i.p, i64 %i.ay ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %wide.load26 = load <4 x i64>, ptr %next.gep25, align 8, !tbaa !65, !alias.scope !207
  store <4 x i64> %wide.load26, ptr %next.gep24, align 8, !tbaa !65, !alias.scope !206
  store <4 x ptr> splat (ptr null), ptr %next.gep25, align 8, !tbaa !65, !alias.scope !207
  %index.next27 = add nuw i64 %index23, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !202

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.af, %n.vec22
  br i1 %cmp.n28, label %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.ba = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !207
  store i64 %i.ba, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !206
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !207
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !203

_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc6
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aa, %.noexc6 ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bg) #28
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.d
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !62
  store ptr %i.bd, ptr %i.j, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.bh, ptr %i.l, align 8, !tbaa !72
  %i.bi = load ptr, ptr %0, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !211
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !65
  br label %_ZNSt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.bn = phi ptr [ %i.d, %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.bm, %_ZNSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret ptr %i.bn

bb.e:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i, %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx26CommandLineModuleGroupDataESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.bo
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx24CommandLineModuleManager12addHelpTopicESt10unique_ptrINS_10IHelpTopicESt14default_deleteIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.50", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !106
  tail call void @_ZN3gmx24CommandLineModuleManager4Impl22ensureHelpModuleExistsEv(ptr noundef nonnull align 8 dereferenceable(129) %i.a)
  %i.b = load ptr, ptr %0, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = load i64, ptr %1, align 8, !tbaa !88
  store i64 %i.e, ptr %2, align 8, !tbaa !88
  store ptr null, ptr %1, align 8, !tbaa !88
  invoke void @_ZN3gmx21CommandLineHelpModule8addTopicESt10unique_ptrINS_10IHelpTopicESt14default_deleteIS2_EEb(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 %2, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !88     ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i: ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #26, !inline_history !2
  br label %_ZNSt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !88     ; 3 uses
  %.not.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS1_EED2Ev.exit4, label %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3

_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3: ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #26, !inline_history !2
  br label %_ZNSt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS1_EED2Ev.exit4

_ZNSt10unique_ptrIN3gmx10IHelpTopicESt14default_deleteIS1_EED2Ev.exit4: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10IHelpTopicEEclEPS1_.exit.i3
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3gmx24CommandLineModuleManager3runEiPPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.gmx::CommandLineCommonOptionsHolder", align 8 ; 21 uses
  %5 = alloca %"class.gmx::CommandLineModuleSettings", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  store i32 %1, ptr %i.b, align 4, !tbaa !39
  store ptr %2, ptr %i.c, align 8, !tbaa !100
  %i.d = tail call noundef i32 @_Z13gmx_node_rankv()
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load i8, ptr %i.g, align 8, !tbaa !107, !range !41, !noundef !42
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = xor i1 %i.e, true
  %i.k = or i1 %i.j, %i.i                         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN3gmx30CommandLineCommonOptionsHolderC1Ev(ptr noundef nonnull align 8 dereferenceable(60) %4)
  invoke void @_ZN3gmx30CommandLineCommonOptionsHolder11initOptionsEv(ptr noundef nonnull align 8 dereferenceable(60) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !106
  %i.m = invoke noundef ptr @_ZN3gmx24CommandLineModuleManager4Impl20processCommonOptionsEPNS_30CommandLineCommonOptionsHolderEPiPPPc(ptr noundef nonnull align 8 dereferenceable(129) %i.l, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %9 unwind label %bb.d          ; 6 uses

9:                                                ; preds = %bb.b
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 42
  %11 = load i8, ptr %10, align 2, !tbaa !45, !range !41, !noundef !42
  %12 = trunc nuw i8 %11 to i1
  br i1 %12, label %bb.c, label %_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit

bb.c:                                             ; preds = %9
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 43
  %i.o = load i8, ptr %i.n, align 1, !tbaa !40, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = xor i1 %i.p, true
  %i.r = or i1 %i.k, %i.q
  br i1 %i.r, label %bb.l, label %bb.i

_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit: ; preds = %9
  br i1 %i.k, label %bb.l, label %bb.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 1
  %i.u = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #26
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %13, label %bb.bf

13:                                               ; preds = %bb.d
  %14 = extractvalue { ptr, i32 } %i.s, 0
  %15 = call ptr @__cxa_begin_catch(ptr %14) #26  ; 0 uses
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 42
  %17 = load i8, ptr %16, align 2, !tbaa !45, !range !41, !noundef !42
  %18 = trunc nuw i8 %17 to i1
  br i1 %18, label %bb.e, label %_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit41

bb.e:                                             ; preds = %13
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 43
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40, !range !41, !noundef !42
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = xor i1 %i.y, true
  %i.aa = or i1 %i.k, %i.z
  br i1 %i.aa, label %bb.h, label %bb.f

_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit41: ; preds = %13
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit41
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !121
  %i.ac = load ptr, ptr %0, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89, !nonnull !42, !align !90
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN3gmx22printBinaryInformationEP8_IO_FILERKNS_15IProgramContextERKNS_25BinaryInformationSettingsE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.bg

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit41
  invoke void @__cxa_rethrow() #27
          to label %bb.bh unwind label %bb.g

bb.i:                                             ; preds = %bb.c, %_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 43
  %20 = load i8, ptr %19, align 1, !tbaa !40, !range !41, !noundef !42
  %21 = trunc nuw i8 %20 to i1
  %i.ah = load ptr, ptr @stdout, align 8
  %i.ai = load ptr, ptr @stderr, align 8
  %i.aj = select i1 %21, ptr %i.ah, ptr %i.ai     ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !106
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89, !nonnull !42, !align !90
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  invoke void @_ZN3gmx22printBinaryInformationEP8_IO_FILERKNS_15IProgramContextERKNS_25BinaryInformationSettingsE(ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %fputc = call i32 @fputc(i32 10, ptr %i.aj)     ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.l:                                             ; preds = %bb.c, %bb.j, %_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit
  %22 = phi i1 [ true, %bb.c ], [ false, %bb.j ], [ true, %_ZNK3gmx30CommandLineCommonOptionsHolder13shouldBeQuietEv.exit ]
  %i.ap = icmp eq ptr %i.m, null
  br i1 %i.ap, label %bb.be, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN3gmx25CommandLineModuleSettingsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %5)
          to label %bb.o unwind label %bb.ay

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.au = load i8, ptr %i.at, align 4, !tbaa !31, !range !41, !noundef !42
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN3gmx30CommandLineCommonOptionsHolder18adjustFromSettingsERKNS_25CommandLineModuleSettingsE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = invoke noundef i32 @_ZNK3gmx25CommandLineModuleSettings16defaultNiceLevelEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !30
  br label %_ZN3gmx30CommandLineCommonOptionsHolder18adjustFromSettingsERKNS_25CommandLineModuleSettingsE.exit

_ZN3gmx30CommandLineCommonOptionsHolder18adjustFromSettingsERKNS_25CommandLineModuleSettingsE.exit: ; preds = %.noexc, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 53
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !32, !range !41, !noundef !42
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = sub nsw i32 0, %i.ba
  invoke void @_Z24gmx_set_max_backup_counti(i32 noundef %i.bb)
          to label %bb.q unwind label %bb.ay

bb.q:                                             ; preds = %_ZN3gmx30CommandLineCommonOptionsHolder18adjustFromSettingsERKNS_25CommandLineModuleSettingsE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !34
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.r, label %bb.ar

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bf = load ptr, ptr %0, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !89, !nonnull !42, !align !90 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %bb.s unwind label %bb.ae      ; 4 uses

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bl, ptr %6, align 8, !tbaa !54
  %i.bm = icmp eq ptr %i.bk, null
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
          to label %.noexc41 unwind label %bb.ae

.noexc41:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !55
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc42 unwind label %bb.ae  ; 2 uses

.noexc42:                                         ; preds = %.noexc.i
  store ptr %i.bp, ptr %6, align 8, !tbaa !57
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.bq, ptr %i.bl, align 8, !tbaa !58
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc42, %bb.u
  %i.br = phi ptr [ %i.bp, %.noexc42 ], [ %i.bl, %bb.u ] ; 2 uses
  switch i64 %i.bn, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.bs = load i8, ptr %i.bk, align 1, !tbaa !58
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !58
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr nonnull align 1 %i.bk, i64 %i.bn, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !59
  %i.bv = load ptr, ptr %6, align 8, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bx = invoke noundef i32 @_Z12gmx_node_numv()
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bz = invoke noundef i32 @_Z13gmx_node_rankv()
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.29, i32 noundef %i.bz)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ac unwind label %bb.ah     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !58
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ai

bb.ad:                                            ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ae:                                            ; preds = %bb.r, %.noexc.i, %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.aj, %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ag:                                            ; preds = %bb.aa, %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.ah:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ah
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !58
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.ag ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.ck, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.aq

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !59
  %i.cr = add i64 %i.cq, -4611686018427387898
  %i.cs = icmp ult i64 %i.cr, 6
  br i1 %i.cs, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.noexc46 unwind label %bb.af

.noexc46:                                         ; preds = %bb.aj
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.ai
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.30, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.af ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !121
  %i.cv = load ptr, ptr %6, align 8, !tbaa !57
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.31, ptr noundef %i.cv) #32 ; 0 uses
  %i.cx = load i32, ptr %i.bc, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext 2)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  invoke void @_Z14gmx_init_debugiRKNSt10filesystem7__cxx114pathE(i32 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull %i.cz) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.am, %bb.al
  %i.da = load ptr, ptr %8, align 8, !tbaa !57    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !58
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #28
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.df = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bl
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.dh = load i64, ptr %i.bl, align 8, !tbaa !58
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ar

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn34 = phi { ptr, i32 } [ %i.dk, %bb.ao ], [ %i.dj, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.af
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ap ], [ %i.ci, %bb.af ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  %i.dl = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.aq
  %i.dn = load i64, ptr %i.bl, align 8, !tbaa !58
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.ae
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.ch, %bb.ae ], [ %.pn34.pn, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bc

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !30 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  %.b = load i1, ptr @_ZZN3gmx24CommandLineModuleManager3runEiPPcE8bNiceSet, align 1
  %or.cond3 = select i1 %i.dr, i1 true, i1 %.b
  br i1 %or.cond3, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = invoke noundef i32 @_Z12gmx_set_nicei(i32 noundef %i.dq)
          to label %bb.at unwind label %bb.ay     ; 0 uses

bb.at:                                            ; preds = %bb.as
  store i1 true, ptr @_ZZN3gmx24CommandLineModuleManager3runEiPPcE8bNiceSet, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 54
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !33, !range !41, !noundef !42
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dw = invoke noundef i32 @_Z18gmx_feenableexceptv()
          to label %bb.aw unwind label %bb.ay     ; 0 uses

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dx = load ptr, ptr %0, align 8, !tbaa !106
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 112
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !86
  %i.ea = icmp ne ptr %i.m, %i.dz
  %or.cond = or i1 %i.e, %i.ea
  br i1 %or.cond, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef %i.eb, ptr noundef %i.ec)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.p, %bb.n, %_ZN3gmx30CommandLineCommonOptionsHolder18adjustFromSettingsERKNS_25CommandLineModuleSettingsE.exit, %bb.as, %bb.av, %bb.ax
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %.0 = phi i32 [ 0, %bb.aw ], [ %i.eg, %bb.ax ]
  br i1 %22, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN3gmx12getCoolQuoteB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3)
          to label %.noexc56 unwind label %bb.ay

.noexc56:                                         ; preds = %bb.ba
  %i.ej = load ptr, ptr %3, align 8, !tbaa !57
  %i.ek = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.26, ptr noundef %i.ej) #32 ; 0 uses
  %i.el = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN3gmx24CommandLineModuleManager4Impl11printThanksEP8_IO_FILE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %.noexc56
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !58
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #28
  br label %_ZN3gmx24CommandLineModuleManager4Impl11printThanksEP8_IO_FILE.exit

_ZN3gmx24CommandLineModuleManager4Impl11printThanksEP8_IO_FILE.exit: ; preds = %.noexc56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3gmx24CommandLineModuleManager4Impl11printThanksEP8_IO_FILE.exit, %bb.az
  call void @_ZN3gmx25CommandLineModuleSettingsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.be

bb.bc:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn38 = phi { ptr, i32 } [ %i.eh, %bb.ay ], [ %.pn34.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  call void @_ZN3gmx25CommandLineModuleSettingsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ad
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.bc ], [ %i.cg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bf

bb.be:                                            ; preds = %bb.l, %bb.bb
  %.030 = phi i32 [ %.0, %bb.bb ], [ 0, %bb.l ]
  call void @_ZN3gmx30CommandLineCommonOptionsHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %.030

bb.bf:                                            ; preds = %bb.g, %bb.bd, %bb.k, %bb.d
  %.merged = phi { ptr, i32 } [ %.pn38.pn, %bb.bd ], [ %i.ao, %bb.k ], [ %i.s, %bb.d ], [ %i.ag, %bb.g ]
  call void @_ZN3gmx30CommandLineCommonOptionsHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.merged

bb.bg:                                            ; preds = %bb.g
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #29
  unreachable

bb.bh:                                            ; preds = %bb.h
  unreachable
}

declare noundef i32 @_Z13gmx_node_rankv() local_unnamed_addr #1

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #20

declare void @_ZN3gmx22printBinaryInformationEP8_IO_FILERKNS_15IProgramContextERKNS_25BinaryInformationSettingsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN3gmx25CommandLineModuleSettingsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_Z24gmx_set_max_backup_counti(i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z12gmx_node_numv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

declare void @_Z14gmx_init_debugiRKNSt10filesystem7__cxx114pathE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !57     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !54
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !55
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !57
  %i.j = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.j, ptr %i.e, align 8, !tbaa !58
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !58
  store i8 %i.l, ptr %i.k, align 1, !tbaa !58
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !59
  %i.o = load ptr, ptr %0, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.t) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !58
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !58
  %i.g = add i64 %i.f, 1
end_hunk_0
