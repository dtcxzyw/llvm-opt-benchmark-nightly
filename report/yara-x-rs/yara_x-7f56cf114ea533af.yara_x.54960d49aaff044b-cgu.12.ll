Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.12?download=true
inline.NumInlined: 5045
inline.NumDeleted: 2384
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x:bb.a
  br i1 %i.ja, label %bb.af, label %bb.ai

bb.ae:                                            ; preds = %.noexc238.i.i.i
  store i64 0, ptr %i.ck, align 8, !alias.scope !18264, !noalias !18271
  %i.jb = invoke { i64, i64 } @_RNvXs_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB4_9BackwardsNtB4_15FinderDirection11move_cursor(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, i64 noundef %i.hn, i64 noundef 0, i64 noundef %.sroa.018.0.i.i, i64 noundef %i.gk)
          to label %.noexc240.i.i.i unwind label %.thread540.loopexit.loopexit.i.i.i, !noalias !18270 ; 2 uses

.noexc240.i.i.i:                                  ; preds = %bb.ae
  %i.jc = extractvalue { i64, i64 } %i.jb, 0
  %i.jd = trunc nuw i64 %i.jc to i1
  br i1 %i.jd, label %bb.ag, label %.loopexit1794.i.i.i

bb.af:                                            ; preds = %.noexc239.i.i.i
  %i.je = extractvalue { i64, ptr } %i.iy, 1
  %i.jf = ptrtoint ptr %i.je to i64
  br label %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.ag:                                            ; preds = %.noexc240.i.i.i
  %i.jg = extractvalue { i64, i64 } %i.jb, 1      ; 3 uses
  store i64 %i.jg, ptr %i.cj, align 8, !alias.scope !18264, !noalias !18271
  %.not.i.i.i.i = icmp ult i64 %i.jg, %.sroa.018.0.i.i
  br i1 %.not.i.i.i.i, label %.peel.next.i.i.i, label %.loopexit.i.i.i, !llvm.loop !18276

.loopexit1794.i.i.i:                              ; preds = %.noexc240.peel.i.i.i, %.noexc240.i.i.i
  store i64 %.sroa.018.0.i.i, ptr %i.cl, align 8, !alias.scope !18264, !noalias !18271
  br label %.loopexit.i.i.i

.thread540.loopexit.loopexit.i.i.i:               ; preds = %bb.ae, %bb.ad, %bb.t, %bb.s
  %lpad.loopexit1789.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread536.i.i.i

.thread540.loopexit.loopexit.split-lp.i.i.i:      ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k
  %lpad.loopexit.split-lp1790.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread536.i.i.i

.thread540.loopexit.split-lp.loopexit.i.i.i:      ; preds = %bb.fw, %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i242.i.i.i, %bb.av, %bb.as, %bb.ai, %.loopexit1793.i.i.i
  %lpad.loopexit675.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread536.i.i.i

.thread540.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i: ; preds = %bb.ab
  %lpad.loopexit257.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread536.i.i.i

.thread540.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i: ; preds = %bb.aw, %.loopexit1788.i.i.i
  %lpad.loopexit.split-lp258.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread536.i.i.i

bb.ah:                                            ; preds = %bb.fz
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit394.i.i.i

_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.af, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i, %.loopexit1791.i.i.i
  %.sroa.9.0.i.i.i = phi i64 [ %i.hw, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i ], [ %i.hu, %.loopexit1791.i.i.i ], [ %i.jf, %bb.af ] ; 2 uses
  %.sroa.20.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.9.0.i.i.i to i32
  %.sroa.20.sroa.12.0.extract.shift.i.i = lshr i64 %.sroa.9.0.i.i.i, 32
  %.sroa.20.sroa.12.0.extract.trunc.i.i = trunc nuw i64 %.sroa.20.sroa.12.0.extract.shift.i.i to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

bb.ai:                                            ; preds = %.noexc239.i.i.i
  store i64 1, ptr %i.ck, align 8, !alias.scope !18264, !noalias !18271
  store i64 %i.iw, ptr %i.co, align 8, !alias.scope !18264, !noalias !18271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !18278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !18282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %i.ay, i8 0, i64 22, i1 false), !alias.scope !18286, !noalias !18282
  %i.jh = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.ay, i64 noundef 22)
          to label %.noexc251.i.i.i unwind label %.thread540.loopexit.split-lp.loopexit.i.i.i, !noalias !18270 ; 9 uses

.noexc251.i.i.i:                                  ; preds = %bb.ai
  %.not.i.i.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %.noexc251.i.i.i
  %i.ji = ptrtoint ptr %i.jh to i64               ; 4 uses
  %i.jj = and i64 %i.ji, 3                        ; 2 uses
  switch i64 %i.jj, label %default.unreachable [
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 0, label %bb.am
    i64 1, label %bb.an
  ], !prof !162

bb.ak:                                            ; preds = %bb.aj
  %i.jk = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i.i.i unwind label %bb.ap, !noalias !18289

.noexc.i.i.i.i.i:                                 ; preds = %bb.ak
  %i.jl = lshr i64 %i.ji, 32
  %i.jm = trunc nuw i64 %i.jl to i32
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !18289, !nonnull !5, !noundef !5
  %i.jp = invoke noundef i8 %i.jo(i32 noundef %i.jm)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i unwind label %bb.ap, !noalias !18289, !inline_history !163

bb.al:                                            ; preds = %bb.aj
  %i.jq = lshr i64 %i.ji, 32
  %i.jr = icmp ult ptr %i.jh, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i.i = trunc i64 %i.jq to i8 ; 2 uses
  %i.js = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jr)
  call void @llvm.assume(i1 %i.js)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.am:                                            ; preds = %bb.aj
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.ju = load i8, ptr %i.jt, align 8, !range !164, !noalias !18289, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.an:                                            ; preds = %bb.aj
  %i.jv = getelementptr i8, ptr %i.jh, i64 31
  %i.jw = load i8, ptr %i.jv, align 8, !range !164, !noalias !18289, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i

bb.ao:                                            ; preds = %.noexc251.i.i.i
  %.sroa.028.0.copyload.i.i.i.i.i = load i32, ptr %i.ay, align 4, !noalias !18282
  %.not30.i.i.i.i.i = icmp eq i32 %.sroa.028.0.copyload.i.i.i.i.i, 101010256
  br i1 %.not30.i.i.i.i.i, label %bb.av, label %bb.au

bb.ap:                                            ; preds = %bb.aq, %.noexc.i.i.i.i.i, %bb.ak
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.jh) #34
          to label %.thread536.i.i.i unwind label %bb.at, !noalias !18289

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.al, %.noexc.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.jw, %bb.an ], [ %switch.idx.cast.i.i.i.i.i.i.i.i, %bb.al ], [ %i.ju, %bb.am ], [ %i.jp, %.noexc.i.i.i.i.i ]
  %i.jy = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 37
  br i1 %i.jy, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !18282
  store ptr @397, ptr %i.aw, align 8, !noalias !18282, !captures !53
  store i64 24, ptr %i.cr, align 8, !noalias !18282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !18282
  store ptr %i.aw, ptr %i.av, align 8, !noalias !18282
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !18282
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noundef nonnull @398, ptr noundef nonnull %i.av)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %bb.ap, !noalias !18289

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !18282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !18282
  %i.jz = load i64, ptr %i.ax, align 8, !noalias !18290 ; 4 uses
  %.sroa.22.8.copyload.i.i.i.i = load ptr, ptr %.sroa.22.8..sroa_idx.i.i.i.i, align 8, !noalias !18290
  %.sroa.30.8.copyload.i.i.i.i = load i64, ptr %.sroa.30.8..sroa_idx.i.i.i.i, align 8, !noalias !18290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !18282
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = lshr i64 %i.jz, 8
  %i.kc = trunc i64 %i.kb to i16
  %i.kd = lshr i64 %i.jz, 24
  %i.ke = trunc i64 %i.kd to i16
  %i.kf = lshr i64 %i.jz, 40
  %i.kg = trunc nuw i64 %i.kf to i24
  switch i64 %i.jj, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
    i64 3, label %bb.ar
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
    i64 1, label %bb.as
  ], !prof !162

bb.ar:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.kh = icmp ult ptr %i.jh, inttoptr (i64 188978561024 to ptr)
  %i.ki = and i64 %i.ji, 1095216660480
  %i.kj = icmp ne i64 %i.ki, 1095216660480
  call void @llvm.assume(i1 %i.kh)
  call void @llvm.assume(i1 %i.kj)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i

bb.as:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  %i.kk = getelementptr i8, ptr %i.jh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kk) ]
  store ptr %i.kk, ptr %i.cs, align 8, !alias.scope !18291, !noalias !18282
  store i8 3, ptr %i.au, align 8, !alias.scope !18291, !noalias !18282
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i unwind label %.thread540.loopexit.split-lp.loopexit.i.i.i, !noalias !18270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i: ; preds = %bb.as, %bb.ar, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !18282
  br label %bb.au

