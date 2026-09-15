Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.14?download=true
inline.NumInlined: 1166
inline.NumDeleted: 478
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMNtCs2NzvFoTxuAy_2rg8haystackNtB2_15HaystackBuilder17build_from_result:bb.a

.noexc.i:                                         ; preds = %bb.h
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0, !dbg !14600
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1, !dbg !14600
  %i.aj = invoke noundef zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai)
          to label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.i unwind label %bb.j, !dbg !14601, !noalias !14559

bb.i:                                             ; preds = %bb.e
  %.sroa.01.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !14602
  %.sroa.01.0.i.i = load i64, ptr %.sroa.01.0.in.i.i, align 8, !dbg !14602, !alias.scope !14562, !noalias !14559, !noundef !572
  %i.ak = icmp eq i64 %.sroa.01.0.i.i, 0, !dbg !14603
  br i1 %i.ak, label %bb.f, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6.i, !dbg !14603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.av, %bb.as, %bb.ar, %.split.i, %bb.r, %bb.j
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn2.i, %bb.av ], [ %.pn.i, %bb.r ], [ %i.al, %bb.j ], [ %i.ar, %.split.i ], [ %i.cq, %bb.as ], [ %i.cq, %bb.ar ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk8DirEntryECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.m)
          to label %common.resume unwind label %bb.z, !dbg !14604, !noalias !14559

bb.j:                                             ; preds = %bb.au, %bb.ap, %bb.an, %.noexc38.i, %bb.al, %bb.p, %bb.o, %bb.m, %.noexc.i, %bb.h, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i

bb.k:                                             ; preds = %bb.d
  br i1 %i.aa, label %bb.m, label %bb.l, !dbg !14592

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.i, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14605, !noalias !14559
  br label %bb.e, !dbg !14606

bb.m:                                             ; preds = %bb.k
  %i.am = invoke noundef zeroext i1 @_RNvNtCs2NzvFoTxuAy_2rg8messages15ignore_messages()
          to label %bb.n unwind label %bb.j, !dbg !14607, !noalias !14559

bb.n:                                             ; preds = %bb.m
  br i1 %i.am, label %bb.o, label %bb.l, !dbg !14607

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !14608, !noalias !14559
  %i.an = invoke noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
          to label %bb.p unwind label %bb.j, !dbg !14608, !noalias !14559

bb.p:                                             ; preds = %bb.o
  store ptr %i.an, ptr %i.k, align 8, !dbg !14608, !noalias !14559
  %i.ao = invoke noundef nonnull align 8 ptr @_RNvMsa_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %bb.q unwind label %bb.j, !dbg !14609, !noalias !14559 ; 4 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14610, !noalias !14559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14611, !noalias !14559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14612, !noalias !14559
  store ptr @_RNvNvNtNtCsG258MDvU3F_3std2io5stdio6stderr8INSTANCE, ptr %i.i, align 8, !dbg !14613, !noalias !14559
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMsk_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.s unwind label %.split.thread.i, !dbg !14614, !noalias !14559

.split.thread.i:                                  ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !14615

bb.r:                                             ; preds = %bb.t
  br i1 %.sroa.05.2.i, label %bb.av, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i, !dbg !14615

.split.i:                                         ; preds = %bb.ah
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i, !dbg !14615

bb.s:                                             ; preds = %bb.q
  store ptr %i.ap, ptr %i.j, align 8, !dbg !14612, !noalias !14559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14616, !noalias !14559
  %i.as = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 9 to ptr))
          to label %bb.v unwind label %bb.u, !dbg !14617, !noalias !14559 ; 3 uses

bb.t:                                             ; preds = %bb.af, %bb.y, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.aw, %bb.y ], [ %i.bh, %bb.af ], [ %i.at, %bb.u ] ; 2 uses
  %.sroa.05.2.i = phi i1 [ true, %bb.y ], [ true, %bb.af ], [ %.sroa.05.3.i, %bb.u ], !dbg !14618
  %.val29.i = load ptr, ptr %i.j, align 8, !dbg !14619, !noalias !14559, !nonnull !572, !align !698, !noundef !572
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg(ptr nonnull %.val29.i) #33
          to label %bb.r unwind label %bb.z, !dbg !14619, !noalias !14559

bb.u:                                             ; preds = %bb.ae, %bb.x, %bb.s
  %.sroa.05.3.i = phi i1 [ false, %bb.ae ], [ true, %bb.x ], [ true, %bb.s ], !dbg !14618
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  %.not22.i = icmp eq ptr %i.as, null, !dbg !14617
  br i1 %.not22.i, label %bb.x, label %bb.w, !dbg !14620

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14621, !noalias !14559
  store ptr %i.as, ptr %i.h, align 8, !dbg !14621, !noalias !14559
  %i.au = invoke fastcc noundef i8 @_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind(ptr nonnull %i.as)
          to label %.invoke.i unwind label %bb.y, !dbg !14622, !noalias !14559

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14623, !noalias !14559
  store ptr %i.l, ptr %i.g, align 8, !dbg !14623, !noalias !14559
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14623
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtCsc0anycpf6TS_6ignore5ErrorNtB6_7Display3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.48.0..sroa_idx.i, align 8, !dbg !14623, !noalias !14559
  %i.av = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @46, ptr noundef nonnull %i.g)
          to label %bb.aa unwind label %bb.u, !dbg !14624, !noalias !14559 ; 3 uses

bb.y:                                             ; preds = %.invoke.i, %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #33
          to label %bb.t unwind label %bb.z, !dbg !14625, !noalias !14559

.invoke.i:                                        ; preds = %bb.w
  %i.ax = icmp eq i8 %i.au, 11, !dbg !14626
  %..i = select i1 %i.ax, i32 0, i32 2, !dbg !14627
  invoke void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef %..i) #35
          to label %.cont.i unwind label %bb.y, !dbg !14627, !noalias !14559

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.z:                                             ; preds = %bb.av, %bb.as, %bb.af, %bb.y, %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !dbg !14628, !noalias !14559
  unreachable, !dbg !14628

bb.aa:                                            ; preds = %bb.x
  %.not23.i = icmp eq ptr %i.av, null, !dbg !14624
  br i1 %.not23.i, label %bb.ac, label %bb.ab, !dbg !14629

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14630, !noalias !14559
  store ptr %i.av, ptr %i.f, align 8, !dbg !14630, !noalias !14559
  %i.az = invoke fastcc noundef i8 @_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind(ptr nonnull %i.av)
          to label %.invoke17.i unwind label %bb.af, !dbg !14631, !noalias !14559

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14632, !noalias !14559
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 12, !dbg !14633 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !dbg !14634, !noalias !14559, !noundef !572
  %i.bc = add i32 %i.bb, -1, !dbg !14634          ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !dbg !14634, !noalias !14559
  %i.bd = icmp eq i32 %i.bc, 0, !dbg !14635
  br i1 %i.bd, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.i, !dbg !14635

bb.ad:                                            ; preds = %bb.ac
  store atomic i64 0, ptr %i.ao monotonic, align 8, !dbg !14636, !noalias !14559
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !14637 ; 2 uses
  %i.bf = atomicrmw xchg ptr %i.be, i32 0 release, align 4, !dbg !14638, !noalias !14559
  %i.bg = icmp eq i32 %i.bf, 2, !dbg !14639
  br i1 %i.bg, label %bb.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.i, !dbg !14639, !prof !589

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.be)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.u, !dbg !14640, !noalias !14559

bb.af:                                            ; preds = %.invoke17.i, %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #33
          to label %bb.t unwind label %bb.z, !dbg !14632, !noalias !14559

.invoke17.i:                                      ; preds = %bb.ab
  %i.bi = icmp eq i8 %i.az, 11, !dbg !14641
  %.19.i = select i1 %i.bi, i32 0, i32 2, !dbg !14642
  invoke void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef %.19.i) #35
          to label %.cont18.i unwind label %bb.af, !dbg !14642, !noalias !14559

