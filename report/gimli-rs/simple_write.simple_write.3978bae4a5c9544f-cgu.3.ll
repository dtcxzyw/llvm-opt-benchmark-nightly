Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/simple_write.simple_write.3978bae4a5c9544f-cgu.3?download=true
inline.NumInlined: 59
inline.NumDeleted: 29
begin_hunk_0_@_RINvMs_NtNtCsi68uqYEhoRA_5gimli5write4unitNtB5_4Unit5writeNtCs4VV2qO6j7hb_12simple_write7SectionEBW_:bb.a

bb.ap:                                            ; preds = %.invoke, %bb.cg, %bb.bs, %bb.ax, %bb.as, %bb.aq
  %.sroa.0183.3 = phi i1 [ true, %bb.cg ], [ false, %bb.bs ], [ true, %bb.ax ], [ true, %bb.aq ], [ true, %.invoke ], [ true, %bb.as ]
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aq:                                            ; preds = %.noexc
  %i.dg = load ptr, ptr %i.dd, align 8, !noalias !46, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46
  store i64 %i.dc, ptr %i.k, align 8, !alias.scope !46
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.dg, ptr %i.dh, align 8, !alias.scope !46
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store i64 %i.cx, ptr %i.di, align 8, !alias.scope !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.dj = invoke noundef i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer3lenBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bs)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.dj, ptr %i.j, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.dn = load i64, ptr %i.bu, align 8, !noundef !5 ; 2 uses
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.as, label %.invoke

bb.as:                                            ; preds = %bb.ar
  %i.dp = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %i.dp, i64 %i.dl
  %i.dr = load ptr, ptr %i.dh, align 8, !nonnull !5, !noundef !5
  %i.ds = load i64, ptr %i.di, align 8, !noundef !5
  %i.dt = invoke i64 @_RNvMs0_NtNtCsi68uqYEhoRA_5gimli5write4unitNtB5_25DebuggingInformationEntry17calculate_offsets(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3, ptr noalias nofree noundef nonnull align 8 %i.dr, i64 noundef %i.ds)
          to label %bb.au unwind label %bb.ap     ; 3 uses

bb.at:                                            ; preds = %bb.bh
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.du = and i64 %i.dt, 255
  %.not323 = icmp eq i64 %i.du, 255
  br i1 %.not323, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.4239.0.extract.shift = lshr i64 %i.dt, 8
  %.sroa.4239.0.extract.trunc = trunc nuw i64 %.sroa.4239.0.extract.shift to i56
  br label %bb.cj

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dv = load i64, ptr %i.dk, align 8, !noundef !5 ; 3 uses
  %i.dw = load i64, ptr %i.bu, align 8, !noundef !5 ; 2 uses
  %i.dx = icmp ult i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ax, label %.invoke

bb.ax:                                            ; preds = %bb.aw
  %i.dy = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.dy, i64 %i.dv ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !5
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.eb, i64 %i.ed
  store ptr %i.eb, ptr %i.i, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ee, ptr %i.ef, align 8
  %i.eg = call fastcc noundef zeroext i1 @_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCsi68uqYEhoRA_5gimli5write4unit9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvMs_BS_NtBS_4Unit5writeNtCs4VV2qO6j7hb_12simple_write7SectionE0EB2O_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %.sroa.0118.0.copyload = load i32, ptr %i.ei, align 8
  invoke void @_RINvMNtNtCsi68uqYEhoRA_5gimli5write5rangeNtB3_14RangeListTable5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eh, ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %1, i32 noundef %.sroa.0118.0.copyload, i1 noundef zeroext %i.eg)
          to label %bb.ay unwind label %bb.ap

.invoke:                                          ; preds = %bb.aw, %bb.ar
  %i.ej = phi i64 [ %i.dl, %bb.ar ], [ %i.dv, %bb.aw ]
  %i.ek = phi i64 [ %i.dn, %bb.ar ], [ %i.dw, %bb.aw ]
  %i.el = phi ptr [ @12, %bb.ar ], [ @13, %bb.aw ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.el) #13
          to label %.cont unwind label %bb.ap

