Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.10?download=true
inline.NumInlined: 2100
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB13_9generated5nodes9TypeBoundEKj2_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.n:                                             ; preds = %_RNCINvMNtNtCshzWfHUSfYae_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundE10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2l_17ArrayWindowsInnerB15_Kj2_E11make_window0E0CslLuZgPVt6hg_3ide.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !2377, !noalias !2379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.val10 = load ptr, ptr %i.g, align 8, !noundef !26 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load ptr, ptr %i.ab, align 8          ; 6 uses
  %i.ac = icmp eq ptr %.val10, null
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscFGNKo4Sl5v_9itertools10array_impl17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_EEECslLuZgPVt6hg_3ide.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val10, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !2380, !noundef !26
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !noalias !2380
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val10) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.i unwind label %.lr.ph.i.i.i.i, !noalias !2380

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.val11, i64 48 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noalias !2380, !noundef !26
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4, !noalias !2380
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscFGNKo4Sl5v_9itertools10array_impl17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_EEECslLuZgPVt6hg_3ide.exit

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val11) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscFGNKo4Sl5v_9itertools10array_impl17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_EEECslLuZgPVt6hg_3ide.exit unwind label %bb.t

.lr.ph.i.i.i.i:                                   ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val11, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noalias !2380, !noundef !26
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !noalias !2380
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %.body12

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val11) #36
          to label %.body12 unwind label %bb.s, !noalias !2380

bb.s:                                             ; preds = %bb.r
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !2380
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %.lr.ph.i.i.i.i, %bb.r, %bb.t
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.al, %bb.r ], [ %i.al, %.lr.ph.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #34
          to label %common.resume unwind label %bb.v

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscFGNKo4Sl5v_9itertools10array_impl17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_EEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundECslLuZgPVt6hg_3ide.exit.i.i.i.i, %bb.n, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEKj2_NCINvMBJ_BG_10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2T_17ArrayWindowsInnerB1n_KB2m_E11make_window0E0ECslLuZgPVt6hg_3ide.exit16, %bb.ag, %bb.m
  ret void

bb.v:                                             ; preds = %.thread, %.body12
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

.thread:                                          ; preds = %bb.j
  %.val8 = load ptr, ptr %i.e, align 8, !alias.scope !46, !nonnull !26, !noundef !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val9 = load ptr, ptr %i.at, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCscFGNKo4Sl5v_9itertools10array_impl17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_EECslLuZgPVt6hg_3ide(ptr nonnull %.val8, ptr %.val9) #34
          to label %common.resume unwind label %bb.v

_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes9TypeBoundEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !2381, !noundef !26 ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 1
  br i1 %i.aw, label %bb.y, label %bb.w

bb.w:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes9TypeBoundEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.av ; 3 uses
  %.val4.i = load ptr, ptr %i.ax, align 8, !alias.scope !2381, !nonnull !26, !noundef !26 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val4.i, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !noalias !2381, !noundef !26
  %i.ba = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.ba, ptr %i.ay, align 4, !noalias !2381
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.x, label %_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i) #36
          to label %_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit unwind label %bb.z, !noalias !2381

bb.y:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes9TypeBoundEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #32
          to label %bb.aa unwind label %bb.ab, !noalias !2381

bb.z:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.ax, align 8, !alias.scope !2381
  br label %common.resume

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !noalias !2381, !noundef !26
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !noalias !2381
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ac, label %common.resume

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.l) #36
          to label %common.resume unwind label %bb.ad, !noalias !2381

bb.ad:                                            ; preds = %bb.ac
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !2381
  unreachable

_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit: ; preds = %bb.w, %bb.x
  store ptr %i.l, ptr %i.ax, align 8, !alias.scope !2381
  %i.bj = load i64, ptr %i.au, align 8, !alias.scope !2381, !noundef !26
  %i.bk = and i64 %i.bj, 1
  %i.bl = xor i64 %i.bk, 1                        ; 2 uses
  store i64 %i.bl, ptr %i.au, align 8, !alias.scope !2381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2382
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2383)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bl
  %i.bn = invoke noundef nonnull ptr @_RNvXskb_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9TypeBoundNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bm)
          to label %_RNCINvMNtNtCshzWfHUSfYae_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundE10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2l_17ArrayWindowsInnerB15_Kj2_E11make_window0E0CslLuZgPVt6hg_3ide.exit.i.i15 unwind label %bb.ae, !noalias !2384

