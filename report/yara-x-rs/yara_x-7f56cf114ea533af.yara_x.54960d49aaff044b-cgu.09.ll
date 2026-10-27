Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.09?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1610
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvNtNtCs7gfv9tzbXmh_6yara_x7modules2pe16update_lowercaseINtNtNtCs8cPNZ3dglGG_6digest8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreEEB6_:bb.a
bb.m:                                             ; preds = %.loopexit
  %i.bm = icmp eq i8 %i.bh, 0
  br i1 %i.bm, label %.noexc13, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i

.noexc13:                                         ; preds = %.noexc, %bb.m
  %.sroa.6.0.i.i.i = phi i64 [ %i.be, %bb.m ], [ %i.bu, %.noexc ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bc, %bb.m ], [ %i.bt, %.noexc ] ; 2 uses
  %i.bn = lshr i64 %.sroa.6.0.i.i.i, 6            ; 3 uses
  %i.bo = and i64 %.sroa.6.0.i.i.i, 9223372036854775744
  %i.bp = and i64 %.sroa.6.0.i.i.i, 63            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.bo
  %i.br = icmp eq i64 %i.bn, 0
  br i1 %i.br, label %.noexc14, label %bb.n

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bi
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.bs, i64 noundef %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bk
  %i.bu = sub nuw nsw i64 %i.be, %i.bk
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1547, !noalias !1548, !noundef !4
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8, !alias.scope !1547, !noalias !1548
  invoke fastcc void @_RNvNtNtCshGqH7AhdwAe_3md58compress4soft8compress(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.bf, i64 noundef range(i64 1, 144115188075855872) 1) #49
          to label %.noexc13 unwind label %bb.q

bb.n:                                             ; preds = %.noexc13
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1549, !noalias !1550, !noundef !4
  %i.ca = add i64 %i.bz, %i.bn
  store i64 %i.ca, ptr %i.by, align 8, !alias.scope !1549, !noalias !1550
  invoke fastcc void @_RNvNtNtCshGqH7AhdwAe_3md58compress4soft8compress(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 144115188075855872) %i.bn) #49
          to label %.noexc14 unwind label %bb.q

.noexc14:                                         ; preds = %bb.n, %.noexc13
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull dereferenceable(65) %i.bf, i64 noundef %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31)
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %.loopexit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bi
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.cb, i64 noundef range(i64 0, -9223372036854775808) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef range(i64 0, -9223372036854775808) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
          to label %.noexc16 unwind label %bb.q

.noexc16:                                         ; preds = %bb.o
  %i.cc = add nuw nsw i64 %i.be, %i.bi
  br label %bb.r

_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.d, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %.lr.ph83.6, %._crit_edge.i.i, %._crit_edge.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not.not.not.i.not84 = icmp samesign eq i64 %2, 0
  br i1 %.not.not.not.i.not84, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs4_NtBb_3numh18is_ascii_uppercaseECs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph85

bb.p:                                             ; preds = %.lr.ph85
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ce, %i.cd
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs4_NtBb_3numh18is_ascii_uppercaseECs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit, %bb.p
  %i.cf = phi ptr [ %i.ce, %bb.p ], [ %1, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit ] ; 2 uses
  %.val.i = load i8, ptr %i.cf, align 1, !noalias !1551, !noundef !4
  %i.cg = add i8 %.val.i, -65
  %.sroa.0.0.i.i.i17 = icmp ult i8 %i.cg, 26
  br i1 %.sroa.0.0.i.i.i17, label %.lr.ph, label %bb.p

bb.q:                                             ; preds = %bb.o, %.noexc14, %bb.n, %.noexc, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #44
          to label %common.resume unwind label %bb.v

bb.r:                                             ; preds = %.noexc16, %.noexc14
  %storemerge.in.i.i.i = phi i64 [ %i.cc, %.noexc16 ], [ %i.bp, %.noexc14 ]
  %storemerge.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i to i8
  store i8 %storemerge.i.i.i, ptr %i.bg, align 8, !alias.scope !1546
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.s ], [ %i.ch, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.r
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit23, %._crit_edge, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit
  ret void

bb.v:                                             ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs4_NtBb_3numh18is_ascii_uppercaseECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.p, %_RNvNvNtNtCskKLDkoKarTP_4core5slice5ascii8is_ascii7runtime.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !alias.scope !1552, !noundef !4 ; 3 uses
  %i.co = zext nneg i8 %i.cn to i64               ; 4 uses
  %i.cp = icmp ult i8 %i.cn, 64
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = sub nuw nsw i64 64, %i.co               ; 5 uses
  %i.cr = icmp samesign ult i64 %2, %i.cq
  br i1 %i.cr, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs4_NtBb_3numh18is_ascii_uppercaseECs7gfv9tzbXmh_6yara_x.exit
  %i.cs = icmp eq i8 %i.cn, 0
  br i1 %i.cs, label %bb.x, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i18

bb.x:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i18, %bb.w
  %.sroa.6.0.i.i.i19 = phi i64 [ %2, %bb.w ], [ %i.cy, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i18 ] ; 3 uses
  %.sroa.0.0.i.i.i20 = phi ptr [ %1, %bb.w ], [ %i.cz, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i18 ] ; 2 uses
  %i.ct = lshr i64 %.sroa.6.0.i.i.i19, 6          ; 3 uses
  %i.cu = and i64 %.sroa.6.0.i.i.i19, 9223372036854775744
  %i.cv = and i64 %.sroa.6.0.i.i.i19, 63          ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i20, i64 %i.cu
  %i.cx = icmp eq i64 %i.ct, 0
  br i1 %i.cx, label %bb.z, label %bb.y

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i18: ; preds = %bb.w
  %i.cy = sub nuw nsw i64 %2, %i.cq
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.da, i64 noundef %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !1553
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1554, !noalias !1555, !noundef !4
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !alias.scope !1554, !noalias !1555
  tail call fastcc void @_RNvNtNtCshGqH7AhdwAe_3md58compress4soft8compress(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.cl, i64 noundef range(i64 1, 144115188075855872) 1) #49, !noalias !1553
  br label %bb.x

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !1556, !noalias !1557, !noundef !4
  %i.dg = add i64 %i.df, %i.ct
  store i64 %i.dg, ptr %i.de, align 8, !alias.scope !1556, !noalias !1557
  tail call fastcc void @_RNvNtNtCshGqH7AhdwAe_3md58compress4soft8compress(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i20, i64 noundef range(i64 1, 144115188075855872) %i.ct) #49, !noalias !1553
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull dereferenceable(65) %i.cl, i64 noundef %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cw, i64 noundef %i.cv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !1553
  br label %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit23

bb.aa:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs4_NtBb_3numh18is_ascii_uppercaseECs7gfv9tzbXmh_6yara_x.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.dh, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !noalias !1553
  %i.di = add nuw nsw i64 %2, %i.co
  br label %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit23

_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit23: ; preds = %bb.z, %bb.aa
  %storemerge.in.i.i.i21 = phi i64 [ %i.cv, %bb.z ], [ %i.di, %bb.aa ]
  %storemerge.i.i.i22 = trunc nuw nsw i64 %storemerge.in.i.i.i21 to i8
  store i8 %storemerge.i.i.i22, ptr %i.cm, align 8, !alias.scope !1552
  br label %bb.u

.lr.ph:                                           ; preds = %.lr.ph85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit32
  %.sroa.033.054 = phi ptr [ %1, %.lr.ph ], [ %i.dn, %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit32 ] ; 2 uses
  %.sroa.5.053 = phi i64 [ %2, %.lr.ph ], [ %i.do, %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit32 ] ; 3 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.5.053, i64 256) ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.033.054, i64 %..i.i ; 2 uses
  %i.do = sub nuw nsw i64 %.sroa.5.053, %..i.i    ; 2 uses
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.dj, ptr noundef nonnull readonly %.sroa.033.054, ptr noundef nonnull readonly %i.dn)
  %.sroa.034.0.copyload = load ptr, ptr %i.b, align 8 ; 7 uses
  %.sroa.435.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx, align 8 ; 7 uses
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %i.dp = icmp ult i64 %.sroa.537.0.copyload, %.sroa.7.0.copyload
  br i1 %i.dp, label %iter.check, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread

iter.check:                                       ; preds = %bb.ab
  %.sroa.435.0.copyload87 = ptrtoaddr ptr %.sroa.435.0.copyload to i64
  %.sroa.034.0.copyload86 = ptrtoaddr ptr %.sroa.034.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.copyload), "nonnull"(ptr %.sroa.435.0.copyload) ]
  %i.dq = sub nuw i64 %.sroa.7.0.copyload, %.sroa.537.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.dq, 8
  %i.dr = sub i64 %.sroa.435.0.copyload87, %.sroa.034.0.copyload86
  %diff.check = icmp ugt i64 %i.dr, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i64 %i.dq, 32
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ds = and i64 %i.dq, 24
  %n.vec = and i64 %i.dq, -32                     ; 4 uses
  %i.dt = add i64 %.sroa.537.0.copyload, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = add nuw i64 %.sroa.537.0.copyload, %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.435.0.copyload, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <16 x i8>, ptr %i.dw, align 1 ; 2 uses
  %wide.load89 = load <16 x i8>, ptr %i.dx, align 1 ; 2 uses
  %i.dy = add <16 x i8> %wide.load, splat (i8 -65)
  %i.dz = add <16 x i8> %wide.load89, splat (i8 -65)
  %i.ea = icmp ult <16 x i8> %i.dy, splat (i8 26)
  %i.eb = icmp ult <16 x i8> %i.dz, splat (i8 26)
  %i.ec = select <16 x i1> %i.ea, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ed = select <16 x i1> %i.eb, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ee = or <16 x i8> %i.ec, %wide.load
  %i.ef = or <16 x i8> %i.ed, %wide.load89
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <16 x i8> %i.ee, ptr %i.dv, align 1
  store <16 x i8> %i.ef, ptr %i.eg, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !1520

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dq, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.preheader, label %vec.epilog.ph, !prof !1558

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.dq, -8                    ; 3 uses
  %i.ei = add i64 %.sroa.537.0.copyload, %n.vec90
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.ej = add nuw i64 %.sroa.537.0.copyload, %index91 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.435.0.copyload, i64 %i.ej
  %wide.load92 = load <8 x i8>, ptr %i.el, align 1 ; 2 uses
  %i.em = add <8 x i8> %wide.load92, splat (i8 -65)
  %i.en = icmp ult <8 x i8> %i.em, splat (i8 26)
  %i.eo = select <8 x i1> %i.en, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.ep = or <8 x i8> %i.eo, %wide.load92
  store <8 x i8> %i.ep, ptr %i.ek, align 1
  %index.next93 = add nuw i64 %index91, 8         ; 2 uses
  %i.eq = icmp eq i64 %index.next93, %n.vec90
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1521

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.dq, %n.vec90
  br i1 %cmp.n94, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.preheader

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.537.052.ph = phi i64 [ %.sroa.537.0.copyload, %iter.check ], [ %i.dt, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ] ; 6 uses
  %i.er = sub i64 %.sroa.7.0.copyload, %.sroa.537.052.ph
  %.neg = add i64 %.sroa.537.052.ph, 1
  %xtraiter = and i64 %i.er, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.preheader
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %.sroa.537.052.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.435.0.copyload, i64 %.sroa.537.052.ph
  %i.eu = add nuw i64 %.sroa.537.052.ph, 1
  %i.ev = load i8, ptr %i.et, align 1, !noundef !4 ; 2 uses
  %i.ew = add i8 %i.ev, -65
  %i.ex = icmp ult i8 %i.ew, 26
  %i.ey = select i1 %i.ex, i8 32, i8 0
  %.sroa.08.0.prol = or i8 %i.ey, %i.ev
  store i8 %.sroa.08.0.prol, ptr %i.es, align 1
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol.loopexit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.preheader
  %.sroa.537.052.unr = phi i64 [ %.sroa.537.052.ph, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.preheader ], [ %i.eu, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol ]
  %i.ez = icmp eq i64 %.sroa.7.0.copyload, %.neg
  br i1 %i.ez, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit

._crit_edge:                                      ; preds = %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.537.052 = phi i64 [ %i.fj, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.537.052.unr, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol.loopexit ] ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %.sroa.537.052
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.435.0.copyload, i64 %.sroa.537.052
  %i.fc = add nuw i64 %.sroa.537.052, 1           ; 2 uses
  %i.fd = load i8, ptr %i.fb, align 1, !noundef !4 ; 2 uses
  %i.fe = add i8 %i.fd, -65
  %i.ff = icmp ult i8 %i.fe, 26
  %i.fg = select i1 %i.ff, i8 32, i8 0
  %.sroa.08.0 = or i8 %i.fg, %i.fd
  store i8 %.sroa.08.0, ptr %i.fa, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 %i.fc
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.435.0.copyload, i64 %i.fc
  %i.fj = add nuw i64 %.sroa.537.052, 2           ; 2 uses
  %i.fk = load i8, ptr %i.fi, align 1, !noundef !4 ; 2 uses
  %i.fl = add i8 %i.fk, -65
  %i.fm = icmp ult i8 %i.fl, 26
  %i.fn = select i1 %i.fm, i8 32, i8 0
  %.sroa.08.0.1 = or i8 %i.fn, %i.fk
  store i8 %.sroa.08.0.1, ptr %i.fh, align 1
  %exitcond.not.1 = icmp eq i64 %i.fj, %.sroa.7.0.copyload
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit, !llvm.loop !1522

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit, %middle.block, %vec.epilog.middle.block, %bb.ab
  %i.fo = load i8, ptr %i.dl, align 8, !alias.scope !1559, !noundef !4 ; 3 uses
  %i.fp = zext nneg i8 %i.fo to i64               ; 4 uses
  %i.fq = icmp ult i8 %i.fo, 64
  call void @llvm.assume(i1 %i.fq)
  %i.fr = sub nuw nsw i64 64, %i.fp               ; 5 uses
  %i.fs = icmp ult i64 %.sroa.5.053, %i.fr
  br i1 %i.fs, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread
  %i.ft = icmp eq i8 %i.fo, 0
  br i1 %i.ft, label %bb.ad, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i27

bb.ad:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i27, %bb.ac
  %.sroa.6.0.i.i.i28 = phi i64 [ %..i.i, %bb.ac ], [ %i.fz, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i27 ] ; 3 uses
  %.sroa.0.0.i.i.i29 = phi ptr [ %i.c, %bb.ac ], [ %i.ga, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i27 ] ; 2 uses
  %i.fu = lshr i64 %.sroa.6.0.i.i.i28, 6          ; 3 uses
  %i.fv = and i64 %.sroa.6.0.i.i.i28, 9223372036854775744
  %i.fw = and i64 %.sroa.6.0.i.i.i28, 63          ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i29, i64 %i.fv
  %i.fy = icmp eq i64 %i.fu, 0
  br i1 %i.fy, label %bb.af, label %bb.ae

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7gfv9tzbXmh_6yara_x.exit.i.i.i27: ; preds = %bb.ac
  %i.fz = sub nuw nsw i64 %..i.i, %i.fr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fr
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fp
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.gb, i64 noundef %i.fr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30), !noalias !1560
  %i.gc = load i64, ptr %i.dm, align 8, !alias.scope !1561, !noalias !1562, !noundef !4
  %i.gd = add i64 %i.gc, 1
  store i64 %i.gd, ptr %i.dm, align 8, !alias.scope !1561, !noalias !1562
  call fastcc void @_RNvNtNtCshGqH7AhdwAe_3md58compress4soft8compress(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %i.dk, i64 noundef range(i64 1, 144115188075855872) 1) #49, !noalias !1560
  br label %bb.ad

bb.ae:                                            ; preds = %bb.ad
  %i.ge = load i64, ptr %i.dm, align 8, !alias.scope !1563, !noalias !1564, !noundef !4
  %i.gf = add i64 %i.ge, %i.fu
  store i64 %i.gf, ptr %i.dm, align 8, !alias.scope !1563, !noalias !1564
  call fastcc void @_RNvNtNtCshGqH7AhdwAe_3md58compress4soft8compress(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i29, i64 noundef range(i64 1, 144115188075855872) %i.fu) #49, !noalias !1560
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull dereferenceable(65) %i.dk, i64 noundef %i.fw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fx, i64 noundef %i.fw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !1560
  br label %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit32

bb.ag:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fp
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %i.gg, i64 noundef range(i64 0, -9223372036854775808) %..i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !noalias !1560
  %i.gh = add nuw nsw i64 %..i.i, %i.fp
  br label %_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit32