.cont:                                            ; preds = %.invoke
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.em = load i64, ptr %i.g, align 8, !range !51, !noundef !5 ; 2 uses
  %i.en = icmp eq i64 %i.em, -1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0243.0.copyload = load i64, ptr %i.eo, align 8 ; 3 uses
  br i1 %i.en, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4247.0.extract.shift = lshr i64 %.sroa.0243.0.copyload, 8
  %.sroa.4247.0.extract.trunc = trunc nuw i64 %.sroa.4247.0.extract.shift to i56
  br label %bb.ci

bb.ba:                                            ; preds = %bb.ay
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5242.0.copyload = load i64, ptr %.sroa.5242.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.em, ptr %i.h, align 8
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.0243.0.copyload, ptr %.sroa.4122.0..sroa_idx, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.5242.0.copyload, ptr %.sroa.5123.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.sroa.0133.0.copyload = load i32, ptr %i.ei, align 8
  invoke void @_RINvMNtNtCsi68uqYEhoRA_5gimli5write3locNtB3_17LocationListTable5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ep, ptr noalias nofree noundef nonnull align 8 dereferenceable(776) %1, i32 noundef %.sroa.0133.0.copyload, i1 noundef zeroext %i.eg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.n)
          to label %bb.bd unwind label %bb.bc

bb.bb:                                            ; preds = %.thread362, %bb.bc
  %.sroa.0183.4 = phi i1 [ %.sroa.0183.5, %bb.bc ], [ %.sroa.0183.7, %.thread362 ]
  %.pn330 = phi { ptr, i32 } [ %i.eq, %bb.bc ], [ %.pn328, %.thread362 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write5range16RangeListOffsetsECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #14
          to label %bb.ao unwind label %bb.ce

bb.bc:                                            ; preds = %bb.cc, %bb.br, %bb.ba
  %.sroa.0183.5 = phi i1 [ true, %bb.cc ], [ false, %bb.br ], [ true, %bb.ba ]
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ba
  %i.er = load i64, ptr %i.e, align 8, !range !51, !noundef !5 ; 2 uses
  %i.es = icmp eq i64 %i.er, -1
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0251.0.copyload = load i64, ptr %i.et, align 8 ; 3 uses
  br i1 %i.es, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4255.0.extract.shift = lshr i64 %.sroa.0251.0.copyload, 8
  %.sroa.4255.0.extract.trunc = trunc nuw i64 %.sroa.4255.0.extract.shift to i56
  br label %bb.cg

bb.bf:                                            ; preds = %bb.bd
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5250.0.copyload = load i64, ptr %.sroa.5250.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.er, ptr %i.f, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.0251.0.copyload, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.5250.0.copyload, ptr %.sroa.5138.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.ev, align 8
  %i.ew = load i64, ptr %i.dk, align 8, !noundef !5 ; 3 uses
  %i.ex = load i64, ptr %i.bu, align 8, !noundef !5 ; 2 uses
  %i.ey = icmp ult i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ez = load ptr, ptr %i.dm, align 8, !nonnull !5, !noundef !5
  %i.fa = getelementptr inbounds nuw [80 x i8], ptr %i.ez, i64 %i.ew
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.fc = load ptr, ptr %i.dh, align 8, !nonnull !5, !noundef !5
  %i.fd = load i64, ptr %i.di, align 8, !noundef !5
  %i.fe = invoke fastcc i64 @_RINvMs0_NtNtCsi68uqYEhoRA_5gimli5write4unitNtB6_25DebuggingInformationEntry5writeNtCs4VV2qO6j7hb_12simple_write7SectionEB1j_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fa, ptr noalias nofree noundef align 8 dereferenceable(64) %i.bs, ptr noalias nofree noundef align 8 dereferenceable(24) %i.fb, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fc, i64 noundef %i.fd, i64 noundef %.sroa.046.0, i64 %.sroa.3.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.bj unwind label %bb.ch     ; 2 uses

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ew, i64 noundef %i.ex, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
          to label %bb.at unwind label %bb.ch

bb.bi:                                            ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB11_5write4unit11UnitEntryIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit, %bb.by
  %lpad.thr_comm.split-lp368 = landingpad { ptr, i32 }
          cleanup
  br label %.thread362

bb.bj:                                            ; preds = %bb.bg
  %i.ff = and i64 %i.fe, 255
  %.not324 = icmp eq i64 %i.ff, 255
  br i1 %.not324, label %bb.bk, label %bb.cd

bb.bk:                                            ; preds = %bb.bj
  %i.fg = invoke noundef i64 @_RNvXNtNtCsi68uqYEhoRA_5gimli5write8relocateNtCs4VV2qO6j7hb_12simple_write7SectionNtNtB4_6writer6Writer3lenBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bs)
          to label %bb.bl unwind label %bb.ch