bb.at:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18289
  unreachable

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i, %bb.ao
  %.sroa.11.6..sroa.11.6..sroa.11.13..sroa.648.0.copyload83.i.i.i.i = phi i24 [ -8388608, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %i.kg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ -1, %bb.ao ]
  %.sroa.11.4..sroa.11.4..sroa.11.11..sroa.547.0.copyload.i.i.i.i = phi i16 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %i.ke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ -1, %bb.ao ]
  %.sroa.11.2..sroa.11.2..sroa.11.9..sroa.446.0.copyload.i.i.i.i = phi i16 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %i.kc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ -1, %bb.ao ]
  %.sroa.11.1..sroa.11.1..sroa.11.8..sroa.045.0.copyload.i.i.i.i = phi i8 [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %i.ka, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ -1, %bb.ao ]
  %.sroa.22.0.ph.i.i.i.i = phi ptr [ %i.jh, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %.sroa.22.8.copyload.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ @399, %bb.ao ]
  %.sroa.30.0.ph.i.i.i.i = phi i64 [ undef, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i ], [ %.sroa.30.8.copyload.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i ], [ 32, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !18282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !18278
  %i.km = ptrtoint ptr %.sroa.22.0.ph.i.i.i.i to i64
  br label %bb.bl

bb.av:                                            ; preds = %bb.ao
  %.sroa.985.5.copyload.i.i.i.i = load i32, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i, align 4, !noalias !18290 ; 3 uses
  %.sroa.11.i.sroa.5.0.copyload.i.i.i = load i16, ptr %.sroa.11.i.sroa.5.0..sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i, align 4, !noalias !18290 ; 3 uses
  %.sroa.11.i.sroa.6.0.copyload.i.i.i = load i16, ptr %.sroa.11.i.sroa.6.0..sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i, align 2, !noalias !18290 ; 4 uses
  %.sroa.11.i.sroa.7.0.copyload.i.i.i = load i24, ptr %.sroa.11.i.sroa.7.0..sroa.11.5..sroa.429.0..sroa_idx.i.sroa_idx.i.sroa_idx.i.i.i, align 4, !noalias !18290 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i56, ptr %.sroa.22.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i, align 1, !noalias !18290 ; 4 uses
  %.sroa.22.0.insert.ext.i.i.i.i = zext i56 %.sroa.22.0.copyload.i.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !18282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !18278
  %.sroa.22.5.extract.shift.i.i.i.i = lshr i64 %.sroa.22.0.insert.ext.i.i.i.i, 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !18278
  call void @llvm.experimental.noalias.scope.decl(metadata !18294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !18297
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, i64 noundef range(i64 0, -44) %.sroa.22.5.extract.shift.i.i.i.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc256.i.i.i unwind label %.thread540.loopexit.split-lp.loopexit.i.i.i, !noalias !18270

.noexc256.i.i.i:                                  ; preds = %bb.av
  %i.kn = load i64, ptr %i.at, align 8, !range !4, !noalias !18297, !noundef !5
  %i.ko = trunc nuw i64 %i.kn to i1
  %i.kp = load i64, ptr %i.ct, align 8, !range !28, !noalias !18297, !noundef !5 ; 2 uses
  br i1 %i.ko, label %bb.aw, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i242.i.i.i, !prof !8

bb.aw:                                            ; preds = %.noexc256.i.i.i
  %i.kq = load i64, ptr %i.cu, align 8, !noalias !18297
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.kp, i64 %i.kq) #39
          to label %.noexc257.i.i.i unwind label %.thread540.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.i, !noalias !18270

.noexc257.i.i.i:                                  ; preds = %bb.aw
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i242.i.i.i: ; preds = %.noexc256.i.i.i
  %i.kr = load ptr, ptr %i.cu, align 8, !noalias !18297, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !18297
  store i64 %i.kp, ptr %i.az, align 8, !alias.scope !18294, !noalias !18278
  store ptr %i.kr, ptr %i.cv, align 8, !alias.scope !18294, !noalias !18278
  store i64 %.sroa.22.5.extract.shift.i.i.i.i, ptr %i.cw, align 8, !alias.scope !18294, !noalias !18278
  %i.ks = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.az)
          to label %.noexc258.i.i.i unwind label %.thread540.loopexit.split-lp.loopexit.i.i.i, !noalias !18270 ; 2 uses

.noexc258.i.i.i:                                  ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i242.i.i.i
  %i.kt = extractvalue { ptr, i64 } %i.ks, 0      ; 11 uses
  %i.ku = extractvalue { ptr, i64 } %i.ks, 1      ; 17 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !18278
  %i.kv = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.kt, i64 noundef %i.ku)
          to label %bb.az unwind label %bb.ay, !noalias !18298 ; 8 uses

bb.ax:                                            ; preds = %bb.bf, %bb.ay
  %.pn.i243.i.i.i = phi { ptr, i32 } [ %i.kx, %bb.ay ], [ %i.ln, %bb.bf ] ; 2 uses
  %i.kw = icmp eq i64 %i.ku, 0
  br i1 %i.kw, label %.thread536.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i244.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i244.i.i.i: ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kt) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18298
  br label %.thread536.i.i.i

bb.ay:                                            ; preds = %bb.bi, %.noexc258.i.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %.noexc258.i.i.i
  %.not.i245.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i245.i.i.i, label %bb.bm, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ky = ptrtoint ptr %i.kv to i64               ; 5 uses
  %i.kz = and i64 %i.ky, 3                        ; 2 uses
  switch i64 %i.kz, label %default.unreachable [
    i64 2, label %bb.bb
    i64 3, label %bb.bc
    i64 0, label %bb.bd
    i64 1, label %bb.be
  ], !prof !162

bb.bb:                                            ; preds = %bb.ba
  %i.la = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i250.i.i.i unwind label %bb.bf, !noalias !18298

.noexc.i250.i.i.i:                                ; preds = %bb.bb
  %i.lb = lshr i64 %i.ky, 32
  %i.lc = trunc nuw i64 %i.lb to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !noalias !18298, !nonnull !5, !noundef !5
  %i.lf = invoke noundef i8 %i.le(i32 noundef %i.lc)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i unwind label %bb.bf, !noalias !18298, !inline_history !163

bb.bc:                                            ; preds = %bb.ba
  %i.lg = lshr i64 %i.ky, 32
  %i.lh = icmp ult ptr %i.kv, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i249.i.i.i = trunc i64 %i.lg to i8 ; 2 uses
  %i.li = icmp ne i8 %switch.idx.cast.i.i.i.i249.i.i.i, -1
  call void @llvm.assume(i1 %i.lh)
  call void @llvm.assume(i1 %i.li)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i

bb.bd:                                            ; preds = %bb.ba
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lk = load i8, ptr %i.lj, align 8, !range !164, !noalias !18298, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i

bb.be:                                            ; preds = %bb.ba
  %i.ll = getelementptr i8, ptr %i.kv, i64 31
  %i.lm = load i8, ptr %i.ll, align 8, !range !164, !noalias !18298, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i

bb.bf:                                            ; preds = %.noexc.i250.i.i.i, %bb.bb
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.kv) #34
          to label %bb.ax unwind label %bb.bk, !noalias !18298

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %.noexc.i250.i.i.i
  %.sroa.0.0.i.i247.i.i.i = phi i8 [ %i.lm, %bb.be ], [ %switch.idx.cast.i.i.i.i249.i.i.i, %bb.bc ], [ %i.lk, %bb.bd ], [ %i.lf, %.noexc.i250.i.i.i ]
  %i.lo = icmp eq i8 %.sroa.0.0.i.i247.i.i.i, 37
  br i1 %i.lo, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !18278
  switch i64 %i.kz, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i
    i64 3, label %bb.bh
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i
    i64 1, label %bb.bi
  ], !prof !162

bb.bh:                                            ; preds = %bb.bg
  %i.lp = icmp ult ptr %i.kv, inttoptr (i64 188978561024 to ptr)
  %i.lq = and i64 %i.ky, 1095216660480
  %i.lr = icmp ne i64 %i.lq, 1095216660480
  call void @llvm.assume(i1 %i.lp)
  call void @llvm.assume(i1 %i.lr)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.ls = getelementptr i8, ptr %i.kv, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  store ptr %i.ls, ptr %i.cx, align 8, !alias.scope !18299, !noalias !18278
  store i8 3, ptr %i.as, align 8, !alias.scope !18299, !noalias !18278
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i unwind label %bb.ay, !noalias !18298

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !18278
  br label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i
  %.sroa.9434.sroa.11.0.i.i.i = phi i24 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i ], [ -8388608, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i ] ; 2 uses
  %.sroa.9434.sroa.10.0.i.i.i = phi i16 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i ] ; 4 uses
  %.sroa.9434.sroa.0.0.i.i.i = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i ] ; 2 uses
  %.sroa.17435.sroa.10.0.in.in.i.i.i = phi i64 [ ptrtoint (ptr @2 to i64), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i248.i.i.i ], [ %i.ky, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i246.i.i.i ] ; 2 uses
  %i.lt = icmp eq i64 %i.ku, 0
  br i1 %i.lt, label %bb.bl, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i: ; preds = %bb.bj
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18298
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bf
  %i.lu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18298
  unreachable

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.backedge.i.i.i, %bb.q, %.lr.ph.i.i.i, %bb.ag, %.peel.next.i.i.i, %.loopexit1794.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
  %.sroa.069.0.copyload.pr.i.i.i = load i64, ptr %i.bm, align 8, !noalias !18237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !18237
  store i64 -1, ptr %i.bf, align 8, !noalias !18237
  store ptr @352, ptr %.sroa.4201.0..sroa_idx1844.i.i.i, align 8, !noalias !18237
  store i64 19, ptr %.sroa.5202.0..sroa_idx1845.i.i.i, align 8, !noalias !18237
  %.not207.i.i.i = icmp eq i64 %.sroa.069.0.copyload.pr.i.i.i, -2
  br i1 %.not207.i.i.i, label %bb.ga, label %bb.fz