_RINvXNtCs8cPNZ3dglGG_6digest6digestINtNtNtB5_8core_api7wrapper11CoreWrapperNtCshGqH7AhdwAe_3md57Md5CoreENtB3_6Digest6updateRShECs7gfv9tzbXmh_6yara_x.exit32: ; preds = %bb.af, %bb.ag
  %storemerge.in.i.i.i30 = phi i64 [ %i.fw, %bb.af ], [ %i.gh, %bb.ag ]
  %storemerge.i.i.i31 = trunc nuw nsw i64 %storemerge.in.i.i.i30 to i8
  store i8 %storemerge.i.i.i31, ptr %i.dl, align 8, !alias.scope !1559
  %i.gi = icmp eq i64 %i.do, 0
  br i1 %i.gi, label %._crit_edge, label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsexYYUdYSQU6_5alloc2io6cursor13vec_write_allNtNtB6_5alloc6GlobalECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !4  ; 6 uses
  %i.a = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 range(i64 0, -9223372036854775808) %3) ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !21, !alias.scope !1567, !noundef !4
  %i.c = icmp ugt i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1567, !noundef !4 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub i64 %i.a, %i.e
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.g)
end_hunk_0
begin_hunk_1_@_RINvYNtNvXNvNtCs7gfv9tzbXmh_6yara_x5typess7_1__NtBa_17IntegerConstraintNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB19_7Visitor9visit_u32NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_:bb.a
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8, !alias.scope !2266
  br label %_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess7_1__NtB8_17IntegerConstraintNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB17_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2266
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.d, align 8, !noalias !2266
  store i8 1, ptr %i.a, align 8, !noalias !2266
  call void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @118, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2266
  br label %_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess7_1__NtB8_17IntegerConstraintNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB17_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit

_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess7_1__NtB8_17IntegerConstraintNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB17_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtCs7gfv9tzbXmh_6yara_x5typess_1__INtBa_5ValuepENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtBY_7Visitor9visit_u32NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ], !prof !52

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2269
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !2269
  store i8 1, ptr %i.a, align 8, !noalias !2269
  call void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @116, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2269
  br label %_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess_1__INtB8_5ValuepENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBW_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1, !alias.scope !2269
  store i8 -1, ptr %0, align 8, !alias.scope !2269
  br label %_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess_1__INtB8_5ValuepENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBW_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.e, align 1, !alias.scope !2269
  store i8 -1, ptr %0, align 8, !alias.scope !2269
  br label %_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess_1__INtB8_5ValuepENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBW_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.f, align 1, !alias.scope !2269
  store i8 -1, ptr %0, align 8, !alias.scope !2269
  br label %_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess_1__INtB8_5ValuepENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBW_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit

_RINvXNvXNvNtCs7gfv9tzbXmh_6yara_x5typess_1__INtB8_5ValuepENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBW_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBa_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtBa_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtBZ_7Visitor9visit_u32NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ], !prof !53

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2272
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !2272
  store i8 1, ptr %i.a, align 8, !noalias !2272
  call void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @120, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2272
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtB8_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1, !alias.scope !2272
  store i8 -1, ptr %0, align 8, !alias.scope !2272
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtB8_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.e, align 1, !alias.scope !2272
  store i8 -1, ptr %0, align 8, !alias.scope !2272
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtB8_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtB8_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtBa_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB13_7Visitor9visit_u32NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ], !prof !54

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2275
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !2275
  store i8 1, ptr %i.a, align 8, !noalias !2275
  call void @_RNvYNtNtCslcwApyVHiOd_7bincode5error11DecodeErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error13invalid_valueCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2275
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtB8_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1, !alias.scope !2275
  store i8 -1, ptr %0, align 8, !alias.scope !2275
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtB8_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.e, align 1, !alias.scope !2275
  store i8 -1, ptr %0, align 8, !alias.scope !2275
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtB8_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.f, align 1, !alias.scope !2275
  store i8 -1, ptr %0, align 8, !alias.scope !2275
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtB8_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.g, align 1, !alias.scope !2275
  store i8 -1, ptr %0, align 8, !alias.scope !2275
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtB8_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.h, align 1, !alias.scope !2275
  store i8 -1, ptr %0, align 8, !alias.scope !2275
  br label %_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtB8_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit

_RINvXNvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtB8_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB11_7Visitor9visit_u64NtNtCslcwApyVHiOd_7bincode5error11DecodeErrorEBc_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_containss0_0Cs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = icmp samesign ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.08.us = phi i16 [ %i.w, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !2281 ; 2 uses
  %.sroa.518.0.copyload.i.us = load ptr, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !2281 ; 2 uses
  %.sroa.619.0.copyload.i.us = load i64, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !2281 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2281 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us, i64 %.sroa.619.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.preheader, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us), "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !2279
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !2280
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !2279
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !2280
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noalias noundef ptr @_RNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB7_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_6string9LowercaseINtB1B_14FixedLenStringKj20_EEEENtB7_14WasmExportedFn10trampoline0B9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  call void %i.h(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 792
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  %i.l = load i64, ptr %i.k, align 8, !range !55, !noundef !4 ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.l
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  call void @_RNvXsp_NtCs7gfv9tzbXmh_6yara_x4wasmINtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1c_14FixedLenStringKj20_EEENtB5_10WasmResult6valuesB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(2208) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2288, !noundef !4 ; 3 uses
  %i.s = icmp ugt i64 %i.r, 4                     ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !alias.scope !2288, !nonnull !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2288 ; 2 uses
  %.sink10.i = select i1 %i.s, i64 %i.v, i64 %i.r ; 4 uses
  %.not = icmp ugt i64 %.sink10.i, %3
  br i1 %.not, label %bb.d, label %bb.c, !prof !56

bb.b:                                             ; preds = %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecANtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawj4_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(72) %i.b) #44
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sink11.i = select i1 %i.s, ptr %i.t, ptr %i.b
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %.sink10.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i, i64 noundef %.sink10.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sink10.i, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #45
          to label %bb.i unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  br i1 %i.s, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecANtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawj4_EECs7gfv9tzbXmh_6yara_x.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2289
  store i64 %i.r, ptr %i.a, align 8, !noalias !2289
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.x, align 8, !noalias !2289
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.v, ptr %i.y, align 8, !noalias !2289
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawEECs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %bb.g, !noalias !2289

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.h, !noalias !2289

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !2289
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.w, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawEECs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2289
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecANtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawj4_EECs7gfv9tzbXmh_6yara_x.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecANtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawj4_EECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCsiOkGTpNE17y_8wasmtime7runtime2vm9vmcontext6ValRawEECs7gfv9tzbXmh_6yara_x.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr null