.cont18.i:                                        ; preds = %.invoke17.i
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.val28.i = load ptr, ptr %i.j, align 8, !dbg !14619, !noalias !14559, !nonnull !572, !align !698, !noundef !572 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val28.i, i64 12, !dbg !14643 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !dbg !14644, !noalias !14559, !noundef !572
  %i.bl = add i32 %i.bk, -1, !dbg !14644          ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !dbg !14644, !noalias !14559
  %i.bm = icmp eq i32 %i.bl, 0, !dbg !14645
  br i1 %i.bm, label %bb.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.i, !dbg !14645

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.i
  store atomic i64 0, ptr %.val28.i monotonic, align 8, !dbg !14646, !noalias !14559
  %i.bn = getelementptr inbounds nuw i8, ptr %.val28.i, i64 8, !dbg !14647 ; 2 uses
  %i.bo = atomicrmw xchg ptr %i.bn, i32 0 release, align 4, !dbg !14648, !noalias !14559
  %i.bp = icmp eq i32 %i.bo, 2, !dbg !14649
  br i1 %i.bp, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.i, !dbg !14649, !prof !589

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.i unwind label %.split.i, !dbg !14650, !noalias !14559

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.ah, %bb.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14619, !noalias !14559
  br label %bb.l, !dbg !14651

_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.i: ; preds = %.noexc.i
  br i1 %i.aj, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit._RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6_crit_edge.i, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread.i, !dbg !14652

_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit._RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6_crit_edge.i: ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.i
  %.val32.pre.i = load i64, ptr %i.m, align 8, !dbg !14653, !range !673, !noalias !14559
  %2 = icmp ne i64 %.val32.pre.i, 0, !dbg !14654
  br label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6.i, !dbg !14652

_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread.i: ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.i, %bb.g, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.m, i64 120, i1 false), !dbg !14655, !noalias !14565
  br label %_RNvMNtCs2NzvFoTxuAy_2rg8haystackNtB2_15HaystackBuilder5build.exit, !dbg !14656

_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6.i: ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit._RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6_crit_edge.i, %bb.i, %bb.f
  %.val32.i = phi i1 [ %2, %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit._RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6_crit_edge.i ], [ true, %bb.f ], [ true, %bb.i ], !dbg !14653 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !14653 ; 2 uses
  %.val33.i = load i32, ptr %i.bq, align 8, !dbg !14653, !noalias !14559
  %i.br = and i32 %.val33.i, 61440, !dbg !14657   ; 3 uses
  %i.bs = icmp eq i32 %i.br, 32768, !dbg !14657
  %.sroa.02.0.i.i.i = select i1 %.val32.i, i1 %i.bs, i1 false, !dbg !14657
  br i1 %.sroa.02.0.i.i.i, label %bb.am, label %bb.ai, !dbg !14658

bb.ai:                                            ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6.i
  br i1 %.val32.i, label %bb.aj, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread.i, !dbg !14659

bb.aj:                                            ; preds = %bb.ai
  %i.bt = icmp eq i32 %i.br, 16384, !dbg !14660
  br i1 %i.bt, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread9.i, label %bb.ak, !dbg !14661

bb.ak:                                            ; preds = %bb.aj
  %i.bu = icmp eq i32 %i.br, 40960, !dbg !14662
  %.sroa.02.0.in.old.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %.sroa.02.0.old.i.i = load i8, ptr %.sroa.02.0.in.old.i.i, align 4, !range !699, !alias.scope !14567, !noalias !14559
  %.old.i.i = trunc nuw i8 %.sroa.02.0.old.i.i to i1
  %or.cond3.i.i = select i1 %i.bu, i1 true, i1 %.old.i.i, !dbg !14662
  br i1 %or.cond3.i.i, label %bb.al, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread.i, !dbg !14662

bb.al:                                            ; preds = %bb.ak
  %i.bv = invoke { ptr, i64 } @_RNvMNtCsc0anycpf6TS_6ignore4walkNtB2_8DirEntry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m)
          to label %.noexc38.i unwind label %bb.j, !dbg !14663, !noalias !14559 ; 2 uses

.noexc38.i:                                       ; preds = %bb.al
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0, !dbg !14663
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1, !dbg !14663
  %i.by = invoke noundef zeroext i1 @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bx)
          to label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.i unwind label %bb.j, !dbg !14664, !noalias !14559

bb.am:                                            ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.m, i64 120, i1 false), !dbg !14665, !noalias !14565
  br label %_RNvMNtCs2NzvFoTxuAy_2rg8haystackNtB2_15HaystackBuilder5build.exit, !dbg !14656

_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.i: ; preds = %.noexc38.i
  br i1 %i.by, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread9.i, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread.i, !dbg !14666

_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread.i: ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.i, %bb.ak, %bb.ai
  %i.bz = load atomic i64, ptr @_RNvCs40PPaThNnQP_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !dbg !14667, !noalias !14559 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 6, !dbg !14668
  call void @llvm.assume(i1 %i.ca), !dbg !14668
  %i.cb = icmp samesign ugt i64 %i.bz, 3, !dbg !14669
  br i1 %i.cb, label %bb.an, label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread9.i, !dbg !14670

bb.an:                                            ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14671, !noalias !14559
  %i.cc = invoke { ptr, i64 } @_RNvMNtCsc0anycpf6TS_6ignore4walkNtB2_8DirEntry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.m)
          to label %bb.ao unwind label %bb.j, !dbg !14672, !noalias !14559 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.cd = extractvalue { ptr, i64 } %i.cc, 0, !dbg !14671
  %i.ce = extractvalue { ptr, i64 } %i.cc, 1, !dbg !14671
  store ptr %i.cd, ptr %i.e, align 8, !dbg !14673, !noalias !14559
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14673
  store i64 %i.ce, ptr %i.cf, align 8, !dbg !14673, !noalias !14559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14674, !noalias !14559
  %i.cg = load i64, ptr %i.m, align 8, !dbg !14675, !range !673, !noalias !14559, !noundef !572
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !14676
  br i1 %i.ch, label %bb.ap, label %.sink.split.i, !dbg !14676

.sink.split.i:                                    ; preds = %bb.ao
  %i.ci = load i32, ptr %i.bq, align 8, !dbg !14677, !noalias !14559, !noundef !572
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !14677
  store i32 %i.ci, ptr %i.cj, align 4, !dbg !14677, !noalias !14559
  br label %bb.ap, !dbg !14677