bb.bl:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i, %bb.bj, %bb.au
  %.sroa.9434.sroa.11.1.ph.i.i.i = phi i24 [ %.sroa.11.6..sroa.11.6..sroa.11.13..sroa.648.0.copyload83.i.i.i.i, %bb.au ], [ %.sroa.9434.sroa.11.0.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i ], [ %.sroa.9434.sroa.11.0.i.i.i, %bb.bj ]
  %.sroa.9434.sroa.10.1.ph.i.i.i = phi i16 [ %.sroa.11.4..sroa.11.4..sroa.11.11..sroa.547.0.copyload.i.i.i.i, %bb.au ], [ %.sroa.9434.sroa.10.0.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i ], [ %.sroa.9434.sroa.10.0.i.i.i, %bb.bj ]
  %.sroa.9434.sroa.9.1.ph.i.i.i = phi i16 [ %.sroa.11.2..sroa.11.2..sroa.11.9..sroa.446.0.copyload.i.i.i.i, %bb.au ], [ %.sroa.9434.sroa.10.0.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i ], [ %.sroa.9434.sroa.10.0.i.i.i, %bb.bj ]
  %.sroa.9434.sroa.0.1.ph.i.i.i = phi i8 [ %.sroa.11.1..sroa.11.1..sroa.11.8..sroa.045.0.copyload.i.i.i.i, %bb.au ], [ %.sroa.9434.sroa.0.0.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i ], [ %.sroa.9434.sroa.0.0.i.i.i, %bb.bj ]
  %.sroa.17435.sroa.10.1.ph.in.in.i.i.i = phi i64 [ %i.km, %bb.au ], [ %.sroa.17435.sroa.10.0.in.in.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i ], [ %.sroa.17435.sroa.10.0.in.in.i.i.i, %bb.bj ]
  %.sroa.23.1.ph.i.i.i = phi i64 [ %.sroa.30.0.ph.i.i.i.i, %bb.au ], [ 34, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i79.i.i.i.i ], [ 34, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !18237
  %.sroa.9434.sroa.11.0.insert.ext467.i.i.i = zext i24 %.sroa.9434.sroa.11.1.ph.i.i.i to i64
  %.sroa.9434.sroa.11.0.insert.shift468.i.i.i = shl nuw i64 %.sroa.9434.sroa.11.0.insert.ext467.i.i.i, 40
  %.sroa.9434.sroa.10.0.insert.ext463.i.i.i = zext i16 %.sroa.9434.sroa.10.1.ph.i.i.i to i64
  %.sroa.9434.sroa.10.0.insert.shift464.i.i.i = shl nuw nsw i64 %.sroa.9434.sroa.10.0.insert.ext463.i.i.i, 24
  %.sroa.9434.sroa.10.0.insert.insert466.i.i.i = or disjoint i64 %.sroa.9434.sroa.10.0.insert.shift464.i.i.i, %.sroa.9434.sroa.11.0.insert.shift468.i.i.i
  %.sroa.9434.sroa.9.0.insert.ext459.i.i.i = zext i16 %.sroa.9434.sroa.9.1.ph.i.i.i to i64
  %.sroa.9434.sroa.9.0.insert.shift460.i.i.i = shl nuw nsw i64 %.sroa.9434.sroa.9.0.insert.ext459.i.i.i, 8
  %.sroa.9434.sroa.9.0.insert.insert462.i.i.i = or disjoint i64 %.sroa.9434.sroa.10.0.insert.insert466.i.i.i, %.sroa.9434.sroa.9.0.insert.shift460.i.i.i
  %.sroa.9434.sroa.0.0.insert.ext456.i.i.i = zext i8 %.sroa.9434.sroa.0.1.ph.i.i.i to i64
  %.sroa.9434.sroa.0.0.insert.insert458.i.i.i = or disjoint i64 %.sroa.9434.sroa.9.0.insert.insert462.i.i.i, %.sroa.9434.sroa.0.0.insert.ext456.i.i.i
  store i64 %.sroa.9434.sroa.0.0.insert.insert458.i.i.i, ptr %i.bl, align 8, !noalias !18237
  store i64 %.sroa.17435.sroa.10.1.ph.in.in.i.i.i, ptr %.sroa.17435.8..sroa_idx.i.i.i, align 8, !noalias !18237
  store i64 %.sroa.23.1.ph.i.i.i, ptr %.sroa.23.8..sroa_idx.i.i.i, align 8, !noalias !18237
  %i.lv = load i64, ptr %i.bm, align 8, !range !18302, !noalias !18237, !noundef !5
  %.not215.i.i.i = icmp eq i64 %i.lv, -2
  br i1 %.not215.i.i.i, label %bb.fy, label %bb.fw

bb.bm:                                            ; preds = %bb.az
  %i.lw = lshr i64 %.sroa.22.0.insert.ext.i.i.i.i, 8 ; 2 uses
  %.sroa.6.20.extract.trunc.i.i.i = trunc i64 %i.lw to i32 ; 4 uses
  %i.lx = add i64 %i.ix, 22
  %i.ly = add i64 %i.lx, %i.ku
  %i.lz = icmp ugt i64 %i.ly, %i.cb
  br i1 %i.lz, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ma = icmp eq i16 %.sroa.11.i.sroa.6.0.copyload.i.i.i, -1
  %i.mb = icmp eq i32 %.sroa.6.20.extract.trunc.i.i.i, -1
  %or.cond.i.i.i = or i1 %i.ma, %i.mb
  br i1 %or.cond.i.i.i, label %bb.bq, label %bb.ch

bb.bo:                                            ; preds = %bb.bm
  %i.mc = load i64, ptr %i.bm, align 8, !range !18302, !alias.scope !18303, !noalias !18237, !noundef !5
  %i.md = icmp eq i64 %i.mc, -2
  br i1 %i.md, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.fv, !noalias !18270

bb.bq:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !18237
  call void @llvm.experimental.noalias.scope.decl(metadata !18306)
  %i.me = icmp ult i64 %i.ix, 20
  br i1 %i.me, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mf = add i64 %i.ix, -20                      ; 4 uses
  %i.mg = invoke { i64, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef 0, i64 noundef %i.mf)
          to label %.noexc263.i.i.i unwind label %.thread617.loopexit.i.i.i, !noalias !18270 ; 2 uses

.noexc263.i.i.i:                                  ; preds = %bb.br
  %i.mh = extractvalue { i64, ptr } %i.mg, 0
  %i.mi = trunc nuw i64 %i.mh to i1
  br i1 %i.mi, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  store i64 -1, ptr %i.da, align 8, !alias.scope !18306, !noalias !18309
  store ptr @363, ptr %.sroa.424.0..sroa_idx.i260.i.i.i, align 8, !alias.scope !18306, !noalias !18309
  store i64 35, ptr %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !18306, !noalias !18309
  br label %bb.cj

bb.bt:                                            ; preds = %.noexc263.i.i.i
  %i.mj = extractvalue { i64, ptr } %i.mg, 1
  store i64 -9223372036854775808, ptr %i.da, align 8, !alias.scope !18306, !noalias !18309
  store ptr %i.mj, ptr %.sroa.424.0..sroa_idx.i260.i.i.i, align 8, !alias.scope !18306, !noalias !18309
  br label %bb.cj

bb.bu:                                            ; preds = %.noexc263.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !18311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !18315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false), !alias.scope !18319, !noalias !18315
  %i.mk = invoke noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noalias nofree noundef nonnull %i.ar, i64 noundef 20)
          to label %.noexc264.i.i.i unwind label %.thread617.loopexit.i.i.i, !noalias !18270 ; 9 uses

.noexc264.i.i.i:                                  ; preds = %bb.bu
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %.noexc264.i.i.i
  %i.ml = ptrtoint ptr %i.mk to i64               ; 4 uses
  %i.mm = and i64 %i.ml, 3                        ; 2 uses
  switch i64 %i.mm, label %default.unreachable [
    i64 2, label %bb.bw
    i64 3, label %bb.bx
    i64 0, label %bb.by
    i64 1, label %bb.bz
  ], !prof !162

bb.bw:                                            ; preds = %bb.bv
  %i.mn = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i.i.i.i unwind label %bb.cb, !noalias !18322

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bw
  %i.mo = lshr i64 %i.ml, 32
  %i.mp = trunc nuw i64 %i.mo to i32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !noalias !18322, !nonnull !5, !noundef !5
  %i.ms = invoke noundef i8 %i.mr(i32 noundef %i.mp)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i unwind label %bb.cb, !noalias !18322, !inline_history !163

bb.bx:                                            ; preds = %bb.bv
  %i.mt = lshr i64 %i.ml, 32
  %i.mu = icmp ult ptr %i.mk, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i.i.i = trunc i64 %i.mt to i8 ; 2 uses
  %i.mv = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.mu)
  call void @llvm.assume(i1 %i.mv)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bv
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mx = load i8, ptr %i.mw, align 8, !range !164, !noalias !18322, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bv
  %i.my = getelementptr i8, ptr %i.mk, i64 31
  %i.mz = load i8, ptr %i.my, align 8, !range !164, !noalias !18322, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i

bb.ca:                                            ; preds = %.noexc264.i.i.i
  %.sroa.028.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ar, align 4, !noalias !18315
  %.not30.i.i.i.i.i.i = icmp eq i32 %.sroa.028.0.copyload.i.i.i.i.i.i, 117853008
  br i1 %.not30.i.i.i.i.i.i, label %_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i, label %_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread51.i.i.i.i

bb.cb:                                            ; preds = %bb.cc, %.noexc.i.i.i.i.i.i, %bb.bw
  %i.na = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.mk) #34
          to label %.thread605.i.i.i unwind label %bb.cf, !noalias !18322

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i: ; preds = %bb.bz, %bb.by, %bb.bx, %.noexc.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.mz, %bb.bz ], [ %switch.idx.cast.i.i.i.i.i.i.i.i.i, %bb.bx ], [ %i.mx, %bb.by ], [ %i.ms, %.noexc.i.i.i.i.i.i ]
  %i.nb = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i, 37
  br i1 %i.nb, label %bb.cc, label %_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread51.i.i.i.i

bb.cc:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !18315
  store ptr @401, ptr %i.ap, align 8, !noalias !18315, !captures !53
  store i64 31, ptr %i.cy, align 8, !noalias !18315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !18315
  store ptr %i.ap, ptr %i.ao, align 8, !noalias !18315
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !18315
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noundef nonnull @398, ptr noundef nonnull %i.ao)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i unwind label %bb.cb, !noalias !18322

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !18315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !18315
  %i.nc = load i64, ptr %i.aq, align 8, !noalias !18323 ; 2 uses
  %.sroa.17.8.copyload.i.i.i.i.i = load ptr, ptr %.sroa.17.8..sroa_idx.i.i.i.i.i, align 8, !noalias !18323
  %.sroa.23.8.copyload.i.i.i.i.i = load i64, ptr %.sroa.23.8..sroa_idx.i.i.i.i.i, align 8, !noalias !18323 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !18315
  switch i64 %i.mm, label %default.unreachable [
    i64 2, label %_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
    i64 3, label %bb.cd
    i64 0, label %_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i
    i64 1, label %bb.ce
  ], !prof !162

bb.cd:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.nd = icmp ult ptr %i.mk, inttoptr (i64 188978561024 to ptr)
  %i.ne = and i64 %i.ml, 1095216660480
  %i.nf = icmp ne i64 %i.ne, 1095216660480
  call void @llvm.assume(i1 %i.nd)
  call void @llvm.assume(i1 %i.nf)
  br label %_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i

