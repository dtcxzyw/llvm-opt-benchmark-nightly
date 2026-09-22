Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.12?download=true
inline.NumInlined: 5045
inline.NumDeleted: 2384
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x:bb.a
  store i64 %.sroa.8.sroa.0.0.insert.insert.i.i.i.i, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 32, !alias.scope !18541, !noalias !18548
  store i64 %.sroa.8.sroa.0.0.insert.insert.i.i.i.i, ptr %i.di, align 32, !alias.scope !18541, !noalias !18548
  store i64 %i.mf, ptr %i.dj, align 8, !alias.scope !18541, !noalias !18548
  store i64 0, ptr %i.cn, align 8, !alias.scope !18541, !noalias !18548
  store i64 %.sroa.8.sroa.0.0.insert.insert.i.i.i.i, ptr %i.dk, align 32, !noalias !18494
  store i8 0, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !noalias !18494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !18494
  store i64 -2, ptr %i.bi, align 8, !noalias !18494
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !18494
  invoke fastcc void @_RINvMs1_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_21OptimisticMagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias nofree noundef align 32 dereferenceable(384) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.cz unwind label %.thread655.loopexit.i.i.i, !noalias !18508

.thread655.loopexit.i.i.i:                        ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %bb.ds, %bb.dn, %bb.dd, %.backedge.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread648thread-pre-split.i.i.i

.thread655.loopexit.split-lp.i.i.i:               ; preds = %bb.dt
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread648thread-pre-split.i.i.i

bb.cy:                                            ; preds = %bb.en
  %lpad.thr_comm.split-lp654.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread605.i.i.i

bb.cz:                                            ; preds = %.backedge.i.i.i
  %i.ok = load i64, ptr %i.bh, align 8, !range !18523, !noalias !18494, !noundef !8 ; 2 uses
  %.not211.i.i.i = icmp eq i64 %i.ok, -2
  %i.ol = load i64, ptr %i.dl, align 8, !noalias !18494 ; 2 uses
  %i.om = load i64, ptr %i.dm, align 8, !noalias !18494 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !18494
  br i1 %.not211.i.i.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.on = load i64, ptr %i.bi, align 8, !range !18523, !alias.scope !18550, !noalias !18494, !noundef !8
  %i.oo = icmp eq i64 %i.on, -2
  br i1 %i.oo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i unwind label %.thread617.loopexit.split-lp.i.loopexit.i.i, !noalias !18508

bb.dc:                                            ; preds = %bb.cz
  %i.op = trunc nuw i64 %i.ol to i1
  br i1 %i.op, label %bb.dd, label %bb.em

bb.dd:                                            ; preds = %bb.dc
  %i.oq = call i64 @llvm.usub.sat.i64(i64 %i.mf, i64 %i.om) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !18551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !18552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ah, i8 0, i64 56, i1 false), !alias.scope !18553, !noalias !18552
  %i.or = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.ah, i64 noundef 56)
          to label %.noexc304.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18508 ; 9 uses

.noexc304.i.i.i:                                  ; preds = %bb.dd
  %.not.i.i.i286.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i286.i.i.i, label %bb.dj, label %bb.de

bb.de:                                            ; preds = %.noexc304.i.i.i
  %i.os = ptrtoint ptr %i.or to i64               ; 4 uses
  %i.ot = and i64 %i.os, 3                        ; 2 uses
  switch i64 %i.ot, label %default.unreachable [
    i64 2, label %bb.df
    i64 3, label %bb.dg
    i64 0, label %bb.dh
    i64 1, label %bb.di
  ], !prof !25

bb.df:                                            ; preds = %bb.de
  %i.ou = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i293.i.i.i unwind label %bb.dk, !noalias !18554

.noexc.i.i.i293.i.i.i:                            ; preds = %bb.df
  %i.ov = lshr i64 %i.os, 32
  %i.ow = trunc nuw i64 %i.ov to i32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !18554, !nonnull !8, !noundef !8
  %i.oz = invoke noundef i8 %i.oy(i32 noundef %i.ow)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i unwind label %bb.dk, !noalias !18554, !inline_history !0

bb.dg:                                            ; preds = %bb.de
  %i.pa = lshr i64 %i.os, 32
  %i.pb = icmp ult ptr %i.or, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i292.i.i.i = trunc i64 %i.pa to i8 ; 2 uses
  %i.pc = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i292.i.i.i, -1
  call void @llvm.assume(i1 %i.pb)
  call void @llvm.assume(i1 %i.pc)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i

bb.dh:                                            ; preds = %bb.de
  %i.pd = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.pe = load i8, ptr %i.pd, align 8, !range !26, !noalias !18554, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i

bb.di:                                            ; preds = %bb.de
  %i.pf = getelementptr i8, ptr %i.or, i64 31
  %i.pg = load i8, ptr %i.pf, align 8, !range !26, !noalias !18554, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i

bb.dj:                                            ; preds = %.noexc304.i.i.i
  %.sroa.029.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ah, align 4, !noalias !18552
  %.not31.i.i.i.i.i.i = icmp eq i32 %.sroa.029.0.copyload.i.i.i.i.i.i, 101075792
  br i1 %.not31.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dk:                                            ; preds = %bb.dl, %.noexc.i.i.i293.i.i.i, %bb.df
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.or) #34
          to label %.thread648thread-pre-split.i.i.i unwind label %bb.do, !noalias !18554

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i: ; preds = %bb.di, %bb.dh, %bb.dg, %.noexc.i.i.i293.i.i.i
  %.sroa.0.0.i.i.i.i288.i.i.i = phi i8 [ %i.pg, %bb.di ], [ %switch.idx.cast.i.i.i.i.i.i292.i.i.i, %bb.dg ], [ %i.pe, %bb.dh ], [ %i.oz, %.noexc.i.i.i293.i.i.i ]
  %i.pi = icmp eq i8 %.sroa.0.0.i.i.i.i288.i.i.i, 37
  br i1 %i.pi, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !18552
  store ptr @400, ptr %i.af, align 8, !noalias !18552, !captures !21
  store i64 24, ptr %i.dn, align 8, !noalias !18552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !18552
  store ptr %i.af, ptr %i.ae, align 8, !noalias !18552
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.46.0..sroa_idx.i.i.i289.i.i.i, align 8, !noalias !18552
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @398, ptr noundef nonnull %i.ae)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i unwind label %bb.dk, !noalias !18554

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !18552
  %i.pj = load i64, ptr %i.ag, align 8, !noalias !18555 ; 3 uses
  %.sroa.19.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.19.8..sroa_idx.i.i.i.i.i, align 8, !noalias !18555
  %.sroa.26.8.copyload.i.i.i.i.i = load i64, ptr %.sroa.26.8..sroa_idx.i.i.i.i.i, align 8, !noalias !18555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !18552
  %i.pk = trunc i64 %i.pj to i40
  %i.pl = lshr i64 %i.pj, 40
  %i.pm = trunc i64 %i.pl to i16
  %i.pn = lshr i64 %i.pj, 56
  %i.po = trunc nuw i64 %i.pn to i8
  switch i64 %i.ot, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
    i64 3, label %bb.dm
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
    i64 1, label %bb.dn
  ], !prof !25