bb.i:                                             ; preds = %bb.d
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noalias noundef ptr @_RNCNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB7_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_6string9LowercaseINtB1B_14FixedLenStringKj28_EEEENtB7_14WasmExportedFn10trampoline0B9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  call void %i.h(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 792
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  %i.l = load i64, ptr %i.k, align 8, !range !55, !noundef !4 ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.n, %i.l
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  call void @_RNvXsp_NtCs7gfv9tzbXmh_6yara_x4wasmINtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1c_14FixedLenStringKj28_EEENtB5_10WasmResult6valuesB7_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(2208) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
end_hunk_1
begin_hunk_2_@_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue12cast_to_bool:bb.a
  %i.y = zext i1 %i.x to i8
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.l, align 8, !noundef !4
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i8
  br label %.sink.split

bb.m:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.l, align 8, !noundef !4
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8
  br label %.sink.split

bb.n:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp ne i64 %i.ah, 0
  %i.ak = zext i1 %i.aj to i8
  br label %.sink.split

bb.o:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp ne i64 %i.an, 0
  %i.aq = zext i1 %i.ap to i8
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue12symbol_table(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !16, !noundef !4
  switch i8 %i.a, label %bb.f [
    i8 4, label %bb.b
    i8 6, label %bb.c
    i8 7, label %bb.d
    i8 8, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtNtCskKLDkoKarTP_4core4cell4once8OnceCellINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4withNCNvMs5_NtB2b_5typesNtB37_9TypeValue22string_builtin_methods0B1C_EB2b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @809)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f, !prof !8

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtNtCskKLDkoKarTP_4core4cell4once8OnceCellINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4withNCNvMNtNtB2b_5types5arrayNtB34_5Array15builtin_methods0B1C_EB2b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @210)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtNtCskKLDkoKarTP_4core4cell4once8OnceCellINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4withNCNvMNtNtB2b_5types3mapNtB34_3Map15builtin_methods0B1C_EB2b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @176)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e, %bb.d, %bb.b
  %.sroa.6.0 = phi ptr [ @807, %bb.e ], [ @807, %bb.b ], [ undef, %bb.a ], [ @807, %bb.d ], [ @808, %bb.c ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.e ], [ %i.b, %bb.b ], [ null, %bb.a ], [ %i.i, %bb.d ], [ %i.d, %bb.c ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %i.l

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue6as_map(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = load i8, ptr %0, align 8, !range !16, !noundef !4
  %i.d = icmp eq i8 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %i.g, 1                          ; 2 uses
  store i64 %i.i, ptr %i.f, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e, !prof !8

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueNtB6_5Debug3fmtBA_, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @810, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @811) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.b
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue7eq_type(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 13 uses
  %i.g = alloca [48 x i8], align 8                ; 13 uses
  %i.h = load i8, ptr %0, align 8, !range !16, !noundef !4
  switch i8 %i.h, label %bb.i [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 6, label %bb.f
    i8 7, label %bb.g
    i8 8, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 8, !range !16, !noundef !4
  %i.j = icmp eq i8 %i.i, 1
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %1, align 8, !range !16, !noundef !4
  %i.l = icmp eq i8 %i.k, 2
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.m = load i8, ptr %1, align 8, !range !16, !noundef !4
  %i.n = icmp eq i8 %i.m, 3
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.o = load i8, ptr %1, align 8, !range !16, !noundef !4
  %i.p = icmp eq i8 %i.o, 4
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.q = load i8, ptr %1, align 8, !range !16, !noundef !4
  %i.r = icmp eq i8 %i.q, 6
  br i1 %i.r, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.s = load i8, ptr %1, align 8, !range !16, !noundef !4
  %i.t = icmp eq i8 %i.s, 7
  br i1 %i.t, label %bb.q, label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.u = load i8, ptr %1, align 8, !range !16, !noundef !4
  %i.v = icmp eq i8 %i.u, 8
  br i1 %i.v, label %bb.ar, label %bb.i

bb.i:                                             ; preds = %bb.as, %bb.at, %bb.a, %bb.f, %bb.g, %bb.h, %bb.bh, %bb.ba, %bb.ao, %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.db, %bb.ba ], [ %i.j, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %.sroa.0.0.i, %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit ], [ %i.cn, %bb.ao ], [ %i.de, %bb.bh ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.at ], [ false, %bb.as ]
  ret i1 %.sroa.0.0.shrunk

bb.j:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6736, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6737, !noundef !4
  %.not.i = icmp eq i64 %i.ab, %i.ad
  br i1 %.not.i, label %bb.k, label %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipRINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEBN_EB2b_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ae), !inline_history !6738
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !noalias !6739
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !6739 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6739
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !6739 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %bb.k
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.k ], [ %i.aj, %bb.p ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.k ], [ %i.ah, %bb.p ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0), "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.ag = icmp eq ptr %.sroa.0.0, %.sroa.6.0.copyload
  br i1 %i.ag, label %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 200
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0), "nonnull"(ptr %.sroa.9.0.copyload) ]
  %i.ai = icmp eq ptr %.sroa.7.0, %.sroa.9.0.copyload
  br i1 %i.ai, label %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 200
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.o, label %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.aq, i64 %i.al), !inline_history !6738
  %.not2.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not2.i, label %bb.p, label %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 120
  %i.av = call noundef zeroext i1 @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue7eq_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au), !inline_history !6738
  br i1 %i.av, label %bb.l, label %_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.m, %bb.l, %bb.j
  %.sroa.0.0.i = phi i1 [ false, %bb.j ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ true, %bb.l ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6741)
  %i.az = load i64, ptr %i.ay, align 8, !range !17, !alias.scope !6741, !noundef !4
  switch i64 %i.az, label %default.unreachable [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.v
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit, %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 2, ptr %i.ba, align 8, !alias.scope !6740
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 -1, ptr %i.bb, align 8, !alias.scope !6740
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit

bb.s:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.bc, align 8, !alias.scope !6740
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit

bb.t:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 2, ptr %i.bd, align 1, !alias.scope !6740
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit

bb.u:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 2, ptr %i.be, align 8, !alias.scope !6740
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 -1, ptr %i.bf, align 8, !alias.scope !6740
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit

bb.v:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !6741, !nonnull !4, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !6741, !noundef !4
  %.not.i8 = icmp eq i64 %i.bj, 0
  br i1 %.not.i8, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #47, !noalias !6742
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.bh, align 8, !noalias !6742, !nonnull !4, !noundef !4 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !6742, !noundef !4 ; 2 uses
  %i.bm = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bn, ptr %i.bk, align 8, !noalias !6742
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.y, label %bb.z, !prof !8

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.trap()
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bp = load ptr, ptr %i.bh, align 8, !noalias !6742, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bp, ptr %i.bq, align 8, !alias.scope !6740
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit

_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit: ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.z
  %.sink.i = phi i8 [ 6, %bb.z ], [ 4, %bb.u ], [ 1, %bb.t ], [ 2, %bb.s ], [ 3, %bb.r ]
  store i8 %.sink.i, ptr %i.g, align 8, !alias.scope !6740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6744)
  %i.bu = load i64, ptr %i.bt, align 8, !range !17, !alias.scope !6744, !noundef !4
  switch i64 %i.bu, label %default.unreachable [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
  ]

bb.aa:                                            ; preds = %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 2, ptr %i.bv, align 8, !alias.scope !6743
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 -1, ptr %i.bw, align 8, !alias.scope !6743
  br label %bb.al

bb.ab:                                            ; preds = %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.bx, align 8, !alias.scope !6743
  br label %bb.al

bb.ac:                                            ; preds = %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 2, ptr %i.by, align 1, !alias.scope !6743
  br label %bb.al

bb.ad:                                            ; preds = %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 2, ptr %i.bz, align 8, !alias.scope !6743
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 -1, ptr %i.ca, align 8, !alias.scope !6743
  br label %bb.al

bb.ae:                                            ; preds = %_RNvMNtNtCs7gfv9tzbXmh_6yara_x5types5arrayNtB2_5Array6deputy.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !6744, !nonnull !4, !noundef !4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !6744, !noundef !4
  %.not.i9 = icmp eq i64 %i.ce, 0
  br i1 %.not.i9, label %bb.af, label %bb.ag, !prof !8

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #47
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cf = load ptr, ptr %i.cc, align 8, !noalias !6745, !nonnull !4, !noundef !4 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !6745, !noundef !4 ; 2 uses
  %i.ch = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = add i64 %i.cg, 1                        ; 2 uses
  store i64 %i.ci, ptr %i.cf, align 8, !noalias !6745
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.ah, label %bb.ai, !prof !8

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ck = load ptr, ptr %i.cc, align 8, !noalias !6745, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !alias.scope !6743
  br label %bb.al