bb.ce:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %i.ng = getelementptr i8, ptr %i.mk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ng) ]
  store ptr %i.ng, ptr %i.cz, align 8, !alias.scope !18324, !noalias !18315
  store i8 3, ptr %i.an, align 8, !alias.scope !18324, !noalias !18315
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %.thread617.loopexit.i.i.i, !noalias !18270

bb.cf:                                            ; preds = %bb.cb
  %i.nh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18322
  unreachable

_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i.i.i: ; preds = %bb.ca
  %.sroa.9.i.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.429.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !18323
  %.sroa.9.i.sroa.5.0.copyload.i.i.i.i = load i56, ptr %.sroa.9.i.sroa.5.0..sroa.429.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 4, !noalias !18323
  %.sroa.17.0.copyload.i.i.i.i.i = load i40, ptr %.sroa.17.5..sroa.429.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 1, !noalias !18323 ; 2 uses
  %.sroa.17.0.insert.ext.i.i.i.i.i = zext i40 %.sroa.17.0.copyload.i.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !18315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !18311
  %.sroa.13.16.insert.ext.i.i.i.i = zext i32 %.sroa.9.i.sroa.0.0.copyload.i.i.i.i to i64
  %i.ni = shl nuw i64 %.sroa.17.0.insert.ext.i.i.i.i.i, 24
  %.sroa.13.20.insert.shift.i.i.i.i = and i64 %i.ni, -4294967296
  %.sroa.13.20.insert.insert.i.i.i.i = or disjoint i64 %.sroa.13.20.insert.shift.i.i.i.i, %.sroa.13.16.insert.ext.i.i.i.i
  %i.nj = and i40 %.sroa.17.0.copyload.i.i.i.i.i, 255
  %i.nk = zext nneg i40 %i.nj to i64
  br label %bb.ck

_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.thread51.i.i.i.i: ; preds = %bb.ca, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i
  %.sroa.9.3..sroa.9.3..sroa.9.8..sroa.020.0.copyload.i.ph.i.i.i.i = phi i64 [ -9223372036854775808, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i ], [ -1, %bb.ca ]
  %.sroa.17.0.ph.i.ph.i.i.i.i = phi ptr [ %i.mk, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i ], [ @402, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !18315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !18311
  %i.nl = ptrtoint ptr %.sroa.17.0.ph.i.ph.i.i.i.i to i64
  br label %bb.cg

_RINvMs4_NtCsgtXWG2OCnrB_3zip4specNtB6_31Zip64CentralDirectoryEndLocator5parseINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.ce, %bb.cd, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !18315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !18315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !18311
  %i.nm = ptrtoint ptr %.sroa.17.8.copyload.i.i.i.i.i to i64 ; 3 uses
  %.sroa.8.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %i.nm to i56
  %.sroa.8.sroa.7.0.extract.shift.i.i.i.i = lshr i64 %i.nm, 56
end_hunk_0
begin_hunk_1_@_RNvMs8_NtCsgtXWG2OCnrB_3zip4readINtNtB5_11zip_archive10ZipArchiveINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEE3newCs7gfv9tzbXmh_6yara_x:bb.a

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.dt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qi) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18395
  br label %.thread648thread-pre-split.i.i.i

bb.du:                                            ; preds = %bb.ee, %.noexc310.i.i.i
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dv:                                            ; preds = %.noexc310.i.i.i
  %.not.i.i296.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i296.i.i.i, label %bb.ei, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.qn = ptrtoint ptr %i.qk to i64               ; 5 uses
  %i.qo = and i64 %i.qn, 3                        ; 2 uses
  switch i64 %i.qo, label %default.unreachable [
    i64 2, label %bb.dx
    i64 3, label %bb.dy
    i64 0, label %bb.dz
    i64 1, label %bb.ea
  ], !prof !162

bb.dx:                                            ; preds = %bb.dw
  %i.qp = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i301.i.i.i unwind label %bb.eb, !noalias !18395

.noexc.i.i301.i.i.i:                              ; preds = %bb.dx
  %i.qq = lshr i64 %i.qn, 32
  %i.qr = trunc nuw i64 %i.qq to i32
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !18395, !nonnull !5, !noundef !5
  %i.qu = invoke noundef i8 %i.qt(i32 noundef %i.qr)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i unwind label %bb.eb, !noalias !18395, !inline_history !163

bb.dy:                                            ; preds = %bb.dw
  %i.qv = lshr i64 %i.qn, 32
  %i.qw = icmp ult ptr %i.qk, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i300.i.i.i = trunc i64 %i.qv to i8 ; 2 uses
  %i.qx = icmp ne i8 %switch.idx.cast.i.i.i.i.i300.i.i.i, -1
  call void @llvm.assume(i1 %i.qw)
  call void @llvm.assume(i1 %i.qx)
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.dz:                                            ; preds = %bb.dw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qz = load i8, ptr %i.qy, align 8, !range !164, !noalias !18395, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.ea:                                            ; preds = %bb.dw
  %i.ra = getelementptr i8, ptr %i.qk, i64 31
  %i.rb = load i8, ptr %i.ra, align 8, !range !164, !noalias !18395, !noundef !5
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i

bb.eb:                                            ; preds = %.noexc.i.i301.i.i.i, %bb.dx
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.qk) #34
          to label %bb.dt unwind label %bb.eg, !noalias !18395

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i: ; preds = %bb.ea, %bb.dz, %bb.dy, %.noexc.i.i301.i.i.i
  %.sroa.0.0.i.i.i298.i.i.i = phi i8 [ %i.rb, %bb.ea ], [ %switch.idx.cast.i.i.i.i.i300.i.i.i, %bb.dy ], [ %i.qz, %bb.dz ], [ %i.qu, %.noexc.i.i301.i.i.i ]
  %i.rd = icmp eq i8 %.sroa.0.0.i.i.i298.i.i.i, 37
  br i1 %i.rd, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18372
  switch i64 %i.qo, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i
    i64 3, label %bb.ed
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i
    i64 1, label %bb.ee
  ], !prof !162

bb.ed:                                            ; preds = %bb.ec
  %i.re = icmp ult ptr %i.qk, inttoptr (i64 188978561024 to ptr)
  %i.rf = and i64 %i.qn, 1095216660480
  %i.rg = icmp ne i64 %i.rf, 1095216660480
  call void @llvm.assume(i1 %i.re)
  call void @llvm.assume(i1 %i.rg)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.rh = getelementptr i8, ptr %i.qk, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rh) ]
  store ptr %i.rh, ptr %i.dt, align 8, !alias.scope !18396, !noalias !18372
  store i8 3, ptr %i.ab, align 8, !alias.scope !18396, !noalias !18372
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i unwind label %bb.du, !noalias !18395

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !18372
  br label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i
  %.sroa.114.sroa.12.0.i.i.i.i = phi i8 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ -128, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.114.sroa.11.0.i.i.i.i = phi i16 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.114.sroa.0.0.i.i.i.i = phi i40 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ 0, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %.sroa.21.0.i.i.i.i = phi i64 [ ptrtoint (ptr @328 to i64), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x.exit.i.i299.i.i.i ], [ %i.qn, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit.i.i297.i.i.i ] ; 2 uses
  %i.ri = icmp eq i64 %i.qj, 0
  br i1 %i.ri, label %bb.eh, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i: ; preds = %bb.ef
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18395
  br label %bb.eh

bb.eg:                                            ; preds = %bb.eb
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18395
  unreachable

bb.eh:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i, %bb.ef, %bb.dq, %bb.dp, %bb.do
  %.sroa.114.sroa.12.1.ph.i.i.i.i = phi i8 [ -1, %bb.dq ], [ %.sroa.114.sroa.12.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.114.sroa.12.0.i.i.i.i, %bb.ef ], [ -1, %bb.dp ], [ %.sroa.9.10..sroa.9.10..sroa.9.15..sroa.549.0.copyload95.i.i.i.i.i, %bb.do ]
  %.sroa.114.sroa.11.1.ph.i.i.i.i = phi i16 [ -1, %bb.dq ], [ %.sroa.114.sroa.11.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.114.sroa.11.0.i.i.i.i, %bb.ef ], [ -1, %bb.dp ], [ %.sroa.9.8..sroa.9.8..sroa.9.13..sroa.448.0.copyload.i.i.i.i.i, %bb.do ]
  %.sroa.114.sroa.0.1.ph.i.i.i.i = phi i40 [ -1, %bb.dq ], [ %.sroa.114.sroa.0.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.114.sroa.0.0.i.i.i.i, %bb.ef ], [ -1, %bb.dp ], [ %.sroa.9.3..sroa.9.3..sroa.9.8..sroa.047.0.copyload.i.i.i.i.i, %bb.do ]
  %.sroa.27.1.ph.i.i.i.i = phi i64 [ 36, %bb.dq ], [ 51, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ 51, %bb.ef ], [ 22, %bb.dp ], [ %.sroa.26.0.ph.i.i.i.i.i, %bb.do ]
  %.sroa.21.1.ph.i.i.i.i = phi i64 [ ptrtoint (ptr @329 to i64), %bb.dq ], [ %.sroa.21.0.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i91.i.i.i.i.i ], [ %.sroa.21.0.i.i.i.i, %bb.ef ], [ ptrtoint (ptr @330 to i64), %bb.dp ], [ %i.pu, %bb.do ]
  %.sroa.114.sroa.12.0.insert.ext.i.i.i.i = zext i8 %.sroa.114.sroa.12.1.ph.i.i.i.i to i64
  %.sroa.114.sroa.12.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.114.sroa.12.0.insert.ext.i.i.i.i, 56
  %.sroa.114.sroa.11.0.insert.ext.i.i.i.i = zext i16 %.sroa.114.sroa.11.1.ph.i.i.i.i to i64
  %.sroa.114.sroa.11.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.114.sroa.11.0.insert.ext.i.i.i.i, 40
  %.sroa.114.sroa.11.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.114.sroa.11.0.insert.shift.i.i.i.i, %.sroa.114.sroa.12.0.insert.shift.i.i.i.i
  %.sroa.114.sroa.0.0.insert.ext.i.i.i.i = zext i40 %.sroa.114.sroa.0.1.ph.i.i.i.i to i64
  %.sroa.114.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.114.sroa.11.0.insert.insert.i.i.i.i, %.sroa.114.sroa.0.0.insert.ext.i.i.i.i
  br label %bb.en