bb.dm:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i
  %i.pp = icmp ult ptr %i.or, inttoptr (i64 188978561024 to ptr)
  %i.pq = and i64 %i.os, 1095216660480
  %i.pr = icmp ne i64 %i.pq, 1095216660480
  call void @llvm.assume(i1 %i.pp)
  call void @llvm.assume(i1 %i.pr)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

bb.dn:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i
  %i.ps = getelementptr i8, ptr %i.or, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ps) ]
  store ptr %i.ps, ptr %i.do, align 8, !alias.scope !18556, !noalias !18552
  store i8 3, ptr %i.ad, align 8, !alias.scope !18556, !noalias !18552
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18508

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.dn, %bb.dm, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !18552
  br label %bb.dp

bb.do:                                            ; preds = %bb.dk
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18554
  unreachable

bb.dp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i, %bb.dj
  %.sroa.9.10..sroa.9.10..sroa.9.15..sroa.549.0.copyload95.i.i.i.i.i = phi i8 [ -128, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %i.po, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ -1, %bb.dj ]
  %.sroa.9.8..sroa.9.8..sroa.9.13..sroa.448.0.copyload.i.i.i.i.i = phi i16 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %i.pm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ -1, %bb.dj ]
  %.sroa.9.3..sroa.9.3..sroa.9.8..sroa.047.0.copyload.i.i.i.i.i = phi i40 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %i.pk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ -1, %bb.dj ]
  %.sroa.19.0.ph.i.i.i.i.i = phi ptr [ %i.or, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %.sroa.19.8.copyload.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ @399, %bb.dj ]
  %.sroa.26.0.ph.i.i.i.i.i = phi i64 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %.sroa.26.8.copyload.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ 32, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !18552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18551
  %i.pu = ptrtoint ptr %.sroa.19.0.ph.i.i.i.i.i to i64
  br label %bb.ei

bb.dq:                                            ; preds = %bb.dj
  %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i = load i64, ptr %.sroa.430.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !18555 ; 5 uses
  %.sroa.9.i.sroa.5.0.copyload.i295.i.i.i = load i16, ptr %.sroa.9.i.sroa.5.0..sroa.430.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 4, !noalias !18555
  %.sroa.9.i.sroa.6.0.copyload.i.i.i.i = load i8, ptr %.sroa.9.i.sroa.6.0..sroa.430.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 2, !noalias !18555
  %.sroa.19.5.copyload.i.i.i.i.i = load ptr, ptr %.sroa.19.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18555
  %.sroa.26.5.copyload.i.i.i.i.i = load i8, ptr %.sroa.26.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18555
  %.sroa.30.5.copyload.i.i.i.i.i = load i64, ptr %.sroa.30.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18555
  %i.pv = load <2 x i64>, ptr %.sroa.28.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18555
  %.sroa.32.5.copyload.i.i.i.i.i = load i64, ptr %.sroa.32.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18555
  %i.pw = load <2 x i64>, ptr %.sroa.31.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !18552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18551
  %i.px = ptrtoint ptr %.sroa.19.5.copyload.i.i.i.i.i to i64 ; 3 uses
  %.sroa.19.5.extract.shift.i.i.i.i.i = lshr i64 %i.px, 40
  %i.py = icmp ult i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, 44
  br i1 %i.py, label %bb.ei, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pz = call i64 @llvm.uadd.sat.i64(i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, i64 12)
  %i.qa = icmp ugt i64 %i.pz, %i.oq
  br i1 %i.qa, label %bb.ei, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !18551
  %i.qb = add i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !18558
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef range(i64 0, -44) %i.qb, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc308.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18508

.noexc308.i.i.i:                                  ; preds = %bb.ds
  %i.qc = load i64, ptr %i.ac, align 8, !range !7, !noalias !18558, !noundef !8
  %i.qd = trunc nuw i64 %i.qc to i1
  %i.qe = load i64, ptr %i.dp, align 8, !range !17, !noalias !18558, !noundef !8 ; 2 uses
  br i1 %i.qd, label %bb.dt, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, !prof !11

bb.dt:                                            ; preds = %.noexc308.i.i.i
  %i.qf = load i64, ptr %i.dq, align 8, !noalias !18558
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.qe, i64 %i.qf) #39
          to label %.noexc309.i.i.i unwind label %.thread655.loopexit.split-lp.i.i.i, !noalias !18508

.noexc309.i.i.i:                                  ; preds = %bb.dt
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %.noexc308.i.i.i
  %i.qg = load ptr, ptr %i.dq, align 8, !noalias !18558, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !18558
  store i64 %i.qe, ptr %i.ai, align 8, !alias.scope !18557, !noalias !18551
  store ptr %i.qg, ptr %i.dr, align 8, !alias.scope !18557, !noalias !18551
  store i64 %i.qb, ptr %i.ds, align 8, !alias.scope !18557, !noalias !18551
  %i.qh = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %.noexc310.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18508 ; 2 uses

.noexc310.i.i.i:                                  ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.qi = extractvalue { ptr, i64 } %i.qh, 0      ; 8 uses
  %i.qj = extractvalue { ptr, i64 } %i.qh, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !18551
  %i.qk = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.qi, i64 noundef %i.qj)
          to label %bb.dw unwind label %bb.dv, !noalias !18559 ; 8 uses

bb.du:                                            ; preds = %bb.ec, %bb.dv
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.qm, %bb.dv ], [ %i.rc, %bb.ec ] ; 2 uses
  %i.ql = icmp eq i64 %i.qj, 0
  br i1 %i.ql, label %.thread648thread-pre-split.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qi) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18559
  br label %.thread648thread-pre-split.i.i.i

bb.dv:                                            ; preds = %bb.ef, %.noexc310.i.i.i
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dw:                                            ; preds = %.noexc310.i.i.i
  %.not.i.i296.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i296.i.i.i, label %bb.ej, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qn = ptrtoint ptr %i.qk to i64               ; 5 uses
  %i.qo = and i64 %i.qn, 3                        ; 2 uses
  switch i64 %i.qo, label %default.unreachable [
    i64 2, label %bb.dy
    i64 3, label %bb.dz
    i64 0, label %bb.ea
    i64 1, label %bb.eb
  ], !prof !25

bb.dy:                                            ; preds = %bb.dx
  %i.qp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i301.i.i.i unwind label %bb.ec, !noalias !18559

.noexc.i.i301.i.i.i:                              ; preds = %bb.dy
  %i.qq = lshr i64 %i.qn, 32
  %i.qr = trunc nuw i64 %i.qq to i32
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !18559, !nonnull !8, !noundef !8
  %i.qu = invoke noundef i8 %i.qt(i32 noundef %i.qr)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i unwind label %bb.ec, !noalias !18559, !inline_history !0