bb.aj:                                            ; preds = %bb.am, %bb.ak
  %.pn5 = phi { ptr, i32 } [ %i.cm, %bb.ak ], [ %i.co, %bb.am ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #44
          to label %bb.aq unwind label %bb.ap

bb.ak:                                            ; preds = %bb.af, %bb.an
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sink.i10 = phi i8 [ 6, %bb.ai ], [ 4, %bb.ad ], [ 1, %bb.ac ], [ 2, %bb.ab ], [ 3, %bb.aa ]
  store i8 %.sink.i10, ptr %i.f, align 8, !alias.scope !6743
  %i.cn = invoke noundef zeroext i1 @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue7eq_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
          to label %bb.an unwind label %bb.am

end_hunk_2
begin_hunk_3_@_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler6report13level_as_text
define { ptr, i64 } @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler6report13level_as_text(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = load i64, ptr %0, align 8, !range !30, !noundef !4
  %.not = icmp eq i64 %i.c, -3
  br i1 %.not, label %switch.lookup, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelNtB6_5Debug3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1591, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1592) #47
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !45, !noundef !4 ; 2 uses
  %i.f = zext nneg i8 %i.e to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler6report13level_as_text, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.g = zext nneg i8 %i.e to i64
  %switch.gep5 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler6report13level_as_text.638, i64 %i.g
  %switch.load6 = load ptr, ptr %switch.gep5, align 8
  %i.h = insertvalue { ptr, i64 } poison, ptr %switch.load6, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %switch.ext, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x8compiler6report16get_source_slice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 6 uses
  %i.g = call noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSj15partition_pointNCNvNtNtCs7gfv9tzbXmh_6yara_x8compiler6report16get_source_slice0EBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.h = call i64 @llvm.usub.sat.i64(i64 %i.g, i64 1) ; 4 uses
  %i.i = call noundef i64 @_RINvMNtCskKLDkoKarTP_4core5sliceSj15partition_pointNCNvNtNtCs7gfv9tzbXmh_6yara_x8compiler6report16get_source_slices_0EBV_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %i.j = icmp ult i64 %i.h, %i.f
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 8 uses
  %i.m = call i64 @llvm.umax.i64(i64 %i.i, i64 1) ; 2 uses
  %i.n = icmp ult i64 %i.f, 1152921504606846976
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ult i64 %i.m, %i.f
  br i1 %i.o, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1593) #47
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  call void @llvm.assume(i1 %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.s = phi i64 [ %.pre, %bb.j ], [ %i.q, %bb.d ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %i.ah, %bb.j ], [ %i.q, %bb.d ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.v = icmp ugt i64 %i.l, %.sroa.0.0
  %i.w = icmp ugt i64 %.sroa.0.0, %i.s
  %or.cond.i = or i1 %i.v, %i.w
  br i1 %or.cond.i, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread10, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i64 %i.l, %i.s
  br i1 %i.x, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %i.l, 0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.z = icmp eq i64 %.sroa.0.0, %i.s
  br i1 %i.z, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !9229, !noundef !4
  %i.ac = icmp sgt i8 %i.ab, -65
  br i1 %i.ac, label %bb.h, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread10, !prof !58

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !9229, !noundef !4
  %i.af = icmp sgt i8 %i.ae, -65
  br i1 %i.af, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread10, !prof !19

bb.j:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.e

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread10: ; preds = %bb.i, %bb.e, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.s, i64 noundef %i.l, i64 noundef %.sroa.0.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1594) #47
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.h, %bb.f, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.ai = sub nuw i64 %.sroa.0.0, %i.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  %i.ak = add nuw nsw i64 %i.h, 1
  store ptr %i.aj, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.an, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCshGqH7AhdwAe_3md58compress4soft8compress(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 1, 144115188075855872) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 4                ; 21 uses
  %.idx = shl nuw nsw i64 %2, 6
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.promoted = load i32, ptr %0, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.5270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.promoted3 = load i32, ptr %i.f, align 4, !alias.scope !9242
  %.promoted4 = load i32, ptr %i.g, align 4, !alias.scope !9242
  %.promoted5 = load i32, ptr %i.h, align 4, !alias.scope !9242
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit
  %i.y = phi i32 [ %.promoted5, %.lr.ph ], [ %i.wi, %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit ] ; 3 uses
  %i.z = phi i32 [ %.promoted4, %.lr.ph ], [ %i.wh, %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit ] ; 4 uses
  %i.aa = phi i32 [ %.promoted3, %.lr.ph ], [ %i.wg, %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit ] ; 7 uses
  %.sroa.0.02 = phi ptr [ %1, %.lr.ph ], [ %i.ac, %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit ] ; 2 uses
  %i.ab = phi i32 [ %.promoted, %.lr.ph ], [ %i.we, %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9243
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, i8 0, i64 64, i1 false), !noalias !9243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9244
  store ptr %.sroa.0.02, ptr %i.b, align 8, !alias.scope !9245, !noalias !9246
  store i64 64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9245, !noalias !9246
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !9245, !noalias !9246
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !9245, !noalias !9246
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !9245, !noalias !9246
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !9247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9244
  %.sroa.0266.0.copyload.i = load ptr, ptr %i.c, align 8, !noalias !9243 ; 8 uses
  %.sroa.0266.0.copyload.i7 = ptrtoaddr ptr %.sroa.0266.0.copyload.i to i64
  %.sroa.4268.0.copyload.i = load ptr, ptr %.sroa.4268.0..sroa_idx.i, align 8, !noalias !9243 ; 8 uses
  %.sroa.4268.0.copyload.i8 = ptrtoaddr ptr %.sroa.4268.0.copyload.i to i64
  %.sroa.6271.0.copyload.i = load i64, ptr %.sroa.6271.0..sroa_idx.i, align 8, !noalias !9243 ; 5 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !9243 ; 5 uses
  %i.ad = icmp ult i64 %.sroa.6271.0.copyload.i, %.sroa.8.0.copyload.i
  br i1 %i.ad, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i, label %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i: ; preds = %bb.a
  %.sroa.5270.0.copyload.i = load i64, ptr %.sroa.5270.0..sroa_idx.i, align 8, !noalias !9243
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0266.0.copyload.i), "nonnull"(ptr %.sroa.4268.0.copyload.i) ]
  %.not.i = icmp eq i64 %.sroa.5270.0.copyload.i, 4
  br i1 %.not.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, label %.critedge.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i
  %i.ae = sub i64 %.sroa.8.0.copyload.i, %.sroa.6271.0.copyload.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  %i.af = sub i64 %.sroa.4268.0.copyload.i8, %.sroa.0266.0.copyload.i7
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.ag = add i64 %.sroa.6271.0.copyload.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add nuw i64 %.sroa.6271.0.copyload.i, %index ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.copyload.i, i64 %i.ah ; 2 uses
  %i.aj = shl i64 %i.ah, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4268.0.copyload.i, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 1, !noalias !9242
  %wide.load9 = load <4 x i32>, ptr %i.al, align 1, !noalias !9242
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load, ptr %i.ai, align 4, !noalias !9242
  store <4 x i32> %wide.load9, ptr %i.am, align 4, !noalias !9242
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !9239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, %middle.block
  %.sroa.6271.0280.i.ph = phi i64 [ %.sroa.6271.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader ], [ %i.ag, %middle.block ] ; 4 uses
  %i.ao = sub i64 %.sroa.8.0.copyload.i, %.sroa.6271.0280.i.ph
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol
  %.sroa.6271.0280.i.prol = phi i64 [ %i.ap, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol ], [ %.sroa.6271.0280.i.ph, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol ], [ 0, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10 ]
  %i.ap = add nuw i64 %.sroa.6271.0280.i.prol, 1  ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.copyload.i, i64 %.sroa.6271.0280.i.prol
  %i.ar = shl i64 %.sroa.6271.0280.i.prol, 2
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4268.0.copyload.i, i64 %i.ar
  %.sroa.0262.0.copyload.i.prol = load i32, ptr %i.as, align 1, !noalias !9242
  store i32 %.sroa.0262.0.copyload.i.prol, ptr %i.aq, align 4, !noalias !9242
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol, !llvm.loop !9240

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10
  %.sroa.6271.0280.i.unr = phi i64 [ %.sroa.6271.0280.i.ph, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader10 ], [ %i.ap, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol ]
  %i.at = sub i64 %.sroa.6271.0280.i.ph, %.sroa.8.0.copyload.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i
  %.sroa.6271.0280.i = phi i64 [ %i.bh, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i ], [ %.sroa.6271.0280.i.unr, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol.loopexit ] ; 6 uses
  %i.av = add nuw i64 %.sroa.6271.0280.i, 1       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.copyload.i, i64 %.sroa.6271.0280.i
  %i.ax = shl i64 %.sroa.6271.0280.i, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.4268.0.copyload.i, i64 %i.ax
  %.sroa.0262.0.copyload.i = load i32, ptr %i.ay, align 1, !noalias !9242
  store i32 %.sroa.0262.0.copyload.i, ptr %i.aw, align 4, !noalias !9242
  %i.az = add nuw i64 %.sroa.6271.0280.i, 2       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.copyload.i, i64 %i.av
  %i.bb = shl i64 %i.av, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4268.0.copyload.i, i64 %i.bb
  %.sroa.0262.0.copyload.i.1 = load i32, ptr %i.bc, align 1, !noalias !9242
  store i32 %.sroa.0262.0.copyload.i.1, ptr %i.ba, align 4, !noalias !9242
  %i.bd = add nuw i64 %.sroa.6271.0280.i, 3       ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.copyload.i, i64 %i.az
  %i.bf = shl i64 %i.az, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.4268.0.copyload.i, i64 %i.bf
  %.sroa.0262.0.copyload.i.2 = load i32, ptr %i.bg, align 1, !noalias !9242
  store i32 %.sroa.0262.0.copyload.i.2, ptr %i.be, align 4, !noalias !9242
  %i.bh = add nuw i64 %.sroa.6271.0280.i, 4       ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0.copyload.i, i64 %i.bd
  %i.bj = shl i64 %i.bd, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.4268.0.copyload.i, i64 %i.bj
  %.sroa.0262.0.copyload.i.3 = load i32, ptr %i.bk, align 1, !noalias !9242
  store i32 %.sroa.0262.0.copyload.i.3, ptr %i.bi, align 4, !noalias !9242
  %exitcond.not.i.3 = icmp eq i64 %i.bh, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.3, label %_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i, !llvm.loop !9241

.critedge.i:                                      ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.lr.ph.i
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1596) #47, !noalias !9242
  unreachable