bb.ei:                                            ; preds = %bb.dv
  %.sroa.57.sroa.7.31.insert.ext.i.i.i.i = zext i8 %.sroa.26.5.copyload.i.i.i.i.i to i32
  %.sroa.57.sroa.7.31.insert.shift.i.i.i.i = shl nuw i32 %.sroa.57.sroa.7.31.insert.ext.i.i.i.i, 24
  %.sroa.57.sroa.7.31.insert.insert.i.i.i.i = or disjoint i32 %.sroa.57.sroa.7.31.insert.shift.i.i.i.i, %.sroa.19.5.extract.trunc.i.i.i.i.i
  %.not.i302.i.i.i = icmp eq i32 %.sroa.57.sroa.7.31.insert.insert.i.i.i.i, %i.nq
  br i1 %.not.i302.i.i.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.rk = add i64 %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, 12
  %.not20.i.i.i.i = icmp eq i64 %i.rk, %i.oq
  br i1 %.not20.i.i.i.i, label %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.sink64.i.i.i.i = phi ptr [ @362, %bb.ei ], [ @361, %bb.ej ]
  %.sink.i303.i.i.i = phi i64 [ 47, %bb.ei ], [ 35, %bb.ej ] ; 2 uses
  %i.rl = ptrtoint ptr %.sink64.i.i.i.i to i64    ; 2 uses
  %i.rm = icmp eq i64 %i.qj, 0
  br i1 %i.rm, label %bb.en, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i: ; preds = %bb.ek
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18399
  br label %bb.en

bb.el:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6527.i.i.i)
  %.sroa.0520.0.copyload.i.i.i = load i64, ptr %i.bi, align 8, !noalias !18237 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !18237
  store i64 -1, ptr %i.bg, align 8, !noalias !18237
  store ptr @345, ptr %.sroa.4198.0..sroa_idx.i.i.i, align 8, !noalias !18237
  store i64 21, ptr %.sroa.5199.0..sroa_idx.i.i.i, align 8, !noalias !18237
  %.not.i311.i.i.i = icmp eq i64 %.sroa.0520.0.copyload.i.i.i, -2
  br i1 %.not.i311.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5188.0..sroa_idx189.i.i.i, i64 16, i1 false), !noalias !18237
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.cx, !noalias !18270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i: ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4198.0..sroa_idx.i.i.i, i64 16, i1 false), !alias.scope !18400, !noalias !18404
  br label %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i

bb.en:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i, %bb.ek, %bb.eh
  %.sroa.9486.0.ph.i.i.i = phi i64 [ -1, %bb.ek ], [ -1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.114.sroa.0.0.insert.insert.i.i.i.i, %bb.eh ] ; 3 uses
  %.sroa.13.0.ph.i.i.i = phi i64 [ %i.rl, %bb.ek ], [ %i.rl, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.21.1.ph.i.i.i.i, %bb.eh ] ; 2 uses
  %.sroa.16487.0.ph.i.i.i = phi i64 [ %.sink.i303.i.i.i, %bb.ek ], [ %.sink.i303.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i22.i.i.i.i ], [ %.sroa.27.1.ph.i.i.i.i, %bb.eh ] ; 2 uses
  %i.rn = load i64, ptr %i.bi, align 8, !range !18302, !alias.scope !18406, !noalias !18237, !noundef !5
  %i.ro = icmp eq i64 %i.rn, -2
  br i1 %i.ro, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i unwind label %bb.ex, !noalias !18270

_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.ej
  %i.rp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.30.5.copyload.i.i.i.i.i, i64 46) ; 2 uses
  %i.rq = extractvalue { i64, i1 } %i.rp, 0
  %i.rr = extractvalue { i64, i1 } %i.rp, 1
  br i1 %i.rr, label %bb.ep, label %bb.eq, !prof !8

bb.ep:                                            ; preds = %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.sroa.0179.0.i.i.i = phi i64 [ -1, %bb.ep ], [ %i.rq, %_RINvNvNtCsgtXWG2OCnrB_3zip4spec22find_central_directory15try_read_eocd64INtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ]
  %i.rs = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0179.0.i.i.i, i64 %.sroa.32.5.copyload.i.i.i.i.i)
  %i.rt = icmp ult i64 %i.om, %i.rs
  br i1 %i.rt, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ru = zext i32 %.sroa.985.5.copyload.i.i.i.i to i64
  %2 = shl i56 %.sroa.22.0.copyload.i.i.i.i, 24
  %3 = zext i24 %.sroa.11.i.sroa.7.0.copyload.i.i.i to i56
  %.sroa.17435.sroa.0.3.insert.insert648.le.i.i.i = or disjoint i56 %2, %3
  %.sroa.23.28.insert.ext.le.i.i.i = zext i16 %.sroa.11.i.sroa.5.0.copyload.i.i.i to i64
  %.sroa.23.28.insert.shift.le1190.i.i.i = shl nuw nsw i64 %.sroa.23.28.insert.ext.le.i.i.i, 32
  %.sroa.23.28.insert.insert.le.i.i.i = or disjoint i64 %.sroa.23.28.insert.shift.le1190.i.i.i, %i.ru
  %.sroa.6.16.extract.trunc.le1202.i.i.i = trunc i56 %.sroa.17435.sroa.0.3.insert.insert648.le.i.i.i to i32
  %.sroa.9472.24.extract.trunc.le1198.i.i.i = trunc nuw i64 %.sroa.23.28.insert.insert.le.i.i.i to i48
  %i.rv = sub i64 %i.om, %.sroa.8.sroa.0.0.insert.insert.i.i.i.i
  %.sroa.19.1.extract.shift.i.i.le.i.i.i = lshr i64 %i.px, 8
  %.sroa.19.1.extract.trunc.i.i.le.i.i.i = trunc i64 %.sroa.19.1.extract.shift.i.i.le.i.i.i to i32
  %.sroa.57.sroa.10.32.insert.ext.i.le.i.i.i = zext i16 %.sroa.9.i.sroa.5.0.copyload.i295.i.i.i to i64
  %.sroa.57.sroa.10.34.insert.ext.i.le.i.i.i = zext i8 %.sroa.9.i.sroa.6.0.copyload.i.i.i.i to i64
  %.sroa.57.sroa.10.34.insert.shift.i.le.i.i.i = shl nuw nsw i64 %.sroa.57.sroa.10.34.insert.ext.i.le.i.i.i, 16
  %.sroa.57.sroa.10.34.insert.insert.i.le.i.i.i = or disjoint i64 %.sroa.57.sroa.10.34.insert.shift.i.le.i.i.i, %.sroa.57.sroa.10.32.insert.ext.i.le.i.i.i
  %.sroa.57.sroa.10.35.insert.ext.i.le.i.i.i = shl i64 %i.px, 24
  %.sroa.57.sroa.10.35.insert.shift.i.le.i.i.i = and i64 %.sroa.57.sroa.10.35.insert.ext.i.le.i.i.i, 4278190080
  %.sroa.57.sroa.10.35.insert.insert.i.le.i.i.i = or disjoint i64 %.sroa.57.sroa.10.34.insert.insert.i.le.i.i.i, %.sroa.57.sroa.10.35.insert.shift.i.le.i.i.i
  %i.rw = load i64, ptr %i.bi, align 8, !range !18302, !alias.scope !18409, !noalias !18237, !noundef !5
  %i.rx = icmp eq i64 %i.rw, -2
  br i1 %i.rx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i unwind label %bb.ci, !noalias !18270

bb.et:                                            ; preds = %bb.eq
  %i.ry = load i64, ptr %i.bi, align 8, !range !18302, !alias.scope !18412, !noalias !18237, !noundef !5
  %i.rz = icmp eq i64 %i.ry, -2
  br i1 %i.rz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i unwind label %bb.ev, !noalias !18270

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i: ; preds = %bb.es, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18237
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

bb.ev:                                            ; preds = %bb.eu
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 -1, ptr %i.bi, align 8, !noalias !18237
  store ptr @344, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 44, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  %i.sb = icmp eq i64 %i.qj, 0
  br i1 %i.sb, label %.thread648thread-pre-split.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i: ; preds = %bb.ev
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18270
  br label %.thread648thread-pre-split.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i: ; preds = %bb.eu, %bb.et
  store i64 -1, ptr %i.bi, align 8, !noalias !18237
  store ptr @344, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 44, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  %i.sc = icmp eq i64 %i.qj, 0
  br i1 %i.sc, label %.backedge.i.i.i.backedge, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qi, i64 noundef %i.qj, i64 noundef 1) #38, !noalias !18270
  br label %.backedge.i.i.i.backedge

bb.ew:                                            ; preds = %bb.gj, %bb.ez
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #37, !noalias !18270
  unreachable

bb.ex:                                            ; preds = %bb.eo
  %i.se = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.9486.0.ph.i.i.i, ptr %i.bi, align 8, !noalias !18237
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 %.sroa.16487.0.ph.i.i.i, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  br label %.thread648.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i: ; preds = %bb.eo, %bb.en
  store i64 %.sroa.9486.0.ph.i.i.i, ptr %i.bi, align 8, !noalias !18237
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5188.0..sroa_idx189.i.i.i, align 8, !noalias !18237
  store i64 %.sroa.16487.0.ph.i.i.i, ptr %.sroa.6191.0..sroa_idx192.i.i.i, align 8, !noalias !18237
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit314.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i321.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit318.i.i.i
  br label %.backedge.i.i.i

_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i, %bb.em
  %.sroa.0524.0.i.i.i = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit1.i.i.i.i ], [ %.sroa.0520.0.copyload.i.i.i, %bb.em ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !18237
  %i.sf = load i64, ptr %i.bm, align 8, !range !18302, !alias.scope !18415, !noalias !18237, !noundef !5
  %i.sg = icmp eq i64 %i.sf, -2
  br i1 %i.sg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i unwind label %.thread645.i.i.i, !noalias !18270

.thread645.i.i.i:                                 ; preds = %bb.ey
  %i.sh = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0524.0.i.i.i, ptr %i.bm, align 8, !noalias !18237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx151.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, i64 16, i1 false), !noalias !18237
  br label %.thread605.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i: ; preds = %bb.ey, %_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorE2orCs7gfv9tzbXmh_6yara_x.exit.i.i.i
  store i64 %.sroa.0524.0.i.i.i, ptr %i.bm, align 8, !noalias !18237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5150.0..sroa_idx151.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6527.i.i.i, i64 16, i1 false), !noalias !18237
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6527.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18237
  %i.si = icmp eq i64 %i.ku, 0
  br i1 %i.si, label %.lr.ph.i.backedge.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18270
  br label %.lr.ph.i.backedge.i.i.i