bb.dz:                                            ; preds = %bb.dx
  %i.qv = lshr i64 %i.qn, 32
  %i.qw = icmp ult ptr %i.qk, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i300.i.i.i = trunc i64 %i.qv to i8 ; 2 uses
  %i.qx = icmp ne i8 %switch.idx.cast.i.i.i.i.i300.i.i.i, -1
  call void @llvm.assume(i1 %i.qw)
  call void @llvm.assume(i1 %i.qx)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.ea:                                            ; preds = %bb.dx
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qz = load i8, ptr %i.qy, align 8, !range !26, !noalias !18559, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.eb:                                            ; preds = %bb.dx
  %i.ra = getelementptr i8, ptr %i.qk, i64 31
  %i.rb = load i8, ptr %i.ra, align 8, !range !26, !noalias !18559, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.ec:                                            ; preds = %.noexc.i.i301.i.i.i, %bb.dy
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.qk) #34
          to label %bb.du unwind label %bb.eh, !noalias !18559

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %.noexc.i.i301.i.i.i
  %.sroa.0.0.i.i.i298.i.i.i = phi i8 [ %i.rb, %bb.eb ], [ %switch.idx.cast.i.i.i.i.i300.i.i.i, %bb.dz ], [ %i.qz, %bb.ea ], [ %i.qu, %.noexc.i.i301.i.i.i ]
  %i.rd = icmp eq i8 %.sroa.0.0.i.i.i298.i.i.i, 37
  br i1 %i.rd, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18551
  switch i64 %i.qo, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i
    i64 3, label %bb.ee
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i
    i64 1, label %bb.ef
  ], !prof !25

bb.ee:                                            ; preds = %bb.ed
  %i.re = icmp ult ptr %i.qk, inttoptr (i64 188978561024 to ptr)
  %i.rf = and i64 %i.qn, 1095216660480
  %i.rg = icmp ne i64 %i.rf, 1095216660480
  call void @llvm.assume(i1 %i.re)
  call void @llvm.assume(i1 %i.rg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.rh = getelementptr i8, ptr %i.qk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rh) ]
  store ptr %i.rh, ptr %i.dt, align 8, !alias.scope !18560, !noalias !18551
  store i8 3, ptr %i.ab, align 8, !alias.scope !18560, !noalias !18551
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i unwind label %bb.dv, !noalias !18559

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i: ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !18551
  br label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i
  %.sroa.114.sroa.12.0.i.i.i.i = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ -128, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.114.sroa.11.0.i.i.i.i = phi i16 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.114.sroa.0.0.i.i.i.i = phi i40 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.21.0.i.i.i.i = phi i64 [ ptrtoint (ptr @328 to i64), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ %i.qn, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %i.ri = icmp eq i64 %i.qj, 0
  br i1 %i.ri, label %bb.ei, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i: ; preds = %bb.eg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18559
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ec
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18559
  unreachable

bb.ei:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i, %bb.eg, %bb.dr, %bb.dq, %bb.dp
  %.sroa.114.sroa.12.1.ph.i.i.i.i = phi i8 [ -1, %bb.dr ], [ %.sroa.114.sroa.12.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.114.sroa.12.0.i.i.i.i, %bb.eg ], [ -1, %bb.dq ], [ %.sroa.9.10..sroa.9.10..sroa.9.15..sroa.549.0.copyload95.i.i.i.i.i, %bb.dp ]
  %.sroa.114.sroa.11.1.ph.i.i.i.i = phi i16 [ -1, %bb.dr ], [ %.sroa.114.sroa.11.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.114.sroa.11.0.i.i.i.i, %bb.eg ], [ -1, %bb.dq ], [ %.sroa.9.8..sroa.9.8..sroa.9.13..sroa.448.0.copyload.i.i.i.i.i, %bb.dp ]
  %.sroa.114.sroa.0.1.ph.i.i.i.i = phi i40 [ -1, %bb.dr ], [ %.sroa.114.sroa.0.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.114.sroa.0.0.i.i.i.i, %bb.eg ], [ -1, %bb.dq ], [ %.sroa.9.3..sroa.9.3..sroa.9.8..sroa.047.0.copyload.i.i.i.i.i, %bb.dp ]
  %.sroa.27.1.ph.i.i.i.i = phi i64 [ 36, %bb.dr ], [ 51, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ 51, %bb.eg ], [ 22, %bb.dq ], [ %.sroa.26.0.ph.i.i.i.i.i, %bb.dp ]
  %.sroa.21.1.ph.i.i.i.i = phi i64 [ ptrtoint (ptr @329 to i64), %bb.dr ], [ %.sroa.21.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.21.0.i.i.i.i, %bb.eg ], [ ptrtoint (ptr @330 to i64), %bb.dq ], [ %i.pu, %bb.dp ]
  %.sroa.114.sroa.12.0.insert.ext.i.i.i.i = zext i8 %.sroa.114.sroa.12.1.ph.i.i.i.i to i64
  %.sroa.114.sroa.12.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.114.sroa.12.0.insert.ext.i.i.i.i, 56
  %.sroa.114.sroa.11.0.insert.ext.i.i.i.i = zext i16 %.sroa.114.sroa.11.1.ph.i.i.i.i to i64
  %.sroa.114.sroa.11.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.114.sroa.11.0.insert.ext.i.i.i.i, 40
  %.sroa.114.sroa.11.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.114.sroa.11.0.insert.shift.i.i.i.i, %.sroa.114.sroa.12.0.insert.shift.i.i.i.i
  %.sroa.114.sroa.0.0.insert.ext.i.i.i.i = zext i40 %.sroa.114.sroa.0.1.ph.i.i.i.i to i64
  %.sroa.114.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.114.sroa.11.0.insert.insert.i.i.i.i, %.sroa.114.sroa.0.0.insert.ext.i.i.i.i
  br label %bb.eo

bb.ej:                                            ; preds = %bb.dw
  %.sroa.57.sroa.7.28.insert.ext.i.i.i.i = trunc nuw nsw i64 %.sroa.19.5.extract.shift.i.i.i.i.i to i32
  %.sroa.57.sroa.7.31.insert.ext.i.i.i.i = zext i8 %.sroa.26.5.copyload.i.i.i.i.i to i32
  %.sroa.57.sroa.7.31.insert.shift.i.i.i.i = shl nuw i32 %.sroa.57.sroa.7.31.insert.ext.i.i.i.i, 24
  %.sroa.57.sroa.7.31.insert.insert.i.i.i.i = or disjoint i32 %.sroa.57.sroa.7.31.insert.shift.i.i.i.i, %.sroa.57.sroa.7.28.insert.ext.i.i.i.i
  %.not.i302.i.i.i = icmp eq i32 %.sroa.57.sroa.7.31.insert.insert.i.i.i.i, %i.nq
  br i1 %.not.i302.i.i.i, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.rk = add i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, 12
  %.not20.i.i.i.i = icmp eq i64 %i.rk, %i.oq
  br i1 %.not20.i.i.i.i, label %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.sink64.i.i.i.i = phi ptr [ @362, %bb.ej ], [ @361, %bb.ek ]
  %.sink.i303.i.i.i = phi i64 [ 47, %bb.ej ], [ 35, %bb.ek ] ; 2 uses
  %i.rl = ptrtoint ptr %.sink64.i.i.i.i to i64    ; 2 uses
  %i.rm = icmp eq i64 %i.qj, 0
  br i1 %i.rm, label %bb.eo, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i: ; preds = %bb.el
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18561
  br label %bb.eo

bb.em:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6527.i.i.i)
  %.sroa.0520.0.copyload.i.i.i = load i64, ptr %i.bi, align 8, !noalias !18494 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !18494
  store i64 -1, ptr %i.bg, align 8, !noalias !18494
  store ptr @345, ptr %.sroa.4198.0..sroa_idx.i.i.i, align 8, !noalias !18494
  store i64 21, ptr %.sroa.5199.0..sroa_idx.i.i.i, align 8, !noalias !18494
  %.not.i311.i.i.i = icmp eq i64 %.sroa.0520.0.copyload.i.i.i, -2
  br i1 %.not.i311.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5188.0..sroa_idx189.i.i.i, i64 16, i1 false), !noalias !18494
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.cy, !noalias !18508

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i: ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4198.0..sroa_idx.i.i.i, i64 16, i1 false), !alias.scope !18562, !noalias !18563
  br label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.eo:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i, %bb.el, %bb.ei
  %.sroa.9486.0.ph.i.i.i = phi i64 [ -1, %bb.el ], [ -1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.114.sroa.0.0.insert.insert.i.i.i.i, %bb.ei ] ; 3 uses
  %.sroa.13.0.ph.i.i.i = phi i64 [ %i.rl, %bb.el ], [ %i.rl, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.21.1.ph.i.i.i.i, %bb.ei ] ; 2 uses
  %.sroa.16487.0.ph.i.i.i = phi i64 [ %.sink.i303.i.i.i, %bb.el ], [ %.sink.i303.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.27.1.ph.i.i.i.i, %bb.ei ] ; 2 uses
  %i.rn = load i64, ptr %i.bi, align 8, !range !18523, !alias.scope !18564, !noalias !18494, !noundef !8
  %i.ro = icmp eq i64 %i.rn, -2
  br i1 %i.ro, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i unwind label %bb.ey, !noalias !18508