bb.ap:                                            ; preds = %.sink.split.i, %bb.ao
  %.sink.i = phi i32 [ 0, %bb.ao ], [ 1, %.sink.split.i ]
  store i32 %.sink.i, ptr %i.d, align 4, !dbg !14677, !noalias !14559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14678, !noalias !14559
  invoke void @_RNvMNtCsc0anycpf6TS_6ignore4walkNtB2_8DirEntry8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.m)
          to label %bb.aq unwind label %bb.j, !dbg !14679, !noalias !14559

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14680, !noalias !14559
  store ptr %i.e, ptr %i.b, align 8, !dbg !14680, !noalias !14559
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14680
  store ptr @_RNvXs1b_NtCsG258MDvU3F_3std4pathNtB6_7DisplayNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i, align 8, !dbg !14680, !noalias !14559
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !14680
  store ptr %i.d, ptr %i.ck, align 8, !dbg !14680, !noalias !14559
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14680
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std2fs8FileTypeENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.416.0..sroa_idx.i, align 8, !dbg !14680, !noalias !14559
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !14680
  store ptr %i.c, ptr %i.cl, align 8, !dbg !14680, !noalias !14559
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !14680
  store ptr @_RNvXst_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorENtNtB7_3fmt5Debug3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !14680, !noalias !14559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14670, !noalias !14559
  store ptr @50, ptr %i.a, align 8, !dbg !14670, !noalias !14559
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14670
  store i64 12, ptr %i.cm, align 8, !dbg !14670, !noalias !14559
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14670
  store ptr @50, ptr %i.cn, align 8, !dbg !14670, !noalias !14559
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14670
  store i64 12, ptr %i.co, align 8, !dbg !14670, !noalias !14559
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14670
  store ptr @49, ptr %i.cp, align 8, !dbg !14670, !noalias !14559
  invoke void @_RINvNtCs40PPaThNnQP_3log13___private_api3loguNtB2_12GlobalLoggerECs2NzvFoTxuAy_2rg(ptr noundef nonnull @47, ptr noundef nonnull %i.b, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %bb.at unwind label %bb.ar, !dbg !14670, !noalias !14559

bb.ar:                                            ; preds = %bb.aq
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load i64, ptr %i.c, align 8, !dbg !14681, !range !673, !alias.scope !14575, !noalias !14559, !noundef !572
  %.not.i.i = icmp eq i64 %i.cr, 2, !dbg !14681
  br i1 %.not.i.i, label %bb.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i, !dbg !14681

bb.as:                                            ; preds = %bb.ar
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14681
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.cs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.z, !dbg !14681, !noalias !14559

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14670, !noalias !14559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14670, !noalias !14559
  %i.ct = load i64, ptr %i.c, align 8, !dbg !14682, !range !673, !alias.scope !14576, !noalias !14559, !noundef !572
  %.not.i42.i = icmp eq i64 %i.ct, 2, !dbg !14682
  br i1 %.not.i42.i, label %bb.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit44.i, !dbg !14682

bb.au:                                            ; preds = %bb.at
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !14682
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.cu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit44.i unwind label %bb.j, !dbg !14682, !noalias !14559

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit44.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14670, !noalias !14559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14670, !noalias !14559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14670, !noalias !14559
  br label %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread9.i, !dbg !14670

_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread9.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit44.i, %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread.i, %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.i, %bb.aj
  store i64 -1, ptr %0, align 8, !dbg !14683, !alias.scope !14558, !noalias !14565
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk8DirEntryECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.m), !dbg !14684, !noalias !14559
  br label %_RNvMNtCs2NzvFoTxuAy_2rg8haystackNtB2_15HaystackBuilder5build.exit, !dbg !14685

bb.av:                                            ; preds = %bb.r, %.split.thread.i
  %.pn.pn2.i = phi { ptr, i32 } [ %i.aq, %.split.thread.i ], [ %.pn.i, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg(ptr nonnull %i.ao) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i unwind label %bb.z, !dbg !14615, !noalias !14559

common.resume:                                    ; preds = %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg.exit.i ], [ %.pn.pn.pn, %bb.ax ]
  resume { ptr, i32 } %common.resume.op, !dbg !14686

_RNvMNtCs2NzvFoTxuAy_2rg8haystackNtB2_15HaystackBuilder5build.exit: ; preds = %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit.exit.thread.i, %bb.am, %_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir.exit.thread9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !14685, !noalias !14559
  br label %bb.aw, !dbg !14687

bb.aw:                                            ; preds = %bb.bb, %_RNvMNtCs2NzvFoTxuAy_2rg8haystackNtB2_15HaystackBuilder5build.exit
  ret void, !dbg !14688

bb.ax:                                            ; preds = %.split, %bb.bw, %bb.bf, %bb.ay
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn2, %bb.bw ], [ %.pn, %bb.bf ], [ %i.cv, %bb.ay ], [ %i.db, %.split ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t) #33
          to label %common.resume unwind label %bb.bn, !dbg !14689

bb.ay:                                            ; preds = %bb.bd, %bb.bc, %bb.az, %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %bb.b
  %i.cw = invoke noundef zeroext i1 @_RNvNtCs2NzvFoTxuAy_2rg8messages8messages()
          to label %bb.ba unwind label %bb.ay, !dbg !14690

bb.ba:                                            ; preds = %bb.az
  br i1 %i.cw, label %bb.bc, label %bb.bb, !dbg !14690

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg.exit, %bb.ba
  store i64 -1, ptr %0, align 8, !dbg !14691
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t), !dbg !14689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !14689
  br label %bb.aw, !dbg !14689

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !14692
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
          to label %bb.bd unwind label %bb.ay, !dbg !14692

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.cx, ptr %i.s, align 8, !dbg !14692
  %i.cy = invoke noundef nonnull align 8 ptr @_RNvMsa_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %bb.be unwind label %bb.ay, !dbg !14693 ; 4 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !14694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !14695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !14577
  store ptr @_RNvNvNtNtCsG258MDvU3F_3std2io5stdio6stderr8INSTANCE, ptr %i.q, align 8, !dbg !14696
  %i.cz = invoke noundef nonnull align 8 ptr @_RNvMsk_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.bg unwind label %.split.thread, !dbg !14697

.split.thread:                                    ; preds = %bb.be
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw, !dbg !14698

bb.bf:                                            ; preds = %bb.bh
  br i1 %.sroa.04.2, label %bb.bw, label %bb.ax, !dbg !14698

.split:                                           ; preds = %bb.bv
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !14698

bb.bg:                                            ; preds = %bb.be
  store ptr %i.cz, ptr %i.r, align 8, !dbg !14577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14699
  %i.dc = invoke noundef ptr @_RNvYNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @27, ptr noundef nonnull inttoptr (i64 9 to ptr))
          to label %bb.bj unwind label %bb.bi, !dbg !14700 ; 3 uses

bb.bh:                                            ; preds = %bb.bt, %bb.bm, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.bm ], [ %i.dr, %bb.bt ], [ %i.dd, %bb.bi ] ; 2 uses
  %.sroa.04.2 = phi i1 [ true, %bb.bm ], [ true, %bb.bt ], [ %.sroa.04.3, %bb.bi ], !dbg !14701
  %.val15 = load ptr, ptr %i.r, align 8, !dbg !14702, !nonnull !572, !align !698, !noundef !572
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs2NzvFoTxuAy_2rg(ptr nonnull %.val15) #33
          to label %bb.bf unwind label %bb.bn, !dbg !14702

bb.bi:                                            ; preds = %bb.bs, %bb.bl, %bb.bg
  %.sroa.04.3 = phi i1 [ false, %bb.bs ], [ true, %bb.bl ], [ true, %bb.bg ], !dbg !14701
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bj:                                            ; preds = %bb.bg
  %.not = icmp eq ptr %i.dc, null, !dbg !14700
  br i1 %.not, label %bb.bl, label %bb.bk, !dbg !14703

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14704
  store ptr %i.dc, ptr %i.p, align 8, !dbg !14704
  %i.de = invoke fastcc noundef i8 @_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind(ptr nonnull %i.dc)
          to label %.invoke unwind label %bb.bm, !dbg !14705