.lr.ph.i.backedge.i.i.i:                          ; preds = %bb.fx, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i362.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i326.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit325.i.i.i
  %.not.i1190.i.i.i = icmp ult i64 %.lcssa1252.i.i.i, %.sroa.018.0.i.i
  br i1 %.not.i1190.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i: ; preds = %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !18237
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i
  %.sroa.20.sroa.12.2.in.in.i.i = phi i64 [ %i.ol, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.tj, %bb.fn ] ; 2 uses
  %.sroa.30.sroa.11.2.in.in.i.i = phi i64 [ %i.om, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.tk, %bb.fn ] ; 2 uses
  %.sroa.12.2.i.i = phi i64 [ %i.ok, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit285.i.i.i ], [ %i.ti, %bb.fn ] ; 2 uses
  %.sroa.30.sroa.0.2.i.i = trunc i64 %.sroa.30.sroa.11.2.in.in.i.i to i48 ; 2 uses
  %.sroa.30.sroa.11.2.in.i.i = lshr i64 %.sroa.30.sroa.11.2.in.in.i.i, 48
  %.sroa.30.sroa.11.2.i.i = trunc nuw i64 %.sroa.30.sroa.11.2.in.i.i to i16 ; 2 uses
  %.sroa.20.sroa.0.2.i.i = trunc i64 %.sroa.20.sroa.12.2.in.in.i.i to i32 ; 2 uses
  %.sroa.20.sroa.12.2.in.i.i = lshr i64 %.sroa.20.sroa.12.2.in.in.i.i, 32
  %.sroa.20.sroa.12.2.i.i = trunc nuw i64 %.sroa.20.sroa.12.2.in.i.i to i32 ; 2 uses
  %i.sj = icmp eq i64 %i.ku, 0
  br i1 %i.sj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i: ; preds = %.loopexit
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18270
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

.thread648thread-pre-split.i.i.i:                 ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i, %bb.ev, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.dt, %bb.dj, %.thread655.loopexit.split-lp.i.i.i, %.thread655.loopexit.i.i.i
  %.pn644.ph.i.i.i = phi { ptr, i32 } [ %i.sa, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i319.i.i.i ], [ %i.sa, %bb.ev ], [ %.pn.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i ], [ %i.ph, %bb.dj ], [ %.pn.i.i.i.i.i, %bb.dt ], [ %lpad.loopexit.i.i.i, %.thread655.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.thread655.loopexit.split-lp.i.i.i ]
  %.pr.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !18418, !noalias !18237
  br label %.thread648.i.i.i

.thread648.i.i.i:                                 ; preds = %.thread648thread-pre-split.i.i.i, %bb.ex
  %i.sk = phi i64 [ %.pr.i.i.i, %.thread648thread-pre-split.i.i.i ], [ %.sroa.9486.0.ph.i.i.i, %bb.ex ]
  %.pn644.i.i.i = phi { ptr, i32 } [ %.pn644.ph.i.i.i, %.thread648thread-pre-split.i.i.i ], [ %i.se, %bb.ex ] ; 2 uses
  %i.sl = icmp eq i64 %i.sk, -2
  br i1 %i.sl, label %.thread605.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %.thread648.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.thread605.i.i.i unwind label %bb.ew, !noalias !18270

bb.fa:                                            ; preds = %bb.ct
  %i.sm = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr @346, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 38, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  br label %.thread605.i.i.i

bb.fb:                                            ; preds = %bb.cn
  %i.sn = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr @347, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 32, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  br label %.thread605.i.i.i

bb.fc:                                            ; preds = %bb.ch
  %i.so = zext i32 %.sroa.985.5.copyload.i.i.i.i to i64
  %4 = shl i56 %.sroa.22.0.copyload.i.i.i.i, 24
  %5 = zext i24 %.sroa.11.i.sroa.7.0.copyload.i.i.i to i56
  %.sroa.17435.sroa.0.3.insert.insert648.le1198.i.i.i = or disjoint i56 %4, %5
  %.sroa.23.28.insert.ext.le1192.i.i.i = zext i16 %.sroa.11.i.sroa.5.0.copyload.i.i.i to i64
  %.sroa.23.28.insert.shift.le1188.i.i.i = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1192.i.i.i, 32
  %.sroa.23.28.insert.insert.le1182.i.i.i = or disjoint i64 %.sroa.23.28.insert.shift.le1188.i.i.i, %i.so
  %.sroa.6.16.extract.trunc.le1200.i.i.i = trunc i56 %.sroa.17435.sroa.0.3.insert.insert648.le1198.i.i.i to i32
  %.sroa.9472.24.extract.trunc.le1196.i.i.i = trunc nuw i64 %.sroa.23.28.insert.insert.le1182.i.i.i to i48
  %i.sp = call i64 @llvm.usub.sat.i64(i64 %i.ix, i64 %i.no)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

bb.fd:                                            ; preds = %bb.ch
  %.not208.i.i.i = icmp ugt i64 %i.ix, %i.no
  br i1 %.not208.i.i.i, label %bb.fe, label %bb.fi

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.experimental.noalias.scope.decl(metadata !18421)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i333.i.i.i)
  %i.sq = load i64, ptr %i.cn, align 8, !range !7, !alias.scope !18421, !noalias !18237, !noundef !5
  %.not.i334.i.i.i = icmp eq i64 %i.sq, 2
  br i1 %.not.i334.i.i.i, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !18424
  call void @llvm.experimental.noalias.scope.decl(metadata !18431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !18434
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef 2048, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc344.i.i.i unwind label %.thread617.loopexit.i.i.i, !noalias !18270

.noexc344.i.i.i:                                  ; preds = %bb.ff
  %i.sr = load i64, ptr %i.y, align 8, !range !4, !noalias !18434, !noundef !5
  %i.ss = trunc nuw i64 %i.sr to i1
  %i.st = load i64, ptr %i.du, align 8, !range !28, !noalias !18434, !noundef !5 ; 2 uses
  br i1 %i.ss, label %bb.fg, label %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i335.i.i.i, !prof !8

bb.fg:                                            ; preds = %.noexc344.i.i.i
  %i.su = load i64, ptr %i.dv, align 8, !noalias !18434
  br label %.invoke

.invoke:                                          ; preds = %bb.cq, %bb.fg
  %i.sv = phi i64 [ %i.st, %bb.fg ], [ %i.nx, %bb.cq ]
  %i.sw = phi i64 [ %i.su, %bb.fg ], [ %i.ny, %bb.cq ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.sv, i64 %i.sw) #39
          to label %.cont unwind label %.thread617.loopexit.split-lp.i.loopexit.split-lp.i.i, !noalias !18270

.cont:                                            ; preds = %.invoke
  unreachable

_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i335.i.i.i: ; preds = %.noexc344.i.i.i
  %i.sx = load ptr, ptr %i.dv, align 8, !noalias !18434, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !18434
  store i64 %i.st, ptr %i.aa, align 8, !alias.scope !18431, !noalias !18424
  store ptr %i.sx, ptr %i.dw, align 8, !alias.scope !18431, !noalias !18424
  store i64 2048, ptr %i.dx, align 8, !alias.scope !18431, !noalias !18424
  %i.sy = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc346.i.i.i unwind label %.thread617.loopexit.i.i.i, !noalias !18270 ; 2 uses

.noexc346.i.i.i:                                  ; preds = %_RINvXs1_NtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i335.i.i.i
  %i.sz = extractvalue { ptr, i64 } %i.sy, 0      ; 4 uses
  %i.ta = extractvalue { ptr, i64 } %i.sy, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !18424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !18424
  invoke void @_RNvXNtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB2_7ForwardNtB2_15FinderDirection3new(ptr noalias nofree noundef nonnull sret([288 x i8]) align 32 captures(none) dereferenceable(288) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %_RNvYNvMs1_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB8_21OptimisticMagicFinderNtB8_7ForwardE9new_emptyINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs7gfv9tzbXmh_6yara_x.exit.i338.i.i.i unwind label %bb.fh, !noalias !18435

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i336.i.i.i: ; preds = %bb.fh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sz) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sz, i64 noundef %i.ta, i64 noundef 1) #38, !noalias !18435
  br label %.thread605.i.i.i

bb.fh:                                            ; preds = %.noexc346.i.i.i
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tc = icmp eq i64 %i.ta, 0
  br i1 %i.tc, label %.thread605.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i336.i.i.i

_RNvYNvMs1_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB8_21OptimisticMagicFinderNtB8_7ForwardE9new_emptyINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs7gfv9tzbXmh_6yara_x.exit.i338.i.i.i: ; preds = %.noexc346.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sz) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(288) %.sroa.0.i.i.i333.i.i.i, ptr noundef nonnull align 32 dereferenceable(288) %i.z, i64 288, i1 false), !noalias !18436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %.sroa.0.i.i.i333.i.i.i.288.i.i.i333.i.i.i.288.i.i.i333.i.i.i.288.i.i.i333.i.i.288.i.i.i333.i.i.288.i.i.i333.i.288.i.i.i333.i.288.i.i.i333.288.i.i.i333.288.i.i.288.i.i.288.i.288.i.288..sroa_idx, i8 0, i64 16, i1 false), !noalias !18436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %.sroa.611.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !18421, !noalias !18237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !18424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(384) %i.bn, ptr noundef nonnull align 32 dereferenceable(304) %.sroa.0.i.i.i333.i.i.i, i64 304, i1 false), !noalias !18237
  store ptr %i.sz, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 16, !alias.scope !18421, !noalias !18237
  store i64 %i.ta, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18421, !noalias !18237
  store i8 2, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18421, !noalias !18237
  br label %bb.fk

