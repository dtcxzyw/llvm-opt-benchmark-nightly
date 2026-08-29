Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.12?download=true
inline.NumInlined: 5045
inline.NumDeleted: 2384
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x:bb.a
_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i281.i.i.i: ; preds = %bb.cw
  %.val.i.i.i.i.i282.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !18366, !noalias !18367, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i282.i.i.i, i64 noundef %.val1.i.i.i.i.i280.i.i.i, i64 noundef 1) #38, !noalias !18368
  br label %bb.cx

bb.cx:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i281.i.i.i, %bb.cw, %.noexc283.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(352) %i.bn, ptr noundef nonnull align 32 dereferenceable(288) %i.aj, i64 288, i1 false), !noalias !18367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !18352
  store i64 %.sroa.8.sroa.0.0.insert.insert.i.i.i.i, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 32, !alias.scope !18349, !noalias !18367
  store i64 %.sroa.8.sroa.0.0.insert.insert.i.i.i.i, ptr %i.di, align 32, !alias.scope !18349, !noalias !18367
  store i64 %i.mf, ptr %i.dj, align 8, !alias.scope !18349, !noalias !18367
  store i64 0, ptr %i.cn, align 8, !alias.scope !18349, !noalias !18367
  store i64 %.sroa.8.sroa.0.0.insert.insert.i.i.i.i, ptr %i.dk, align 32, !noalias !18237
  store i8 0, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !noalias !18237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !18237
  store i64 -2, ptr %i.bi, align 8, !noalias !18237
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !18237
  invoke fastcc void @_RINvMs1_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_21OptimisticMagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias nofree noundef align 32 dereferenceable(384) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.cz unwind label %.thread655.loopexit.i.i.i, !noalias !18270

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
  %i.ok = load i64, ptr %i.bh, align 8, !range !18302, !noalias !18237, !noundef !5 ; 2 uses
  %.not211.i.i.i = icmp eq i64 %i.ok, -2
  %i.ol = load i64, ptr %i.dl, align 8, !noalias !18237 ; 2 uses
  %i.om = load i64, ptr %i.dm, align 8, !noalias !18237 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !18237
  br i1 %.not211.i.i.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.on = load i64, ptr %i.bi, align 8, !range !18302, !alias.scope !18369, !noalias !18237, !noundef !5
  %i.oo = icmp eq i64 %i.on, -2
  br i1 %i.oo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i unwind label %.thread617.loopexit.split-lp.i.loopexit.i.i, !noalias !18270

bb.dc:                                            ; preds = %bb.cz
  %i.op = trunc nuw i64 %i.ol to i1
  br i1 %i.op, label %bb.dd, label %bb.em

bb.dd:                                            ; preds = %bb.dc
  %i.oq = call i64 @llvm.usub.sat.i64(i64 %i.mf, i64 %i.om) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !18372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !18379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ah, i8 0, i64 56, i1 false), !alias.scope !18383, !noalias !18379
  %i.or = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.ah, i64 noundef 56)
          to label %.noexc304.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18270 ; 9 uses

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
  ], !prof !162

bb.df:                                            ; preds = %bb.de
  %i.ou = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i293.i.i.i unwind label %bb.dk, !noalias !18386

.noexc.i.i.i293.i.i.i:                            ; preds = %bb.df
  %i.ov = lshr i64 %i.os, 32
  %i.ow = trunc nuw i64 %i.ov to i32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !18386, !nonnull !5, !noundef !5
  %i.oz = invoke noundef i8 %i.oy(i32 noundef %i.ow)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i unwind label %bb.dk, !noalias !18386, !inline_history !163

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
  %i.pe = load i8, ptr %i.pd, align 8, !range !164, !noalias !18386, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i

bb.di:                                            ; preds = %bb.de
  %i.pf = getelementptr i8, ptr %i.or, i64 31
  %i.pg = load i8, ptr %i.pf, align 8, !range !164, !noalias !18386, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i

bb.dj:                                            ; preds = %.noexc304.i.i.i
  %.sroa.029.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ah, align 4, !noalias !18379
  %.not31.i.i.i.i.i.i = icmp eq i32 %.sroa.029.0.copyload.i.i.i.i.i.i, 101075792
  br i1 %.not31.i.i.i.i.i.i, label %bb.dq, label %bb.dp

bb.dk:                                            ; preds = %bb.dl, %.noexc.i.i.i293.i.i.i, %bb.df
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.or) #34
          to label %.thread648thread-pre-split.i.i.i unwind label %bb.do, !noalias !18386

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i: ; preds = %bb.di, %bb.dh, %bb.dg, %.noexc.i.i.i293.i.i.i
  %.sroa.0.0.i.i.i.i288.i.i.i = phi i8 [ %i.pg, %bb.di ], [ %switch.idx.cast.i.i.i.i.i.i292.i.i.i, %bb.dg ], [ %i.pe, %bb.dh ], [ %i.oz, %.noexc.i.i.i293.i.i.i ]
  %i.pi = icmp eq i8 %.sroa.0.0.i.i.i.i288.i.i.i, 37
  br i1 %i.pi, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !18379
  store ptr @400, ptr %i.af, align 8, !noalias !18379, !captures !53
  store i64 24, ptr %i.dn, align 8, !noalias !18379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !18379
  store ptr %i.af, ptr %i.ae, align 8, !noalias !18379
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.46.0..sroa_idx.i.i.i289.i.i.i, align 8, !noalias !18379
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noundef nonnull @398, ptr noundef nonnull %i.ae)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i unwind label %bb.dk, !noalias !18386

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !18379
  %i.pj = load i64, ptr %i.ag, align 8, !noalias !18387 ; 3 uses
  %.sroa.19.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.19.8..sroa_idx.i.i.i.i.i, align 8, !noalias !18387
  %.sroa.26.8.copyload.i.i.i.i.i = load i64, ptr %.sroa.26.8..sroa_idx.i.i.i.i.i, align 8, !noalias !18387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !18379
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
  ], !prof !162

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
  store ptr %i.ps, ptr %i.do, align 8, !alias.scope !18388, !noalias !18379
  store i8 3, ptr %i.ad, align 8, !alias.scope !18388, !noalias !18379
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.dn, %bb.dm, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i290.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !18379
  br label %bb.dp

bb.do:                                            ; preds = %bb.dk
  %i.pt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18386
  unreachable