bb.ae:                                            ; preds = %_RNCINvMNtNtCshzWfHUSfYae_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundE10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2l_17ArrayWindowsInnerB15_Kj2_E11make_window0E0CslLuZgPVt6hg_3ide.exit.i.i15, %_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit
  %storemerge10.lcssa.i.i14 = phi i64 [ 0, %_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit ], [ 1, %_RNCINvMNtNtCshzWfHUSfYae_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundE10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2l_17ArrayWindowsInnerB15_Kj2_E11make_window0E0CslLuZgPVt6hg_3ide.exit.i.i15 ]
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_5array5GuardNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEECslLuZgPVt6hg_3ide(ptr nonnull align 8 %i.a, i64 %storemerge10.lcssa.i.i14) #34
          to label %common.resume unwind label %bb.af, !noalias !2385

_RNCINvMNtNtCshzWfHUSfYae_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundE10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2l_17ArrayWindowsInnerB15_Kj2_E11make_window0E0CslLuZgPVt6hg_3ide.exit.i.i15: ; preds = %_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit
  store ptr %i.bn, ptr %i.a, align 8, !alias.scope !2383, !noalias !2385
  %i.bp = load i64, ptr %i.au, align 8, !noalias !2384, !noundef !26
  %i.bq = and i64 %i.bp, 1
  %i.br = xor i64 %i.bq, 1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.br
  %i.bt = invoke noundef nonnull ptr @_RNvXskb_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9TypeBoundNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs)
          to label %_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEKj2_NCINvMBJ_BG_10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2T_17ArrayWindowsInnerB1n_KB2m_E11make_window0E0ECslLuZgPVt6hg_3ide.exit16 unwind label %bb.ae, !noalias !2384

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !2384
  unreachable

_RINvNtCshzWfHUSfYae_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundEKj2_NCINvMBJ_BG_10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2T_17ArrayWindowsInnerB1n_KB2m_E11make_window0E0ECslLuZgPVt6hg_3ide.exit16: ; preds = %_RNCINvMNtNtCshzWfHUSfYae_4core3ops9try_traitINtB5_17NeverShortCircuitNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeBoundE10wrap_mut_1jNCNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2l_17ArrayWindowsInnerB15_Kj2_E11make_window0E0CslLuZgPVt6hg_3ide.exit.i.i15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bt, ptr %i.bv, align 8, !alias.scope !2383, !noalias !2385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2382
  br label %bb.u