bb.fi:                                            ; preds = %bb.fd
  %i.td = load i64, ptr %i.bm, align 8, !range !18302, !alias.scope !18437, !noalias !18237, !noundef !5
  %i.te = icmp eq i64 %i.td, -2
  br i1 %i.te, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.fu, !noalias !18270

bb.fk:                                            ; preds = %_RNvYNvMs1_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB8_21OptimisticMagicFinderNtB8_7ForwardE9new_emptyINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs7gfv9tzbXmh_6yara_x.exit.i338.i.i.i, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i333.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !18443
  invoke void @_RNvXNtNtCsgtXWG2OCnrB_3zip4read12magic_finderNtB2_7ForwardNtB2_15FinderDirection3new(ptr noalias nofree noundef nonnull sret([288 x i8]) align 32 captures(none) dereferenceable(288) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 4)
          to label %.noexc356.i.i.i unwind label %.thread617.loopexit.i.i.i, !noalias !18270

.noexc356.i.i.i:                                  ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !18445)
  call void @llvm.experimental.noalias.scope.decl(metadata !18448)
  call void @llvm.experimental.noalias.scope.decl(metadata !18451)
  call void @llvm.experimental.noalias.scope.decl(metadata !18454)
  %i.tf = load i64, ptr %i.df, align 32, !range !4, !alias.scope !18457, !noalias !18458, !noundef !5
  %i.tg = icmp eq i64 %i.tf, 0
  br i1 %i.tg, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.noexc356.i.i.i
  %.val1.i.i.i.i.i353.i.i.i = load i64, ptr %i.dg, align 16, !alias.scope !18457, !noalias !18458, !noundef !5 ; 2 uses
  %i.th = icmp eq i64 %.val1.i.i.i.i.i353.i.i.i, 0
  br i1 %i.th, label %bb.fm, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i354.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i354.i.i.i: ; preds = %bb.fl
  %.val.i.i.i.i.i355.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !18457, !noalias !18458, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i355.i.i.i, i64 noundef %.val1.i.i.i.i.i353.i.i.i, i64 noundef 1) #38, !noalias !18459
  br label %bb.fm

bb.fm:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i354.i.i.i, %bb.fl, %.noexc356.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(352) %i.bn, ptr noundef nonnull align 32 dereferenceable(288) %i.x, i64 288, i1 false), !noalias !18458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !18443
  store i64 %i.no, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 32, !alias.scope !18440, !noalias !18458
  store i64 %i.no, ptr %i.di, align 32, !alias.scope !18440, !noalias !18458
  store i64 %i.ix, ptr %i.dj, align 8, !alias.scope !18440, !noalias !18458
  store i64 0, ptr %i.cn, align 8, !alias.scope !18440, !noalias !18458
  store i64 %i.no, ptr %i.dk, align 32, !noalias !18237
  store i8 0, ptr %.sroa.813.0..sroa_idx.i.i.i.i, align 8, !noalias !18237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !18237
  invoke fastcc void @_RINvMs1_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_21OptimisticMagicFinderNtB6_7ForwardE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef align 32 dereferenceable(384) %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.fn unwind label %.thread617.loopexit.i.i.i, !noalias !18270

bb.fn:                                            ; preds = %bb.fm
  %i.ti = load i64, ptr %i.bj, align 8, !range !18302, !noalias !18237, !noundef !5 ; 2 uses
  %.not209.i.i.i = icmp eq i64 %i.ti, -2
  %i.tj = load i64, ptr %i.dy, align 8, !noalias !18237 ; 2 uses
  %i.tk = load i64, ptr %i.dz, align 8, !noalias !18237 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !18237
  br i1 %.not209.i.i.i, label %bb.fo, label %.loopexit

bb.fo:                                            ; preds = %bb.fn
  %i.tl = trunc nuw i64 %i.tj to i1
  br i1 %i.tl, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.tm = zext i32 %.sroa.985.5.copyload.i.i.i.i to i64
  %6 = shl i56 %.sroa.22.0.copyload.i.i.i.i, 24
  %7 = zext i24 %.sroa.11.i.sroa.7.0.copyload.i.i.i to i56
  %.sroa.17435.sroa.0.3.insert.insert648.le1201.i.i.i = or disjoint i56 %6, %7
  %.sroa.23.28.insert.ext.le1194.i.i.i = zext i16 %.sroa.11.i.sroa.5.0.copyload.i.i.i to i64
  %.sroa.23.28.insert.shift.le.i.i.i = shl nuw nsw i64 %.sroa.23.28.insert.ext.le1194.i.i.i, 32
  %.sroa.23.28.insert.insert.le1185.i.i.i = or disjoint i64 %.sroa.23.28.insert.shift.le.i.i.i, %i.tm
  %.sroa.6.16.extract.trunc.le.i.i.i = trunc i56 %.sroa.17435.sroa.0.3.insert.insert648.le1201.i.i.i to i32
  %.sroa.9472.24.extract.trunc.le.i.i.i = trunc nuw i64 %.sroa.23.28.insert.insert.le1185.i.i.i to i48
  %i.tn = sub i64 %i.tk, %i.no
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.to = load i64, ptr %i.bm, align 8, !range !18302, !alias.scope !18460, !noalias !18237, !noundef !5
  %i.tp = icmp eq i64 %i.to, -2
  br i1 %i.tp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i unwind label %bb.fs, !noalias !18270