bb.dp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i, %bb.dj
  %.sroa.9.10..sroa.9.10..sroa.9.15..sroa.549.0.copyload95.i.i.i.i.i = phi i8 [ -128, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %i.po, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ -1, %bb.dj ]
  %.sroa.9.8..sroa.9.8..sroa.9.13..sroa.448.0.copyload.i.i.i.i.i = phi i16 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %i.pm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ -1, %bb.dj ]
  %.sroa.9.3..sroa.9.3..sroa.9.8..sroa.047.0.copyload.i.i.i.i.i = phi i40 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %i.pk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ -1, %bb.dj ]
  %.sroa.19.0.ph.i.i.i.i.i = phi ptr [ %i.or, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %.sroa.19.8.copyload.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ @399, %bb.dj ]
  %.sroa.26.0.ph.i.i.i.i.i = phi i64 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i287.i.i.i ], [ %.sroa.26.8.copyload.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i ], [ 32, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !18379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18372
  %i.pu = ptrtoint ptr %.sroa.19.0.ph.i.i.i.i.i to i64
  br label %bb.ei

bb.dq:                                            ; preds = %bb.dj
  %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i = load i64, ptr %.sroa.430.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !18387 ; 5 uses
  %.sroa.9.i.sroa.5.0.copyload.i295.i.i.i = load i16, ptr %.sroa.9.i.sroa.5.0..sroa.430.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 4, !noalias !18387
  %.sroa.9.i.sroa.6.0.copyload.i.i.i.i = load i8, ptr %.sroa.9.i.sroa.6.0..sroa.430.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 2, !noalias !18387
  %.sroa.19.5.copyload.i.i.i.i.i = load ptr, ptr %.sroa.19.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18387
  %.sroa.26.5.copyload.i.i.i.i.i = load i8, ptr %.sroa.26.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18387
  %.sroa.30.5.copyload.i.i.i.i.i = load i64, ptr %.sroa.30.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18387 ; 2 uses
  %i.pv = load <2 x i64>, ptr %.sroa.28.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18387
  %.sroa.32.5.copyload.i.i.i.i.i = load i64, ptr %.sroa.32.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18387
  %i.pw = load <2 x i64>, ptr %.sroa.31.5..sroa.430.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 4, !noalias !18387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !18379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !18372
  %i.px = ptrtoint ptr %.sroa.19.5.copyload.i.i.i.i.i to i64 ; 3 uses
  %.sroa.19.5.extract.shift.i.i.i.i.i = lshr i64 %i.px, 40
  %.sroa.19.5.extract.trunc.i.i.i.i.i = trunc nuw nsw i64 %.sroa.19.5.extract.shift.i.i.i.i.i to i32
  %i.py = icmp ult i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, 44
  br i1 %i.py, label %bb.ei, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pz = call i64 @llvm.uadd.sat.i64(i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, i64 12)
  %i.qa = icmp ugt i64 %i.pz, %i.oq
  br i1 %i.qa, label %bb.ei, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !18372
  %i.qb = add i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, -44 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !18394
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef range(i64 0, -44) %i.qb, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc308.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18270

.noexc308.i.i.i:                                  ; preds = %bb.ds
  %i.qc = load i64, ptr %i.ac, align 8, !range !4, !noalias !18394, !noundef !5
  %i.qd = trunc nuw i64 %i.qc to i1
  %i.qe = load i64, ptr %i.dp, align 8, !range !28, !noalias !18394, !noundef !5 ; 2 uses
  br i1 %i.qd, label %bb.dt, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, !prof !8

bb.dt:                                            ; preds = %.noexc308.i.i.i
  %i.qf = load i64, ptr %i.dq, align 8, !noalias !18394
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.qe, i64 %i.qf) #39
          to label %.noexc309.i.i.i unwind label %.thread655.loopexit.split-lp.i.i.i, !noalias !18270

.noexc309.i.i.i:                                  ; preds = %bb.dt
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %.noexc308.i.i.i
  %i.qg = load ptr, ptr %i.dq, align 8, !noalias !18394, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !18394
  store i64 %i.qe, ptr %i.ai, align 8, !alias.scope !18391, !noalias !18372
  store ptr %i.qg, ptr %i.dr, align 8, !alias.scope !18391, !noalias !18372
  store i64 %i.qb, ptr %i.ds, align 8, !alias.scope !18391, !noalias !18372
  %i.qh = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai)
          to label %.noexc310.i.i.i unwind label %.thread655.loopexit.i.i.i, !noalias !18270 ; 2 uses

.noexc310.i.i.i:                                  ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.qi = extractvalue { ptr, i64 } %i.qh, 0      ; 8 uses
  %i.qj = extractvalue { ptr, i64 } %i.qh, 1      ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !18372
  %i.qk = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.qi, i64 noundef %i.qj)
          to label %bb.dw unwind label %bb.dv, !noalias !18395 ; 8 uses

bb.du:                                            ; preds = %bb.ec, %bb.dv
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.qm, %bb.dv ], [ %i.rc, %bb.ec ] ; 2 uses
  %i.ql = icmp eq i64 %i.qj, 0
  br i1 %i.ql, label %.thread648thread-pre-split.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.du
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qi) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18395
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
  ], !prof !162

bb.dy:                                            ; preds = %bb.dx
  %i.qp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i301.i.i.i unwind label %bb.ec, !noalias !18395

.noexc.i.i301.i.i.i:                              ; preds = %bb.dy
  %i.qq = lshr i64 %i.qn, 32
  %i.qr = trunc nuw i64 %i.qq to i32
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !18395, !nonnull !5, !noundef !5
  %i.qu = invoke noundef i8 %i.qt(i32 noundef %i.qr)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i unwind label %bb.ec, !noalias !18395, !inline_history !163

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
  %i.qz = load i8, ptr %i.qy, align 8, !range !164, !noalias !18395, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.eb:                                            ; preds = %bb.dx
  %i.ra = getelementptr i8, ptr %i.qk, i64 31
  %i.rb = load i8, ptr %i.ra, align 8, !range !164, !noalias !18395, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.ec:                                            ; preds = %.noexc.i.i301.i.i.i, %bb.dy
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.qk) #34
          to label %bb.du unwind label %bb.eh, !noalias !18395

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %.noexc.i.i301.i.i.i
  %.sroa.0.0.i.i.i298.i.i.i = phi i8 [ %i.rb, %bb.eb ], [ %switch.idx.cast.i.i.i.i.i300.i.i.i, %bb.dz ], [ %i.qz, %bb.ea ], [ %i.qu, %.noexc.i.i301.i.i.i ]
  %i.rd = icmp eq i8 %.sroa.0.0.i.i.i298.i.i.i, 37
  br i1 %i.rd, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18372
  switch i64 %i.qo, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i
    i64 3, label %bb.ee
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i
    i64 1, label %bb.ef
  ], !prof !162

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
  store ptr %i.rh, ptr %i.dt, align 8, !alias.scope !18396, !noalias !18372
  store i8 3, ptr %i.ab, align 8, !alias.scope !18396, !noalias !18372
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i unwind label %bb.dv, !noalias !18395

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i: ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !18372
  br label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i
  %.sroa.114.sroa.12.0.i.i.i.i = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ -128, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.114.sroa.11.0.i.i.i.i = phi i16 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.114.sroa.0.0.i.i.i.i = phi i40 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.21.0.i.i.i.i = phi i64 [ ptrtoint (ptr @328 to i64), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ %i.qn, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %i.ri = icmp eq i64 %i.qj, 0
  br i1 %i.ri, label %bb.ei, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i: ; preds = %bb.eg
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18395
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ec
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18395
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
  %.sroa.57.sroa.7.31.insert.ext.i.i.i.i = zext i8 %.sroa.26.5.copyload.i.i.i.i.i to i32
  %.sroa.57.sroa.7.31.insert.shift.i.i.i.i = shl nuw i32 %.sroa.57.sroa.7.31.insert.ext.i.i.i.i, 24
  %.sroa.57.sroa.7.31.insert.insert.i.i.i.i = or disjoint i32 %.sroa.57.sroa.7.31.insert.shift.i.i.i.i, %.sroa.19.5.extract.trunc.i.i.i.i.i
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
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18399
  br label %bb.eo

bb.em:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6527.i.i.i)
  %.sroa.0520.0.copyload.i.i.i = load i64, ptr %i.bi, align 8, !noalias !18237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !18237
  store i64 -1, ptr %i.bg, align 8, !noalias !18237
  store ptr @345, ptr %.sroa.4198.0..sroa_idx.i.i.i, align 8, !noalias !18237
  store i64 21, ptr %.sroa.5199.0..sroa_idx.i.i.i, align 8, !noalias !18237
  %.not.i311.i.i.i = icmp eq i64 %.sroa.0520.0.copyload.i.i.i, -2
  br i1 %.not.i311.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5188.0..sroa_idx189.i.i.i, i64 16, i1 false), !noalias !18237
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.cy, !noalias !18270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i: ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4198.0..sroa_idx.i.i.i, i64 16, i1 false), !alias.scope !18400, !noalias !18404
  br label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.eo:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i, %bb.el, %bb.ei
  %.sroa.9486.0.ph.i.i.i = phi i64 [ -1, %bb.el ], [ -1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.114.sroa.0.0.insert.insert.i.i.i.i, %bb.ei ] ; 3 uses
  %.sroa.13.0.ph.i.i.i = phi i64 [ %i.rl, %bb.el ], [ %i.rl, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.21.1.ph.i.i.i.i, %bb.ei ] ; 2 uses
  %.sroa.16487.0.ph.i.i.i = phi i64 [ %.sink.i303.i.i.i, %bb.el ], [ %.sink.i303.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.27.1.ph.i.i.i.i, %bb.ei ] ; 2 uses
  %i.rn = load i64, ptr %i.bi, align 8, !range !18302, !alias.scope !18406, !noalias !18237, !noundef !5
  %i.ro = icmp eq i64 %i.rn, -2
  br i1 %i.ro, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i unwind label %bb.ey, !noalias !18270