_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.ek
  %i.rp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.30.5.copyload.i.i.i.i.i, i64 46) ; 2 uses
  %i.rq = extractvalue { i64, i1 } %i.rp, 0
  %i.rr = extractvalue { i64, i1 } %i.rp, 1
  br i1 %i.rr, label %bb.eq, label %bb.er, !prof !11

bb.eq:                                            ; preds = %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.sroa.0179.0.i.i.i = phi i64 [ -1, %bb.eq ], [ %i.rq, %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.rs = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0179.0.i.i.i, i64 %.sroa.32.5.copyload.i.i.i.i.i)
  %i.rt = icmp ult i64 %i.om, %i.rs
  br i1 %i.rt, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ru = zext i32 %.sroa.985.5.copyload.i.i.i.i to i64
  %.sroa.23.28.insert.ext.le.i.i.i = zext i16 %.sroa.11.i.sroa.5.0.copyload.i.i.i to i64
  %.sroa.23.28.insert.shift.le1225.i.i.i = shl nuw nsw i64 %.sroa.23.28.insert.ext.le.i.i.i, 32
  %.sroa.23.28.insert.insert.le.i.i.i = or disjoint i64 %.sroa.23.28.insert.shift.le1225.i.i.i, %i.ru
  %i.rv = shl i56 %.sroa.22.0.copyload.i.i.i.i, 24
  %i.rw = zext i24 %.sroa.11.i.sroa.7.0.copyload.i.i.i to i56
  %.sroa.17435.sroa.0.0.insert.insert671.le.i.i.i = or disjoint i56 %i.rv, %i.rw
  %.sroa.6.16.extract.trunc.le1202.i.i.i = trunc i56 %.sroa.17435.sroa.0.0.insert.insert671.le.i.i.i to i32
  %.sroa.9472.24.extract.trunc.le1198.i.i.i = trunc nuw i64 %.sroa.23.28.insert.insert.le.i.i.i to i48
  %i.rx = sub i64 %i.om, %.sroa.8.sroa.0.0.insert.insert.i.i.i.i
  %.sroa.19.1.extract.shift.i.i.le.i.i.i = lshr i64 %i.px, 8
  %.sroa.19.1.extract.trunc.i.i.le.i.i.i = trunc i64 %.sroa.19.1.extract.shift.i.i.le.i.i.i to i32
  %.sroa.57.sroa.10.32.insert.ext.i.le.i.i.i = zext i16 %.sroa.9.i.sroa.5.0.copyload.i295.i.i.i to i64
  %.sroa.57.sroa.10.34.insert.ext.i.le.i.i.i = zext i8 %.sroa.9.i.sroa.6.0.copyload.i.i.i.i to i64
  %.sroa.57.sroa.10.34.insert.shift.i.le.i.i.i = shl nuw nsw i64 %.sroa.57.sroa.10.34.insert.ext.i.le.i.i.i, 16
  %.sroa.57.sroa.10.34.insert.insert.i.le.i.i.i = or disjoint i64 %.sroa.57.sroa.10.34.insert.shift.i.le.i.i.i, %.sroa.57.sroa.10.32.insert.ext.i.le.i.i.i
  %.sroa.57.sroa.10.35.insert.ext.i.le.i.i.i = shl i64 %i.px, 24
  %.sroa.57.sroa.10.35.insert.shift.i.le.i.i.i = and i64 %.sroa.57.sroa.10.35.insert.ext.i.le.i.i.i, 4278190080
  %.sroa.57.sroa.10.35.insert.insert.i.le.i.i.i = or disjoint i64 %.sroa.57.sroa.10.34.insert.insert.i.le.i.i.i, %.sroa.57.sroa.10.35.insert.shift.i.le.i.i.i
  %i.ry = load i64, ptr %i.bi, align 8, !range !18523, !alias.scope !18565, !noalias !18494, !noundef !8
  %i.rz = icmp eq i64 %i.ry, -2
  br i1 %i.rz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i unwind label %bb.cj, !noalias !18508

bb.eu:                                            ; preds = %bb.er
  %i.sa = load i64, ptr %i.bi, align 8, !range !18523, !alias.scope !18566, !noalias !18494, !noundef !8
  %i.sb = icmp eq i64 %i.sa, -2
  br i1 %i.sb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i unwind label %bb.ew, !noalias !18508

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i: ; preds = %bb.et, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18494
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

bb.ew:                                            ; preds = %bb.ev
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 -1, ptr %i.bi, align 8, !noalias !18494
  store ptr @344, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18494
  store i64 44, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18494
  %i.sd = icmp eq i64 %i.qj, 0
  br i1 %i.sd, label %.thread648thread-pre-split.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i: ; preds = %bb.ew
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18508
  br label %.thread648thread-pre-split.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i: ; preds = %bb.ev, %bb.eu
  store i64 -1, ptr %i.bi, align 8, !noalias !18494
  store ptr @344, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18494
  store i64 44, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18494
  %i.se = icmp eq i64 %i.qj, 0
  br i1 %i.se, label %.backedge.i.i.i.backedge, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18508
  br label %.backedge.i.i.i.backedge