bb.bl:                                            ; preds = %bb.bk
  %i.fh = sub i64 %i.fg, %i.ce
  %.val336 = load i8, ptr %i.by, align 1, !range !7, !noundef !5
  %i.fi = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer23write_initial_length_atB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bs, i64 noundef %i.cd, i64 noundef %i.fh, i8 noundef %.val336)
          to label %bb.bm unwind label %bb.ch     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.fj = and i64 %i.fi, 255
  %.not325 = icmp eq i64 %i.fj, 255
  br i1 %.not325, label %bb.bn, label %bb.cd

bb.bn:                                            ; preds = %bb.bm
  %i.fk = load ptr, ptr %i.eu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fl = load i64, ptr %i.d, align 8, !range !30, !noundef !5
  %i.fm = load i64, ptr %i.ev, align 8, !noundef !5 ; 2 uses
  %i.fn = icmp ult i64 %i.fm, 576460752303423488
  call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fm
  %6 = ptrtoint ptr %i.fk to i64                  ; 2 uses
  %7 = ptrtoint ptr %i.fo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %6, ptr %i.c, align 8
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 %6, ptr %.sroa.5154.0..sroa_idx, align 8
  %.sroa.6155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.fl, ptr %.sroa.6155.0..sroa_idx, align 8
  %.sroa.7156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 %7, ptr %.sroa.7156.0..sroa_idx, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ca, %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.fp = load ptr, ptr %.sroa.7156.0..sroa_idx, align 8, !alias.scope !52, !noalias !55, !nonnull !5, !noundef !5
  %i.fq = load ptr, ptr %.sroa.5154.0..sroa_idx, align 8, !alias.scope !52, !noalias !55, !nonnull !5, !noundef !5 ; 4 uses
  %i.fr = icmp eq ptr %i.fq, %i.fp
  br i1 %i.fr, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB11_5write4unit11UnitEntryIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit, label %bb.bv

bb.bp:                                            ; preds = %bb.bz, %bb.bv
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB11_5write4unit11UnitEntryIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.thread362 unwind label %bb.ce

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB11_5write4unit11UnitEntryIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit: ; preds = %bb.bo
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB11_5write4unit11UnitEntryIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit350 unwind label %bb.bi

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit350: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB11_5write4unit11UnitEntryIdEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4VV2qO6j7hb_12simple_write.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitOffsetsECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ft)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit350
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %.thread362

bb.br:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i8 1, ptr %i.fv, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write3loc19LocationListOffsetsECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f)
          to label %bb.bs unwind label %bb.bc

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write5range16RangeListOffsetsECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.bt unwind label %bb.ap

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitOffsetsECs4VV2qO6j7hb_12simple_write.exit, %bb.bt
  %.sroa.18.sroa.0.0 = phi i64 [ %.sroa.0188.sroa.4.0.extract.shift, %bb.j ], [ %i.gm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitOffsetsECs4VV2qO6j7hb_12simple_write.exit ], [ 0, %bb.bt ]
  %.sroa.0.0 = phi i64 [ %.sroa.0184.0.copyload, %bb.j ], [ %.sroa.0.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitOffsetsECs4VV2qO6j7hb_12simple_write.exit ], [ 255, %bb.bt ]
  %.sroa.18.0.insert.shift = shl nuw i64 %.sroa.18.sroa.0.0, 8
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 255
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