_RNvNtNtCshGqH7AhdwAe_3md58compress4soft14compress_block.exit: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.prol.loopexit, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutmEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCs7gfv9tzbXmh_6yara_x.exit.i, %middle.block, %bb.a
  %i.bl = load i32, ptr %i.d, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.bm = and i32 %i.z, %i.aa
  %i.bn = xor i32 %i.aa, -1
  %i.bo = and i32 %i.y, %i.bn
  %i.bp = add i32 %i.ab, -680876936
  %i.bq = add i32 %i.bp, %i.bm
  %i.br = add i32 %i.bq, %i.bo
  %i.bs = add i32 %i.br, %i.bl                    ; 2 uses
  %i.bt = call noundef i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 7)
  %i.bu = add i32 %i.bt, %i.aa                    ; 6 uses
  %i.bv = load i32, ptr %i.j, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.bw = and i32 %i.bu, %i.aa
  %i.bx = xor i32 %i.bu, -1
  %i.by = and i32 %i.z, %i.bx
  %i.bz = add i32 %i.y, -389564586
  %i.ca = add i32 %i.bz, %i.bv
  %i.cb = add i32 %i.ca, %i.by
  %i.cc = add i32 %i.cb, %i.bw                    ; 2 uses
  %i.cd = call noundef i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 12)
  %i.ce = add i32 %i.cd, %i.bu                    ; 6 uses
  %i.cf = load i32, ptr %i.k, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.cg = and i32 %i.ce, %i.bu
  %i.ch = xor i32 %i.ce, -1
  %i.ci = and i32 %i.aa, %i.ch
  %i.cj = add i32 %i.z, 606105819
  %i.ck = add i32 %i.cj, %i.cf
  %i.cl = add i32 %i.ck, %i.ci
  %i.cm = add i32 %i.cl, %i.cg                    ; 2 uses
  %i.cn = call noundef i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cm, i32 17)
  %i.co = add i32 %i.cn, %i.ce                    ; 6 uses
  %i.cp = load i32, ptr %i.l, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.cq = and i32 %i.co, %i.ce
  %i.cr = xor i32 %i.co, -1
  %i.cs = and i32 %i.bu, %i.cr
  %i.ct = add i32 %i.aa, -1044525330
  %i.cu = add i32 %i.ct, %i.cp
  %i.cv = add i32 %i.cu, %i.cs
  %i.cw = add i32 %i.cv, %i.cq                    ; 2 uses
  %i.cx = call noundef i32 @llvm.fshl.i32(i32 %i.cw, i32 %i.cw, i32 22)
  %i.cy = add i32 %i.cx, %i.co                    ; 6 uses
  %i.cz = load i32, ptr %i.m, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.da = and i32 %i.cy, %i.co
  %i.db = xor i32 %i.cy, -1
  %i.dc = and i32 %i.ce, %i.db
  %i.dd = add i32 %i.bu, -176418897
  %i.de = add i32 %i.dd, %i.cz
  %i.df = add i32 %i.de, %i.dc
  %i.dg = add i32 %i.df, %i.da                    ; 2 uses
  %i.dh = call noundef i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 7)
  %i.di = add i32 %i.dh, %i.cy                    ; 6 uses
  %i.dj = load i32, ptr %i.n, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.dk = and i32 %i.di, %i.cy
  %i.dl = xor i32 %i.di, -1
  %i.dm = and i32 %i.co, %i.dl
  %i.dn = add i32 %i.dj, 1200080426
  %i.do = add i32 %i.dn, %i.ce
  %i.dp = add i32 %i.do, %i.dm
  %i.dq = add i32 %i.dp, %i.dk                    ; 2 uses
  %i.dr = call noundef i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 12)
  %i.ds = add i32 %i.dr, %i.di                    ; 6 uses
  %i.dt = load i32, ptr %i.o, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.du = and i32 %i.ds, %i.di
  %i.dv = xor i32 %i.ds, -1
  %i.dw = and i32 %i.cy, %i.dv
  %i.dx = or i32 %i.du, %i.dw
  %i.dy = add i32 %i.dt, -1473231341
  %i.dz = add i32 %i.dy, %i.co
  %i.ea = add i32 %i.dz, %i.dx                    ; 2 uses
  %i.eb = call noundef i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 17)
  %i.ec = add i32 %i.eb, %i.ds                    ; 6 uses
  %i.ed = load i32, ptr %i.p, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.ee = and i32 %i.ec, %i.ds
  %i.ef = xor i32 %i.ec, -1
  %i.eg = and i32 %i.di, %i.ef
  %i.eh = or i32 %i.ee, %i.eg
  %i.ei = add i32 %i.ed, -45705983
  %i.ej = add i32 %i.ei, %i.cy
  %i.ek = add i32 %i.ej, %i.eh                    ; 2 uses
  %i.el = call noundef i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 22)
  %i.em = add i32 %i.el, %i.ec                    ; 6 uses
  %i.en = load i32, ptr %i.q, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.eo = and i32 %i.em, %i.ec
  %i.ep = xor i32 %i.em, -1
  %i.eq = and i32 %i.ds, %i.ep
  %i.er = or i32 %i.eo, %i.eq
  %i.es = add i32 %i.en, 1770035416
  %i.et = add i32 %i.es, %i.di
  %i.eu = add i32 %i.et, %i.er                    ; 2 uses
  %i.ev = call noundef i32 @llvm.fshl.i32(i32 %i.eu, i32 %i.eu, i32 7)
  %i.ew = add i32 %i.ev, %i.em                    ; 6 uses
  %i.ex = load i32, ptr %i.r, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.ey = and i32 %i.ew, %i.em
  %i.ez = xor i32 %i.ew, -1
  %i.fa = and i32 %i.ec, %i.ez
  %i.fb = or i32 %i.ey, %i.fa
  %i.fc = add i32 %i.ex, -1958414417
  %i.fd = add i32 %i.fc, %i.ds
  %i.fe = add i32 %i.fd, %i.fb                    ; 2 uses
  %i.ff = call noundef i32 @llvm.fshl.i32(i32 %i.fe, i32 %i.fe, i32 12)
  %i.fg = add i32 %i.ff, %i.ew                    ; 6 uses
  %i.fh = load i32, ptr %i.s, align 4, !noalias !9243, !noundef !4 ; 4 uses
  %i.fi = and i32 %i.fg, %i.ew
  %i.fj = xor i32 %i.fg, -1
  %i.fk = and i32 %i.em, %i.fj
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEENtNtNtB1o_3ops4drop4Drop4dropB1Y_:bb.a

.lr.ph12.i.i.i:                                   ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit8.i.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit8.i.i.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.0.110.i.i.i ; 2 uses
  %i.as = add i64 %.sroa.0.110.i.i.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9322)
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !9323, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noalias !9324, !noundef !4
  %i.av = add i64 %i.au, -1                       ; 2 uses
  store i64 %i.av, ptr %i.at, align 8, !noalias !9324
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit8.i.i.i