bb.ex:                                            ; preds = %bb.gk, %bb.fa
  %i.sf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18508
  unreachable

bb.ey:                                            ; preds = %bb.ep
  %i.sg = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.9486.0.ph.i.i.i, ptr %i.bi, align 8, !noalias !18494
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18494
  store i64 %.sroa.16487.0.ph.i.i.i, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18494
  br label %.thread648.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i: ; preds = %bb.ep, %bb.eo
  store i64 %.sroa.9486.0.ph.i.i.i, ptr %i.bi, align 8, !noalias !18494
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18494
  store i64 %.sroa.16487.0.ph.i.i.i, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18494
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i
  br label %.backedge.i.i.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i, %bb.en
  %.sroa.0524.0.i.i.i = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i ], [ %.sroa.0520.0.copyload.i.i.i, %bb.en ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !18494
  %i.sh = load i64, ptr %i.bm, align 8, !range !18523, !alias.scope !18567, !noalias !18494, !noundef !8
  %i.si = icmp eq i64 %i.sh, -2
  br i1 %i.si, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i unwind label %.thread645.i.i.i, !noalias !18508

.thread645.i.i.i:                                 ; preds = %bb.ez
  %i.sj = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0524.0.i.i.i, ptr %i.bm, align 8, !noalias !18494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx151.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, i64 16, i1 false), !noalias !18494
  br label %.thread605.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i: ; preds = %bb.ez, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  store i64 %.sroa.0524.0.i.i.i, ptr %i.bm, align 8, !noalias !18494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx151.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, i64 16, i1 false), !noalias !18494
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6527.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18494
  %i.sk = icmp eq i64 %i.ku, 0
  br i1 %i.sk, label %.lr.ph.i.backedge.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18508
  br label %.lr.ph.i.backedge.i.i.i

.lr.ph.i.backedge.i.i.i:                          ; preds = %bb.fy, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i362.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i
  %.not.i1190.i.i.i = icmp ult i64 %.lcssa1252.i.i.i, %.sroa.018.0.i.i
  br i1 %.not.i1190.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i: ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18494
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i
  %.sroa.20.sroa.12.2.in.in.i.i = phi i64 [ %i.ol, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.tn, %bb.fo ] ; 2 uses
  %.sroa.30.sroa.11.2.in.in.i.i = phi i64 [ %i.om, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.to, %bb.fo ] ; 2 uses
  %.sroa.12.2.i.i = phi i64 [ %i.ok, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.tm, %bb.fo ] ; 2 uses
  %.sroa.30.sroa.0.2.i.i = trunc i64 %.sroa.30.sroa.11.2.in.in.i.i to i48 ; 2 uses
  %.sroa.30.sroa.11.2.in.i.i = lshr i64 %.sroa.30.sroa.11.2.in.in.i.i, 48
  %.sroa.30.sroa.11.2.i.i = trunc nuw i64 %.sroa.30.sroa.11.2.in.i.i to i16 ; 2 uses
  %.sroa.20.sroa.0.2.i.i = trunc i64 %.sroa.20.sroa.12.2.in.in.i.i to i32 ; 2 uses
  %.sroa.20.sroa.12.2.in.i.i = lshr i64 %.sroa.20.sroa.12.2.in.in.i.i, 32
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x:bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.wd, i64 %i.we) #39
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.i.i, !noalias !18492

.noexc60.i.i:                                     ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %.noexc59.i.i
  %i.wf = load ptr, ptr %i.ef, align 8, !noalias !18641, !nonnull !8, !noundef !8
  %i.wg = icmp samesign ule i64 %..i.i.i.i, %i.wd
  call void @llvm.assume(i1 %i.wg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !18641
  store i64 %i.wd, ptr %i.w, align 8, !noalias !18641
  store ptr %i.wf, ptr %i.eg, align 8, !noalias !18641
  store i64 0, ptr %i.eh, align 8, !noalias !18641
  %i.wh = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 0, i64 noundef %.sroa.4171.0.copyload.i.i)
          to label %bb.gt unwind label %.loopexit.split-lp.i.i.i.i, !noalias !18642 ; 2 uses

.loopexit.i.i.i.i:                                ; preds = %bb.hf, %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.jy, %bb.hd, %bb.gs
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.kc, %bb.jv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i259.i.i.i.i.i.i, %bb.ju, %bb.hi, %bb.ha, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.abi, %bb.jv ], [ %i.abw, %bb.kc ], [ %.pn200293.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i259.i.i.i.i.i.i ], [ %i.xb, %bb.ha ], [ %.pn.pn.pn.pn.i.i.i.i.i.i, %bb.hi ], [ %.pn200293.i.i.i.i.i.i, %bb.ju ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #34
          to label %.critedge.i.i unwind label %bb.ki, !noalias !18642

bb.gt:                                            ; preds = %bb.gs
  %i.wi = extractvalue { i64, ptr } %i.wh, 0
  %i.wj = trunc nuw i64 %i.wi to i1
  br i1 %i.wj, label %bb.kh, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.gt
  %.not534.i.i.i.i = icmp eq i64 %.sroa.5172.0.copyload.i.i, 0
  br i1 %.not534.i.i.i.i, label %.loopexit.loopexit2473.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %.sroa.018.0533.i.i.i.i = phi i64 [ %i.wk, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %i.wk = add nuw i64 %.sroa.018.0533.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18643)
  %.val29.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !18644, !noalias !18645, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !18647
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.s, i8 0, i64 46, i1 false), !alias.scope !18648, !noalias !18647
  %i.wl = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.s, i64 noundef 46)
          to label %.noexc.i.i46.i.i unwind label %.loopexit.i.i.i.i, !noalias !18642 ; 9 uses

.noexc.i.i46.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i47.i.i = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i47.i.i, label %bb.gz, label %bb.gu

bb.gu:                                            ; preds = %.noexc.i.i46.i.i
  %i.wm = ptrtoint ptr %i.wl to i64               ; 4 uses
  %i.wn = and i64 %i.wm, 3                        ; 2 uses
  switch i64 %i.wn, label %default.unreachable [
    i64 2, label %bb.gv
    i64 3, label %bb.gw
    i64 0, label %bb.gx
    i64 1, label %bb.gy
  ], !prof !25

bb.gv:                                            ; preds = %bb.gu
  %i.wo = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i.i55.i.i unwind label %bb.ha, !noalias !18649

.noexc.i.i.i.i55.i.i:                             ; preds = %bb.gv
  %i.wp = lshr i64 %i.wm, 32
  %i.wq = trunc nuw i64 %i.wp to i32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8, !noalias !18649, !nonnull !8, !noundef !8
  %i.wt = invoke noundef i8 %i.ws(i32 noundef %i.wq)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i unwind label %bb.ha, !noalias !18649, !inline_history !0

bb.gw:                                            ; preds = %bb.gu
  %i.wu = lshr i64 %i.wm, 32
  %i.wv = icmp ult ptr %i.wl, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i54.i.i = trunc i64 %i.wu to i8 ; 2 uses
  %i.ww = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i54.i.i, -1
  call void @llvm.assume(i1 %i.wv)
  call void @llvm.assume(i1 %i.ww)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i