_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.ek
  %2 = mul nuw i64 %.sroa.30.5.copyload.i.i.i.i.i, 46
  %3 = icmp ugt i64 %.sroa.30.5.copyload.i.i.i.i.i, 401016175515425035
  br i1 %3, label %bb.eq, label %bb.er, !prof !8

bb.eq:                                            ; preds = %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.sroa.0179.0.i.i.i = phi i64 [ -1, %bb.eq ], [ %2, %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.rp = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0179.0.i.i.i, i64 %.sroa.32.5.copyload.i.i.i.i.i)
  %i.rq = icmp ult i64 %i.om, %i.rp
  br i1 %i.rq, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rr = zext i32 %.sroa.985.5.copyload.i.i.i.i to i64
  %.sroa.23.28.insert.ext.le.i.i.i = zext i16 %.sroa.11.i.sroa.5.0.copyload.i.i.i to i64
  %.sroa.23.28.insert.shift.le1225.i.i.i = shl nuw nsw i64 %.sroa.23.28.insert.ext.le.i.i.i, 32
  %.sroa.23.28.insert.insert.le.i.i.i = or disjoint i64 %.sroa.23.28.insert.shift.le1225.i.i.i, %i.rr
  %i.rs = shl i56 %.sroa.22.0.copyload.i.i.i.i, 24
  %i.rt = zext i24 %.sroa.11.i.sroa.7.0.copyload.i.i.i to i56
  %.sroa.17435.sroa.0.0.insert.insert671.le.i.i.i = or disjoint i56 %i.rs, %i.rt
  %.sroa.6.16.extract.trunc.le1202.i.i.i = trunc i56 %.sroa.17435.sroa.0.0.insert.insert671.le.i.i.i to i32
  %.sroa.9472.24.extract.trunc.le1198.i.i.i = trunc nuw i64 %.sroa.23.28.insert.insert.le.i.i.i to i48
  %i.ru = sub i64 %i.om, %.sroa.8.sroa.0.0.insert.insert.i.i.i.i
  %.sroa.19.1.extract.shift.i.i.le.i.i.i = lshr i64 %i.px, 8
  %.sroa.19.1.extract.trunc.i.i.le.i.i.i = trunc i64 %.sroa.19.1.extract.shift.i.i.le.i.i.i to i32
  %.sroa.57.sroa.10.32.insert.ext.i.le.i.i.i = zext i16 %.sroa.9.i.sroa.5.0.copyload.i295.i.i.i to i64
  %.sroa.57.sroa.10.34.insert.ext.i.le.i.i.i = zext i8 %.sroa.9.i.sroa.6.0.copyload.i.i.i.i to i64
  %.sroa.57.sroa.10.34.insert.shift.i.le.i.i.i = shl nuw nsw i64 %.sroa.57.sroa.10.34.insert.ext.i.le.i.i.i, 16
  %.sroa.57.sroa.10.34.insert.insert.i.le.i.i.i = or disjoint i64 %.sroa.57.sroa.10.34.insert.shift.i.le.i.i.i, %.sroa.57.sroa.10.32.insert.ext.i.le.i.i.i
  %.sroa.57.sroa.10.35.insert.ext.i.le.i.i.i = shl i64 %i.px, 24
  %.sroa.57.sroa.10.35.insert.shift.i.le.i.i.i = and i64 %.sroa.57.sroa.10.35.insert.ext.i.le.i.i.i, 4278190080
  %.sroa.57.sroa.10.35.insert.insert.i.le.i.i.i = or disjoint i64 %.sroa.57.sroa.10.34.insert.insert.i.le.i.i.i, %.sroa.57.sroa.10.35.insert.shift.i.le.i.i.i
  %i.rv = load i64, ptr %i.bi, align 8, !range !18302, !alias.scope !18409, !noalias !18237, !noundef !5
  %i.rw = icmp eq i64 %i.rv, -2
  br i1 %i.rw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i unwind label %bb.cj, !noalias !18270

bb.eu:                                            ; preds = %bb.er
  %i.rx = load i64, ptr %i.bi, align 8, !range !18302, !alias.scope !18412, !noalias !18237, !noundef !5
  %i.ry = icmp eq i64 %i.rx, -2
  br i1 %i.ry, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i unwind label %bb.ew, !noalias !18270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i: ; preds = %bb.et, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18237
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

bb.ew:                                            ; preds = %bb.ev
  %i.rz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 -1, ptr %i.bi, align 8, !noalias !18237
  store ptr @344, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 44, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  %i.sa = icmp eq i64 %i.qj, 0
  br i1 %i.sa, label %.thread648thread-pre-split.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i: ; preds = %bb.ew
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18270
  br label %.thread648thread-pre-split.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i: ; preds = %bb.ev, %bb.eu
  store i64 -1, ptr %i.bi, align 8, !noalias !18237
  store ptr @344, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 44, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  %i.sb = icmp eq i64 %i.qj, 0
  br i1 %i.sb, label %.backedge.i.i.i.backedge, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18270
  br label %.backedge.i.i.i.backedge

bb.ex:                                            ; preds = %bb.gk, %bb.fa
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18270
  unreachable

bb.ey:                                            ; preds = %bb.ep
  %i.sd = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.9486.0.ph.i.i.i, ptr %i.bi, align 8, !noalias !18237
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 %.sroa.16487.0.ph.i.i.i, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  br label %.thread648.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i: ; preds = %bb.ep, %bb.eo
  store i64 %.sroa.9486.0.ph.i.i.i, ptr %i.bi, align 8, !noalias !18237
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 %.sroa.16487.0.ph.i.i.i, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i
  br label %.backedge.i.i.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i, %bb.en
  %.sroa.0524.0.i.i.i = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i ], [ %.sroa.0520.0.copyload.i.i.i, %bb.en ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !18237
  %i.se = load i64, ptr %i.bm, align 8, !range !18302, !alias.scope !18415, !noalias !18237, !noundef !5
  %i.sf = icmp eq i64 %i.se, -2
  br i1 %i.sf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i unwind label %.thread645.i.i.i, !noalias !18270

.thread645.i.i.i:                                 ; preds = %bb.ez
  %i.sg = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0524.0.i.i.i, ptr %i.bm, align 8, !noalias !18237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx151.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, i64 16, i1 false), !noalias !18237
  br label %.thread605.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i: ; preds = %bb.ez, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  store i64 %.sroa.0524.0.i.i.i, ptr %i.bm, align 8, !noalias !18237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx151.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, i64 16, i1 false), !noalias !18237
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6527.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18237
  %i.sh = icmp eq i64 %i.ku, 0
  br i1 %i.sh, label %.lr.ph.i.backedge.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18270
  br label %.lr.ph.i.backedge.i.i.i