bb.h:                                             ; preds = %.lr.ph12.i.i.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEE9drop_slowB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #46
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit8.i.i.i unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit8.i.i.i: ; preds = %bb.h, %.lr.ph12.i.i.i
  %i.ax = icmp eq i64 %i.as, %.sroa.11.0
  br i1 %i.ax, label %common.resume, label %.lr.ph12.i.i.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit8.i.i.i, %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.y, %.body ], [ %i.ap, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit8.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque7DropperINtNtBI_2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEEB2a_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1v_.exit.i.i.i, %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEEB1w_.exit
  ret void

bb.j:                                             ; preds = %.body
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs5lEgW3tfVqv_6walrus2ir5BlockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCs5lEgW3tfVqv_6walrus2ir5BlockE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !9327 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeQNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeQNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !9330 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtB1a_7scanner7matches16UnconfirmedMatchEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeTNtNtCs7gfv9tzbXmh_6yara_x8compiler12SubPatternIdNtNtNtB1b_7scanner7matches16UnconfirmedMatchEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1b_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !9333 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeTjhhlEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !9336 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTlTNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ResourceIdB18_B18_ERShEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeTlTNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules2pe6parser10ResourceIdB19_B19_ERShEE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullEB1h_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !9339 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess3_1__NtBa_9TypeValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB10_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1700, i64 noundef 14)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess5_1__NtBa_16StringConstraintNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB18_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1701, i64 noundef 21)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess7_1__NtBa_17IntegerConstraintNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB19_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1702, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtBa_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtBZ_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1703, i64 noundef 8)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types4funcs1_1__NtBa_13FuncSignatureNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1c_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1704, i64 noundef 20)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types4funcs3_1__NtBa_4FuncNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB12_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1705, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types5arrays_1__NtBa_5ArrayNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB13_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1706, i64 noundef 10)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types9structures1_1__NtBa_17DeprecationNoticeNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1l_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1707, i64 noundef 24)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types9structures3_1__NtBa_11StructFieldNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1f_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1708, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types9structures5_1__NtBa_6StructNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB19_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1709, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types9structures_1__NtBa_8AclEntryNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1a_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1710, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess3_1__NtBg_9TypeValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB16_7Visitor10visit_enumNtB5_9___VisitorB2h_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1711, i64 noundef 30)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtBg_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB15_7Visitor10visit_enumNtB5_9___VisitorB2g_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1712, i64 noundef 31)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs7gfv9tzbXmh_6yara_x5typesNtNtCs5lEgW3tfVqv_6walrus2ir12InstrSeqTypeINtNtCskKLDkoKarTP_4core7convert4FromNtB5_4TypeE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef range(i8 0, 10) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs0_NtCs7gfv9tzbXmh_6yara_x5typesNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeINtNtCskKLDkoKarTP_4core7convert4FromNtB5_4TypeE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x5types9structureNtB5_6StructNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipRINtNtCs907JfTDu8Xv_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEBN_EB2b_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1)
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload, %bb.b ], [ %i.i, %bb.g ] ; 6 uses
  %.sroa.0.05 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ %i.g, %bb.g ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.05), "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.f = icmp eq ptr %.sroa.0.05, %.sroa.6.0.copyload
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 200
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0), "nonnull"(ptr %.sroa.9.0.copyload) ]
  %i.h = icmp eq ptr %.sroa.7.0, %.sroa.9.0.copyload
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 200
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %bcmp = call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k)
  %.not2 = icmp eq i32 %bcmp, 0
  br i1 %.not2, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 120
  %i.u = call noundef zeroext i1 @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue7eq_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
  br i1 %i.u, label %bb.c, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess3_1__NtBg_9TypeValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB16_7Visitor10visit_enumNtB5_s_14___FieldVisitorB2h_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1697, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NvXs0_NvXNvNtNtCs7gfv9tzbXmh_6yara_x5types3maps_1__NtBg_3MapNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB15_7Visitor10visit_enumNtB5_s_14___FieldVisitorB2g_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1697, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs6ObhOmryMwL_8smallvec8SmallVecANtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpj2_ENtB6_5Debug3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !66, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9346
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !9345
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 16, !alias.scope !9347, !noundef !4 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 2                     ; 2 uses
  %i.f = load ptr, ptr %i.b, align 16, !alias.scope !9347, !nonnull !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !9347
  %.sink11.i.i = select i1 %i.e, ptr %i.f, ptr %i.b ; 2 uses
  %.sink10.i.i = select i1 %i.e, i64 %i.h, i64 %i.d
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpINtNtNtBa_5slice4iter4IterB14_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink11.i.i, ptr noundef nonnull %i.i)
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9346
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtB8_4sync6atomic6AtomicjENtB6_5Debug3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs15_NtNtCskKLDkoKarTP_4core4sync6atomicINtB6_6AtomicjENtNtBa_3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs3qXrMTCDNMF_3der3tag3TagNtB6_5Debug3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtCs3qXrMTCDNMF_3der3tagNtB5_3TagNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7gfv9tzbXmh_6yara_x5types4TypeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9352)
  %i.b = load i8, ptr %i.a, align 1, !range !16, !alias.scope !9351, !noundef !4
  %i.c = load ptr, ptr %1, align 8, !alias.scope !9352, !nonnull !4, !noundef !4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !9352, !nonnull !4, !align !5, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !noalias !9353, !nonnull !4 ; 10 uses
  switch i8 %i.b, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1771, i64 noundef 7) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1808, i64 noundef 7) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1809, i64 noundef 5) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1810, i64 noundef 7) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1684, i64 noundef 6) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1811, i64 noundef 6) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1782, i64 noundef 6) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1783, i64 noundef 5) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 3) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1784, i64 noundef 8) #49, !noalias !9353, !inline_history !9354
  br label %_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs_NtCs7gfv9tzbXmh_6yara_x5typesNtB4_4TypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.m, %bb.g ], [ %i.i, %bb.c ], [ %i.q, %bb.k ], [ %i.j, %bb.d ], [ %i.o, %bb.i ], [ %i.k, %bb.e ], [ %i.p, %bb.j ], [ %i.l, %bb.f ], [ %i.n, %bb.h ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7gfv9tzbXmh_6yara_x5types6RegexpNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9358
  store ptr %i.b, ptr %i.a, align 8, !noalias !9358
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1802)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9358
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs7gfv9tzbXmh_6yara_x5types9TypeValueNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs7_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs8i8OXXXhiTZ_4spki5error5ErrorNtB6_5Debug3fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9362)
  %i.d = load i32, ptr %i.c, align 8, !range !9363, !alias.scope !9362, !noundef !4 ; 3 uses
  %i.e = icmp ne i32 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i32 %i.d, -2
  %i.g = icmp samesign ugt i32 %i.d, 1
  %narrow.i = select i1 %i.g, i32 %i.f, i32 1
  switch i32 %narrow.i, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable
end_hunk_4
begin_hunk_5_@_RNvXs7_NtNtCs7gfv9tzbXmh_6yara_x5types4funcNtB5_4FuncINtNtCskKLDkoKarTP_4core7convert4FromReE4fromB9_:bb.a
  ret void

bb.ar:                                            ; preds = %bb.at, %bb.al
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.as:                                            ; preds = %bb.ah
  unreachable

bb.at:                                            ; preds = %.thread, %bb.aa
  %.pn1425 = phi { ptr, i32 } [ %i.bz, %.thread ], [ %.pn, %bb.aa ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x5types4func13FuncSignatureEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.q) #44
          to label %common.resume unwind label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess3_1__NtBg_9TypeValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB16_7Visitor10visit_enumNtB5_s1_14___FieldVisitorB2h_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1697, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs9_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValueNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #21 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !16, !noundef !4
  %i.b = load i8, ptr %1, align 8, !range !16, !noundef !4 ; 10 uses
  switch i8 %i.a, label %default.unreachable26 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