bb.ag:                                            ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9TypeBoundEEECslLuZgPVt6hg_3ide.exit.i.i
  store ptr null, ptr %0, align 8
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCscFGNKo4Sl5v_9itertools10array_implINtB4_12ArrayWindowsINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB15_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB19_6option6OptionTjyEEEEINtNtNtB17_7sources4once4OnceB3s_EEKj2_ENtNtNtB17_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %1, align 8, !range !29, !noundef !26
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  %i.d = load i64, ptr %2, align 8, !range !39, !alias.scope !2428, !noalias !2427, !noundef !26 ; 3 uses
  %.not.i = icmp eq i64 %i.d, -1
  br i1 %.not.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread63, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %i.f = load i64, ptr %i.e, align 8, !range !39, !alias.scope !2432, !noalias !2433, !noundef !26
  %.not.i.i.i = icmp eq i64 %i.f, -1
  br i1 %.not.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2437, !noalias !2438, !noundef !26
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2439, !noalias !2440, !nonnull !26, !noundef !26 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !2439, !noalias !2440 ; 2 uses
  %i.l = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.j
  br i1 %i.l, label %.thread11.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e
  %i.m = phi ptr [ %i.n, %bb.e ], [ %.promoted.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !2443
  switch i64 %.sroa.0.0.copyload1.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread.a [
    i64 2, label %bb.f
    i64 0, label %bb.e
  ]

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %bb.f, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i
  store ptr %i.n, ptr %i.k, align 8, !alias.scope !2439, !noalias !2440
  br label %.thread11.i.i.i

.thread11.i.i.i:                                  ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionTjyEEENtNtNtB11_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.thread11.i.i._RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i_crit_edge.i unwind label %bb.g, !noalias !2433

.thread11.i.i._RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i_crit_edge.i: ; preds = %.thread11.i.i.i
  %.pre.pre.i = load i64, ptr %2, align 8, !alias.scope !2444, !noalias !2445
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i.i

bb.g:                                             ; preds = %.thread11.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.e, align 8, !alias.scope !2432, !noalias !2433
  resume { ptr, i32 } %i.p

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %.thread11.i.i._RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i_crit_edge.i, %bb.d
  %.pre.i = phi i64 [ %.pre.pre.i, %.thread11.i.i._RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i_crit_edge.i ], [ %i.d, %bb.d ]
  store i64 -1, ptr %i.e, align 8, !alias.scope !2432, !noalias !2433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.thread.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread.a: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i
  %.sroa.9.0..sroa_idx2.le.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.k, align 8, !alias.scope !2439, !noalias !2440
  %i.q = load <2 x i64>, ptr %.sroa.9.0..sroa_idx2.le.i.i.i.i.i.i, align 8, !noalias !2447
  br label %bb.l

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.thread.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i.i, %bb.c
  %.sroa.010.0.copyload = phi i64 [ %i.d, %bb.c ], [ %.pre.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  %.not.i.i.i.i = icmp eq i64 %.sroa.010.0.copyload, 2
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread63, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.thread.i.i
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %3 = load <2 x i64>, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !2449, !noalias !2450
  store i64 0, ptr %2, align 8, !alias.scope !2451, !noalias !2450
  %i.r = trunc nuw i64 %.sroa.010.0.copyload to i1
  br i1 %i.r, label %bb.l, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread63

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RINvNtCscFGNKo4Sl5v_9itertools10next_array10next_arrayINtNtNtNtCshzWfHUSfYae_4core4iter8adapters4fuse4FuseINtNtBV_5chain5ChainINtNtBV_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBZ_6option6OptionTjyEEEEINtNtNtBX_7sources4once4OnceB3y_EEEKj2_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %4)
  %i.s = load i64, ptr %i.a, align 8, !range !29, !noundef !26
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.045.0.copyload = load i64, ptr %i.u, align 8 ; 2 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.446.0.copyload = load i64, ptr %.sroa.446.0..sroa_idx, align 8 ; 2 uses
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.547.0.copyload = load i64, ptr %.sroa.547.0..sroa_idx, align 8 ; 2 uses
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.648.0.copyload = load i64, ptr %.sroa.648.0..sroa_idx, align 8 ; 2 uses
  store i64 1, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.045.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.446.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.547.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sroa.648.0.copyload, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.045.0.copyload, ptr %i.v, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.446.0.copyload, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.547.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.648.0.copyload, ptr %.sroa.621.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ 1, %bb.i ], [ 0, %bb.h ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerTjyEKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread63, %bb.j
  ret void

bb.l:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread.a, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit
  %i.w = phi <2 x i64> [ %i.q, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread.a ], [ %3, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2452, !noundef !26 ; 3 uses
  %i.z = icmp ult i64 %i.y, 2
  br i1 %i.z, label %_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerTjyEKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #33, !noalias !2452
  unreachable

_RNvMNtCscFGNKo4Sl5v_9itertools10array_implINtB2_17ArrayWindowsInnerTjyEKj2_E13add_to_bufferCslLuZgPVt6hg_3ide.exit: ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.y
  store <2 x i64> %i.w, ptr %i.ab, align 8, !alias.scope !2452
  %i.ac = load i64, ptr %i.x, align 8, !alias.scope !2452, !noundef !26
  %i.ad = and i64 %i.ac, 1                        ; 2 uses
  %i.ae = xor i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.x, align 8, !alias.scope !2452
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load <2 x i64>, ptr %i.af, align 8, !noalias !2453
  store <2 x i64> %i.ai, ptr %i.ah, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load <2 x i64>, ptr %i.ag, align 8, !noalias !2453
  store <2 x i64> %i.aj, ptr %.sroa.528.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.k

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit.thread63: ; preds = %bb.b, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionTjyEEEEB2C_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECslLuZgPVt6hg_3ide.exit.thread.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_5chain5ChainINtNtB7_7flatten7FlattenINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionTjyEEEEINtNtNtB9_7sources4once4OnceB2Q_EEEINtB5_8FuseImplBY_E4nextCslLuZgPVt6hg_3ide.exit
  store i64 0, ptr %0, align 8
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCscAsMj0W7j8b_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc4zero5InnerEENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @285, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCscAsMj0W7j8b_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @285, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsax_Cs8Xq8PKFYOms_3hirNtB6_6LayoutNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @288, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @286, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @287)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !26, !align !32, !noundef !26
  %i.d = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @_RNvXsc_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtCsgIpRO4v45SJ_7base_db14SourceDatabase18nonce_and_revision(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !noundef !26
  %i.c = load ptr, ptr %0, align 8, !nonnull !26, !noundef !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load i64, ptr %i.d, align 8, !range !2454, !noundef !26
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %i.e, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsc_NtCscFGNKo4Sl5v_9itertools8ziptupleINtB5_3ZipTINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_EINtNtNtNtB2l_4iter7sources6repeat6RepeatIB2h_mEEIB3F_bEIB3F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEEINtNtB2l_7convert4FromTINtBS_8ArrayVecB1z_KB3A_EB3E_B4q_B4x_EE4fromCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) initializes((0, 169), (176, 184)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load i8, ptr %i.b, align 8, !range !33, !noundef !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !26, !noundef !26
  %i.f = load <2 x i32>, ptr %1, align 8
  store <2 x i32> %i.f, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.e, ptr %.sroa.71.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtCs8K4cjrcxBsw_6hir_ty6layoutNtB5_13RustcFieldIdxNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @289)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtCscFGNKo4Sl5v_9itertools8ziptupleINtB5_3ZipTINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_EINtNtNtNtB2l_4iter7sources6repeat6RepeatIB2h_mEEIB3F_bEIB3F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEENtNtNtB3L_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(184) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %i.d = load i64, ptr %i.a, align 8, !alias.scope !2461, !noalias !2460, !noundef !26 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !2461, !noalias !2460, !noundef !26
  %i.g = zext i32 %i.f to i64
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit

_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit: ; preds = %bb.a
  %i.i = add i64 %i.d, 1
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !2461, !noalias !2460
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.d ; 3 uses
  %.sroa.513.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.513.0.copyload15 = load i32, ptr %.sroa.513.0..sroa_idx14, align 8, !alias.scope !2462 ; 2 uses
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %.not = icmp eq i32 %.sroa.513.0.copyload15, -2
  br i1 %.not, label %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit
  %.val12 = load ptr, ptr %i.c, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val12, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !26 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources6repeatINtB2_6RepeatINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #32
  unreachable

_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources6repeatINtB2_6RepeatINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit: ; preds = %bb.b
  %.val11 = load i8, ptr %i.b, align 8, !range !33, !alias.scope !2463, !noundef !26
  %.val = load i32, ptr %1, align 8, !range !50, !noundef !26 ; 2 uses
  %i.o = trunc nuw i32 %.val to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val10 = load i32, ptr %i.p, align 4
  %spec.select.i.i = select i1 %i.o, i32 %.val10, i32 undef
  %i.q = add nuw i32 %i.m, 1
  store i32 %i.q, ptr %i.l, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx16, i64 20, i1 false)
  store i32 %.val, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %spec.select.i.i, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.513.0.copyload15, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.val11, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.val12, ptr %.sroa.79.0..sroa_idx, align 8
  br label %bb.d