.lr.ph.i.backedge.i.i.i:                          ; preds = %bb.fy, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i362.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i
  %.not.i1190.i.i.i = icmp ult i64 %.lcssa1252.i.i.i, %.sroa.018.0.i.i
  br i1 %.not.i1190.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i: ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18237
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i
  %.sroa.20.sroa.12.2.in.in.i.i = phi i64 [ %i.ol, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.tk, %bb.fo ] ; 2 uses
  %.sroa.30.sroa.11.2.in.in.i.i = phi i64 [ %i.om, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.tl, %bb.fo ] ; 2 uses
  %.sroa.12.2.i.i = phi i64 [ %i.ok, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.tj, %bb.fo ] ; 2 uses
  %.sroa.30.sroa.0.2.i.i = trunc i64 %.sroa.30.sroa.11.2.in.in.i.i to i48 ; 2 uses
  %.sroa.30.sroa.11.2.in.i.i = lshr i64 %.sroa.30.sroa.11.2.in.in.i.i, 48
  %.sroa.30.sroa.11.2.i.i = trunc nuw i64 %.sroa.30.sroa.11.2.in.i.i to i16 ; 2 uses
  %.sroa.20.sroa.0.2.i.i = trunc i64 %.sroa.20.sroa.12.2.in.in.i.i to i32 ; 2 uses
  %.sroa.20.sroa.12.2.in.i.i = lshr i64 %.sroa.20.sroa.12.2.in.in.i.i, 32
  %.sroa.20.sroa.12.2.i.i = trunc nuw i64 %.sroa.20.sroa.12.2.in.i.i to i32 ; 2 uses
  %i.si = icmp eq i64 %i.ku, 0
  br i1 %i.si, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i: ; preds = %.loopexit
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18270
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

.thread648thread-pre-split.i.i.i:                 ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i, %bb.ew, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.du, %bb.dk, %.thread655.loopexit.split-lp.i.i.i, %.thread655.loopexit.i.i.i
  %.pn644.ph.i.i.i = phi { ptr, i32 } [ %i.rz, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i ], [ %i.rz, %bb.ew ], [ %.pn.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ], [ %i.ph, %bb.dk ], [ %.pn.i.i.i.i.i, %bb.du ], [ %lpad.loopexit.i.i.i, %.thread655.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.thread655.loopexit.split-lp.i.i.i ]
  %.pr.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !18418, !noalias !18237
  br label %.thread648.i.i.i

.thread648.i.i.i:                                 ; preds = %.thread648thread-pre-split.i.i.i, %bb.ey
  %i.sj = phi i64 [ %.pr.i.i.i, %.thread648thread-pre-split.i.i.i ], [ %.sroa.9486.0.ph.i.i.i, %bb.ey ]
  %.pn644.i.i.i = phi { ptr, i32 } [ %.pn644.ph.i.i.i, %.thread648thread-pre-split.i.i.i ], [ %i.sd, %bb.ey ] ; 2 uses
  %i.sk = icmp eq i64 %i.sj, -2
  br i1 %i.sk, label %.thread605.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %.thread648.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.thread605.i.i.i unwind label %bb.ex, !noalias !18270

bb.fb:                                            ; preds = %bb.cu
  %i.sl = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr @346, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 38, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  br label %.thread605.i.i.i

bb.fc:                                            ; preds = %bb.co
  %i.sm = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr @347, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 32, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  br label %.thread605.i.i.i

bb.fd:                                            ; preds = %bb.ci
  %i.sn = zext i32 %.sroa.985.5.copyload.i.i.i.i to i64
  %.sroa.23.28.insert.ext.le1227.i.i.i = zext i16 %.sroa.11.i.sroa.5.0.copyload.i.i.i to i64
  %.sroa.23.28.insert.shift.le1223.i.i.i = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1227.i.i.i, 32
  %.sroa.23.28.insert.insert.le1217.i.i.i = or disjoint i64 %.sroa.23.28.insert.shift.le1223.i.i.i, %i.sn
  %i.so = shl i56 %.sroa.22.0.copyload.i.i.i.i, 24
  %i.sp = zext i24 %.sroa.11.i.sroa.7.0.copyload.i.i.i to i56
  %.sroa.17435.sroa.0.0.insert.insert671.le1206.i.i.i = or disjoint i56 %i.so, %i.sp
  %.sroa.6.16.extract.trunc.le1200.i.i.i = trunc i56 %.sroa.17435.sroa.0.0.insert.insert671.le1206.i.i.i to i32
  %.sroa.9472.24.extract.trunc.le1196.i.i.i = trunc nuw i64 %.sroa.23.28.insert.insert.le1217.i.i.i to i48
  %i.sq = call i64 @llvm.usub.sat.i64(i64 %i.ix, i64 %i.no)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

bb.fe:                                            ; preds = %bb.ci
  %.not208.i.i.i = icmp ugt i64 %i.ix, %i.no
  br i1 %.not208.i.i.i, label %bb.ff, label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !18421)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i333.i.i.i)
  %i.sr = load i64, ptr %i.cn, align 8, !range !7, !alias.scope !18421, !noalias !18237, !noundef !5
  %.not.i334.i.i.i = icmp eq i64 %i.sr, 2
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x:bb.a
  %i.uw = icmp eq i64 %i.uv, 0
  br i1 %i.uw, label %.critedge32.thread.i.i, label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !alias.scope !18547, !noalias !18507, !noundef !5 ; 2 uses
  %i.ux = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ux, label %.critedge32.thread.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i75.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i75.i.i: ; preds = %bb.gg
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !alias.scope !18547, !noalias !18507, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18548
  br label %.critedge32.thread.i.i

bb.gh:                                            ; preds = %bb.fu
  %i.uy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit394.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit361.i.i.i: ; preds = %bb.fu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !18237
  call void @llvm.experimental.noalias.scope.decl(metadata !18549)
  %i.uz = load i64, ptr %i.cn, align 8, !range !7, !alias.scope !18549, !noalias !18237, !noundef !5
  %i.va = icmp eq i64 %i.uz, 2
  br i1 %i.va, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit383.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit361.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18552)
  call void @llvm.experimental.noalias.scope.decl(metadata !18555)
  %.val1.i.i.i376.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18558, !noalias !18237, !noundef !5 ; 2 uses
  %i.vb = icmp eq i64 %.val1.i.i.i376.i.i.i, 0
  br i1 %i.vb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i379.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i377.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i377.i.i.i: ; preds = %bb.gi
  %.val.i.i.i378.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 16, !alias.scope !18558, !noalias !18237, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i378.i.i.i, i64 noundef %.val1.i.i.i376.i.i.i, i64 noundef 1) #38, !noalias !18559
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i379.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i379.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i377.i.i.i, %bb.gi
  call void @llvm.experimental.noalias.scope.decl(metadata !18560)
  call void @llvm.experimental.noalias.scope.decl(metadata !18563)
  call void @llvm.experimental.noalias.scope.decl(metadata !18566)
  call void @llvm.experimental.noalias.scope.decl(metadata !18569)
  %i.vc = load i64, ptr %i.df, align 32, !range !4, !alias.scope !18572, !noalias !18237, !noundef !5
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit383.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i379.i.i.i
  %.val1.i.i.i.i.i.i.i380.i.i.i = load i64, ptr %i.dg, align 16, !alias.scope !18572, !noalias !18237, !noundef !5 ; 2 uses
  %i.ve = icmp eq i64 %.val1.i.i.i.i.i.i.i380.i.i.i, 0
  br i1 %i.ve, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit383.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i381.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i381.i.i.i: ; preds = %bb.gj
  %.val.i.i.i.i.i.i.i382.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !18572, !noalias !18237, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i382.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i380.i.i.i, i64 noundef 1) #38, !noalias !18573
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit383.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit383.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i381.i.i.i, %bb.gj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i379.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit361.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !18237
  call void @llvm.experimental.noalias.scope.decl(metadata !18574)
  %i.vf = icmp eq i64 %i.gk, 0
  br i1 %i.vf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i385.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i385.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit383.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef %i.gk, i64 noundef 1) #38, !noalias !18577
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i385.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit383.i.i.i
  %i.vg = load i64, ptr %i.bo, align 8, !range !4, !alias.scope !18578, !noalias !18237, !noundef !5
  %i.vh = icmp eq i64 %i.vg, 0
  %.val1.i.i.i.i.i388.i.i.i = load i64, ptr %i.eb, align 8, !noalias !18237 ; 2 uses
  %i.vi = icmp eq i64 %.val1.i.i.i.i.i388.i.i.i, 0
  %or.cond2443.i.i.i = select i1 %i.vh, i1 true, i1 %i.vi
  br i1 %or.cond2443.i.i.i, label %bb.gl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i