bb.gx:                                            ; preds = %bb.gu
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %i.wy = load i8, ptr %i.wx, align 8, !range !26, !noalias !18649, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i

bb.gy:                                            ; preds = %bb.gu
  %i.wz = getelementptr i8, ptr %i.wl, i64 31
  %i.xa = load i8, ptr %i.wz, align 8, !range !26, !noalias !18649, !noundef !8
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i

bb.gz:                                            ; preds = %.noexc.i.i46.i.i
  %.sroa.028.0.copyload.i.i.i.i56.i.i = load i32, ptr %i.s, align 4, !noalias !18647
  %.not30.i.i.i.i57.i.i = icmp eq i32 %.sroa.028.0.copyload.i.i.i.i56.i.i, 33639248
  br i1 %.not30.i.i.i.i57.i.i, label %bb.hf, label %.loopexit152.i.i.i.i

bb.ha:                                            ; preds = %bb.hb, %.noexc.i.i.i.i55.i.i, %bb.gv
  %i.xb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.wl) #34
          to label %.body.i.i.i.i unwind label %bb.he, !noalias !18649

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i: ; preds = %bb.gy, %bb.gx, %bb.gw, %.noexc.i.i.i.i55.i.i
  %.sroa.0.0.i.i.i.i.i49.i.i = phi i8 [ %i.xa, %bb.gy ], [ %switch.idx.cast.i.i.i.i.i.i.i54.i.i, %bb.gw ], [ %i.wy, %bb.gx ], [ %i.wt, %.noexc.i.i.i.i55.i.i ]
  %i.xc = icmp eq i8 %.sroa.0.0.i.i.i.i.i49.i.i, 37
  br i1 %i.xc, label %bb.hb, label %.loopexit152.i.i.i.i

bb.hb:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !18647
  store ptr @405, ptr %i.q, align 8, !noalias !18647, !captures !21
  store i64 32, ptr %i.gb, align 8, !noalias !18647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !18647
  store ptr %i.q, ptr %i.p, align 8, !noalias !18647
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.46.0..sroa_idx.i.i.i.i50.i.i, align 8, !noalias !18647
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @398, ptr noundef nonnull %i.p)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i unwind label %bb.ha, !noalias !18649

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i: ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !18647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !18647
  %.sroa.11.8.copyload2.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !18650
  %.sroa.15.8.copyload5.i.i.i.i.i = load ptr, ptr %.sroa.15.8..sroa_idx4.i.i.i.i.i, align 8, !noalias !18650
  %.sroa.16.sroa.0.0.copyload66.i.i.i.i.i = load i8, ptr %.sroa.16.8..sroa_idx7.i.i.i.i.i, align 8, !noalias !18650
  %.sroa.16.sroa.8.0.copyload69.i.i.i.i.i = load i32, ptr %.sroa.16.sroa.8.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i, align 1, !noalias !18650
  %.sroa.16.sroa.9.0.copyload72.i.i.i.i.i = load i16, ptr %.sroa.16.sroa.9.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i, align 1, !noalias !18650
  %.sroa.16.sroa.10.0.copyload75.i.i.i.i.i = load i8, ptr %.sroa.16.sroa.10.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i, align 1, !noalias !18650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18647
  switch i64 %i.wn, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i
    i64 3, label %bb.hc
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i
    i64 1, label %bb.hd
  ], !prof !25

bb.hc:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i
  %i.xd = icmp ult ptr %i.wl, inttoptr (i64 188978561024 to ptr)
  %i.xe = and i64 %i.wm, 1095216660480
  %i.xf = icmp ne i64 %i.xe, 1095216660480
  call void @llvm.assume(i1 %i.xd)
  call void @llvm.assume(i1 %i.xf)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i

bb.hd:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i
  %i.xg = getelementptr i8, ptr %i.wl, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xg) ]
  store ptr %i.xg, ptr %i.gc, align 8, !alias.scope !18651, !noalias !18647
  store i8 3, ptr %i.o, align 8, !alias.scope !18651, !noalias !18647
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !18642

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i: ; preds = %bb.hd, %bb.hc, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !18647
  br label %.loopexit152.i.i.i.i

bb.he:                                            ; preds = %bb.ha
  %i.xh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18649
  unreachable