end_hunk_0
begin_hunk_1_@llvm.umin.i32
!14454 = distinct !DILocation(line: 1049, column: 1, scope: !14452, inlinedAt: !14453)
!14455 = distinct !DILocation(line: 848, column: 1, scope: !319, inlinedAt: !14454)
!14456 = distinct !DILocation(line: 848, column: 1, scope: !322, inlinedAt: !14455)
!14457 = distinct !DILocation(line: 422, column: 35, scope: !321, inlinedAt: !14456)
!14458 = distinct !DILocation(line: 424, column: 33, scope: !321, inlinedAt: !14456)
!14459 = distinct !DILocation(line: 109, column: 24, scope: !325, inlinedAt: !14458)
!14460 = distinct !DILocation(line: 2951, column: 26, scope: !323, inlinedAt: !14459)
!14461 = distinct !DILocation(line: 425, column: 33, scope: !321, inlinedAt: !14456)
!14462 = distinct !DILocation(line: 90, column: 23, scope: !328, inlinedAt: !14461)
!14463 = distinct !DILocation(line: 2982, column: 26, scope: !327, inlinedAt: !14462)
!14464 = distinct !DILexicalBlock(scope: !14448, file: !682, line: 764, column: 45)
!14465 = distinct !DILexicalBlock(scope: !14464, file: !682, line: 764, column: 45)
!14466 = distinct !DILocation(line: 58, column: 20, scope: !14446, inlinedAt: !14414)
!14467 = distinct !DILocation(line: 65, column: 9, scope: !14441, inlinedAt: !14414)
!14468 = distinct !DILocation(line: 848, column: 1, scope: !308, inlinedAt: !14467)
!14469 = distinct !DILocation(line: 848, column: 1, scope: !311, inlinedAt: !14468)
!14470 = distinct !DILocation(line: 422, column: 35, scope: !310, inlinedAt: !14469)
!14471 = distinct !DILocation(line: 424, column: 33, scope: !310, inlinedAt: !14469)
!14472 = distinct !DILocation(line: 109, column: 24, scope: !315, inlinedAt: !14471)
!14473 = distinct !DILocation(line: 2951, column: 26, scope: !313, inlinedAt: !14472)
!14474 = distinct !DILocation(line: 425, column: 33, scope: !310, inlinedAt: !14469)
!14475 = distinct !DILocation(line: 90, column: 23, scope: !318, inlinedAt: !14474)
!14476 = distinct !DILocation(line: 2982, column: 26, scope: !317, inlinedAt: !14475)
!14477 = distinct !DISubprogram(name: "file_type", linkageName: "_RNvMs_NtCsc0anycpf6TS_6ignore4walkNtB4_13DirEntryInner9file_type", scope: !868, file: !590, line: 190, type: !573, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14478 = distinct !DISubprogram(name: "file_type", linkageName: "_RNvMNtCsc0anycpf6TS_6ignore4walkNtB2_8DirEntry9file_type", scope: !867, file: !590, line: 67, type: !573, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14479 = distinct !DISubprogram(name: "is_file", linkageName: "_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack7is_file", scope: !869, file: !857, line: 157, type: !574, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14480 = distinct !DILocation(line: 63, column: 16, scope: !14417, inlinedAt: !14414)
!14481 = distinct !DILocation(line: 158, column: 19, scope: !14479, inlinedAt: !14480)
!14482 = distinct !DILocation(line: 68, column: 19, scope: !14478, inlinedAt: !14481)
!14483 = distinct !DISubprogram(name: "map_or<std::fs::FileType, bool, rg::haystack::{impl#1}::is_file::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtCsG258MDvU3F_3std2fs8FileTypeE6map_orbNCNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB1v_8Haystack7is_file0EB1x_", scope: !607, file: !605, line: 1224, type: !573, scopeLine: 1224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14484 = distinct !DILocation(line: 158, column: 31, scope: !14479, inlinedAt: !14480)
!14485 = distinct !DILocation(line: 69, column: 17, scope: !14417, inlinedAt: !14414)
!14486 = distinct !DILocation(line: 144, column: 34, scope: !427, inlinedAt: !14485)
!14487 = distinct !DILocation(line: 68, column: 19, scope: !426, inlinedAt: !14486)
!14488 = distinct !DILocation(line: 148, column: 15, scope: !432, inlinedAt: !14485)
!14489 = distinct !DILocation(line: 2617, column: 16, scope: !431, inlinedAt: !14488)
!14490 = distinct !DILocation(line: 752, column: 14, scope: !430, inlinedAt: !14489)
!14491 = distinct !DILocation(line: 153, column: 19, scope: !432, inlinedAt: !14485)
!14492 = distinct !DILocation(line: 49, column: 19, scope: !434, inlinedAt: !14491)
!14493 = distinct !{!14493, !"_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir"}
!14494 = distinct !{!14494, !14493, !"_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack6is_dir: argument 0"}
!14495 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs16_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !649, file: !646, line: 2919, type: !573, scopeLine: 2919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14496 = distinct !DISubprogram(name: "max_level", linkageName: "_RNvCs40PPaThNnQP_3log9max_level", scope: !878, file: !877, line: 1422, type: !573, scopeLine: 1422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14497 = distinct !DILexicalBlock(scope: !14417, file: !879, line: 136, column: 9)
!14498 = distinct !DILocation(line: 70, column: 13, scope: !14569, inlinedAt: !14414)
!14499 = distinct !DILocation(line: 1429, column: 50, scope: !14496, inlinedAt: !14498)
!14500 = distinct !DILocation(line: 2921, column: 26, scope: !14495, inlinedAt: !14499)
!14501 = distinct !DISubprogram(name: "is_le", linkageName: "_RNvMNtCskKLDkoKarTP_4core3cmpNtB2_8Ordering5is_le", scope: !831, file: !736, line: 531, type: !573, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14502 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCskKLDkoKarTP_4core3cmpNtB5_8Ordering5is_leINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCs2NzvFoTxuAy_2rg", scope: !834, file: !832, line: 250, type: !573, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14503 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_leECs2NzvFoTxuAy_2rg", scope: !607, file: !605, line: 659, type: !573, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14504 = distinct !DILexicalBlock(scope: !14503, file: !605, line: 662, column: 13)
!14505 = distinct !DISubprogram(name: "le<log::Level, log::LevelFilter>", linkageName: "_RNvYNtCs40PPaThNnQP_3log5LevelINtNtCskKLDkoKarTP_4core3cmp10PartialOrdNtB4_11LevelFilterE2leCs2NzvFoTxuAy_2rg", scope: !830, file: !736, line: 1488, type: !573, scopeLine: 1488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14506 = distinct !DILocation(line: 70, column: 13, scope: !14573, inlinedAt: !14414)
!14507 = distinct !DILocation(line: 1489, column: 33, scope: !14572, inlinedAt: !14506)
!14508 = distinct !DILocation(line: 662, column: 24, scope: !14571, inlinedAt: !14507)
!14509 = distinct !DILocation(line: 250, column: 5, scope: !14570, inlinedAt: !14508)
!14510 = distinct !DISubprogram(name: "display", linkageName: "_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path7display", scope: !599, file: !597, line: 3304, type: !573, scopeLine: 3304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14511 = distinct !DILocation(line: 73, column: 33, scope: !14568, inlinedAt: !14414)
!14512 = distinct !DISubprogram(name: "file_type", linkageName: "_RNvMs_NtCsc0anycpf6TS_6ignore4walkNtB4_13DirEntryInner9file_type", scope: !868, file: !590, line: 190, type: !573, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14513 = distinct !DISubprogram(name: "file_type", linkageName: "_RNvMNtCsc0anycpf6TS_6ignore4walkNtB2_8DirEntry9file_type", scope: !867, file: !590, line: 67, type: !573, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14514 = distinct !DILocation(line: 74, column: 26, scope: !14568, inlinedAt: !14414)
!14515 = distinct !DILocation(line: 68, column: 19, scope: !14513, inlinedAt: !14514)
!14516 = distinct !DILexicalBlock(scope: !14497, file: !879, line: 140, column: 17)
!14517 = distinct !{!14517, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg"}
!14518 = distinct !{!14518, !14517, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg: argument 0"}
!14519 = distinct !DISubprogram(name: "drop_glue<core::result::Result<std::fs::Metadata, ignore::Error>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg", scope: !578, file: !637, line: 848, type: !573, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14520 = distinct !DILocation(line: 70, column: 13, scope: !14568, inlinedAt: !14414)
!14521 = distinct !{!14521, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg"}
!14522 = distinct !{!14522, !14521, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs8MetadataNtCsc0anycpf6TS_6ignore5ErrorEECs2NzvFoTxuAy_2rg: argument 0"}
!14523 = distinct !DILocation(line: 70, column: 13, scope: !14568, inlinedAt: !14414)
!14524 = distinct !DILocation(line: 79, column: 5, scope: !14413, inlinedAt: !14414)
!14525 = distinct !DILexicalBlock(scope: !14408, file: !786, line: 42, column: 13)
!14526 = distinct !DISubprogram(name: "stderr", linkageName: "_RNvNtNtCsG258MDvU3F_3std2io5stdio6stderr", scope: !799, file: !797, line: 968, type: !573, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14527 = distinct !DILexicalBlock(scope: !14525, file: !786, line: 43, column: 13)
!14528 = distinct !DILexicalBlock(scope: !14527, file: !786, line: 50, column: 54)
!14529 = distinct !DILexicalBlock(scope: !14527, file: !786, line: 57, column: 57)
!14530 = distinct !DILexicalBlock(scope: !14529, file: !800, line: 652, column: 24)
!14531 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXss_NtNtCskKLDkoKarTP_4core2io5errorNtB5_9ErrorKindNtNtB9_3cmp9PartialEq2eq", scope: !796, file: !682, line: 764, type: !573, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14532 = distinct !DILexicalBlock(scope: !14531, file: !682, line: 764, column: 45)
!14533 = distinct !DILexicalBlock(scope: !14532, file: !682, line: 764, column: 45)
!14534 = distinct !DISubprogram(name: "drop<std::io::stdio::StdoutLock>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem4dropNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs2NzvFoTxuAy_2rg", scope: !588, file: !587, line: 1045, type: !573, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14535 = distinct !DILocation(line: 1049, column: 1, scope: !14534, inlinedAt: !14580)
!14536 = distinct !DILocation(line: 848, column: 1, scope: !319, inlinedAt: !14535)
!14537 = distinct !DILocation(line: 848, column: 1, scope: !322, inlinedAt: !14536)
!14538 = distinct !DILocation(line: 422, column: 35, scope: !321, inlinedAt: !14537)
!14539 = distinct !DILocation(line: 424, column: 33, scope: !321, inlinedAt: !14537)
!14540 = distinct !DILocation(line: 109, column: 24, scope: !325, inlinedAt: !14539)
!14541 = distinct !DILocation(line: 2951, column: 26, scope: !323, inlinedAt: !14540)
!14542 = distinct !DILocation(line: 425, column: 33, scope: !321, inlinedAt: !14537)
!14543 = distinct !DILocation(line: 90, column: 23, scope: !328, inlinedAt: !14542)
!14544 = distinct !DILocation(line: 2982, column: 26, scope: !327, inlinedAt: !14543)
!14545 = distinct !DILexicalBlock(scope: !14531, file: !682, line: 764, column: 45)
!14546 = distinct !DILexicalBlock(scope: !14545, file: !682, line: 764, column: 45)
!14547 = distinct !DILocation(line: 65, column: 9, scope: !14525)
!14548 = distinct !DILocation(line: 848, column: 1, scope: !308, inlinedAt: !14547)
!14549 = distinct !DILocation(line: 848, column: 1, scope: !311, inlinedAt: !14548)
!14550 = distinct !DILocation(line: 422, column: 35, scope: !310, inlinedAt: !14549)
!14551 = distinct !DILocation(line: 424, column: 33, scope: !310, inlinedAt: !14549)
!14552 = distinct !DILocation(line: 109, column: 24, scope: !315, inlinedAt: !14551)
!14553 = distinct !DILocation(line: 2951, column: 26, scope: !313, inlinedAt: !14552)
!14554 = distinct !DILocation(line: 425, column: 33, scope: !310, inlinedAt: !14549)
!14555 = distinct !DILocation(line: 90, column: 23, scope: !318, inlinedAt: !14554)
!14556 = distinct !DILocation(line: 2982, column: 26, scope: !317, inlinedAt: !14555)
!14557 = !DILexicalBlockFile(scope: !14408, file: !786, discriminator: 0)
!14558 = !{!14410}
!14559 = !{!14410, !14412}
!14560 = !{!"address", !"read_provenance"}
!14561 = !DILexicalBlockFile(scope: !14418, file: !786, discriminator: 0)
!14562 = !{!14422}
!14563 = !{!14431, !14422}
!14564 = !DILexicalBlockFile(scope: !14447, file: !786, discriminator: 0)
!14565 = !{!14412}
!14566 = !DILexicalBlockFile(scope: !14417, file: !743, discriminator: 0)
!14567 = !{!14494}
!14568 = !DILexicalBlockFile(scope: !14497, file: !857, discriminator: 0)
!14569 = !DILexicalBlockFile(scope: !14568, file: !857, discriminator: 2)
!14570 = !DILexicalBlockFile(scope: !14502, file: !832, discriminator: 2)
!14571 = !DILexicalBlockFile(scope: !14504, file: !605, discriminator: 2)
!14572 = !DILexicalBlockFile(scope: !14505, file: !736, discriminator: 2)
!14573 = !DILexicalBlockFile(scope: !14568, file: !857, discriminator: 4)
!14574 = !DILexicalBlockFile(scope: !14516, file: !857, discriminator: 0)
!14575 = !{!14518}
!14576 = !{!14522}
!14577 = !DILocation(line: 43, column: 30, scope: !14525)
!14578 = !DILexicalBlockFile(scope: !14530, file: !786, discriminator: 0)
!14579 = !DILocation(line: 51, column: 20, scope: !14528)
!14580 = !DILocation(line: 64, column: 13, scope: !14527)
!14581 = !DILocation(line: 58, column: 20, scope: !14529)
!14582 = !DILocation(line: 35, column: 15, scope: !14407)
!14583 = !DILocation(line: 35, column: 9, scope: !14407)
!14584 = !DILocation(line: 37, column: 17, scope: !14407)
!14585 = !DILocation(line: 84, column: 9, scope: !14557)
!14586 = !DILocation(line: 36, column: 30, scope: !14411)
!14587 = !DILocation(line: 50, column: 13, scope: !14413, inlinedAt: !14414)
!14588 = !DILocation(line: 50, column: 19, scope: !14413, inlinedAt: !14414)
!14589 = !DILocation(line: 744, column: 15, scope: !14415, inlinedAt: !14420)
!14590 = !DILocation(line: 744, column: 9, scope: !14415, inlinedAt: !14420)
!14591 = !DILocation(line: 51, column: 21, scope: !14418, inlinedAt: !14414)
!14592 = !DILocation(line: 94, column: 12, scope: !14561, inlinedAt: !14414)
!14593 = !DILocation(line: 165, column: 15, scope: !421, inlinedAt: !14426)
!14594 = !DILocation(line: 138, column: 9, scope: !424, inlinedAt: !14423)
!14595 = !DILocation(line: 0, scope: !425, inlinedAt: !14429)
!14596 = !DILocation(line: 766, column: 9, scope: !428, inlinedAt: !14435)
!14597 = !DILocation(line: 762, column: 9, scope: !429, inlinedAt: !14434)
!14598 = !DILocation(line: 148, column: 12, scope: !432, inlinedAt: !14427)
!14599 = !DILocation(line: 0, scope: !433, inlinedAt: !14437)
!14600 = !DILocation(line: 153, column: 50, scope: !432, inlinedAt: !14427)
!14601 = !DILocation(line: 153, column: 57, scope: !432, inlinedAt: !14427)
!14602 = !DILocation(line: 0, scope: !435, inlinedAt: !14439)
!14603 = !DILocation(line: 138, column: 29, scope: !424, inlinedAt: !14423)
!14604 = !DILocation(line: 848, column: 1, scope: !367, inlinedAt: !14440)
!14605 = !DILocation(line: 53, column: 9, scope: !14417, inlinedAt: !14414)
!14606 = !DILocation(line: 51, column: 9, scope: !14417, inlinedAt: !14414)
!14607 = !DILocation(line: 94, column: 43, scope: !14561, inlinedAt: !14414)
!14608 = !DILocation(line: 42, column: 26, scope: !14561, inlinedAt: !14414)
!14609 = !DILocation(line: 42, column: 44, scope: !14561, inlinedAt: !14414)
!14610 = !DILocation(line: 42, column: 50, scope: !14561, inlinedAt: !14414)
!14611 = !DILocation(line: 43, column: 17, scope: !14441, inlinedAt: !14414)
!14612 = !DILocation(line: 43, column: 30, scope: !14441, inlinedAt: !14414)
!14613 = !DILocation(line: 975, column: 5, scope: !14442, inlinedAt: !14443)
!14614 = !DILocation(line: 43, column: 48, scope: !14441, inlinedAt: !14414)
!14615 = !DILocation(line: 65, column: 9, scope: !14561, inlinedAt: !14414)
!14616 = !DILocation(line: 43, column: 54, scope: !14441, inlinedAt: !14414)
!14617 = !DILocation(line: 50, column: 31, scope: !14445, inlinedAt: !14414)
!14618 = !DILocation(line: 51, column: 45, scope: !14418, inlinedAt: !14414)
!14619 = !DILocation(line: 65, column: 9, scope: !14441, inlinedAt: !14414)
!14620 = !DILocation(line: 50, column: 20, scope: !14445, inlinedAt: !14414)
!14621 = !DILocation(line: 50, column: 24, scope: !14445, inlinedAt: !14414)
!14622 = !DILocation(line: 51, column: 24, scope: !14445, inlinedAt: !14414)
!14623 = !DILocation(line: 57, column: 31, scope: !14564, inlinedAt: !14414)
!14624 = !DILocation(line: 57, column: 31, scope: !14446, inlinedAt: !14414)
!14625 = !DILocation(line: 56, column: 13, scope: !14444, inlinedAt: !14414)
!14626 = !DILocation(line: 764, column: 45, scope: !14450, inlinedAt: !14451)
!14627 = !DILocation(line: 0, scope: !14445, inlinedAt: !14414)
!14628 = !DILocation(line: 49, column: 5, scope: !14413, inlinedAt: !14414)
!14629 = !DILocation(line: 57, column: 20, scope: !14446, inlinedAt: !14414)
!14630 = !DILocation(line: 57, column: 24, scope: !14446, inlinedAt: !14414)
!14631 = !DILocation(line: 58, column: 24, scope: !14446, inlinedAt: !14414)
!14632 = !DILocation(line: 63, column: 13, scope: !14444, inlinedAt: !14414)
!14633 = !DILocation(line: 2437, column: 9, scope: !320, inlinedAt: !14457)
!14634 = !DILocation(line: 422, column: 13, scope: !321, inlinedAt: !14456)
!14635 = !DILocation(line: 423, column: 16, scope: !321, inlinedAt: !14456)
!14636 = !DILocation(line: 3985, column: 24, scope: !312, inlinedAt: !14460)
!14637 = !DILocation(line: 425, column: 17, scope: !321, inlinedAt: !14456)
!14638 = !DILocation(line: 4020, column: 24, scope: !326, inlinedAt: !14463)
!14639 = !DILocation(line: 90, column: 12, scope: !328, inlinedAt: !14461)
!14640 = !DILocation(line: 95, column: 18, scope: !328, inlinedAt: !14461)
!14641 = !DILocation(line: 764, column: 45, scope: !14465, inlinedAt: !14466)
!14642 = !DILocation(line: 0, scope: !14446, inlinedAt: !14414)
!14643 = !DILocation(line: 2437, column: 9, scope: !309, inlinedAt: !14470)
!14644 = !DILocation(line: 422, column: 13, scope: !310, inlinedAt: !14469)
!14645 = !DILocation(line: 423, column: 16, scope: !310, inlinedAt: !14469)
!14646 = !DILocation(line: 3985, column: 24, scope: !312, inlinedAt: !14473)
!14647 = !DILocation(line: 425, column: 17, scope: !310, inlinedAt: !14469)
!14648 = !DILocation(line: 4020, column: 24, scope: !316, inlinedAt: !14476)
!14649 = !DILocation(line: 90, column: 12, scope: !318, inlinedAt: !14474)
!14650 = !DILocation(line: 95, column: 18, scope: !318, inlinedAt: !14474)
!14651 = !DILocation(line: 94, column: 9, scope: !14561, inlinedAt: !14414)
!14652 = !DILocation(line: 56, column: 12, scope: !14417, inlinedAt: !14414)
!14653 = !DILocation(line: 63, column: 16, scope: !14417, inlinedAt: !14414)
!14654 = !DILocation(line: 192, column: 9, scope: !14477, inlinedAt: !14482)
!14655 = !DILocation(line: 57, column: 25, scope: !14417, inlinedAt: !14414)
!14656 = !DILocation(line: 0, scope: !14566, inlinedAt: !14414)
!14657 = !DILocation(line: 1229, column: 9, scope: !14483, inlinedAt: !14484)
!14658 = !DILocation(line: 63, column: 12, scope: !14417, inlinedAt: !14414)
!14659 = !DILocation(line: 192, column: 9, scope: !425, inlinedAt: !14487)
!14660 = !DILocation(line: 762, column: 9, scope: !429, inlinedAt: !14490)
!14661 = !DILocation(line: 148, column: 12, scope: !432, inlinedAt: !14485)
!14662 = !DILocation(line: 0, scope: !433, inlinedAt: !14492)
!14663 = !DILocation(line: 153, column: 50, scope: !432, inlinedAt: !14485)
!14664 = !DILocation(line: 153, column: 57, scope: !432, inlinedAt: !14485)
!14665 = !DILocation(line: 64, column: 25, scope: !14417, inlinedAt: !14414)
!14666 = !DILocation(line: 69, column: 13, scope: !14417, inlinedAt: !14414)
!14667 = !DILocation(line: 4001, column: 24, scope: !220, inlinedAt: !14500)
!14668 = !DILocation(line: 1429, column: 14, scope: !14496, inlinedAt: !14498)
!14669 = !DILocation(line: 532, column: 9, scope: !14501, inlinedAt: !14509)
!14670 = !DILocation(line: 70, column: 13, scope: !14568, inlinedAt: !14414)
!14671 = !DILocation(line: 73, column: 17, scope: !14568, inlinedAt: !14414)
!14672 = !DILocation(line: 73, column: 26, scope: !14568, inlinedAt: !14414)
!14673 = !DILocation(line: 3305, column: 9, scope: !14510, inlinedAt: !14511)
!14674 = !DILocation(line: 74, column: 17, scope: !14568, inlinedAt: !14414)
!14675 = !DILocation(line: 192, column: 15, scope: !14512, inlinedAt: !14515)
!14676 = !DILocation(line: 192, column: 9, scope: !14512, inlinedAt: !14515)
!14677 = !DILocation(line: 0, scope: !14512, inlinedAt: !14515)
!14678 = !DILocation(line: 75, column: 17, scope: !14568, inlinedAt: !14414)
!14679 = !DILocation(line: 75, column: 26, scope: !14568, inlinedAt: !14414)
!14680 = !DILocation(line: 70, column: 13, scope: !14574, inlinedAt: !14414)
!14681 = !DILocation(line: 848, column: 1, scope: !14519, inlinedAt: !14520)
!14682 = !DILocation(line: 848, column: 1, scope: !14519, inlinedAt: !14523)
!14683 = !DILocation(line: 78, column: 9, scope: !14417, inlinedAt: !14414)
!14684 = !DILocation(line: 848, column: 1, scope: !367, inlinedAt: !14524)
!14685 = !DILocation(line: 79, column: 5, scope: !14413, inlinedAt: !14414)
!14686 = !DILocation(line: 0, scope: !14407)
!14687 = !DILocation(line: 36, column: 40, scope: !14407)
!14688 = !DILocation(line: 42, column: 6, scope: !14407)
!14689 = !DILocation(line: 40, column: 13, scope: !14407)
!14690 = !DILocation(line: 73, column: 12, scope: !14557)
!14691 = !DILocation(line: 39, column: 17, scope: !14408)
!14692 = !DILocation(line: 42, column: 26, scope: !14557)
!14693 = !DILocation(line: 42, column: 44, scope: !14557)
!14694 = !DILocation(line: 42, column: 50, scope: !14557)
!14695 = !DILocation(line: 43, column: 17, scope: !14525)
!14696 = !DILocation(line: 975, column: 5, scope: !14526, inlinedAt: !14577)
!14697 = !DILocation(line: 43, column: 48, scope: !14525)
!14698 = !DILocation(line: 65, column: 9, scope: !14557)
!14699 = !DILocation(line: 43, column: 54, scope: !14525)
!14700 = !DILocation(line: 50, column: 31, scope: !14528)
!14701 = !DILocation(line: 37, column: 13, scope: !14408)
!14702 = !DILocation(line: 65, column: 9, scope: !14525)
!14703 = !DILocation(line: 50, column: 20, scope: !14528)
!14704 = !DILocation(line: 50, column: 24, scope: !14528)
!14705 = !DILocation(line: 51, column: 24, scope: !14528)
!14706 = !DILocation(line: 57, column: 31, scope: !14578)
!14707 = !DILocation(line: 57, column: 31, scope: !14529)
!14708 = !DILocation(line: 56, column: 13, scope: !14527)
!14709 = !DILocation(line: 764, column: 45, scope: !14533, inlinedAt: !14579)
!14710 = !DILocation(line: 0, scope: !14528)
!14711 = !DILocation(line: 31, column: 5, scope: !14407)
!14712 = !DILocation(line: 57, column: 20, scope: !14529)
!14713 = !DILocation(line: 57, column: 24, scope: !14529)
!14714 = !DILocation(line: 58, column: 24, scope: !14529)
!14715 = !DILocation(line: 63, column: 13, scope: !14527)
!14716 = !DILocation(line: 2437, column: 9, scope: !320, inlinedAt: !14538)
!14717 = !DILocation(line: 422, column: 13, scope: !321, inlinedAt: !14537)
!14718 = !DILocation(line: 423, column: 16, scope: !321, inlinedAt: !14537)
!14719 = !DILocation(line: 3985, column: 24, scope: !312, inlinedAt: !14541)
!14720 = !DILocation(line: 425, column: 17, scope: !321, inlinedAt: !14537)
!14721 = !DILocation(line: 4020, column: 24, scope: !326, inlinedAt: !14544)
!14722 = !DILocation(line: 90, column: 12, scope: !328, inlinedAt: !14542)
!14723 = !DILocation(line: 95, column: 18, scope: !328, inlinedAt: !14542)
!14724 = !DILocation(line: 764, column: 45, scope: !14546, inlinedAt: !14581)
!14725 = !DILocation(line: 0, scope: !14529)
!14726 = !DILocation(line: 2437, column: 9, scope: !309, inlinedAt: !14550)
!14727 = !DILocation(line: 422, column: 13, scope: !310, inlinedAt: !14549)
!14728 = !DILocation(line: 423, column: 16, scope: !310, inlinedAt: !14549)
!14729 = !DILocation(line: 3985, column: 24, scope: !312, inlinedAt: !14553)
!14730 = !DILocation(line: 425, column: 17, scope: !310, inlinedAt: !14549)
!14731 = !DILocation(line: 4020, column: 24, scope: !316, inlinedAt: !14556)
!14732 = !DILocation(line: 90, column: 12, scope: !318, inlinedAt: !14554)
!14733 = !DILocation(line: 95, column: 18, scope: !318, inlinedAt: !14554)
!14734 = !DILocation(line: 73, column: 9, scope: !14557)
!14735 = distinct !DISubprogram(name: "notify", linkageName: "_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker6notify", scope: !882, file: !880, line: 98, type: !573, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14736 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !848, file: !847, line: 157, type: !573, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14737 = distinct !DILexicalBlock(scope: !14735, file: !880, line: 99, column: 9)
!14738 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !14802, file: !14800, line: 155, type: !573, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14739 = distinct !DILexicalBlock(scope: !14736, file: !847, line: 161, column: 17)
!14740 = distinct !DISubprogram(name: "eq<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryENtNtB9_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg", scope: !846, file: !663, line: 1662, type: !573, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14741 = distinct !DILexicalBlock(scope: !14739, file: !847, line: 162, column: 17)
!14742 = distinct !DISubprogram(name: "drop_glue<alloc::vec::drain::Drain<std::sync::mpmc::waker::Entry, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryEECs2NzvFoTxuAy_2rg", scope: !578, file: !637, line: 848, type: !573, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14743 = distinct !DILocation(line: 103, column: 9, scope: !14735)
!14744 = distinct !{!14744, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg"}
!14745 = distinct !{!14745, !14744, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg: argument 0"}
!14746 = distinct !{!14746, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg"}
!14747 = distinct !{!14747, !14746, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg: argument 0"}
!14748 = distinct !{!14748, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerEECs2NzvFoTxuAy_2rg"}
!14749 = distinct !{!14749, !14748, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerEECs2NzvFoTxuAy_2rg: argument 0"}
!14750 = distinct !{!14750, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg"}
!14751 = distinct !{!14751, !14750, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg: argument 0"}
!14752 = distinct !DILocation(line: 103, column: 9, scope: !14737)
!14753 = distinct !DILocation(line: 848, column: 1, scope: !417, inlinedAt: !14752)
!14754 = distinct !DILocation(line: 848, column: 1, scope: !360, inlinedAt: !14753)
!14755 = distinct !DILocation(line: 848, column: 1, scope: !359, inlinedAt: !14754)
!14756 = distinct !DILocation(line: 2927, column: 32, scope: !358, inlinedAt: !14755)
!14757 = distinct !DILocation(line: 3258, column: 26, scope: !357, inlinedAt: !14756)
!14758 = distinct !DILocation(line: 69, column: 9, scope: !358, inlinedAt: !14755)
!14759 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE3addCs2NzvFoTxuAy_2rg", scope: !665, file: !663, line: 619, type: !573, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14760 = distinct !DISubprogram(name: "read<std::sync::mpmc::waker::Entry>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg", scope: !578, file: !637, line: 1717, type: !573, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14761 = distinct !DISubprogram(name: "map<&std::sync::mpmc::waker::Entry, std::sync::mpmc::waker::Entry, alloc::vec::drain::{impl#5}::next::{closure_env#0}<std::sync::mpmc::waker::Entry, alloc::alloc::Global>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE3mapBJ_NCNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB1K_5DrainBJ_ENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2NzvFoTxuAy_2rg", scope: !607, file: !605, line: 1160, type: !573, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14762 = distinct !DILexicalBlock(scope: !14761, file: !605, line: 1165, column: 13)
!14763 = distinct !DISubprogram(name: "{closure#0}<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNCNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB7_5DrainNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next0Cs2NzvFoTxuAy_2rg", scope: !14809, file: !14800, line: 156, type: !573, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14764 = distinct !DILexicalBlock(scope: !14737, file: !880, line: 99, column: 9)
!14765 = distinct !DILocation(line: 100, column: 25, scope: !14764)
!14766 = distinct !DILocation(line: 92, column: 14, scope: !399, inlinedAt: !14765)
!14767 = distinct !DILocation(line: 3124, column: 55, scope: !398, inlinedAt: !14766)
!14768 = distinct !DILocation(line: 3696, column: 24, scope: !397, inlinedAt: !14767)
!14769 = distinct !DILocation(line: 3124, column: 26, scope: !398, inlinedAt: !14766)
!14770 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::thread::Inner>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCsG258MDvU3F_3std6thread6thread5InnerEE6as_refCs2NzvFoTxuAy_2rg", scope: !665, file: !663, line: 450, type: !573, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14771 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB2_7Context6unpark", scope: !815, file: !763, line: 150, type: !573, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14772 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread6unpark", scope: !885, file: !883, line: 183, type: !573, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14773 = distinct !DISubprogram(name: "as_ref<alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>", linkageName: "_RNvMs4_NtCskKLDkoKarTP_4core3pinINtB5_3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1i_5alloc6SystemEE6as_refCs2NzvFoTxuAy_2rg", scope: !888, file: !886, line: 1365, type: !573, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14774 = distinct !DISubprogram(name: "deref<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvXsx_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCs2NzvFoTxuAy_2rg", scope: !889, file: !666, line: 2512, type: !573, scopeLine: 2512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14775 = distinct !DISubprogram(name: "inner<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE5innerCs2NzvFoTxuAy_2rg", scope: !668, file: !666, line: 2186, type: !573, scopeLine: 2186, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14776 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align4<u32>>", linkageName: "_RNvMsX_NtCskKLDkoKarTP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align4mEE3getCs2NzvFoTxuAy_2rg", scope: !645, file: !582, line: 2434, type: !573, scopeLine: 2434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14777 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync14thread_parking5futexNtB2_6Parker6unpark", scope: !893, file: !890, line: 89, type: !573, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14778 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMsQ_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicmE4swap", scope: !649, file: !646, line: 2980, type: !573, scopeLine: 2980, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14779 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMsQ_NtNtCskKLDkoKarTP_4core4sync6atomicINtB5_6AtomicmE6as_ptr", scope: !649, file: !646, line: 3695, type: !573, scopeLine: 3695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14780 = distinct !DISubprogram(name: "atomic_swap<u32>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core4sync6atomic11atomic_swapmECs2NzvFoTxuAy_2rg", scope: !648, file: !646, line: 4014, type: !573, scopeLine: 4014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !572)
!14781 = distinct !{!14781, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg"}
!14782 = distinct !{!14782, !14781, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryECs2NzvFoTxuAy_2rg: argument 0"}
!14783 = distinct !{!14783, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg"}
!14784 = distinct !{!14784, !14783, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg: argument 0"}
!14785 = distinct !{!14785, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerEECs2NzvFoTxuAy_2rg"}
!14786 = distinct !{!14786, !14785, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerEECs2NzvFoTxuAy_2rg: argument 0"}
!14787 = distinct !{!14787, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg"}
!14788 = distinct !{!14788, !14787, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg: argument 0"}
!14789 = distinct !DILocation(line: 103, column: 9, scope: !14737)
!14790 = distinct !DILocation(line: 848, column: 1, scope: !417, inlinedAt: !14789)
!14791 = distinct !DILocation(line: 848, column: 1, scope: !360, inlinedAt: !14790)
!14792 = distinct !DILocation(line: 848, column: 1, scope: !359, inlinedAt: !14791)
!14793 = distinct !DILocation(line: 2927, column: 32, scope: !358, inlinedAt: !14792)
!14794 = distinct !DILocation(line: 3258, column: 26, scope: !357, inlinedAt: !14793)
!14795 = distinct !DILocation(line: 69, column: 9, scope: !358, inlinedAt: !14792)
!14796 = distinct !DILocation(line: 103, column: 9, scope: !14735)
!14797 = !DILexicalBlockFile(scope: !14737, file: !880, discriminator: 2)
!14798 = !DILocation(line: 99, column: 22, scope: !14797)
!14799 = !DILocation(line: 156, column: 19, scope: !14738, inlinedAt: !14798)
!14800 = !DIFile(filename: "library/alloc/src/vec/drain.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1d929a31bb59246873c7578638a9389f")
!14801 = !DINamespace(name: "drain", scope: !618)
!14802 = !DINamespace(name: "{impl#5}", scope: !14801)
!14803 = !DILocation(line: 180, column: 28, scope: !14741, inlinedAt: !14799)
!14804 = !{!14751, !14749, !14747, !14745}
!14805 = !DILocation(line: 185, column: 40, scope: !14741, inlinedAt: !14799)
!14806 = !DILocation(line: 156, column: 26, scope: !14738, inlinedAt: !14798)
!14807 = !DILocation(line: 1165, column: 29, scope: !14762, inlinedAt: !14806)
!14808 = !DILocation(line: 156, column: 45, scope: !14763, inlinedAt: !14807)
!14809 = !DINamespace(name: "next", scope: !14802)
!14810 = !DILexicalBlockFile(scope: !14775, file: !666, discriminator: 2)
!14811 = !DILexicalBlockFile(scope: !14774, file: !666, discriminator: 2)
!14812 = !DILocation(line: 101, column: 26, scope: !14764)
!14813 = !DILocation(line: 151, column: 27, scope: !14771, inlinedAt: !14812)
!14814 = !DILocation(line: 184, column: 20, scope: !14772, inlinedAt: !14813)
!14815 = !DILocation(line: 1370, column: 38, scope: !14773, inlinedAt: !14814)
!14816 = !DILocation(line: 2513, column: 15, scope: !14811, inlinedAt: !14815)
!14817 = !DILocation(line: 2192, column: 27, scope: !14810, inlinedAt: !14816)
!14818 = !DILocation(line: 184, column: 38, scope: !14772, inlinedAt: !14813)
!14819 = !DILocation(line: 96, column: 23, scope: !14777, inlinedAt: !14818)
!14820 = !DILocation(line: 2982, column: 43, scope: !14778, inlinedAt: !14819)
!14821 = !DILocation(line: 3696, column: 24, scope: !14779, inlinedAt: !14820)
!14822 = !DILocation(line: 2982, column: 26, scope: !14778, inlinedAt: !14819)
!14823 = !{!14788, !14786, !14784, !14782}
!14824 = !DILocation(line: 99, column: 22, scope: !14735)
!14825 = !DILocation(line: 99, column: 37, scope: !14735)
!14826 = !DILocation(line: 161, column: 27, scope: !14736, inlinedAt: !14799)
!14827 = !DILocation(line: 162, column: 34, scope: !14739, inlinedAt: !14799)
!14828 = !DILocation(line: 1663, column: 9, scope: !14740, inlinedAt: !14803)
!14829 = !DILocation(line: 848, column: 1, scope: !14742, inlinedAt: !14743)
!14830 = !DILocation(line: 103, column: 9, scope: !14735)
!14831 = !DILocation(line: 104, column: 6, scope: !14735)
!14832 = !DILocation(line: 4056, column: 24, scope: !356, inlinedAt: !14757)
!14833 = !DILocation(line: 2927, column: 12, scope: !358, inlinedAt: !14755)
!14834 = !DILocation(line: 4500, column: 24, scope: !37, inlinedAt: !14758)
!14835 = !DILocation(line: 2970, column: 18, scope: !358, inlinedAt: !14755)
!14836 = !DILocation(line: 627, column: 28, scope: !14759, inlinedAt: !14805)
!14837 = !DILocation(line: 185, column: 25, scope: !14741, inlinedAt: !14799)
!14838 = !DILocation(line: 99, column: 13, scope: !14737)
!14839 = !DILocation(line: 1756, column: 9, scope: !14760, inlinedAt: !14808)
!14840 = !DILocation(line: 100, column: 56, scope: !14764)
!14841 = !DILocation(line: 100, column: 25, scope: !14764)
!14842 = !DILocation(line: 2437, column: 9, scope: !396, inlinedAt: !14768)
!14843 = !DILocation(line: 4111, column: 17, scope: !400, inlinedAt: !14769)
!14844 = !DILocation(line: 100, column: 16, scope: !14764)
!14845 = !DILocation(line: 454, column: 20, scope: !14770, inlinedAt: !14817)
!14846 = !DILocation(line: 2437, column: 9, scope: !14776, inlinedAt: !14821)
!14847 = !DILocation(line: 4020, column: 24, scope: !14780, inlinedAt: !14822)
!14848 = !DILocation(line: 96, column: 12, scope: !14777, inlinedAt: !14818)
!14849 = !DILocation(line: 4056, column: 24, scope: !356, inlinedAt: !14794)
!14850 = !DILocation(line: 2927, column: 12, scope: !358, inlinedAt: !14792)
!14851 = !DILocation(line: 4500, column: 24, scope: !37, inlinedAt: !14795)
!14852 = !DILocation(line: 2970, column: 18, scope: !358, inlinedAt: !14792)
!14853 = !DILocation(line: 97, column: 13, scope: !14777, inlinedAt: !14818)
!14854 = !DILocation(line: 848, column: 1, scope: !14742, inlinedAt: !14796)
!14855 = !DILocation(line: 103, column: 9, scope: !14737)
!14856 = !DILocation(line: 98, column: 5, scope: !14735)
end_hunk_1