_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread: ; preds = %bb.a, %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit
  store i32 2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources6repeatINtB2_6RepeatINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtB6_6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit, %_RNvXs9_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_ENtNtNtNtB1E_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsd_NtCscFGNKo4Sl5v_9itertools8ziptupleINtB5_3ZipTINtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterTNtNtCs6oosyzwIepl_6ide_db4defs10DefinitionINtNtCshzWfHUSfYae_4core6option6OptionNtCs8Xq8PKFYOms_3hir19GenericSubstitutionEEKj2_EINtNtNtNtB2l_4iter7sources6repeat6RepeatIB2h_mEEIB3F_bEIB3F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEEENtNtNtB3L_6traits8iterator8Iterator9size_hintCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
_RNvNtCscFGNKo4Sl5v_9itertools9size_hint3min.exit16:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !noundef !26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i32, ptr %i.b, align 8, !noundef !26
  %i.c = zext i32 %.val1 to i64
  %i.d = sub i64 %i.c, %.val                      ; 2 uses
  store i64 %i.d, ptr %0, align 8, !alias.scope !2468, !noalias !2469
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.e, align 8, !alias.scope !2468, !noalias !2469
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.f, align 8, !alias.scope !2468, !noalias !2469
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCshzWfHUSfYae_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCshzWfHUSfYae_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtCs8K4cjrcxBsw_6hir_ty6layoutNtB5_11LayoutErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !2470, !noundef !26
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 6)
  switch i64 %i.c, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
end_hunk_0