.loopexit152.i.i.i.i:                             ; preds = %bb.gz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i
  %.sroa.16.sroa.0.0.ph.i.i.i.i.i = phi i8 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.0.0.copyload66.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 32, %bb.gz ]
  %.sroa.16.sroa.8.0.ph.i.i.i.i.i = phi i32 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.8.0.copyload69.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 0, %bb.gz ]
  %.sroa.16.sroa.9.0.ph.i.i.i.i.i = phi i16 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.9.0.copyload72.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 0, %bb.gz ]
  %.sroa.16.sroa.10.0.ph.i.i.i.i.i = phi i8 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.10.0.copyload75.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 0, %bb.gz ]
  %.sroa.15.0.ph.i.i.i.i.i = phi ptr [ %i.wl, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.15.8.copyload5.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ @406, %bb.gz ]
  %.sroa.11.0.ph.i.i.i.i.i = phi i64 [ -9223372036854775808, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.11.8.copyload2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ -1, %bb.gz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !18647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18646
  %.sroa.0106.sroa.0.7.extract.shift.i.i.i.i.i = and i64 %.sroa.11.0.ph.i.i.i.i.i, -72057594037927936
  %i.xi = ptrtoint ptr %.sroa.15.0.ph.i.i.i.i.i to i64
  br label %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i

bb.hf:                                            ; preds = %bb.gz
  %.sroa.10.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.429.0..sroa_idx.i.i.i.i45.i.i, align 4, !noalias !18650
  %.sroa.11.5.copyload.i.i.i.i.i = load i64, ptr %.sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18650 ; 4 uses
  %.sroa.15.5.copyload.i.i.i.i.i = load ptr, ptr %.sroa.15.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18650
  %.sroa.16.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18650
  %.sroa.16.sroa.8.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.16.sroa.8.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !18650
  %.sroa.16.sroa.9.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.16.sroa.9.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !18650
  %.sroa.16.sroa.10.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.16.sroa.10.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i, align 2, !noalias !18650
  %.sroa.16.sroa.11.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.16.sroa.11.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i, align 4, !noalias !18650
  %.sroa.16.sroa.13.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.16.sroa.13.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i, align 2, !noalias !18650
  %.sroa.16.sroa.14.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.16.sroa.14.0..sroa.16.5..sroa.429.0..sroa_idx.i.sroa_idx.sroa_idx.i.i.i.i.i, align 2, !noalias !18650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !18647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18646
  %.sroa.661.sroa.3.2.extract.shift.i.i.i.i.i = lshr i64 %.sroa.11.5.copyload.i.i.i.i.i, 8 ; 2 uses
  %.sroa.661.sroa.3.2.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.661.sroa.3.2.extract.shift.i.i.i.i.i to i16 ; 2 uses
  %.sroa.661.sroa.3.4.extract.shift.i.i.i.i.i = lshr i64 %.sroa.11.5.copyload.i.i.i.i.i, 24
  %.sroa.661.sroa.3.4.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.661.sroa.3.4.extract.shift.i.i.i.i.i to i16 ; 3 uses
  %.sroa.661.sroa.3.6.extract.shift.i.i.i.i.i = lshr i64 %.sroa.11.5.copyload.i.i.i.i.i, 40
  %.sroa.661.sroa.3.6.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.661.sroa.3.6.extract.shift.i.i.i.i.i to i16
  %.sroa.661.sroa.3.8.extract.shift.i.i.i.i.i = lshr i64 %.sroa.11.5.copyload.i.i.i.i.i, 56
  %i.xj = ptrtoint ptr %.sroa.15.5.copyload.i.i.i.i.i to i64 ; 3 uses
  %.sroa.1262.15.extract.trunc.i.i.i.i.i = trunc i64 %i.xj to i16
  %.sroa.1262.16.extract.shift.i.i.i.i.i = lshr i64 %i.xj, 8
  %.sroa.1262.16.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.1262.16.extract.shift.i.i.i.i.i to i32
  %.sroa.55.sroa.12.sroa.7.0.insert.ext96.i.i.i.i.i = shl i16 %.sroa.1262.15.extract.trunc.i.i.i.i.i, 8
  %.sroa.55.sroa.12.sroa.0.0.insert.ext93.i.i.i.i.i = trunc nuw nsw i64 %.sroa.661.sroa.3.8.extract.shift.i.i.i.i.i to i16
  %.sroa.55.sroa.12.sroa.0.0.insert.insert95.i.i.i.i.i = or disjoint i16 %.sroa.55.sroa.12.sroa.7.0.insert.ext96.i.i.i.i.i, %.sroa.55.sroa.12.sroa.0.0.insert.ext93.i.i.i.i.i
  %.sroa.55.sroa.14.sroa.7.0.insert.ext89.i.i.i.i.i = zext i8 %.sroa.16.sroa.0.0.copyload.i.i.i.i.i to i64
  %.sroa.55.sroa.14.sroa.0.0.insert.insert88.i.i.i.i.i = call i64 @llvm.fshl.i64(i64 %.sroa.55.sroa.14.sroa.7.0.insert.ext89.i.i.i.i.i, i64 %i.xj, i64 24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18646
  %i.xk = trunc i64 %.sroa.661.sroa.3.2.extract.shift.i.i.i.i.i to i8 ; 2 uses
  %i.xl = and i16 %.sroa.661.sroa.3.2.extract.trunc.i.i.i.i.i, 2048 ; 2 uses
  %.not192.i.i.i.i.i.i = icmp eq i16 %i.xl, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !18652
  %i.xm = zext i16 %.sroa.16.sroa.9.0.copyload.i.i.i.i.i to i64
  invoke fastcc void @_RINvNtCsgtXWG2OCnrB_3zip4read31read_variable_length_byte_fieldINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.xm) #35
          to label %.noexc27.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !18642

.noexc27.i.i.i.i:                                 ; preds = %bb.hf
  %i.xn = load i64, ptr %i.n, align 8, !range !18523, !noalias !18652, !noundef !8 ; 2 uses
  %.not.i30.i.i.i.i.i = icmp eq i64 %i.xn, -2
  %i.xo = load ptr, ptr %i.ej, align 8, !noalias !18652 ; 7 uses
  %i.xp = load i64, ptr %i.ek, align 8, !noalias !18652 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !18652
  br i1 %.not.i30.i.i.i.i.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %.noexc27.i.i.i.i
  %i.xq = ptrtoint ptr %i.xo to i64
  br label %_RINvNtCsgtXWG2OCnrB_3zip4read32central_header_to_zip_file_innerINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i.i

bb.hh:                                            ; preds = %.noexc27.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !18652
  %i.xr = zext i16 %.sroa.16.sroa.10.0.copyload.i.i.i.i.i to i64
  invoke fastcc void @_RINvNtCsgtXWG2OCnrB_3zip4read31read_variable_length_byte_fieldINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.xr)
          to label %bb.hj unwind label %.thread.i.i.i.i.i.i, !noalias !18653

bb.hi:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i58.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit236.i.i.i.i.i.i
  br i1 %.sroa.089.2.i.i.i.i.i.i, label %bb.ju, label %.body.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.hh
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ju

bb.hj:                                            ; preds = %bb.hh
  %i.xt = load i64, ptr %i.m, align 8, !range !18523, !noalias !18652, !noundef !8 ; 2 uses
  %.not185.i.i.i.i.i.i = icmp eq i64 %i.xt, -2
  %i.xu = load ptr, ptr %i.el, align 8, !noalias !18652 ; 6 uses
  %i.xv = load i64, ptr %i.em, align 8, !noalias !18652 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !18652
  br i1 %.not185.i.i.i.i.i.i, label %bb.hk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18652
  %i.xw = zext i16 %.sroa.16.sroa.11.0.copyload.i.i.i.i.i to i64
  invoke fastcc void @_RINvNtCsgtXWG2OCnrB_3zip4read31read_variable_length_byte_fieldINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.xw)
          to label %bb.hm unwind label %bb.hl, !noalias !18653

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit236.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i, %bb.hl
  %.sroa.089.2.i.i.i.i.i.i = phi i1 [ true, %bb.hl ], [ %.sroa.089.4.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i ], [ %.sroa.089.4.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i ]
  %.pn.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.xy, %bb.hl ], [ %.pn.pn.pn.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i ], [ %.pn.pn.pn.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i ] ; 2 uses
  %i.xx = icmp eq i64 %i.xv, 0
  br i1 %i.xx, label %bb.hi, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i58.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i58.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit236.i.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xu, i64 noundef %i.xv, i64 noundef 1) #38, !noalias !18653
  br label %bb.hi

bb.hl:                                            ; preds = %bb.hk
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit236.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.xz = load i64, ptr %i.l, align 8, !range !18523, !noalias !18652, !noundef !8 ; 3 uses
  %.not186.i.i.i.i.i.i = icmp eq i64 %i.xz, -2
  %i.ya = load ptr, ptr %i.en, align 8, !noalias !18652 ; 7 uses
  %i.yb = load i64, ptr %i.eo, align 8, !noalias !18652 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18652
  br i1 %.not186.i.i.i.i.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.yc = icmp eq i64 %i.xv, 0
  br i1 %i.yc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i: ; preds = %bb.hn
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xu, i64 noundef %i.xv, i64 noundef 1) #38, !noalias !18653
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit234.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.hm
  br i1 %.not192.i.i.i.i.i.i, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18652
  invoke void @_RNvXNtCsgtXWG2OCnrB_3zip5cp437RShNtB2_9FromCp43710from_cp437(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xo, i64 noundef %i.xp)
          to label %bb.hr unwind label %.loopexit153.i.i.i.i, !noalias !18653