bb.fs:                                            ; preds = %bb.fr
  %i.tq = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr @349, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 13, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  br label %.thread605.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i: ; preds = %bb.fp, %bb.fc, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i, %.loopexit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %.sroa.20.sroa.12.1.i.i = phi i32 [ %.sroa.20.sroa.12.0.extract.trunc.i.i, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ %.sroa.6.20.extract.trunc.i.i.i, %bb.fc ], [ %.sroa.6.20.extract.trunc.i.i.i, %bb.fp ], [ %.sroa.20.sroa.12.2.i.i, %.loopexit ], [ %.sroa.20.sroa.12.2.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %.sroa.6.20.extract.trunc.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.20.sroa.0.1.i.i = phi i32 [ %.sroa.20.sroa.0.0.extract.trunc.i.i, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ %.sroa.6.16.extract.trunc.le1200.i.i.i, %bb.fc ], [ %.sroa.6.16.extract.trunc.le.i.i.i, %bb.fp ], [ %.sroa.20.sroa.0.2.i.i, %.loopexit ], [ %.sroa.20.sroa.0.2.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %.sroa.6.16.extract.trunc.le1202.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.30.sroa.11.1.i.i = phi i16 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ 0, %bb.fc ], [ %.sroa.11.i.sroa.6.0.copyload.i.i.i, %bb.fp ], [ %.sroa.30.sroa.11.2.i.i, %.loopexit ], [ %.sroa.30.sroa.11.2.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %.sroa.11.i.sroa.6.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.30.sroa.0.1.i.i = phi i48 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ %.sroa.9472.24.extract.trunc.le1196.i.i.i, %bb.fc ], [ %.sroa.9472.24.extract.trunc.le.i.i.i, %bb.fp ], [ %.sroa.30.sroa.0.2.i.i, %.loopexit ], [ %.sroa.30.sroa.0.2.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %.sroa.9472.24.extract.trunc.le1198.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.54.1.i.i = phi i64 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ %i.sp, %bb.fc ], [ %i.tn, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.rv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.53.1.i.i = phi i64 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.om, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.52.1.i.i = phi i64 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %.sroa.57.sroa.10.35.insert.insert.i.le.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.51.1.i.i = phi i32 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.nq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.50.1.i.i = phi i32 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %.sroa.19.1.extract.trunc.i.i.le.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.45.1.i.i = phi i64 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %.sroa.9.i.sroa.0.0.copyload.i294.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.44.1.i.i = phi i64 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.qj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.41.1.i.i = phi ptr [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ null, %bb.fc ], [ null, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.qi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.38.1.i.i = phi i64 [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ %i.ix, %bb.fc ], [ %i.ix, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.ix, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.12.1.i.i = phi i64 [ -9223372036854775808, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ %i.ku, %bb.fc ], [ %i.ku, %bb.fp ], [ %.sroa.12.2.i.i, %.loopexit ], [ %.sroa.12.2.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.ku, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %.sroa.078.1.i.i = phi ptr [ null, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ %i.kt, %bb.fc ], [ %i.kt, %bb.fp ], [ null, %.loopexit ], [ null, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.kt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %i.tr = phi <2 x i64> [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.pv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %i.ts = phi <2 x i64> [ undef, %_RINvMs0_NtNtCsgtXWG2OCnrB_3zip4read12magic_finderINtB6_11MagicFinderNtB6_9BackwardsE4nextINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i ], [ undef, %bb.fc ], [ undef, %bb.fp ], [ undef, %.loopexit ], [ undef, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i328.i.i.i ], [ %i.pw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit316.i.i.i ] ; 2 uses
  %i.tt = load i64, ptr %i.bm, align 8, !range !18302, !alias.scope !18463, !noalias !18237, !noundef !5
  %i.tu = icmp eq i64 %i.tt, -2
  br i1 %i.tu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit361.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip4spec24Zip32CentralDirectoryEndECs7gfv9tzbXmh_6yara_x.exit330.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit361.i.i.i unwind label %bb.gg, !noalias !18270

bb.fu:                                            ; preds = %bb.fj
  %i.tv = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr @350, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 27, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  br label %.thread605.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %bb.fr, %bb.fq, %bb.fj, %bb.fi, %bb.ct, %bb.cs, %bb.cn, %bb.cm, %bb.bp, %bb.bo
  %.sink2440.i.i.i = phi ptr [ @349, %bb.fr ], [ @347, %bb.cn ], [ @346, %bb.ct ], [ @351, %bb.bp ], [ @351, %bb.bo ], [ @346, %bb.cs ], [ @347, %bb.cm ], [ @349, %bb.fq ], [ @350, %bb.fi ], [ @350, %bb.fj ]
  %.sink.i.i.i = phi i64 [ 13, %bb.fr ], [ 32, %bb.cn ], [ 38, %bb.ct ], [ 27, %bb.bp ], [ 27, %bb.bo ], [ 38, %bb.cs ], [ 32, %bb.cm ], [ 13, %bb.fq ], [ 27, %bb.fi ], [ 27, %bb.fj ]
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr %.sink2440.i.i.i, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 %.sink.i.i.i, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  %i.tw = icmp eq i64 %i.ku, 0
  br i1 %i.tw, label %.lr.ph.i.backedge.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i362.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i362.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18270
  br label %.lr.ph.i.backedge.i.i.i

bb.fv:                                            ; preds = %bb.bp
  %i.tx = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.bm, align 8, !noalias !18237
  store ptr @351, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  store i64 27, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  br label %.thread605.i.i.i

.thread605.i.i.i:                                 ; preds = %bb.fv, %bb.fu, %bb.fs, %bb.fh, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i336.i.i.i, %bb.fb, %bb.fa, %bb.ez, %.thread648.i.i.i, %.thread645.i.i.i, %bb.cx, %bb.cr, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %.thread617.loopexit.split-lp.i.loopexit.split-lp.i.i, %.thread617.loopexit.split-lp.i.loopexit.i.i, %.thread617.loopexit.i.i.i, %bb.cb
  %.pn213600.i.i.i = phi { ptr, i32 } [ %i.na, %bb.cb ], [ %.pn644.i.i.i, %.thread648.i.i.i ], [ %i.tb, %bb.fh ], [ %i.od, %bb.cr ], [ %i.od, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i ], [ %i.tb, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i336.i.i.i ], [ %i.tq, %bb.fs ], [ %i.tv, %bb.fu ], [ %lpad.thr_comm.split-lp654.i.i.i, %bb.cx ], [ %i.sh, %.thread645.i.i.i ], [ %i.sm, %bb.fa ], [ %i.sn, %bb.fb ], [ %i.tx, %bb.fv ], [ %.pn644.i.i.i, %bb.ez ], [ %lpad.loopexit678.i.i.i, %.thread617.loopexit.i.i.i ], [ %lpad.loopexit260.i.i, %.thread617.loopexit.split-lp.i.loopexit.i.i ], [ %lpad.loopexit.split-lp261.i.i, %.thread617.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 2 uses
  %i.ty = icmp eq i64 %i.ku, 0
  br i1 %i.ty, label %.thread536.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i365.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i365.i.i.i: ; preds = %.thread605.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kt, i64 noundef %i.ku, i64 noundef 1) #38, !noalias !18270
  br label %.thread536.i.i.i

bb.fw:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bl)
          to label %bb.fx unwind label %.thread540.loopexit.split-lp.loopexit.i.i.i, !noalias !18270

bb.fx:                                            ; preds = %bb.fy, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !18237
  br label %.lr.ph.i.backedge.i.i.i

bb.fy:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !noalias !18237
  br label %bb.fx

bb.fz:                                            ; preds = %.loopexit.i.i.i
  %.sroa.575.i.sroa.0.0.copyload176.i.i = load i64, ptr %.sroa.5150.0..sroa_idx151.i.i.i, align 8, !noalias !18237
  %.sroa.575.i.sroa.6.0.copyload177.i.i = load i64, ptr %.sroa.6153.0..sroa_idx154.i.i.i, align 8, !noalias !18237
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf)
          to label %bb.ga unwind label %bb.ah, !noalias !18270

bb.ga:                                            ; preds = %bb.fz, %.loopexit.i.i.i, %.loopexit.thread.i.i.i
  %.sroa.575.i.sroa.0.0.i.i = phi i64 [ %.sroa.575.i.sroa.0.0.copyload176.i.i, %bb.fz ], [ ptrtoint (ptr @352 to i64), %.loopexit.i.i.i ], [ ptrtoint (ptr @352 to i64), %.loopexit.thread.i.i.i ] ; 2 uses
  %.sroa.575.i.sroa.6.0.i.i = phi i64 [ %.sroa.575.i.sroa.6.0.copyload177.i.i, %bb.fz ], [ 19, %.loopexit.i.i.i ], [ 19, %.loopexit.thread.i.i.i ] ; 2 uses
  %.sroa.073.0.i.i.i = phi i64 [ %.sroa.069.0.copyload.pr.i.i.i, %bb.fz ], [ -1, %.loopexit.i.i.i ], [ -1, %.loopexit.thread.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !18237
  %.sroa.20.sroa.0.0.extract.trunc101.i.i = trunc i64 %.sroa.575.i.sroa.0.0.i.i to i32 ; 2 uses
  %.sroa.20.sroa.12.0.extract.shift110.i.i = lshr i64 %.sroa.575.i.sroa.0.0.i.i, 32 ; 2 uses
  %.sroa.20.sroa.12.0.extract.trunc111.i.i = trunc nuw i64 %.sroa.20.sroa.12.0.extract.shift110.i.i to i32
  %.sroa.30.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.575.i.sroa.6.0.i.i to i48 ; 2 uses
  %.sroa.30.sroa.11.0.extract.shift.i.i = lshr i64 %.sroa.575.i.sroa.6.0.i.i, 48 ; 2 uses
  %.sroa.30.sroa.11.0.extract.trunc.i.i = trunc nuw i64 %.sroa.30.sroa.11.0.extract.shift.i.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !18237
  call void @llvm.experimental.noalias.scope.decl(metadata !18466)
  %i.tz = load i64, ptr %i.cn, align 8, !range !7, !alias.scope !18466, !noalias !18237, !noundef !5
  %i.ua = icmp eq i64 %i.tz, 2
  br i1 %i.ua, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.experimental.noalias.scope.decl(metadata !18469)
  call void @llvm.experimental.noalias.scope.decl(metadata !18472)
  %.val1.i.i.i.i.i.i = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18475, !noalias !18237, !noundef !5 ; 2 uses
  %i.ub = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ub, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.gb
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 16, !alias.scope !18475, !noalias !18237, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18476
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !18477)
  call void @llvm.experimental.noalias.scope.decl(metadata !18480)
  call void @llvm.experimental.noalias.scope.decl(metadata !18483)
  call void @llvm.experimental.noalias.scope.decl(metadata !18486)
  %i.uc = load i64, ptr %i.df, align 32, !range !4, !alias.scope !18489, !noalias !18237, !noundef !5
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %bb.gc

bb.gc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dg, align 16, !alias.scope !18489, !noalias !18237, !noundef !5 ; 2 uses
  %i.ue = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ue, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !18489, !noalias !18237, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef 1) #38, !noalias !18490
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i.i.i, %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !18237
  call void @llvm.experimental.noalias.scope.decl(metadata !18491)
  %i.uf = icmp eq i64 %i.gk, 0
  br i1 %i.uf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i370.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i370.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef %i.gk, i64 noundef 1) #38, !noalias !18494
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i370.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder21OptimisticMagicFinderNtB10_7ForwardEEECs7gfv9tzbXmh_6yara_x.exit.i.i.i
  %i.ug = load i64, ptr %i.bo, align 8, !range !4, !alias.scope !18495, !noalias !18237, !noundef !5
  %i.uh = icmp eq i64 %i.ug, 0
  %.val1.i.i.i.i.i372.i.i.i = load i64, ptr %i.eb, align 8, !noalias !18237 ; 2 uses
  %i.ui = icmp eq i64 %.val1.i.i.i.i.i372.i.i.i, 0
  %or.cond2445.i.i.i = select i1 %i.uh, i1 true, i1 %i.ui
  br i1 %or.cond2445.i.i.i, label %.thread.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i

.thread.i.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !18237
  br label %.loopexit263.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsgtXWG2OCnrB_3zip4read12magic_finder11MagicFinderNtBE_9BackwardsEECs7gfv9tzbXmh_6yara_x.exit392.sink.split.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i
  %.sroa.20.sroa.12.0.i.i = phi i32 [ %.sroa.20.sroa.12.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.20.sroa.12.0.extract.trunc111.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.20.sroa.0.0.i.i = phi i32 [ %.sroa.20.sroa.0.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.20.sroa.0.0.extract.trunc101.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.30.sroa.11.0.i.i = phi i16 [ %.sroa.30.sroa.11.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.30.sroa.11.0.extract.trunc.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.30.sroa.0.0.i.i = phi i48 [ %.sroa.30.sroa.0.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.30.sroa.0.0.extract.trunc.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.54.0.i.i = phi i64 [ %.sroa.54.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.53.0.i.i = phi i64 [ %.sroa.53.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.52.0.i.i = phi i64 [ %.sroa.52.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.51.0.i.i = phi i32 [ %.sroa.51.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.50.0.i.i = phi i32 [ %.sroa.50.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.45.0.i.i = phi i64 [ %.sroa.45.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.44.0.i.i = phi i64 [ %.sroa.44.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.41.0.i.i = phi ptr [ %.sroa.41.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.38.0.i.i = phi i64 [ %.sroa.38.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.12.0.i.i = phi i64 [ %.sroa.12.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.sroa.073.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.sroa.078.0.i.i = phi ptr [ %.sroa.078.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.val1.i.i.i.i.i372.sink.i.i.i = phi i64 [ %.val1.i.i.i.i.i388.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ %.val1.i.i.i.i.i372.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %i.uj = phi <2 x i64> [ %i.tr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %i.uk = phi <2 x i64> [ %i.ts, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i387.i.i.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECs7gfv9tzbXmh_6yara_x.exit.i371.i.i.i ]
  %.val.i.i.i.i.i374.i.i.i = load ptr, ptr %i.ec, align 8, !noalias !18237, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i374.i.i.i, i64 noundef %.val1.i.i.i.i.i372.sink.i.i.i, i64 noundef 1) #38, !noalias !18270
  br label %bb.gk

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgtXWG2OCnrB_3zip6result8ZipErrorEECs7gfv9tzbXmh_6yara_x.exit394.i.i.i: ; preds = %bb.gj, %.thread536.i.i.i, %bb.gg, %bb.ah
  %.pn218.i.i.i = phi { ptr, i32 } [ %i.uv, %bb.gg ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.ah ], [ %.pn216532.i.i.i, %bb.gj ], [ %.pn216532.i.i.i, %.thread536.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18504)
  %i.ul = load i64, ptr %i.cn, align 8, !range !7, !alias.scope !18504, !noalias !18507, !noundef !5
  %i.um = icmp eq i64 %i.ul, 2
end_hunk_1