bb.bv:                                            ; preds = %bb.bo
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store ptr %i.fw, ptr %.sroa.5154.0..sroa_idx, align 8, !alias.scope !52, !noalias !55
  %i.fx = load i64, ptr %i.fq, align 8, !noalias !57, !noundef !5
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !noalias !57, !noundef !5
  %i.ga = invoke fastcc { i64, i64 } @_RNvMs3_NtNtCsi68uqYEhoRA_5gimli5write4unitNtB5_11UnitOffsets11unit_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, i64 noundef %i.fz)
          to label %bb.bw unwind label %bb.bp     ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.gb = extractvalue { i64, i64 } %i.ga, 0
  %i.gc = trunc nuw i64 %i.gb to i1
  br i1 %i.gc, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0272)
  store i32 8, ptr %.sroa.0272, align 8
  %.sroa.0272.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0272, i64 4
  store i32 0, ptr %.sroa.0272.4..sroa_idx, align 4
  %.sroa.0272.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0272, i64 1
  %.sroa.0272.1..sroa.0272.1..sroa.0272.1..sroa.0272.1..sroa.0272.1..sroa.18.sroa.0.0.copyload44 = load i56, ptr %.sroa.0272.1..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0272)
  br label %bb.by

bb.by:                                            ; preds = %bb.cb, %bb.bx
  %.sroa.18.sroa.0.1 = phi i56 [ %.sroa.4280.0.extract.trunc, %bb.cb ], [ %.sroa.0272.1..sroa.0272.1..sroa.0272.1..sroa.0272.1..sroa.0272.1..sroa.18.sroa.0.0.copyload44, %bb.bx ]
  %.sroa.0.1 = phi i64 [ %i.ge, %bb.cb ], [ 8, %bb.bx ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB11_5write4unit11UnitEntryIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit352 unwind label %bb.bi

bb.bz:                                            ; preds = %bb.bw
  %i.gd = extractvalue { i64, i64 } %i.ga, 1
  %.val = load i8, ptr %i.by, align 1, !range !7, !noundef !5
  %i.ge = invoke i64 @_RNvYNtCs4VV2qO6j7hb_12simple_write7SectionNtNtNtCsi68uqYEhoRA_5gimli5write6writer6Writer14write_udata_atB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bs, i64 noundef %i.fx, i64 noundef %i.gd, i8 noundef %.val)
          to label %bb.ca unwind label %bb.bp     ; 3 uses

bb.ca:                                            ; preds = %bb.bz
  %i.gf = and i64 %i.ge, 255
  %.not326 = icmp eq i64 %i.gf, 255
  br i1 %.not326, label %bb.bo, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.4280.0.extract.shift = lshr i64 %i.ge, 8
  %.sroa.4280.0.extract.trunc = trunc nuw i64 %.sroa.4280.0.extract.shift to i56
  br label %bb.by

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit352: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.cc

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit352, %bb.cd
  %.sroa.18.sroa.0.2 = phi i56 [ %.sroa.18.sroa.0.3, %bb.cd ], [ %.sroa.18.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit352 ]
  %.sroa.0.2 = phi i64 [ %.sroa.18.sroa.0.3.in.in, %bb.cd ], [ %.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1u_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write.exit352 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write3loc19LocationListOffsetsECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f)
          to label %bb.cg unwind label %bb.bc

bb.cd:                                            ; preds = %bb.bm, %bb.bj
  %.sroa.18.sroa.0.3.in.in = phi i64 [ %i.fe, %bb.bj ], [ %i.fi, %bb.bm ] ; 2 uses
  %.sroa.18.sroa.0.3.in = lshr i64 %.sroa.18.sroa.0.3.in.in, 8
  %.sroa.18.sroa.0.3 = trunc nuw i64 %.sroa.18.sroa.0.3.in to i56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1d_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
          to label %bb.cc unwind label %bb.cf