bb.hq:                                            ; preds = %bb.ho
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xo, i64 noundef %i.xp)
          to label %bb.ik unwind label %.loopexit153.i.i.i.i, !noalias !18653

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i257.i.i.i.i.i.i, %.thread294.i.i.i.i.i.i, %bb.jk, %bb.iy, %.thread313.i.i.i.i.i.i, %.loopexit.split-lp154.i.i.i.i, %.loopexit153.i.i.i.i
  %.sroa.089.4.i.i.i.i.i.i = phi i1 [ false, %bb.iy ], [ false, %.thread313.i.i.i.i.i.i ], [ true, %.thread294.i.i.i.i.i.i ], [ true, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i257.i.i.i.i.i.i ], [ false, %bb.jk ], [ true, %.loopexit.split-lp154.i.i.i.i ], [ true, %.loopexit153.i.i.i.i ] ; 2 uses
  %.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %bb.iy ], [ %.pn312.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i ], [ %.pn.pn302.i.i.i.i.i.i, %.thread294.i.i.i.i.i.i ], [ %.pn.pn302.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i257.i.i.i.i.i.i ], [ %i.aap, %bb.jk ], [ %lpad.loopexit.split-lp156.i.i.i.i, %.loopexit.split-lp154.i.i.i.i ], [ %lpad.loopexit155.i.i.i.i, %.loopexit153.i.i.i.i ] ; 2 uses
  %i.yd = icmp eq i64 %i.yb, 0
  br i1 %i.yd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit236.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ya, i64 noundef %i.yb, i64 noundef 1) #38, !noalias !18653
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit236.i.i.i.i.i.i

.loopexit153.i.i.i.i:                             ; preds = %bb.il, %bb.hu, %bb.hq, %bb.hp
  %lpad.loopexit155.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i

.loopexit.split-lp154.i.i.i.i:                    ; preds = %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp156.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hp
  %i.ye = load i64, ptr %i.k, align 8, !range !31, !noalias !18652, !noundef !8 ; 3 uses
  %i.yf = icmp eq i64 %i.ye, -2
  %i.yg = load ptr, ptr %i.et, align 8, !noalias !18652 ; 4 uses
  br i1 %i.yf, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18652
  %i.yh = ptrtoint ptr %i.yg to i64
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hr
  %.sroa.5125.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5125.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !18652 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18652
  %.not187.i.i.i.i.i.i = icmp eq i64 %i.ye, -1
  br i1 %.not187.i.i.i.i.i.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18652
  store i64 %i.ye, ptr %i.e, align 8, !noalias !18652
  store ptr %i.yg, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !18652
  store i64 %.sroa.5125.0.copyload.i.i.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !18652
  %i.yi = invoke { ptr, i64 } @_RNvXsO_NtCsexYYUdYSQU6_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.hz unwind label %.loopexit153.i.i.i.i, !noalias !18653 ; 2 uses

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yg) ]
  %i.yj = icmp eq i64 %.sroa.5125.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.yj, label %_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCs7gfv9tzbXmh_6yara_x.exit3.i.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !18654
  %i.yk = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %.sroa.5125.0.copyload.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18654 ; 2 uses
  %i.yl = icmp eq ptr %i.yk, null
  br i1 %i.yl, label %.invoke.i.i.i.i.i.i, label %_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCs7gfv9tzbXmh_6yara_x.exit3.i.i.i

_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCs7gfv9tzbXmh_6yara_x.exit3.i.i.i: ; preds = %bb.hw, %bb.hv
  %.sroa.01.0.i1.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.hv ], [ %i.yk, %bb.hw ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i1.i.i.i, ptr nonnull readonly align 1 %i.yg, i64 %.sroa.5125.0.copyload.i.i.i.i.i.i, i1 false), !noalias !18653
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hz, %_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCs7gfv9tzbXmh_6yara_x.exit3.i.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.yn, %bb.hz ], [ %.sroa.5125.0.copyload.i.i.i.i.i.i, %_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCs7gfv9tzbXmh_6yara_x.exit3.i.i.i ] ; 7 uses
  %.sroa.0279.0.i.i.i.i.i.i = phi ptr [ %i.ym, %bb.hz ], [ %.sroa.01.0.i1.i.i.i, %_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCs7gfv9tzbXmh_6yara_x.exit3.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18652
  invoke void @_RNvXNtCsgtXWG2OCnrB_3zip5cp437RShNtB2_9FromCp43710from_cp437(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ya, i64 noundef %i.yb)
          to label %bb.ia unwind label %.thread294.i.i.loopexit.i.i.i.i, !noalias !18653

bb.hy:                                            ; preds = %bb.jc, %bb.iv, %bb.ig
  unreachable

bb.hz:                                            ; preds = %bb.hu
  %i.ym = extractvalue { ptr, i64 } %i.yi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18652
  %i.yn = extractvalue { ptr, i64 } %i.yi, 1
  br label %bb.hx

.thread313.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i255.i.i.i.i.i.i, %.thread307.i.i.i.i.i.i
  br i1 %.sroa.089.7311.i.i.i.i.i.i, label %.thread294.i.i.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECs7gfv9tzbXmh_6yara_x.exit258.i.i.i.i.i.i

.thread294.i.i.loopexit.i.i.i.i:                  ; preds = %bb.is, %bb.ip, %bb.id, %bb.hx
  %.sroa.10280.2.i.i.ph.i.i.i.i = phi i64 [ %.sroa.10280.4.i.i.i.i.i.i, %bb.is ], [ %.pn.i.i.i.i.i.i, %bb.hx ], [ %.pn.i.i.i.i.i.i, %bb.id ], [ %.sroa.10280.4.i.i.i.i.i.i, %bb.ip ]
  %.sroa.0279.2.i.i.ph.i.i.i.i = phi ptr [ %.sroa.0279.4.i.i.i.i.i.i, %bb.is ], [ %.sroa.0279.0.i.i.i.i.i.i, %bb.hx ], [ %.sroa.0279.0.i.i.i.i.i.i, %bb.id ], [ %.sroa.0279.4.i.i.i.i.i.i, %bb.ip ]
  %lpad.loopexit160.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread294.i.i.i.i.i.i

.thread294.i.i.loopexit.split-lp.i.i.i.i:         ; preds = %bb.iv, %bb.ig
  %.sroa.10280.2.i.i.ph158.i.i.i.i = phi i64 [ %.sroa.10280.4.i.i.i.i.i.i, %bb.iv ], [ %.pn.i.i.i.i.i.i, %bb.ig ]
  %.sroa.0279.2.i.i.ph159.i.i.i.i = phi ptr [ %.sroa.0279.4.i.i.i.i.i.i, %bb.iv ], [ %.sroa.0279.0.i.i.i.i.i.i, %bb.ig ]
  %lpad.loopexit.split-lp161.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread294.i.i.i.i.i.i

bb.ia:                                            ; preds = %bb.hx
  %i.yo = load i64, ptr %i.j, align 8, !range !31, !noalias !18652, !noundef !8 ; 3 uses
  %i.yp = icmp eq i64 %i.yo, -2
  %i.yq = load ptr, ptr %i.eu, align 8, !noalias !18652 ; 4 uses
  br i1 %i.yp, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18652
  %i.yr = ptrtoint ptr %i.yq to i64               ; 2 uses
end_hunk_1