default.unreachable26:                            ; preds = %bb.y, %bb.u, %bb.q, %bb.m, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.b, 0
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.b, 1
  br i1 %i.d, label %bb.l, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.d:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.b, 2
  br i1 %i.e, label %bb.p, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.e:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.b, 3
  br i1 %i.f, label %bb.t, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.f:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.b, 4
  br i1 %i.g, label %bb.x, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.g:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.b, 5
  br i1 %i.h, label %bb.ad, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.h:                                             ; preds = %bb.a
  %i.i = icmp eq i8 %i.b, 6
  br i1 %i.i, label %bb.ag, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.i:                                             ; preds = %bb.a
  %i.j = icmp eq i8 %i.b, 7
  br i1 %i.j, label %bb.ah, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.j:                                             ; preds = %bb.a
  %i.k = icmp eq i8 %i.b, 8
  br i1 %i.k, label %bb.ai, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.k:                                             ; preds = %bb.a
  %i.l = icmp eq i8 %i.b, 9
  br i1 %i.l, label %bb.aj, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.ae, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.af, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.c, %bb.b ], [ false, %bb.ae ], [ %i.cg, %bb.aj ], [ %i.s, %bb.o ], [ %i.z, %bb.s ], [ %i.ag, %bb.w ], [ %i.bm, %bb.af ], [ %.mux, %bb.ad ], [ false, %bb.c ], [ %i.ao, %_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i ], [ %i.br, %bb.ag ], [ %i.bw, %bb.ah ], [ %i.cb, %bb.ai ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.m ], [ false, %bb.l ], [ %i.r, %bb.n ], [ true, %bb.q ], [ false, %bb.p ], [ %i.y, %bb.r ], [ true, %bb.u ], [ false, %bb.t ], [ %i.af, %bb.v ], [ true, %bb.y ], [ false, %bb.x ], [ false, %bb.aa ], [ false, %bb.ac ], [ true, %bb.ab ], [ true, %bb.z ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val = load i8, ptr %i.m, align 1, !range !12, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val2 = load i8, ptr %i.o, align 2             ; 2 uses
  %.val3 = load i8, ptr %i.n, align 1, !range !12, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val4 = load i8, ptr %i.p, align 2             ; 2 uses
  %i.q = icmp eq i8 %.val, %.val3
  br i1 %i.q, label %bb.m, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.m:                                             ; preds = %bb.l
  switch i8 %.val, label %default.unreachable26 [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
  ]

bb.n:                                             ; preds = %bb.m
  %i.r = icmp eq i8 %.val2, %.val4
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.o:                                             ; preds = %bb.m
  %i.s = icmp eq i8 %.val2, %.val4
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.p:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.t, align 8, !range !35, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load double, ptr %i.v, align 8         ; 2 uses
  %.val7 = load i64, ptr %i.u, align 8, !range !35, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8 = load double, ptr %i.w, align 8         ; 2 uses
  %i.x = icmp eq i64 %.val5, %.val7
  br i1 %i.x, label %bb.q, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.q:                                             ; preds = %bb.p
  switch i64 %.val5, label %default.unreachable26 [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
  ]

bb.r:                                             ; preds = %bb.q
  %i.y = fcmp oeq double %.val6, %.val8
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.s:                                             ; preds = %bb.q
  %i.z = fcmp oeq double %.val6, %.val8
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.t:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val9 = load i64, ptr %i.aa, align 8, !range !35, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load i64, ptr %i.ac, align 8          ; 2 uses
  %.val11 = load i64, ptr %i.ab, align 8, !range !35, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val12 = load i64, ptr %i.ad, align 8          ; 2 uses
  %i.ae = icmp eq i64 %.val9, %.val11
  br i1 %i.ae, label %bb.u, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.u:                                             ; preds = %bb.t
  switch i64 %.val9, label %default.unreachable26 [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
  ]

bb.v:                                             ; preds = %bb.u
  %i.af = icmp eq i64 %.val10, %.val12
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.w:                                             ; preds = %bb.u
  %i.ag = icmp eq i64 %.val10, %.val12
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.x:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val13 = load i64, ptr %i.ah, align 8, !range !35, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.aj, align 8          ; 7 uses
  %.val15 = load i64, ptr %i.ai, align 8, !range !35, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val16 = load ptr, ptr %i.ak, align 8          ; 7 uses
  %i.al = icmp eq i64 %.val13, %.val15
  br i1 %i.al, label %bb.y, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.y:                                             ; preds = %bb.x
  switch i64 %.val13, label %default.unreachable26 [
    i64 0, label %bb.z
    i64 1, label %bb.ab
    i64 2, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
  ]

_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i: ; preds = %bb.ac, %bb.aa
  %.val2.i.i5.sink.i = phi i64 [ %.val2.i.i.i, %bb.aa ], [ %.val2.i.i5.i, %bb.ac ]
  %i.am = getelementptr i8, ptr %.val16, i64 24
  %.val3.i.i8.i = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr i8, ptr %.val14, i64 24
  %.val.i.i9.i = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i10.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i9.i, ptr nonnull readonly %.val3.i.i8.i, i64 %.val2.i.i5.sink.i)
  %i.ao = icmp eq i32 %bcmp.i.i.i10.i, 0
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14), "nonnull"(ptr %.val16) ]
  %i.ap = icmp eq ptr %.val14, %.val16
  br i1 %i.ap, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = getelementptr i8, ptr %.val14, i64 32
  %.val2.i.i.i = load i64, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  %i.ar = getelementptr i8, ptr %.val16, i64 32
  %.val4.i.i.i = load i64, ptr %i.ar, align 8, !noundef !4
  %i.as = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.as, label %_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ab:                                            ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14), "nonnull"(ptr %.val16) ]
  %i.at = icmp eq ptr %.val14, %.val16
  br i1 %i.at, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.au = getelementptr i8, ptr %.val14, i64 32
  %.val2.i.i5.i = load i64, ptr %i.au, align 8, !noundef !4 ; 2 uses
  %i.av = getelementptr i8, ptr %.val16, i64 32
  %.val4.i.i6.i = load i64, ptr %i.av, align 8, !noundef !4
  %i.aw = icmp eq i64 %.val2.i.i5.i, %.val4.i.i6.i
  br i1 %i.aw, label %_RNvXsH_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x.exit.sink.split.i, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ad:                                            ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !10, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ay, -1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !10, !noundef !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -1
  %brmerge = or i1 %.not, %i.bb
  %i.bc = and i64 %i.ay, %i.ba
  %.mux = icmp eq i64 %i.bc, -1
  br i1 %brmerge, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.af, label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.af:                                            ; preds = %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.bl, ptr nonnull %i.bj, i64 %i.be)
  %i.bm = icmp eq i32 %bcmp, 0
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ag:                                            ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4
  %i.br = icmp eq ptr %i.bo, %i.bq
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ah:                                            ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.ai:                                            ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.cb = icmp eq ptr %i.by, %i.ca
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit

bb.aj:                                            ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !4, !noundef !4
  %i.cg = icmp eq ptr %i.cd, %i.cf
  br label %_RNvXsl_NtCs7gfv9tzbXmh_6yara_x5typesINtB5_5ValuebENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCs7gfv9tzbXmh_6yara_x7symbolsNtB5_18StackedSymbolTableNtB5_12SymbolLookup6lookup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9781)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9781, !noundef !4
  %.val.i = load i64, ptr %1, align 8, !alias.scope !9781 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !9781
  %i.e = tail call { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs7gfv9tzbXmh_6yara_x(i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !noalias !9782 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = sub i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp eq i64 %i.g, %i.f
  br i1 %i.i, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.f, %.val2.i                   ; 2 uses
  %.not.i.i = icmp ult i64 %i.j, %.val.i
  %i.k = select i1 %.not.i.i, i64 0, i64 %.val.i
  %.sroa.04.0.i.i = sub nuw i64 %i.j, %i.k        ; 4 uses
  %i.l = sub i64 %.val.i, %.sroa.04.0.i.i         ; 2 uses
  %.not11.i.i = icmp ult i64 %i.l, %i.h
  br i1 %.not11.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i64 %i.h, %i.l
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add i64 %.sroa.04.0.i.i, %i.h
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.04.0.i.i, %bb.d ], [ %.sroa.04.0.i.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0.i = phi i64 [ %i.n, %bb.d ], [ %.val.i, %bb.c ], [ 0, %bb.a ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.d ], [ %i.m, %bb.c ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9781, !nonnull !4, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.0.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.5.0.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.11.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit
  %.sroa.8.sroa.0.0 = phi ptr [ %i.p, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %.sroa.8.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 4 uses
  %.sroa.8.sroa.7.0 = phi ptr [ %i.s, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 2 uses
  %.sroa.06.sroa.0.0 = phi ptr [ %i.q, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %.sroa.06.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 3 uses
  %.sroa.06.sroa.6.0 = phi ptr [ %i.r, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCs7gfv9tzbXmh_6yara_x7symbols11SymbolTableEEE4iterB1Y_.exit ], [ %.sroa.06.sroa.6.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit ] ; 3 uses
  %i.t = icmp eq ptr %.sroa.8.sroa.0.0, %.sroa.8.sroa.7.0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %.sroa.06.sroa.0.0, %.sroa.06.sroa.6.0
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.8.sroa.0.1 = phi ptr [ %.sroa.06.sroa.0.0, %bb.f ], [ %.sroa.8.sroa.0.0, %bb.e ]
  %.sroa.06.sroa.0.1 = phi ptr [ %.sroa.8.sroa.0.0, %bb.f ], [ %.sroa.06.sroa.0.0, %bb.e ]
  %.sroa.06.sroa.6.1 = phi ptr [ %.sroa.8.sroa.0.0, %bb.f ], [ %.sroa.06.sroa.6.0, %bb.e ]
  %.sink12.i = phi ptr [ %.sroa.06.sroa.6.0, %bb.f ], [ %.sroa.8.sroa.7.0, %bb.e ]
  %i.v = getelementptr inbounds i8, ptr %.sink12.i, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @_RNvXs7_NtCs7gfv9tzbXmh_6yara_x7symbolsINtNtCskKLDkoKarTP_4core4cell7RefCellNtB5_11SymbolTableENtB5_12SymbolLookup6lookup(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.y = load i64, ptr %i.a, align 8, !range !9783, !noundef !4
  %.not2 = icmp eq i64 %i.y, -2
  br i1 %.not2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit, label %bb.j

bb.h:                                             ; preds = %bb.f
  store i64 -2, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEEB11_.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_13ReportBuilderNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMsa_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_13ReportBuilder3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvXs0_NvXNvNtCs7gfv9tzbXmh_6yara_x5typess3_1__NtBg_9TypeValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB16_7Visitor10visit_enumNtB5_s1_9___VisitorB2h_9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1796, i64 noundef 32)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsH_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterAhj4_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !9791, !noundef !4
  %i.h = icmp ugt i64 %i.g, 4
  %i.i = load ptr, ptr %1, align 8, !alias.scope !9791, !nonnull !4
  %.sink11.i = select i1 %i.h, ptr %i.i, ptr %1   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9792
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.l, align 8, !noalias !9792
  invoke void @_RINvXsv_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendhE6extendINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
          to label %_RINvXsu_Cs6ObhOmryMwL_8smallvecINtB6_8SmallVecAhj4_EINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBV_8adapters6cloned6ClonedINtNtNtBX_5slice4iter4IterhEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.b, !noalias !9792

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6ObhOmryMwL_8smallvec8SmallVecAhj4_EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #44
end_hunk_5