bb.ce:                                            ; preds = %bb.bp, %.body.thread, %bb.ch, %.thread362, %bb.bb, %bb.ao
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.thread362:                                       ; preds = %bb.bp, %bb.bq, %bb.bi, %bb.ch, %bb.cf
  %.sroa.0183.7 = phi i1 [ true, %bb.cf ], [ true, %bb.ch ], [ true, %bb.bi ], [ false, %bb.bq ], [ true, %bb.bp ]
  %.pn328 = phi { ptr, i32 } [ %i.gh, %bb.cf ], [ %lpad.thr_comm367, %bb.ch ], [ %lpad.thr_comm.split-lp368, %bb.bi ], [ %i.fu, %bb.bq ], [ %i.fs, %bb.bp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write3loc19LocationListOffsetsECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #14
          to label %bb.bb unwind label %bb.ce

bb.cf:                                            ; preds = %bb.cd
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.thread362

bb.cg:                                            ; preds = %bb.cc, %bb.be
  %.sroa.18.sroa.0.4 = phi i56 [ %.sroa.4255.0.extract.trunc, %bb.be ], [ %.sroa.18.sroa.0.2, %bb.cc ]
  %.sroa.0.4 = phi i64 [ %.sroa.0251.0.copyload, %bb.be ], [ %.sroa.0.2, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write5range16RangeListOffsetsECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %bb.ci unwind label %bb.ap

bb.ch:                                            ; preds = %bb.bl, %bb.bh, %bb.bg, %bb.bk
  %lpad.thr_comm367 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetNtNtNtB1d_5write4unit11UnitEntryIdEEECs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #14
          to label %.thread362 unwind label %bb.ce

bb.ci:                                            ; preds = %bb.cg, %bb.az
  %.sroa.18.sroa.0.5 = phi i56 [ %.sroa.4247.0.extract.trunc, %bb.az ], [ %.sroa.18.sroa.0.4, %bb.cg ]
  %.sroa.0.5 = phi i64 [ %.sroa.0243.0.copyload, %bb.az ], [ %.sroa.0.4, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.av
  %.sroa.18.sroa.0.6 = phi i56 [ %.sroa.4239.0.extract.trunc, %bb.av ], [ %.sroa.18.sroa.0.5, %bb.ci ]
  %.sroa.0.6 = phi i64 [ %i.dt, %bb.av ], [ %.sroa.0.5, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body.thread unwind label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs4VV2qO6j7hb_12simple_write.exit unwind label %.body.thread359

bb.cm:                                            ; preds = %bb.ck
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs4VV2qO6j7hb_12simple_write.exit: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs4VV2qO6j7hb_12simple_write.exit, %bb.y, %bb.ab, %bb.ae, %.thread, %bb.al, %bb.ai, %bb.o
  %.sroa.18.sroa.0.7 = phi i56 [ %.sroa.0195.sroa.4.0.extract.trunc, %bb.o ], [ %.sroa.4203.0.extract.trunc, %bb.s ], [ %.sroa.4209.0.extract.trunc, %bb.ai ], [ %.sroa.4215.0.extract.trunc, %bb.al ], [ %.sroa.18.sroa.0.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs4VV2qO6j7hb_12simple_write.exit ], [ %.sroa.4221.0.extract.trunc, %bb.y ], [ %.sroa.4227.0.extract.trunc, %bb.ab ], [ %.sroa.4233.0.extract.trunc, %bb.ae ], [ %.sroa.4102.2.insert.shift, %.thread ]
  %.sroa.0.7 = phi i64 [ %.sroa.0191.0.copyload, %bb.o ], [ %i.cg, %bb.s ], [ %i.cs, %bb.ai ], [ %i.cv, %bb.al ], [ %.sroa.0.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecyEECs4VV2qO6j7hb_12simple_write.exit ], [ %i.cl, %bb.y ], [ %i.co, %bb.ab ], [ %i.cq, %bb.ae ], [ 5, %.thread ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsi68uqYEhoRA_5gimli5write4unit11UnitOffsetsECs4VV2qO6j7hb_12simple_write.exit unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsi68uqYEhoRA_5gimli6common15DebugInfoOffsetENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4VV2qO6j7hb_12simple_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
end_hunk_0