.thread536.i.i.i:                                 ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i365.i.i.i, %.thread605.i.i.i, %bb.cj, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i244.i.i.i, %bb.ax, %bb.ap, %.thread540.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i, %.thread540.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, %.thread540.loopexit.split-lp.loopexit.i.i.i, %.thread540.loopexit.loopexit.split-lp.i.i.i, %.thread540.loopexit.loopexit.i.i.i, %bb.y
  %.pn216532.i.i.i = phi { ptr, i32 } [ %i.il, %bb.y ], [ %.pn213600.i.i.i, %.thread605.i.i.i ], [ %.pn.i243.i.i.i, %bb.ax ], [ %i.jx, %bb.ap ], [ %.pn.i243.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i244.i.i.i ], [ %lpad.thr_comm.split-lp616.i.i.i, %bb.cj ], [ %.pn213600.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i365.i.i.i ], [ %lpad.loopexit.split-lp1790.i.i.i, %.thread540.loopexit.loopexit.split-lp.i.i.i ], [ %lpad.loopexit675.i.i.i, %.thread540.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit1789.i.i.i, %.thread540.loopexit.loopexit.i.i.i ], [ %lpad.loopexit257.i.i, %.thread540.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp258.i.i, %.thread540.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 2 uses
  %i.vj = load i64, ptr %i.bm, align 8, !range !18302, !alias.scope !18587, !noalias !18237, !noundef !5
  %i.vk = icmp eq i64 %i.vj, -2
  br i1 %i.vk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit394.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %.thread536.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit394.i.i.i unwind label %bb.ex, !noalias !18270

.critedge32.thread187.loopexit.i.i:               ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, %bb.c
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge32.thread.i.i

.critedge32.thread187.loopexit.split-lp.i.i:      ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge32.thread.i.i

bb.gl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i
  %.sroa.20.sroa.12.3.i.i = phi i32 [ %.sroa.20.sroa.12.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.20.sroa.12.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %.sroa.20.sroa.0.3.i.i = phi i32 [ %.sroa.20.sroa.0.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.20.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 2 uses
  %.sroa.30.sroa.11.3.i.i = phi i16 [ %.sroa.30.sroa.11.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.30.sroa.11.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 2 uses
  %.sroa.30.sroa.0.3.i.i = phi i48 [ %.sroa.30.sroa.0.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.30.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 2 uses
  %.sroa.54.2.i.i = phi i64 [ %.sroa.54.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.54.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %.sroa.53.2.i.i = phi i64 [ %.sroa.53.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.53.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %.sroa.52.2.i.i = phi i64 [ %.sroa.52.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.52.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %.sroa.51.2.i.i = phi i32 [ %.sroa.51.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.51.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %.sroa.50.2.i.i = phi i32 [ %.sroa.50.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.50.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %.sroa.45.2.i.i = phi i64 [ %.sroa.45.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.45.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %.sroa.44.2.i.i = phi i64 [ %.sroa.44.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.44.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 6 uses
  %.sroa.41.2.i.i = phi ptr [ %.sroa.41.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.41.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 8 uses
  %.sroa.38.2.i.i = phi i64 [ %.sroa.38.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.38.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 2 uses
  %.sroa.12.3.i.i = phi i64 [ %.sroa.12.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.12.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 7 uses
  %.sroa.078.3.i.i = phi ptr [ %.sroa.078.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.078.0.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ] ; 5 uses
  %i.vl = phi <2 x i64> [ %i.tu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %i.um, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  %i.vm = phi <2 x i64> [ %i.tv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %i.un, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !18237
  %i.vn = icmp eq ptr %.sroa.078.3.i.i, null
  %i.vo = zext i32 %.sroa.20.sroa.12.3.i.i to i64 ; 2 uses
  br i1 %i.vn, label %.loopexit263.loopexit.i.i, label %bb.gm

.loopexit263.loopexit.i.i:                        ; preds = %bb.gl
  %i.vp = zext i16 %.sroa.30.sroa.11.3.i.i to i64
  br label %.loopexit263.i.i

.loopexit263.i.i:                                 ; preds = %.loopexit263.loopexit.i.i, %.thread.i.i
  %.sroa.12.3219.i.i = phi i64 [ %.sroa.073.0.i.i.i, %.thread.i.i ], [ %.sroa.12.3.i.i, %.loopexit263.loopexit.i.i ] ; 2 uses
  %.sroa.30.sroa.0.3212.i.i = phi i48 [ %.sroa.30.sroa.0.0.extract.trunc.i.i, %.thread.i.i ], [ %.sroa.30.sroa.0.3.i.i, %.loopexit263.loopexit.i.i ]
  %.sroa.30.sroa.11.3211.i.i = phi i64 [ %.sroa.30.sroa.11.0.extract.shift.i.i, %.thread.i.i ], [ %i.vp, %.loopexit263.loopexit.i.i ]
  %.sroa.20.sroa.0.3210.i.i = phi i32 [ %.sroa.20.sroa.0.0.extract.trunc101.i.i, %.thread.i.i ], [ %.sroa.20.sroa.0.3.i.i, %.loopexit263.loopexit.i.i ]
  %.sroa.20.sroa.12.3209.i.i = phi i64 [ %.sroa.20.sroa.12.0.extract.shift110.i.i, %.thread.i.i ], [ %i.vo, %.loopexit263.loopexit.i.i ]
  %.sroa.20.sroa.12.0.insert.shift103.i.i = shl nuw i64 %.sroa.20.sroa.12.3209.i.i, 32
  %.sroa.20.sroa.0.0.insert.ext96.i.i = zext i32 %.sroa.20.sroa.0.3210.i.i to i64
  %.sroa.20.sroa.0.0.insert.insert98.i.i = or disjoint i64 %.sroa.20.sroa.12.0.insert.shift103.i.i, %.sroa.20.sroa.0.0.insert.ext96.i.i ; 2 uses
  %.sroa.30.sroa.11.0.insert.shift89.i.i = shl nuw i64 %.sroa.30.sroa.11.3211.i.i, 48
  %.sroa.30.sroa.0.0.insert.ext83.i.i = zext i48 %.sroa.30.sroa.0.3212.i.i to i64
  %.sroa.30.sroa.0.0.insert.insert85.i.i = or disjoint i64 %.sroa.30.sroa.11.0.insert.shift89.i.i, %.sroa.30.sroa.0.0.insert.ext83.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.bu, align 8, !noalias !18236 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !18236
  store i64 %.sroa.12.3219.i.i, ptr %i.bs, align 8, !noalias !18236
  %.sroa.4125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.sroa.20.sroa.0.0.insert.insert98.i.i, ptr %.sroa.4125.0..sroa_idx.i.i, align 8, !noalias !18236
  %.sroa.5126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %.sroa.30.sroa.0.0.insert.insert85.i.i, ptr %.sroa.5126.0..sroa_idx.i.i, align 8, !noalias !18236
  %.not28.i.i = icmp eq i64 %.sroa.04.0.copyload.i.i, -2
  br i1 %.not28.i.i, label %bb.kr, label %bb.kq

bb.gm:                                            ; preds = %bb.gl
  %.sroa.20.sroa.12.0.insert.shift.i.i = shl nuw i64 %i.vo, 32
  %.sroa.20.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.20.sroa.0.3.i.i to i64
  %.sroa.20.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.20.sroa.12.0.insert.shift.i.i, %.sroa.20.sroa.0.0.insert.ext.i.i
  %.sroa.30.sroa.11.0.insert.ext.i.i = zext i16 %.sroa.30.sroa.11.3.i.i to i64
  %.sroa.30.sroa.11.0.insert.shift.i.i = shl nuw i64 %.sroa.30.sroa.11.0.insert.ext.i.i, 48
  %.sroa.30.sroa.0.0.insert.ext.i.i = zext i48 %.sroa.30.sroa.0.3.i.i to i64
  %.sroa.30.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.30.sroa.11.0.insert.shift.i.i, %.sroa.30.sroa.0.0.insert.ext.i.i
  store ptr %.sroa.078.3.i.i, ptr %i.bt, align 8, !noalias !18236
  store i64 %.sroa.12.3.i.i, ptr %.sroa.4113.0..sroa_idx.i.i, align 8, !noalias !18236
  store i64 %.sroa.20.sroa.0.0.insert.insert.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !18236
  store i64 %.sroa.30.sroa.0.0.insert.insert.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !18236
  store i64 %.sroa.38.2.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !18236
  store ptr %.sroa.41.2.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !18236
  store i64 %.sroa.44.2.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !18236
  store i64 %.sroa.45.2.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !18236
  store <2 x i64> %i.vl, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !18236
  store <2 x i64> %i.vm, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !18236
  store i32 %.sroa.50.2.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !18236
  store i32 %.sroa.51.2.i.i, ptr %.sroa.16.0..sroa_idx.i.i, align 4, !noalias !18236
  store i64 %.sroa.52.2.i.i, ptr %.sroa.17.0..sroa_idx.i.i, align 8, !noalias !18236
  store i64 %.sroa.53.2.i.i, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !noalias !18236
  store i64 %.sroa.54.2.i.i, ptr %.sroa.19.0..sroa_idx.i.i, align 8, !noalias !18236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !18236
  invoke void @_RNvXs5_NtCsgtXWG2OCnrB_3zip4readNtB5_20CentralDirectoryInfoINtNtCskKLDkoKarTP_4core7convert7TryFromRNtNtB7_4spec23CentralDirectoryEndInfoE8try_from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.bt)
          to label %bb.gn unwind label %.loopexit264.i.i, !noalias !18234

.critedge.thread.i.i:                             ; preds = %.loopexit.i.i
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %.critedge32.thread.i.i

.loopexit264.i.i:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, %bb.gq, %bb.gm
  %lpad.loopexit265.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.gr
  %lpad.loopexit.split-lp266.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.vr = load i64, ptr %i.br, align 8, !range !4, !noalias !18236, !noundef !5
  %i.vs = trunc nuw i64 %i.vr to i1
  %.sroa.0170.0.copyload.i.i = load i64, ptr %i.ed, align 8, !noalias !18236 ; 3 uses
  %.sroa.4171.0.copyload.i.i = load i64, ptr %.sroa.4166.0..sroa_idx.i.i, align 8, !noalias !18236 ; 4 uses
  %.sroa.5172.0.copyload.i.i = load i64, ptr %.sroa.5167.0..sroa_idx.i.i, align 8, !noalias !18236 ; 5 uses
  br i1 %i.vs, label %bb.kj, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %.sroa.6168.0.copyload.i.i = load i32, ptr %.sroa.6168.0..sroa_idx.i.i, align 8, !noalias !18236
  %.sroa.7169.0.copyload.i.i = load i32, ptr %.sroa.7169.0..sroa_idx.i.i, align 4, !noalias !18236
  call void @llvm.experimental.noalias.scope.decl(metadata !18590)
  call void @llvm.experimental.noalias.scope.decl(metadata !18593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !18596
  %i.vt = icmp ugt i64 %.sroa.5172.0.copyload.i.i, %.sroa.4171.0.copyload.i.i
  %..i.i.i.i = select i1 %i.vt, i64 0, i64 %.sroa.5172.0.copyload.i.i ; 4 uses
  %.not.i.i44.i.i = icmp eq i32 %.sroa.6168.0.copyload.i.i, %.sroa.7169.0.copyload.i.i
  br i1 %.not.i.i44.i.i, label %bb.gp, label %.thread240.i.i

bb.gp:                                            ; preds = %bb.go
  %4 = mul nuw i64 %..i.i.i.i, 216
  %5 = icmp ugt i64 %..i.i.i.i, 85401592933840516
  %i.vu = icmp slt i64 %4, 0
  %or.cond.i.i.i.i = select i1 %5, i1 true, i1 %i.vu, !prof !18599
  br i1 %or.cond.i.i.i.i, label %.thread240.i.i, label %bb.gq, !prof !18599

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !18600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !18600
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %..i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 216)
          to label %.noexc59.i.i unwind label %.loopexit264.i.i, !noalias !18234

.noexc59.i.i:                                     ; preds = %bb.gq
  %i.vv = load i64, ptr %i.u, align 8, !range !4, !noalias !18600, !noundef !5
  %i.vw = trunc nuw i64 %i.vv to i1
  %i.vx = load i64, ptr %i.ee, align 8, !range !28, !noalias !18600, !noundef !5 ; 3 uses
  br i1 %i.vw, label %bb.gr, label %bb.gs, !prof !8

bb.gr:                                            ; preds = %.noexc59.i.i
  %i.vy = load i64, ptr %i.ef, align 8, !noalias !18600
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.vx, i64 %i.vy) #39
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.i.i, !noalias !18234

.noexc60.i.i:                                     ; preds = %bb.gr
  unreachable

bb.gs:                                            ; preds = %.noexc59.i.i
  %i.vz = load ptr, ptr %i.ef, align 8, !noalias !18600, !nonnull !5, !noundef !5
  %i.wa = icmp samesign ule i64 %..i.i.i.i, %i.vx
  call void @llvm.assume(i1 %i.wa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !18600
  store i64 %i.vx, ptr %i.w, align 8, !noalias !18600
  store ptr %i.vz, ptr %i.eg, align 8, !noalias !18600
  store i64 0, ptr %i.eh, align 8, !noalias !18600
  %i.wb = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 0, i64 noundef %.sroa.4171.0.copyload.i.i)
          to label %bb.gt unwind label %.loopexit.split-lp.i.i.i.i, !noalias !18603 ; 2 uses

.loopexit.i.i.i.i:                                ; preds = %bb.hf, %.lr.ph.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.jy, %bb.hd, %bb.gs
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.kc, %bb.jv, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i259.i.i.i.i.i.i, %bb.ju, %bb.hi, %bb.ha, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.abc, %bb.jv ], [ %i.abq, %bb.kc ], [ %.pn200293.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i259.i.i.i.i.i.i ], [ %i.wv, %bb.ha ], [ %.pn.pn.pn.pn.i.i.i.i.i.i, %bb.hi ], [ %.pn200293.i.i.i.i.i.i, %bb.ju ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #34
          to label %.critedge.i.i unwind label %bb.ki, !noalias !18603

bb.gt:                                            ; preds = %bb.gs
  %i.wc = extractvalue { i64, ptr } %i.wb, 0
  %i.wd = trunc nuw i64 %i.wc to i1
  br i1 %i.wd, label %bb.kh, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.gt
  %.not534.i.i.i.i = icmp eq i64 %.sroa.5172.0.copyload.i.i, 0
  br i1 %.not534.i.i.i.i, label %.loopexit.loopexit2473.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %.sroa.018.0533.i.i.i.i = phi i64 [ %i.we, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %i.we = add nuw i64 %.sroa.018.0533.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18604)
  %.val29.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !18607, !noalias !18608, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !18610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !18611
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.s, i8 0, i64 46, i1 false), !alias.scope !18615, !noalias !18611
  %i.wf = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.s, i64 noundef 46)
          to label %.noexc.i.i46.i.i unwind label %.loopexit.i.i.i.i, !noalias !18603 ; 9 uses

.noexc.i.i46.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i47.i.i = icmp eq ptr %i.wf, null
  br i1 %.not.i.i.i.i47.i.i, label %bb.gz, label %bb.gu

bb.gu:                                            ; preds = %.noexc.i.i46.i.i
  %i.wg = ptrtoint ptr %i.wf to i64               ; 4 uses
  %i.wh = and i64 %i.wg, 3                        ; 2 uses
  switch i64 %i.wh, label %default.unreachable [
    i64 2, label %bb.gv
    i64 3, label %bb.gw
    i64 0, label %bb.gx
    i64 1, label %bb.gy
  ], !prof !162

bb.gv:                                            ; preds = %bb.gu
  %i.wi = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i.i55.i.i unwind label %bb.ha, !noalias !18618

.noexc.i.i.i.i55.i.i:                             ; preds = %bb.gv
  %i.wj = lshr i64 %i.wg, 32
  %i.wk = trunc nuw i64 %i.wj to i32
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8, !noalias !18618, !nonnull !5, !noundef !5
  %i.wn = invoke noundef i8 %i.wm(i32 noundef %i.wk)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i unwind label %bb.ha, !noalias !18618, !inline_history !163

bb.gw:                                            ; preds = %bb.gu
  %i.wo = lshr i64 %i.wg, 32
  %i.wp = icmp ult ptr %i.wf, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i54.i.i = trunc i64 %i.wo to i8 ; 2 uses
  %i.wq = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i54.i.i, -1
  call void @llvm.assume(i1 %i.wp)
  call void @llvm.assume(i1 %i.wq)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i

bb.gx:                                            ; preds = %bb.gu
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.ws = load i8, ptr %i.wr, align 8, !range !164, !noalias !18618, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i

bb.gy:                                            ; preds = %bb.gu
  %i.wt = getelementptr i8, ptr %i.wf, i64 31
  %i.wu = load i8, ptr %i.wt, align 8, !range !164, !noalias !18618, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i

bb.gz:                                            ; preds = %.noexc.i.i46.i.i
  %.sroa.028.0.copyload.i.i.i.i56.i.i = load i32, ptr %i.s, align 4, !noalias !18611
  %.not30.i.i.i.i57.i.i = icmp eq i32 %.sroa.028.0.copyload.i.i.i.i56.i.i, 33639248
  br i1 %.not30.i.i.i.i57.i.i, label %bb.hf, label %.loopexit152.i.i.i.i

bb.ha:                                            ; preds = %bb.hb, %.noexc.i.i.i.i55.i.i, %bb.gv
  %i.wv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.wf) #34
          to label %.body.i.i.i.i unwind label %bb.he, !noalias !18618

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i: ; preds = %bb.gy, %bb.gx, %bb.gw, %.noexc.i.i.i.i55.i.i
  %.sroa.0.0.i.i.i.i.i49.i.i = phi i8 [ %i.wu, %bb.gy ], [ %switch.idx.cast.i.i.i.i.i.i.i54.i.i, %bb.gw ], [ %i.ws, %bb.gx ], [ %i.wn, %.noexc.i.i.i.i55.i.i ]
  %i.ww = icmp eq i8 %.sroa.0.0.i.i.i.i.i49.i.i, 37
  br i1 %i.ww, label %bb.hb, label %.loopexit152.i.i.i.i

bb.hb:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !18611
  store ptr @405, ptr %i.q, align 8, !noalias !18611, !captures !53
  store i64 32, ptr %i.gb, align 8, !noalias !18611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !18611
  store ptr %i.q, ptr %i.p, align 8, !noalias !18611
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.46.0..sroa_idx.i.i.i.i50.i.i, align 8, !noalias !18611
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @398, ptr noundef nonnull %i.p)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i unwind label %bb.ha, !noalias !18618

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i: ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !18611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !18611
  %.sroa.11.8.copyload2.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !18619
  %.sroa.15.8.copyload5.i.i.i.i.i = load ptr, ptr %.sroa.15.8..sroa_idx4.i.i.i.i.i, align 8, !noalias !18619
  %.sroa.16.sroa.0.0.copyload66.i.i.i.i.i = load i8, ptr %.sroa.16.8..sroa_idx7.i.i.i.i.i, align 8, !noalias !18619
  %.sroa.16.sroa.8.0.copyload69.i.i.i.i.i = load i32, ptr %.sroa.16.sroa.8.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i, align 1, !noalias !18619
  %.sroa.16.sroa.9.0.copyload72.i.i.i.i.i = load i16, ptr %.sroa.16.sroa.9.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i, align 1, !noalias !18619
  %.sroa.16.sroa.10.0.copyload75.i.i.i.i.i = load i8, ptr %.sroa.16.sroa.10.0..sroa.16.8..sroa_idx7.sroa_idx.i.i.i.i.i, align 1, !noalias !18619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !18611
  switch i64 %i.wh, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i
    i64 3, label %bb.hc
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i
    i64 1, label %bb.hd
  ], !prof !162

bb.hc:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i
  %i.wx = icmp ult ptr %i.wf, inttoptr (i64 188978561024 to ptr)
  %i.wy = and i64 %i.wg, 1095216660480
  %i.wz = icmp ne i64 %i.wy, 1095216660480
  call void @llvm.assume(i1 %i.wx)
  call void @llvm.assume(i1 %i.wz)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i

bb.hd:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i
  %i.xa = getelementptr i8, ptr %i.wf, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xa) ]
  store ptr %i.xa, ptr %i.gc, align 8, !alias.scope !18620, !noalias !18611
  store i8 3, ptr %i.o, align 8, !alias.scope !18620, !noalias !18611
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !18603

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i: ; preds = %bb.hd, %bb.hc, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !18611
  br label %.loopexit152.i.i.i.i

bb.he:                                            ; preds = %bb.ha
  %i.xb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18618
  unreachable

.loopexit152.i.i.i.i:                             ; preds = %bb.gz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i
  %.sroa.16.sroa.0.0.ph.i.i.i.i.i = phi i8 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.0.0.copyload66.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 32, %bb.gz ]
  %.sroa.16.sroa.8.0.ph.i.i.i.i.i = phi i32 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.8.0.copyload69.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 0, %bb.gz ]
  %.sroa.16.sroa.9.0.ph.i.i.i.i.i = phi i16 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.9.0.copyload72.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 0, %bb.gz ]
  %.sroa.16.sroa.10.0.ph.i.i.i.i.i = phi i8 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.16.sroa.10.0.copyload75.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ 0, %bb.gz ]
  %.sroa.15.0.ph.i.i.i.i.i = phi ptr [ %i.wf, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.15.8.copyload5.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ @406, %bb.gz ]
  %.sroa.11.0.ph.i.i.i.i.i = phi i64 [ -9223372036854775808, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i48.i.i ], [ %.sroa.11.8.copyload2.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i52.i.i ], [ -1, %bb.gz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !18611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18610
  %.sroa.0106.sroa.0.7.extract.shift.i.i.i.i.i = and i64 %.sroa.11.0.ph.i.i.i.i.i, -72057594037927936
  %i.xc = ptrtoint ptr %.sroa.15.0.ph.i.i.i.i.i to i64
  br label %_RINvNtCsgtXWG2OCnrB_3zip4read26central_header_to_zip_fileINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i

bb.hf:                                            ; preds = %bb.gz
  %.sroa.10.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.429.0..sroa_idx.i.i.i.i45.i.i, align 4, !noalias !18619
  %.sroa.11.5.copyload.i.i.i.i.i = load i64, ptr %.sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18619 ; 4 uses
  %.sroa.15.5.copyload.i.i.i.i.i = load ptr, ptr %.sroa.15.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18619
end_hunk_1
begin_hunk_2_@_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7gfv9tzbXmh_6yara_x:bb.a
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba3vba11ProjectInfoNtNtCsg2CeFYmfPbl_8protobuf7message7Message11cached_sizeBc_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = tail call noundef i32 @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvYNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba3vba6ModuleNtNtCsg2CeFYmfPbl_8protobuf7message7Message11cached_sizeBc_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call noundef i32 @_RNvMNtCsg2CeFYmfPbl_8protobuf11cached_sizeNtB2_10CachedSize3get(ptr noundef nonnull align 8 %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noalias noundef align 8 ptr @_RNvYNtNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba3vba6ModuleNtNtCsg2CeFYmfPbl_8protobuf7message7Message17check_initializedBc_(ptr nofree noundef nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockyE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x7scanner7contextNtB15_11ScanContext5resets0_00zEB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef range(i64 0, 2), i64, i1 noundef zeroext, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime9externals6globalNtB2_6Global4__get(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime9externals6globalNtB2_6Global4__new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMNtNtNtCsiOkGTpNE17y_8wasmtime7runtime9externals6globalNtB2_6Global4__set(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #23

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB2_7ForwardNtB2_15FinderDirection12scope_window(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXNtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB2_7ForwardNtB2_15FinderDirection4find(ptr noalias nofree noundef readonly align 32 captures(address, read_provenance) dereferenceable(288), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection12scope_window(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection4find(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection11move_cursor(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process5abort() unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs7gfv9tzbXmh_6yara_x8compiler9PatternIdEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs2r1H4NiMXj9_12regex_syntax3ast5parseNtB5_6Parser5parse(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #26

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCs2r1H4NiMXj9_12regex_syntax3hir9translateNtB5_10Translator9translate(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #27

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCs69rhaJXEXoX_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8, ptr noundef, ptr) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs4_NtNtCsgIATGCnso3Z_22wasmtime_internal_core5error3oomNtNtB7_5error13OomOrDynErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB5_11OutOfMemoryE4from(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgtXWG2OCnrB_3zip4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtNtB9_8buf_read7BufRead8fill_bufCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs3d3aqnH98pt_6flate23zioNtNtB6_3mem10DecompressNtB4_3Ops3run(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i8 noundef range(i8 0, 5)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtCsgtXWG2OCnrB_3zip4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEENtNtB9_8buf_read7BufRead7consumeCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(80), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsG258MDvU3F_3std3sys3env4unix6getenv(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2_9BufReaderINtNtCsgtXWG2OCnrB_3zip4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEE13with_capacityCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsgtXWG2OCnrB_3zip11compressionINtB5_12DecompressorINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtB7_4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEE3newCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80), i16 noundef range(i16 0, 3), i16, i64 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgtXWG2OCnrB_3zip5crc32INtB2_11Crc32ReaderINtNtB4_11compression12DecompressorINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderINtNtB4_4read12CryptoReaderINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEEEE3newCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([136 x i8]) align 8 captures(none) dereferenceable(136), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112), i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsgtXWG2OCnrB_3zip9zipcryptoINtB5_15ZipCryptoReaderINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE3newCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsgtXWG2OCnrB_3zip9zipcryptoINtB5_15ZipCryptoReaderINtNtNtCskKLDkoKarTP_4core2io4util4TakeQINtNtB11_6cursor6CursorRShEEE8validateCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsgtXWG2OCnrB_3zip5cp437RShNtB2_9FromCp43710from_cp437(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsO_NtCsexYYUdYSQU6_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8, i8 } @_RNvMNtCsgtXWG2OCnrB_3zip5typesNtB2_6System13extract_bytes(i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i48 @_RNvMs8_NtCsgtXWG2OCnrB_3zip5typesNtB5_8DateTime14try_from_msdos(i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsgtXWG2OCnrB_3zip4read17parse_extra_field(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(216)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsI_Cs6ObhOmryMwL_8smallvecINtB5_8IntoIterAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtNtCs7gfv9tzbXmh_6yara_x2re6parser9MatchKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketINtNtB7_5boxed3BoxeENtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionReEENtNtNtBK_3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox10VerdictTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsg2CeFYmfPbl_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandbox12BehaviourTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterINtCs6ObhOmryMwL_8smallvec8IntoIterAhj4_EEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs2CmfWUMKNor_9itertools8adaptors13multi_product16MultiProductIterNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms4mask18ByteMaskCombinatorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsdxt3QCBqsEk_4uuid4UuidENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3ast11CaptureNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3ast12ClassSetItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3ast3AstENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3ast7CommentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2r1H4NiMXj9_12regex_syntax3ast9FlagsItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg2CeFYmfPbl_8protobuf10descriptor15DescriptorProtoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg2CeFYmfPbl_8protobuf10descriptor19EnumDescriptorProtoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg2CeFYmfPbl_8protobuf10descriptor19UninterpretedOptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg2CeFYmfPbl_8protobuf10descriptor20FieldDescriptorProtoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg2CeFYmfPbl_8protobuf10descriptor22ServiceDescriptorProtoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip12extra_fields10ExtraFieldENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsgtXWG2OCnrB_3zip5types11ZipFileDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3ast5parse10ClassStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3ast5parse10GroupStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir9translate8HirFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x2re6parser9MatchKindENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7matches5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsg2CeFYmfPbl_8protobuf10descriptor16source_code_info8LocationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsg2CeFYmfPbl_8protobuf7reflect3acc13FieldAccessorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file14FileDescriptorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10DomainJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7TcpJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema7UdpJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema8HttpJsonENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser11AssemblyRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser11NestedClassENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser12GenericParamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser12StreamHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser13InterfaceImplENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser15CustomAttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ClassENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser5ParamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser7TypeRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8AssemblyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8ConstantENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser8ResourceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9BlobIndexENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MemberRefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6dotnet6parser9MethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos11test_proto212NestedProto2ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos12net_analysis22CrowdSourcedIdsResultsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ExportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe6ImportENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe7SectionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8DirEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8KeyValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8ResourceENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe8RichToolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe9SignatureENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3crx12CrxSignatureENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0
end_hunk_2
