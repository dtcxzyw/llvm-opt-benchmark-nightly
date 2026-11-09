Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/info_banner_widget?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16InfoBannerWidget22loadSlidesFromResourceERK7QStringbR4QMapI15BannerSlideType15SlideTypeConfigERS3_IS4_5QListI11BannerSlideEE:bb.a
  %.not.i.i.i426 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i426, label %_ZN17QArrayDataPointerIDsED2Ev.exit433, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i427

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i427:   ; preds = %bb.cb
  %i.eo = atomicrmw add ptr %i.en, i32 -1 acq_rel, align 4
  %.not.i.i428 = icmp eq i32 %i.eo, 1
  br i1 %.not.i.i428, label %bb.cc, label %_ZN17QArrayDataPointerIDsED2Ev.exit433

bb.cc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i427
  %i.ep = load ptr, ptr %29, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ep, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit433

_ZN17QArrayDataPointerIDsED2Ev.exit433:           ; preds = %bb.cc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i427, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.kb

bb.cd:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit373
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %30, align 8              ; 2 uses
  %.not.i.i.i434 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i434, label %_ZN17QArrayDataPointerIDsED2Ev.exit441, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i435

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i435:   ; preds = %bb.cd
  %i.es = atomicrmw add ptr %i.er, i32 -1 acq_rel, align 4
  %.not.i.i436 = icmp eq i32 %i.es, 1
  br i1 %.not.i.i436, label %bb.ce, label %_ZN17QArrayDataPointerIDsED2Ev.exit441

bb.ce:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i435
  %i.et = load ptr, ptr %30, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.et, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit441

_ZN17QArrayDataPointerIDsED2Ev.exit441:           ; preds = %bb.ce, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i435, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.ka

bb.cf:                                            ; preds = %bb.bi
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bj
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %32) #28
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn171 = phi { ptr, i32 } [ %i.ev, %bb.cg ], [ %i.eu, %bb.cf ]
  %i.ew = load ptr, ptr %33, align 8              ; 2 uses
  %.not.i.i.i442 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i442, label %_ZN17QArrayDataPointerIDsED2Ev.exit449, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i443

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i443:   ; preds = %bb.ch
  %i.ex = atomicrmw add ptr %i.ew, i32 -1 acq_rel, align 4
  %.not.i.i444 = icmp eq i32 %i.ex, 1
  br i1 %.not.i.i444, label %bb.ci, label %_ZN17QArrayDataPointerIDsED2Ev.exit449

bb.ci:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i443
  %i.ey = load ptr, ptr %33, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ey, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit449

_ZN17QArrayDataPointerIDsED2Ev.exit449:           ; preds = %bb.ci, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i443, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.cv

bb.cj:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit389
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.bm
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %35) #28
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn173 = phi { ptr, i32 } [ %i.fa, %bb.ck ], [ %i.ez, %bb.cj ]
  %i.fb = load ptr, ptr %36, align 8              ; 2 uses
  %.not.i.i.i450 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i450, label %_ZN17QArrayDataPointerIDsED2Ev.exit457, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i451

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i451:   ; preds = %bb.cl
  %i.fc = atomicrmw add ptr %i.fb, i32 -1 acq_rel, align 4
  %.not.i.i452 = icmp eq i32 %i.fc, 1
  br i1 %.not.i.i452, label %bb.cm, label %_ZN17QArrayDataPointerIDsED2Ev.exit457

bb.cm:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i451
  %i.fd = load ptr, ptr %36, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fd, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit457

_ZN17QArrayDataPointerIDsED2Ev.exit457:           ; preds = %bb.cm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i451, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.cu

bb.cn:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit401
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.bq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %38) #28
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn175 = phi { ptr, i32 } [ %i.ff, %bb.co ], [ %i.fe, %bb.cn ]
  %i.fg = load ptr, ptr %39, align 8              ; 2 uses
  %.not.i.i.i458 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i458, label %_ZN17QArrayDataPointerIDsED2Ev.exit465, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i459

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i459:   ; preds = %bb.cp
  %i.fh = atomicrmw add ptr %i.fg, i32 -1 acq_rel, align 4
  %.not.i.i460 = icmp eq i32 %i.fh, 1
  br i1 %.not.i.i460, label %bb.cq, label %_ZN17QArrayDataPointerIDsED2Ev.exit465

bb.cq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i459
  %i.fi = load ptr, ptr %39, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fi, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit465

_ZN17QArrayDataPointerIDsED2Ev.exit465:           ; preds = %bb.cq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i459, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %bb.cu

bb.cr:                                            ; preds = %bb.bu, %_ZN17QArrayDataPointerIDsED2Ev.exit417
  %i.fj = and i64 %.fca.0.extract.i402, 4294967295
  %.not1632 = icmp eq i64 %i.fj, 0
  br i1 %.not1632, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fk = getelementptr i8, ptr %0, i64 136
  store i64 %.fca.0.extract.i402, ptr %i.fk, align 8
  %.sroa.61573.0..sroa_idx = getelementptr i8, ptr %0, i64 144
  store i48 %.sroa.2.0.extract.trunc.i404, ptr %.sroa.61573.0..sroa_idx, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.cw

bb.cu:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit465, %_ZN17QArrayDataPointerIDsED2Ev.exit457
  %.pn175.pn = phi { ptr, i32 } [ %.pn175, %_ZN17QArrayDataPointerIDsED2Ev.exit465 ], [ %.pn173, %_ZN17QArrayDataPointerIDsED2Ev.exit457 ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %31) #28
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN17QArrayDataPointerIDsED2Ev.exit449
  %.pn175.pn.pn = phi { ptr, i32 } [ %.pn175.pn, %bb.cu ], [ %.pn171, %_ZN17QArrayDataPointerIDsED2Ev.exit449 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %bb.ka

bb.cw:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit381, %bb.ct
  %i.fl = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %53, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.gg = getelementptr i8, ptr %0, i64 120
  %i.gh = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.gi = getelementptr i8, ptr %0, i64 136
  %i.gj = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %52, i64 16
  %.sroa.4.0..sroa_idx.i541 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %66, i64 16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.gq, %bb.cw
  %.sroa.9.0 = phi i64 [ 1, %bb.cw ], [ %i.nr, %bb.gq ] ; 6 uses
  %i.gq = invoke noundef i64 @_ZNK11QJsonObject4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %27)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.gr = shl i64 %i.gq, 1
  %.unshifted.i.i = xor i64 %i.gr, %.sroa.9.0
  %i.gs = icmp ugt i64 %.unshifted.i.i, 1
  br i1 %i.gs, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #28
  store ptr null, ptr %69, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %69, i64 8
  store ptr @.str.23, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i64 5, ptr %i.gu, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %68, ptr noundef nonnull align 8 dereferenceable_or_null(8) %24, ptr noundef nonnull align 8 dereferenceable(24) %69)
          to label %bb.gu unwind label %bb.hb

bb.da:                                            ; preds = %bb.cx
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ka

bb.db:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  invoke void @_ZN18QJsonValueConstRef9objectKeyES_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %40, ptr nonnull %27, i64 %.sroa.9.0)
          to label %_ZNK11QJsonObject14const_iterator3keyEv.exit unwind label %bb.de

_ZNK11QJsonObject14const_iterator3keyEv.exit:     ; preds = %bb.db
  %i.gw = load i64, ptr %i.fl, align 8
  %i.gx = icmp eq i64 %i.gw, 7
  br i1 %i.gx, label %bb.dc, label %_ZeqRK7QString13QLatin1String.exit

bb.dc:                                            ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit
  %i.gy = load ptr, ptr %i.fm, align 8
  %i.gz = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringView13QLatin1StringN2Qt15CaseSensitivityE(i64 7, ptr %i.gy, i64 7, ptr @.str.18, i32 noundef 1) #30
  %i.ha = icmp eq i32 %i.gz, 0
  br label %_ZeqRK7QString13QLatin1String.exit

_ZeqRK7QString13QLatin1String.exit:               ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit, %bb.dc
  %i.hb = phi i1 [ false, %_ZNK11QJsonObject14const_iterator3keyEv.exit ], [ %i.ha, %bb.dc ]
  %i.hc = load ptr, ptr %40, align 8              ; 2 uses
  %.not.i.i.i468 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i468, label %_ZN7QStringD2Ev.exit471, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i469

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i469:   ; preds = %_ZeqRK7QString13QLatin1String.exit
  %i.hd = atomicrmw add ptr %i.hc, i32 -1 acq_rel, align 4
  %.not.i.i470 = icmp eq i32 %i.hd, 1
  br i1 %.not.i.i470, label %bb.dd, label %_ZN7QStringD2Ev.exit471

bb.dd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i469
  %i.he = load ptr, ptr %40, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.he, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit471

_ZN7QStringD2Ev.exit471:                          ; preds = %_ZeqRK7QString13QLatin1String.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i469, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br i1 %i.hb, label %bb.gq, label %bb.df

bb.de:                                            ; preds = %bb.db
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.ka

bb.df:                                            ; preds = %_ZN7QStringD2Ev.exit471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  invoke void @_ZN18QJsonValueConstRef9objectKeyES_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %41, ptr nonnull %27, i64 %.sroa.9.0)
          to label %_ZNK11QJsonObject14const_iterator3keyEv.exit475 unwind label %bb.dk

_ZNK11QJsonObject14const_iterator3keyEv.exit475:  ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, i64 13, ptr @.str.19)
          to label %bb.dg unwind label %bb.dl

bb.dg:                                            ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit475
  %i.hg = load <2 x ptr>, ptr %8, align 16
  store <2 x ptr> %i.hg, ptr %42, align 16
  %i.hh = load i64, ptr %i.fo, align 16
  store i64 %i.hh, ptr %i.fn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.hi = invoke noundef i32 @_ZN16InfoBannerWidget19validTypeFromStringERK7QStringS2_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %42, i1 noundef zeroext %2)
          to label %bb.dh unwind label %bb.dm     ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.hj = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i476 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i476, label %_ZN7QStringD2Ev.exit479, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i477

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i477:   ; preds = %bb.dh
  %i.hk = atomicrmw add ptr %i.hj, i32 -1 acq_rel, align 4
  %.not.i.i478 = icmp eq i32 %i.hk, 1
  br i1 %.not.i.i478, label %bb.di, label %_ZN7QStringD2Ev.exit479

bb.di:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i477
  %i.hl = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hl, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit479

_ZN7QStringD2Ev.exit479:                          ; preds = %bb.dh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i477, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.hm = load ptr, ptr %41, align 8              ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i480, label %_ZN7QStringD2Ev.exit483, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i481

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i481:   ; preds = %_ZN7QStringD2Ev.exit479
  %i.hn = atomicrmw add ptr %i.hm, i32 -1 acq_rel, align 4
  %.not.i.i482 = icmp eq i32 %i.hn, 1
  br i1 %.not.i.i482, label %bb.dj, label %_ZN7QStringD2Ev.exit483

bb.dj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i481
  %i.ho = load ptr, ptr %41, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ho, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit483

_ZN7QStringD2Ev.exit483:                          ; preds = %_ZN7QStringD2Ev.exit479, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i481, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  store i32 %i.hi, ptr %i.c, align 4
  %i.hp = icmp slt i32 %i.hi, 0
  br i1 %i.hp, label %bb.gp, label %bb.dp

bb.dk:                                            ; preds = %bb.df
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit491

bb.dl:                                            ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit475
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit487

bb.dm:                                            ; preds = %bb.dg
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ht = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i484 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i484, label %_ZN7QStringD2Ev.exit487, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i485

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i485:   ; preds = %bb.dm
  %i.hu = atomicrmw add ptr %i.ht, i32 -1 acq_rel, align 4
  %.not.i.i486 = icmp eq i32 %i.hu, 1
  br i1 %.not.i.i486, label %bb.dn, label %_ZN7QStringD2Ev.exit487

bb.dn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i485
  %i.hv = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hv, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit487

_ZN7QStringD2Ev.exit487:                          ; preds = %bb.dn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i485, %bb.dm, %bb.dl
  %.pn197 = phi { ptr, i32 } [ %i.hr, %bb.dl ], [ %i.hs, %bb.dm ], [ %i.hs, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i485 ], [ %i.hs, %bb.dn ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.hw = load ptr, ptr %41, align 8              ; 2 uses
  %.not.i.i.i488 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i488, label %_ZN7QStringD2Ev.exit491, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i489

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i489:   ; preds = %_ZN7QStringD2Ev.exit487
  %i.hx = atomicrmw add ptr %i.hw, i32 -1 acq_rel, align 4
  %.not.i.i490 = icmp eq i32 %i.hx, 1
  br i1 %.not.i.i490, label %bb.do, label %_ZN7QStringD2Ev.exit491

bb.do:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i489
  %i.hy = load ptr, ptr %41, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hy, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit491

_ZN7QStringD2Ev.exit491:                          ; preds = %bb.do, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i489, %_ZN7QStringD2Ev.exit487, %bb.dk
  %.pn197.pn = phi { ptr, i32 } [ %i.hq, %bb.dk ], [ %.pn197, %_ZN7QStringD2Ev.exit487 ], [ %.pn197, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i489 ], [ %.pn197, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  br label %bb.gt

bb.dp:                                            ; preds = %_ZN7QStringD2Ev.exit483
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  store ptr %27, ptr %44, align 8
  store i64 %.sroa.9.0, ptr %i.fp, align 8
  invoke void @_ZNK18QJsonValueConstRef8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %43, ptr noundef nonnull align 8 dereferenceable_or_null(16) %44)
          to label %bb.dq unwind label %bb.ec

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  %i.hz = invoke noundef align 8 dereferenceable(72) ptr @_ZN4QMapI15BannerSlideType15SlideTypeConfigEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.dr unwind label %bb.ed     ; 9 uses

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  store ptr null, ptr %45, align 8
  store ptr @.str.20, ptr %i.fq, align 8
  store i64 5, ptr %i.fr, align 8
  %i.ia = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %bb.ds unwind label %bb.ee

bb.ds:                                            ; preds = %bb.dr
  %i.ib = load ptr, ptr %45, align 8              ; 2 uses
  %.not.i.i.i494 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i494, label %_ZN17QArrayDataPointerIDsED2Ev.exit501, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i495

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i495:   ; preds = %bb.ds
  %i.ic = atomicrmw add ptr %i.ib, i32 -1 acq_rel, align 4
  %.not.i.i496 = icmp eq i32 %i.ic, 1
  br i1 %.not.i.i496, label %bb.dt, label %_ZN17QArrayDataPointerIDsED2Ev.exit501

bb.dt:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i495
  %i.id = load ptr, ptr %45, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.id, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit501

_ZN17QArrayDataPointerIDsED2Ev.exit501:           ; preds = %bb.dt, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i495, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br i1 %i.ia, label %bb.du, label %bb.fi

bb.du:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit501
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  store ptr null, ptr %48, align 8
  store ptr @.str.20, ptr %i.ga, align 8
  store i64 5, ptr %i.gb, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %47, ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %48)
          to label %bb.dv unwind label %bb.eg

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZNK10QJsonValue7toArrayEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonArray) align 8 %46, ptr noundef nonnull align 8 dereferenceable_or_null(24) %47)
          to label %bb.dw unwind label %bb.eh

bb.dw:                                            ; preds = %bb.dv
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %47) #28
  %i.ie = load ptr, ptr %48, align 8              ; 2 uses
  %.not.i.i.i502 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i502, label %_ZN17QArrayDataPointerIDsED2Ev.exit509, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i503

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i503:   ; preds = %bb.dw
  %i.if = atomicrmw add ptr %i.ie, i32 -1 acq_rel, align 4
  %.not.i.i504 = icmp eq i32 %i.if, 1
  br i1 %.not.i.i504, label %bb.dx, label %_ZN17QArrayDataPointerIDsED2Ev.exit509

bb.dx:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i503
  %i.ig = load ptr, ptr %48, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ig, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit509

_ZN17QArrayDataPointerIDsED2Ev.exit509:           ; preds = %bb.dx, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i503, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  %i.ih = invoke noundef i64 @_ZNK10QJsonArray4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %46)
          to label %bb.dy unwind label %bb.ek

bb.dy:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit509
  %i.ii = icmp sgt i64 %i.ih, 1
  br i1 %i.ii, label %bb.dz, label %bb.et

bb.dz:                                            ; preds = %bb.dy
  %i.ij = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %46, i64 noundef 0)
          to label %bb.ea unwind label %bb.ek     ; 0 uses

bb.ea:                                            ; preds = %bb.dz
  %i.ik = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %46, i64 noundef 0)
          to label %.noexc unwind label %bb.ek    ; 0 uses

.noexc:                                           ; preds = %bb.ea
  %i.il = invoke noundef i64 @_ZNK10QJsonArray4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %46)
          to label %bb.eb unwind label %bb.ek

bb.eb:                                            ; preds = %.noexc
  %i.im = shl i64 %i.il, 1                        ; 2 uses
  %.not1639 = icmp eq i64 %i.im, 0
  br i1 %.not1639, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.eb
  %i.in = getelementptr inbounds nuw i8, ptr %i.hz, i64 48 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  br label %bb.el

bb.ec:                                            ; preds = %bb.dp
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %bb.gs

bb.ed:                                            ; preds = %bb.dq
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.ee:                                            ; preds = %bb.dr
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %i.is = load ptr, ptr %45, align 8              ; 2 uses
  %.not.i.i.i516 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i516, label %_ZN17QArrayDataPointerIDsED2Ev.exit523, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i517

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i517:   ; preds = %bb.ee
  %i.it = atomicrmw add ptr %i.is, i32 -1 acq_rel, align 4
  %.not.i.i518 = icmp eq i32 %i.it, 1
  br i1 %.not.i.i518, label %bb.ef, label %_ZN17QArrayDataPointerIDsED2Ev.exit523

bb.ef:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i517
  %i.iu = load ptr, ptr %45, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.iu, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit523

_ZN17QArrayDataPointerIDsED2Ev.exit523:           ; preds = %bb.ef, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i517, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %bb.gr

bb.eg:                                            ; preds = %bb.du
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.eh:                                            ; preds = %bb.dv
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %47) #28
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.pn207 = phi { ptr, i32 } [ %i.iw, %bb.eh ], [ %i.iv, %bb.eg ]
  %i.ix = load ptr, ptr %48, align 8              ; 2 uses
  %.not.i.i.i524 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i524, label %_ZN17QArrayDataPointerIDsED2Ev.exit531, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i525

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i525:   ; preds = %bb.ei
  %i.iy = atomicrmw add ptr %i.ix, i32 -1 acq_rel, align 4
  %.not.i.i526 = icmp eq i32 %i.iy, 1
  br i1 %.not.i.i526, label %bb.ej, label %_ZN17QArrayDataPointerIDsED2Ev.exit531

bb.ej:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i525
  %i.iz = load ptr, ptr %48, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.iz, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit531

_ZN17QArrayDataPointerIDsED2Ev.exit531:           ; preds = %bb.ej, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i525, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  br label %bb.fh

bb.ek:                                            ; preds = %bb.dz, %_ZN17QArrayDataPointerIDsED2Ev.exit509, %.noexc, %bb.ea
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.el:                                            ; preds = %.lr.ph, %_ZN5QListI6QColorE6appendERKS0_.exit
  %.sroa.61539.01636 = phi i64 [ 0, %.lr.ph ], [ %i.jq, %_ZN5QListI6QColorE6appendERKS0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  store ptr %46, ptr %50, align 8
  store i64 %.sroa.61539.01636, ptr %i.gj, align 8
  invoke void @_ZNK13QJsonValueRef7toValueEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %49, ptr noundef nonnull align 8 dereferenceable_or_null(16) %50)
          to label %_ZNK13QJsonValueRefcv10QJsonValueEv.exit unwind label %bb.ep

_ZNK13QJsonValueRefcv10QJsonValueEv.exit:         ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #28
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %52, ptr noundef nonnull align 8 dereferenceable_or_null(24) %49)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit
  %i.jb = load ptr, ptr %i.gk, align 8
  %i.jc = load i64, ptr %i.gl, align 8
  %i.jd = or i64 %i.jc, -9223372036854775808
  %i.je = call { i64, i64 } @_ZN6QColor10fromStringE14QAnyStringView(ptr %i.jb, i64 %i.jd) #28 ; 2 uses
  %.fca.0.extract.i538 = extractvalue { i64, i64 } %i.je, 0
  %.fca.1.extract.i539 = extractvalue { i64, i64 } %i.je, 1
  %.sroa.2.0.extract.trunc.i540 = trunc i64 %.fca.1.extract.i539 to i48
  store i64 %.fca.0.extract.i538, ptr %51, align 8
  store i48 %.sroa.2.0.extract.trunc.i540, ptr %.sroa.4.0..sroa_idx.i541, align 8
  %i.jf = load ptr, ptr %52, align 8              ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i542, label %_ZN7QStringD2Ev.exit545, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i543

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i543:   ; preds = %bb.em
  %i.jg = atomicrmw add ptr %i.jf, i32 -1 acq_rel, align 4
  %.not.i.i544 = icmp eq i32 %i.jg, 1
  br i1 %.not.i.i544, label %bb.en, label %_ZN7QStringD2Ev.exit545

bb.en:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i543
  %i.jh = load ptr, ptr %52, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jh, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit545

_ZN7QStringD2Ev.exit545:                          ; preds = %bb.em, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i543, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  %i.ji = load i32, ptr %51, align 8
  %.not1633.a = icmp eq i32 %i.ji, 0
  br i1 %.not1633.a, label %_ZN5QListI6QColorE6appendERKS0_.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZN7QStringD2Ev.exit545
  %i.jj = load i64, ptr %i.io, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI6QColorE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.in, i64 noundef %i.jj, ptr noundef nonnull align 4 dereferenceable(14) %51)
          to label %.noexc546 unwind label %bb.er

.noexc546:                                        ; preds = %bb.eo
  %i.jk = load ptr, ptr %i.in, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc546
  %i.jl = load atomic i32, ptr %i.jk monotonic, align 4
  %i.jm = icmp sgt i32 %i.jl, 1
  br i1 %i.jm, label %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI6QColorE6appendERKS0_.exit

_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.i.i.i.i.i, %.noexc546
  invoke void @_ZN17QArrayDataPointerI6QColorE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %i.in, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI6QColorE6appendERKS0_.exit unwind label %bb.er

bb.ep:                                            ; preds = %bb.el
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  br label %bb.fg

bb.eq:                                            ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  br label %bb.es

bb.er:                                            ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.eo
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

_ZN5QListI6QColorE6appendERKS0_.exit:             ; preds = %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI6QColorE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZN7QStringD2Ev.exit545
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  %i.jq = add i64 %.sroa.61539.01636, 2           ; 2 uses
  %.not1640 = icmp eq i64 %i.im, %i.jq
  br i1 %.not1640, label %.loopexit, label %bb.el

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.pn215 = phi { ptr, i32 } [ %i.jp, %bb.er ], [ %i.jo, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  br label %bb.fg

bb.et:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28
  store i32 2, ptr %53, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gc, i8 0, i64 20, i1 false)
  store ptr @.str.18, ptr %i.gd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  invoke void @_ZN18QJsonValueConstRef9objectKeyES_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %55, ptr nonnull %27, i64 %.sroa.9.0)
          to label %_ZNK11QJsonObject14const_iterator3keyEv.exit552 unwind label %bb.ez

_ZNK11QJsonObject14const_iterator3keyEv.exit552:  ; preds = %bb.et
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %54, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %55)
          to label %_ZNO7QString6toUtf8Ev.exit554 unwind label %bb.fa

_ZNO7QString6toUtf8Ev.exit554:                    ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit552
  %i.jr = load ptr, ptr %i.ge, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #28
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %56, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %1)
          to label %_ZNKR7QString6toUtf8Ev.exit558 unwind label %bb.fb

_ZNKR7QString6toUtf8Ev.exit558:                   ; preds = %_ZNO7QString6toUtf8Ev.exit554
  %.not.i.i555 = icmp eq ptr %i.jr, null
  %spec.select.i.i556 = select i1 %.not.i.i555, ptr @_ZN10QByteArray6_emptyE, ptr %i.jr
  %i.js = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not.i.i559 = icmp eq ptr %i.js, null
  %spec.select.i.i560 = select i1 %.not.i.i559, ptr @_ZN10QByteArray6_emptyE, ptr %i.js
  invoke void (ptr, ptr, ...) @_ZNK14QMessageLogger7warningEPKcz(ptr noundef nonnull align 8 dereferenceable_or_null(32) %53, ptr noundef @.str.21, ptr noundef nonnull %spec.select.i.i556, ptr noundef nonnull %spec.select.i.i560) #32
          to label %bb.eu unwind label %bb.fc

bb.eu:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit558
  %i.jt = load ptr, ptr %56, align 8              ; 2 uses
  %.not.i.i.i561 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i561, label %_ZN10QByteArrayD2Ev.exit564, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i562

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i562:    ; preds = %bb.eu
  %i.ju = atomicrmw add ptr %i.jt, i32 -1 acq_rel, align 4
  %.not.i.i563 = icmp eq i32 %i.ju, 1
  br i1 %.not.i.i563, label %bb.ev, label %_ZN10QByteArrayD2Ev.exit564

bb.ev:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i562
  %i.jv = load ptr, ptr %56, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jv, i64 noundef 1, i64 noundef 8) #28
  br label %_ZN10QByteArrayD2Ev.exit564

_ZN10QByteArrayD2Ev.exit564:                      ; preds = %bb.eu, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i562, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  %i.jw = load ptr, ptr %54, align 8              ; 2 uses
  %.not.i.i.i565 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i565, label %_ZN10QByteArrayD2Ev.exit568, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i566

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i566:    ; preds = %_ZN10QByteArrayD2Ev.exit564
  %i.jx = atomicrmw add ptr %i.jw, i32 -1 acq_rel, align 4
  %.not.i.i567 = icmp eq i32 %i.jx, 1
  br i1 %.not.i.i567, label %bb.ew, label %_ZN10QByteArrayD2Ev.exit568

bb.ew:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i566
  %i.jy = load ptr, ptr %54, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jy, i64 noundef 1, i64 noundef 8) #28
  br label %_ZN10QByteArrayD2Ev.exit568

_ZN10QByteArrayD2Ev.exit568:                      ; preds = %_ZN10QByteArrayD2Ev.exit564, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i566, %bb.ew
  %i.jz = load ptr, ptr %55, align 8              ; 2 uses
  %.not.i.i.i569 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i569, label %_ZN7QStringD2Ev.exit572, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i570

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i570:   ; preds = %_ZN10QByteArrayD2Ev.exit568
  %i.ka = atomicrmw add ptr %i.jz, i32 -1 acq_rel, align 4
  %.not.i.i571 = icmp eq i32 %i.ka, 1
  br i1 %.not.i.i571, label %bb.ex, label %_ZN7QStringD2Ev.exit572

bb.ex:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i570
  %i.kb = load ptr, ptr %55, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kb, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit572

_ZN7QStringD2Ev.exit572:                          ; preds = %_ZN10QByteArrayD2Ev.exit568, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i570, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %57, ptr noundef align 8 dereferenceable(14) %i.gg, i64 14, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.gh, ptr noundef align 8 dereferenceable(14) %i.gi, i64 14, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hz, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.kd = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.b, i64 noundef 16, i64 noundef 8, i64 noundef 2, i32 noundef 1) #28 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kd, i64 8) ]
  %i.ke = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.kf = load ptr, ptr %i.kc, align 8            ; 3 uses
  store ptr %i.ke, ptr %i.kc, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.hz, i64 56 ; 2 uses
  store ptr %i.kd, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hz, i64 64 ; 6 uses
  store i64 0, ptr %i.kh, align 8
  %.not.i.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i, label %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i: ; preds = %_ZN7QStringD2Ev.exit572
  %i.ki = atomicrmw add ptr %i.kf, i32 -1 acq_rel, align 4
  %.not.i.i.i573 = icmp eq i32 %i.ki, 1
  br i1 %.not.i.i.i573, label %bb.ey, label %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i

bb.ey:                                            ; preds = %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.kf, i64 noundef 16, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i

_ZN17QArrayDataPointerI6QColorED2Ev.exit.i:       ; preds = %bb.ey, %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i, %_ZN7QStringD2Ev.exit572
  %i.kj = load ptr, ptr %i.kg, align 8            ; 2 uses
  %.pre.i.i = load i64, ptr %i.kh, align 8
  %i.kk = getelementptr [16 x i8], ptr %i.kj, i64 %.pre.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.kk, ptr noundef nonnull align 4 dereferenceable(16) %57, i64 16, i1 false)
  %i.kl = load i64, ptr %i.kh, align 8
  %i.km = add i64 %i.kl, 1                        ; 2 uses
  store i64 %i.km, ptr %i.kh, align 8
  %i.kn = getelementptr [16 x i8], ptr %i.kj, i64 %i.km
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(16) %i.kn, ptr noundef nonnull align 4 dereferenceable(16) %i.gh, i64 16, i1 false)
  %i.ko = load i64, ptr %i.kh, align 8
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  br label %.loopexit

bb.ez:                                            ; preds = %bb.et
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit585

bb.fa:                                            ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit552
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit581

bb.fb:                                            ; preds = %_ZNO7QString6toUtf8Ev.exit554
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit577

bb.fc:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit558
  %i.kt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ku = load ptr, ptr %56, align 8              ; 2 uses
  %.not.i.i.i574 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i574, label %_ZN10QByteArrayD2Ev.exit577, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i575

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i575:    ; preds = %bb.fc
  %i.kv = atomicrmw add ptr %i.ku, i32 -1 acq_rel, align 4
  %.not.i.i576 = icmp eq i32 %i.kv, 1
  br i1 %.not.i.i576, label %bb.fd, label %_ZN10QByteArrayD2Ev.exit577

bb.fd:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i575
  %i.kw = load ptr, ptr %56, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kw, i64 noundef 1, i64 noundef 8) #28
  br label %_ZN10QByteArrayD2Ev.exit577

_ZN10QByteArrayD2Ev.exit577:                      ; preds = %bb.fd, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i575, %bb.fc, %bb.fb
  %.pn209 = phi { ptr, i32 } [ %i.ks, %bb.fb ], [ %i.kt, %bb.fc ], [ %i.kt, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i575 ], [ %i.kt, %bb.fd ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  %i.kx = load ptr, ptr %54, align 8              ; 2 uses
  %.not.i.i.i578 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i578, label %_ZN10QByteArrayD2Ev.exit581, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i579

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i579:    ; preds = %_ZN10QByteArrayD2Ev.exit577
  %i.ky = atomicrmw add ptr %i.kx, i32 -1 acq_rel, align 4
  %.not.i.i580 = icmp eq i32 %i.ky, 1
  br i1 %.not.i.i580, label %bb.fe, label %_ZN10QByteArrayD2Ev.exit581

bb.fe:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i579
  %i.kz = load ptr, ptr %54, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kz, i64 noundef 1, i64 noundef 8) #28
  br label %_ZN10QByteArrayD2Ev.exit581

_ZN10QByteArrayD2Ev.exit581:                      ; preds = %bb.fe, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i579, %_ZN10QByteArrayD2Ev.exit577, %bb.fa
  %.pn209.pn = phi { ptr, i32 } [ %i.kr, %bb.fa ], [ %.pn209, %_ZN10QByteArrayD2Ev.exit577 ], [ %.pn209, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i579 ], [ %.pn209, %bb.fe ] ; 3 uses
  %i.la = load ptr, ptr %55, align 8              ; 2 uses
  %.not.i.i.i582 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i582, label %_ZN7QStringD2Ev.exit585, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i583

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i583:   ; preds = %_ZN10QByteArrayD2Ev.exit581
  %i.lb = atomicrmw add ptr %i.la, i32 -1 acq_rel, align 4
  %.not.i.i584 = icmp eq i32 %i.lb, 1
  br i1 %.not.i.i584, label %bb.ff, label %_ZN7QStringD2Ev.exit585

bb.ff:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i583
  %i.lc = load ptr, ptr %55, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.lc, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit585

_ZN7QStringD2Ev.exit585:                          ; preds = %bb.ff, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i583, %_ZN10QByteArrayD2Ev.exit581, %bb.ez
  %.pn209.pn.pn = phi { ptr, i32 } [ %i.kq, %bb.ez ], [ %.pn209.pn, %_ZN10QByteArrayD2Ev.exit581 ], [ %.pn209.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i583 ], [ %.pn209.pn, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
end_hunk_0
begin_hunk_1_@_ZN16InfoBannerWidget22loadSlidesFromResourceERK7QStringbR4QMapI15BannerSlideType15SlideTypeConfigERS3_IS4_5QListI11BannerSlideEE:bb.a
  store i64 %.fca.0.extract.i602, ptr %i.mm, align 4
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i48 %.sroa.2.0.extract.trunc.i604, ptr %.sroa.7.16..sroa_idx, align 4
  %i.mn = load i64, ptr %i.mg, align 8
  %i.mo = add i64 %i.mn, 1
  store i64 %i.mo, ptr %i.mg, align 8
  br label %bb.gb

bb.ft:                                            ; preds = %bb.fi
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fj
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %59) #28
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.pn200 = phi { ptr, i32 } [ %i.mq, %bb.fu ], [ %i.mp, %bb.ft ]
  %i.mr = load ptr, ptr %60, align 8              ; 2 uses
  %.not.i.i.i626 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i626, label %_ZN17QArrayDataPointerIDsED2Ev.exit633, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i627

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i627:   ; preds = %bb.fv
  %i.ms = atomicrmw add ptr %i.mr, i32 -1 acq_rel, align 4
  %.not.i.i628 = icmp eq i32 %i.ms, 1
  br i1 %.not.i.i628, label %bb.fw, label %_ZN17QArrayDataPointerIDsED2Ev.exit633

bb.fw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i627
  %i.mt = load ptr, ptr %60, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.mt, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit633

_ZN17QArrayDataPointerIDsED2Ev.exit633:           ; preds = %bb.fw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i627, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #28
  br label %bb.gr

bb.fx:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit601
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fn
  %i.mv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %62) #28
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.pn202 = phi { ptr, i32 } [ %i.mv, %bb.fy ], [ %i.mu, %bb.fx ]
  %i.mw = load ptr, ptr %63, align 8              ; 2 uses
  %.not.i.i.i634 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i634, label %_ZN17QArrayDataPointerIDsED2Ev.exit641, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i635

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i635:   ; preds = %bb.fz
  %i.mx = atomicrmw add ptr %i.mw, i32 -1 acq_rel, align 4
  %.not.i.i636 = icmp eq i32 %i.mx, 1
  br i1 %.not.i.i636, label %bb.ga, label %_ZN17QArrayDataPointerIDsED2Ev.exit641

bb.ga:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i635
  %i.my = load ptr, ptr %63, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.my, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit641

_ZN17QArrayDataPointerIDsED2Ev.exit641:           ; preds = %bb.ga, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i635, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #28
  br label %bb.gr

bb.gb:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit617, %_ZN17QArrayDataPointerI6QColorED2Ev.exit.i621, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #28
  store ptr null, ptr %64, align 8
  store ptr @.str.22, ptr %i.gm, align 8
  store i64 7, ptr %i.gn, align 8
  %i.mz = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %bb.gc unwind label %bb.gi

bb.gc:                                            ; preds = %bb.gb
  %i.na = load ptr, ptr %64, align 8              ; 2 uses
  %.not.i.i.i642 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i642, label %_ZN17QArrayDataPointerIDsED2Ev.exit649, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i643

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i643:   ; preds = %bb.gc
  %i.nb = atomicrmw add ptr %i.na, i32 -1 acq_rel, align 4
  %.not.i.i644 = icmp eq i32 %i.nb, 1
  br i1 %.not.i.i644, label %bb.gd, label %_ZN17QArrayDataPointerIDsED2Ev.exit649

bb.gd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i643
  %i.nc = load ptr, ptr %64, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.nc, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit649

_ZN17QArrayDataPointerIDsED2Ev.exit649:           ; preds = %bb.gd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i643, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  br i1 %i.mz, label %bb.ge, label %bb.go

bb.ge:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit649
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #28
  store ptr null, ptr %66, align 8
  store ptr @.str.22, ptr %i.go, align 8
  store i64 7, ptr %i.gp, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %65, ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %66)
          to label %bb.gf unwind label %bb.gk

bb.gf:                                            ; preds = %bb.ge
  %i.nd = invoke noundef i32 @_ZNK10QJsonValue5toIntEi(ptr noundef nonnull align 8 dereferenceable_or_null(24) %65, i32 noundef 0)
          to label %bb.gg unwind label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  %i.ne = getelementptr inbounds nuw i8, ptr %i.hz, i64 44
  store i32 %i.nd, ptr %i.ne, align 4
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %65) #28
  %i.nf = load ptr, ptr %66, align 8              ; 2 uses
  %.not.i.i.i650 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i650, label %_ZN17QArrayDataPointerIDsED2Ev.exit657, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i651

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i651:   ; preds = %bb.gg
  %i.ng = atomicrmw add ptr %i.nf, i32 -1 acq_rel, align 4
  %.not.i.i652 = icmp eq i32 %i.ng, 1
  br i1 %.not.i.i652, label %bb.gh, label %_ZN17QArrayDataPointerIDsED2Ev.exit657

bb.gh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i651
  %i.nh = load ptr, ptr %66, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.nh, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit657

_ZN17QArrayDataPointerIDsED2Ev.exit657:           ; preds = %bb.gh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i651, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  br label %bb.go

bb.gi:                                            ; preds = %bb.gb
  %i.ni = landingpad { ptr, i32 }
          cleanup
  %i.nj = load ptr, ptr %64, align 8              ; 2 uses
  %.not.i.i.i658 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i658, label %_ZN17QArrayDataPointerIDsED2Ev.exit665, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i659

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i659:   ; preds = %bb.gi
  %i.nk = atomicrmw add ptr %i.nj, i32 -1 acq_rel, align 4
  %.not.i.i660 = icmp eq i32 %i.nk, 1
  br i1 %.not.i.i660, label %bb.gj, label %_ZN17QArrayDataPointerIDsED2Ev.exit665

bb.gj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i659
  %i.nl = load ptr, ptr %64, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.nl, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit665

_ZN17QArrayDataPointerIDsED2Ev.exit665:           ; preds = %bb.gj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i659, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #28
  br label %bb.gr

bb.gk:                                            ; preds = %bb.ge
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gf
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %65) #28
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.pn213 = phi { ptr, i32 } [ %i.nn, %bb.gl ], [ %i.nm, %bb.gk ]
  %i.no = load ptr, ptr %66, align 8              ; 2 uses
  %.not.i.i.i666 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i666, label %_ZN17QArrayDataPointerIDsED2Ev.exit673, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i667

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i667:   ; preds = %bb.gm
  %i.np = atomicrmw add ptr %i.no, i32 -1 acq_rel, align 4
  %.not.i.i668 = icmp eq i32 %i.np, 1
  br i1 %.not.i.i668, label %bb.gn, label %_ZN17QArrayDataPointerIDsED2Ev.exit673

bb.gn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i667
  %i.nq = load ptr, ptr %66, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.nq, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit673

_ZN17QArrayDataPointerIDsED2Ev.exit673:           ; preds = %bb.gn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i667, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #28
  br label %bb.gr

bb.go:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit657, %_ZN17QArrayDataPointerIDsED2Ev.exit649
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %43) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  br label %bb.gp

bb.gp:                                            ; preds = %_ZN7QStringD2Ev.exit483, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %_ZN7QStringD2Ev.exit471
  %i.nr = add i64 %.sroa.9.0, 2
  br label %bb.cx, !llvm.loop !60

bb.gr:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit633, %_ZN17QArrayDataPointerIDsED2Ev.exit641, %_ZN17QArrayDataPointerIDsED2Ev.exit673, %_ZN17QArrayDataPointerIDsED2Ev.exit665, %bb.fh, %_ZN17QArrayDataPointerIDsED2Ev.exit523, %bb.ed
  %.pn215.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn215.pn.pn.pn.pn.pn, %bb.fh ], [ %.pn213, %_ZN17QArrayDataPointerIDsED2Ev.exit673 ], [ %i.ni, %_ZN17QArrayDataPointerIDsED2Ev.exit665 ], [ %i.iq, %bb.ed ], [ %i.ir, %_ZN17QArrayDataPointerIDsED2Ev.exit523 ], [ %.pn200, %_ZN17QArrayDataPointerIDsED2Ev.exit633 ], [ %.pn202, %_ZN17QArrayDataPointerIDsED2Ev.exit641 ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %43) #28
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.ec
  %.pn215.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn215.pn.pn.pn.pn.pn.pn, %bb.gr ], [ %i.ip, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %_ZN7QStringD2Ev.exit491
  %.pn215.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn215.pn.pn.pn.pn.pn.pn.pn, %bb.gs ], [ %.pn197.pn, %_ZN7QStringD2Ev.exit491 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.ka

bb.gu:                                            ; preds = %bb.cz
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %67, ptr noundef nonnull align 8 dereferenceable_or_null(24) %68)
          to label %bb.gv unwind label %bb.hc

bb.gv:                                            ; preds = %bb.gu
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %68) #28
  %i.ns = load ptr, ptr %69, align 8              ; 2 uses
  %.not.i.i.i674 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i674, label %bb.gx, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i675

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i675:   ; preds = %bb.gv
  %i.nt = atomicrmw add ptr %i.ns, i32 -1 acq_rel, align 4
  %.not.i.i676 = icmp eq i32 %i.nt, 1
  br i1 %.not.i.i676, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i675
  %i.nu = load ptr, ptr %69, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.nu, i64 noundef 2, i64 noundef 8) #28
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i675, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  %i.nv = getelementptr inbounds nuw i8, ptr %71, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nx = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %77, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.oi = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %83, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %85, i64 16
  br label %bb.gy

bb.gy:                                            ; preds = %bb.ju, %bb.gx
  %.sroa.7.0 = phi i64 [ 1, %bb.gx ], [ %i.sp, %bb.ju ] ; 4 uses
  %i.oo = invoke noundef i64 @_ZNK11QJsonObject4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %67)
          to label %bb.gz unwind label %bb.hf

bb.gz:                                            ; preds = %bb.gy
  %i.op = shl i64 %i.oo, 1
  %.unshifted.i.i688 = xor i64 %i.op, %.sroa.7.0
  %i.oq = icmp ugt i64 %.unshifted.i.i688, 1
  br i1 %i.oq, label %bb.hg, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %67) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #28
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.kc

bb.hb:                                            ; preds = %bb.cz
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hc:                                            ; preds = %bb.gu
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %68) #28
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.pn179 = phi { ptr, i32 } [ %i.os, %bb.hc ], [ %i.or, %bb.hb ]
  %i.ot = load ptr, ptr %69, align 8              ; 2 uses
  %.not.i.i.i690 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i690, label %_ZN17QArrayDataPointerIDsED2Ev.exit697, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i691

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i691:   ; preds = %bb.hd
  %i.ou = atomicrmw add ptr %i.ot, i32 -1 acq_rel, align 4
  %.not.i.i692 = icmp eq i32 %i.ou, 1
  br i1 %.not.i.i692, label %bb.he, label %_ZN17QArrayDataPointerIDsED2Ev.exit697

bb.he:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i691
  %i.ov = load ptr, ptr %69, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ov, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit697

_ZN17QArrayDataPointerIDsED2Ev.exit697:           ; preds = %bb.he, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i691, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #28
  br label %bb.jz

bb.hf:                                            ; preds = %bb.gy
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.hg:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #28
  invoke void @_ZN18QJsonValueConstRef9objectKeyES_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %70, ptr nonnull %67, i64 %.sroa.7.0)
          to label %_ZNK11QJsonObject14const_iterator3keyEv.exit702 unwind label %bb.hl

_ZNK11QJsonObject14const_iterator3keyEv.exit702:  ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, i64 12, ptr @.str.24)
          to label %bb.hh unwind label %bb.hm

bb.hh:                                            ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit702
  %i.ox = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.ox, ptr %71, align 16
  %i.oy = load i64, ptr %i.nw, align 16
  store i64 %i.oy, ptr %i.nv, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.oz = invoke noundef i32 @_ZN16InfoBannerWidget19validTypeFromStringERK7QStringS2_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %71, i1 noundef zeroext %2)
          to label %bb.hi unwind label %bb.hn     ; 2 uses

bb.hi:                                            ; preds = %bb.hh
  %i.pa = load ptr, ptr %71, align 16             ; 2 uses
  %.not.i.i.i705 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i705, label %_ZN7QStringD2Ev.exit708, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i706

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i706:   ; preds = %bb.hi
  %i.pb = atomicrmw add ptr %i.pa, i32 -1 acq_rel, align 4
  %.not.i.i707 = icmp eq i32 %i.pb, 1
  br i1 %.not.i.i707, label %bb.hj, label %_ZN7QStringD2Ev.exit708

bb.hj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i706
  %i.pc = load ptr, ptr %71, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.pc, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit708

_ZN7QStringD2Ev.exit708:                          ; preds = %bb.hi, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i706, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  %i.pd = load ptr, ptr %70, align 8              ; 2 uses
  %.not.i.i.i709 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i709, label %_ZN7QStringD2Ev.exit712, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i710

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i710:   ; preds = %_ZN7QStringD2Ev.exit708
  %i.pe = atomicrmw add ptr %i.pd, i32 -1 acq_rel, align 4
  %.not.i.i711 = icmp eq i32 %i.pe, 1
  br i1 %.not.i.i711, label %bb.hk, label %_ZN7QStringD2Ev.exit712

bb.hk:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i710
  %i.pf = load ptr, ptr %70, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.pf, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit712

_ZN7QStringD2Ev.exit712:                          ; preds = %_ZN7QStringD2Ev.exit708, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i710, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #28
  store i32 %i.oz, ptr %i.d, align 4
  %i.pg = icmp slt i32 %i.oz, 0
  br i1 %i.pg, label %bb.ju, label %bb.hq

bb.hl:                                            ; preds = %bb.hg
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit720

bb.hm:                                            ; preds = %_ZNK11QJsonObject14const_iterator3keyEv.exit702
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit716

bb.hn:                                            ; preds = %bb.hh
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.pk = load ptr, ptr %71, align 16             ; 2 uses
  %.not.i.i.i713 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i713, label %_ZN7QStringD2Ev.exit716, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i714

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i714:   ; preds = %bb.hn
  %i.pl = atomicrmw add ptr %i.pk, i32 -1 acq_rel, align 4
  %.not.i.i715 = icmp eq i32 %i.pl, 1
  br i1 %.not.i.i715, label %bb.ho, label %_ZN7QStringD2Ev.exit716

bb.ho:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i714
  %i.pm = load ptr, ptr %71, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.pm, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit716

_ZN7QStringD2Ev.exit716:                          ; preds = %bb.ho, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i714, %bb.hn, %bb.hm
  %.pn181 = phi { ptr, i32 } [ %i.pi, %bb.hm ], [ %i.pj, %bb.hn ], [ %i.pj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i714 ], [ %i.pj, %bb.ho ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #28
  %i.pn = load ptr, ptr %70, align 8              ; 2 uses
  %.not.i.i.i717 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i717, label %_ZN7QStringD2Ev.exit720, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i718

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i718:   ; preds = %_ZN7QStringD2Ev.exit716
  %i.po = atomicrmw add ptr %i.pn, i32 -1 acq_rel, align 4
  %.not.i.i719 = icmp eq i32 %i.po, 1
  br i1 %.not.i.i719, label %bb.hp, label %_ZN7QStringD2Ev.exit720

bb.hp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i718
  %i.pp = load ptr, ptr %70, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.pp, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit720

_ZN7QStringD2Ev.exit720:                          ; preds = %bb.hp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i718, %_ZN7QStringD2Ev.exit716, %bb.hl
  %.pn181.pn = phi { ptr, i32 } [ %i.ph, %bb.hl ], [ %.pn181, %_ZN7QStringD2Ev.exit716 ], [ %.pn181, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i718 ], [ %.pn181, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #28
  br label %bb.jx

bb.hq:                                            ; preds = %_ZN7QStringD2Ev.exit712
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #28
  store ptr %67, ptr %73, align 8
  store i64 %.sroa.7.0, ptr %i.nx, align 8
  invoke void @_ZNK18QJsonValueConstRef8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %72, ptr noundef nonnull align 8 dereferenceable_or_null(16) %73)
          to label %bb.hr unwind label %bb.hz

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  %i.pq = invoke noundef align 8 dereferenceable(72) ptr @_ZN4QMapI15BannerSlideType15SlideTypeConfigEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.hs unwind label %bb.ia     ; 4 uses

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #28
  store ptr null, ptr %74, align 8
  store ptr @.str.25, ptr %i.ny, align 8
  store i64 10, ptr %i.nz, align 8
  %i.pr = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %72, ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %bb.ht unwind label %bb.ib

bb.ht:                                            ; preds = %bb.hs
  %i.ps = load ptr, ptr %74, align 8              ; 2 uses
  %.not.i.i.i726 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i726, label %_ZN17QArrayDataPointerIDsED2Ev.exit733, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i727

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i727:   ; preds = %bb.ht
  %i.pt = atomicrmw add ptr %i.ps, i32 -1 acq_rel, align 4
  %.not.i.i728 = icmp eq i32 %i.pt, 1
  br i1 %.not.i.i728, label %bb.hu, label %_ZN17QArrayDataPointerIDsED2Ev.exit733

bb.hu:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i727
  %i.pu = load ptr, ptr %74, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.pu, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit733

_ZN17QArrayDataPointerIDsED2Ev.exit733:           ; preds = %bb.hu, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i727, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28
  br i1 %i.pr, label %bb.hv, label %bb.ih

end_hunk_1
begin_hunk_2_@_ZN16InfoBannerWidget22loadSlidesFromResourceERK7QStringbR4QMapI15BannerSlideType15SlideTypeConfigERS3_IS4_5QListI11BannerSlideEE:bb.a
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %81) #28
  %i.rk = load ptr, ptr %82, align 8              ; 2 uses
  %.not.i.i.i798 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i798, label %_ZN17QArrayDataPointerIDsED2Ev.exit805, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i799

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i799:   ; preds = %bb.iz
  %i.rl = atomicrmw add ptr %i.rk, i32 -1 acq_rel, align 4
  %.not.i.i800 = icmp eq i32 %i.rl, 1
  br i1 %.not.i.i800, label %bb.ja, label %_ZN17QArrayDataPointerIDsED2Ev.exit805

bb.ja:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i799
  %i.rm = load ptr, ptr %82, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rm, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit805

_ZN17QArrayDataPointerIDsED2Ev.exit805:           ; preds = %bb.ja, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i799, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  br label %bb.jh

bb.jb:                                            ; preds = %bb.iu
  %i.rn = landingpad { ptr, i32 }
          cleanup
  %i.ro = load ptr, ptr %80, align 8              ; 2 uses
  %.not.i.i.i806 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i806, label %_ZN17QArrayDataPointerIDsED2Ev.exit813, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i807

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i807:   ; preds = %bb.jb
  %i.rp = atomicrmw add ptr %i.ro, i32 -1 acq_rel, align 4
  %.not.i.i808 = icmp eq i32 %i.rp, 1
  br i1 %.not.i.i808, label %bb.jc, label %_ZN17QArrayDataPointerIDsED2Ev.exit813

bb.jc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i807
  %i.rq = load ptr, ptr %80, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rq, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit813

_ZN17QArrayDataPointerIDsED2Ev.exit813:           ; preds = %bb.jc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i807, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  br label %bb.jv

bb.jd:                                            ; preds = %bb.ix
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.jf

bb.je:                                            ; preds = %bb.iy
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %81) #28
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %.pn188 = phi { ptr, i32 } [ %i.rs, %bb.je ], [ %i.rr, %bb.jd ]
  %i.rt = load ptr, ptr %82, align 8              ; 2 uses
  %.not.i.i.i814 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i814, label %_ZN17QArrayDataPointerIDsED2Ev.exit821, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i815

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i815:   ; preds = %bb.jf
  %i.ru = atomicrmw add ptr %i.rt, i32 -1 acq_rel, align 4
  %.not.i.i816 = icmp eq i32 %i.ru, 1
  br i1 %.not.i.i816, label %bb.jg, label %_ZN17QArrayDataPointerIDsED2Ev.exit821

bb.jg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i815
  %i.rv = load ptr, ptr %82, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rv, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit821

_ZN17QArrayDataPointerIDsED2Ev.exit821:           ; preds = %bb.jg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i815, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  br label %bb.jv

bb.jh:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit805, %_ZN17QArrayDataPointerIDsED2Ev.exit797
  br i1 %2, label %bb.ji, label %.critedge291.thread

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #28
  store ptr null, ptr %83, align 8
  store ptr @.str.28, ptr %i.ok, align 8
  store i64 6, ptr %i.ol, align 8
  %i.rw = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %72, ptr noundef nonnull align 8 dereferenceable(24) %83)
          to label %.critedge unwind label %bb.jo

.critedge:                                        ; preds = %bb.ji
  %i.rx = load ptr, ptr %83, align 8              ; 2 uses
  %.not.i.i.i822 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i822, label %.critedge291, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i823

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i823:   ; preds = %.critedge
  %i.ry = atomicrmw add ptr %i.rx, i32 -1 acq_rel, align 4
  %.not.i.i824 = icmp eq i32 %i.ry, 1
  br i1 %.not.i.i824, label %bb.jj, label %.critedge291

bb.jj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i823
  %i.rz = load ptr, ptr %83, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.rz, i64 noundef 2, i64 noundef 8) #28
  br label %.critedge291

.critedge291:                                     ; preds = %.critedge, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i823, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  br i1 %i.rw, label %bb.jk, label %.critedge291.thread

bb.jk:                                            ; preds = %.critedge291
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #28
  store ptr null, ptr %85, align 8
  store ptr @.str.28, ptr %i.om, align 8
  store i64 6, ptr %i.on, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %84, ptr noundef nonnull align 8 dereferenceable_or_null(8) %72, ptr noundef nonnull align 8 dereferenceable(24) %85)
          to label %bb.jl unwind label %bb.jq

bb.jl:                                            ; preds = %bb.jk
  %i.sa = invoke noundef zeroext i1 @_ZNK10QJsonValue6toBoolEb(ptr noundef nonnull align 8 dereferenceable_or_null(24) %84, i1 noundef zeroext false)
          to label %bb.jm unwind label %bb.jr

bb.jm:                                            ; preds = %bb.jl
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pq, i64 9
  %i.sc = zext i1 %i.sa to i8
  store i8 %i.sc, ptr %i.sb, align 1
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %84) #28
  %i.sd = load ptr, ptr %85, align 8              ; 2 uses
  %.not.i.i.i830 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i.i830, label %_ZN17QArrayDataPointerIDsED2Ev.exit837, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i831

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i831:   ; preds = %bb.jm
  %i.se = atomicrmw add ptr %i.sd, i32 -1 acq_rel, align 4
  %.not.i.i832 = icmp eq i32 %i.se, 1
  br i1 %.not.i.i832, label %bb.jn, label %_ZN17QArrayDataPointerIDsED2Ev.exit837

bb.jn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i831
  %i.sf = load ptr, ptr %85, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.sf, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit837

_ZN17QArrayDataPointerIDsED2Ev.exit837:           ; preds = %bb.jn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i831, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28
  br label %.critedge291.thread

bb.jo:                                            ; preds = %bb.ji
  %i.sg = landingpad { ptr, i32 }
          cleanup
  %i.sh = load ptr, ptr %83, align 8              ; 2 uses
  %.not.i.i.i838 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i838, label %_ZN17QArrayDataPointerIDsED2Ev.exit845, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i839

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i839:   ; preds = %bb.jo
  %i.si = atomicrmw add ptr %i.sh, i32 -1 acq_rel, align 4
  %.not.i.i840 = icmp eq i32 %i.si, 1
  br i1 %.not.i.i840, label %bb.jp, label %_ZN17QArrayDataPointerIDsED2Ev.exit845

bb.jp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i839
  %i.sj = load ptr, ptr %83, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.sj, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit845

_ZN17QArrayDataPointerIDsED2Ev.exit845:           ; preds = %bb.jp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i839, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  br label %bb.jv

bb.jq:                                            ; preds = %bb.jk
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jr:                                            ; preds = %bb.jl
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %84) #28
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.pn190 = phi { ptr, i32 } [ %i.sl, %bb.jr ], [ %i.sk, %bb.jq ]
  %i.sm = load ptr, ptr %85, align 8              ; 2 uses
  %.not.i.i.i846 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i846, label %_ZN17QArrayDataPointerIDsED2Ev.exit853, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i847

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i847:   ; preds = %bb.js
  %i.sn = atomicrmw add ptr %i.sm, i32 -1 acq_rel, align 4
  %.not.i.i848 = icmp eq i32 %i.sn, 1
  br i1 %.not.i.i848, label %bb.jt, label %_ZN17QArrayDataPointerIDsED2Ev.exit853

bb.jt:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i847
  %i.so = load ptr, ptr %85, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.so, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit853

_ZN17QArrayDataPointerIDsED2Ev.exit853:           ; preds = %bb.jt, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i847, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #28
  br label %bb.jv

.critedge291.thread:                              ; preds = %bb.jh, %_ZN17QArrayDataPointerIDsED2Ev.exit837, %.critedge291
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %72) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  br label %bb.ju

bb.ju:                                            ; preds = %_ZN7QStringD2Ev.exit712, %.critedge291.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.sp = add i64 %.sroa.7.0, 2
  br label %bb.gy, !llvm.loop !61

bb.jv:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit845, %_ZN17QArrayDataPointerIDsED2Ev.exit853, %_ZN17QArrayDataPointerIDsED2Ev.exit821, %_ZN17QArrayDataPointerIDsED2Ev.exit813, %_ZN17QArrayDataPointerIDsED2Ev.exit789, %_ZN17QArrayDataPointerIDsED2Ev.exit781, %_ZN17QArrayDataPointerIDsED2Ev.exit757, %_ZN17QArrayDataPointerIDsED2Ev.exit749, %bb.ia
  %.pn190.pn = phi { ptr, i32 } [ %.pn190, %_ZN17QArrayDataPointerIDsED2Ev.exit853 ], [ %i.sg, %_ZN17QArrayDataPointerIDsED2Ev.exit845 ], [ %i.qb, %bb.ia ], [ %.pn188, %_ZN17QArrayDataPointerIDsED2Ev.exit821 ], [ %i.rn, %_ZN17QArrayDataPointerIDsED2Ev.exit813 ], [ %.pn186, %_ZN17QArrayDataPointerIDsED2Ev.exit789 ], [ %i.qu, %_ZN17QArrayDataPointerIDsED2Ev.exit781 ], [ %.pn184, %_ZN17QArrayDataPointerIDsED2Ev.exit757 ], [ %i.qc, %_ZN17QArrayDataPointerIDsED2Ev.exit749 ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %72) #28
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.hz
  %.pn190.pn.pn = phi { ptr, i32 } [ %.pn190.pn, %bb.jv ], [ %i.qa, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #28
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %_ZN7QStringD2Ev.exit720
  %.pn190.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn, %bb.jw ], [ %.pn181.pn, %_ZN7QStringD2Ev.exit720 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.hf
  %.pn190.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn, %bb.jx ], [ %i.ow, %bb.hf ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %67) #28
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %_ZN17QArrayDataPointerIDsED2Ev.exit697
  %.pn190.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn190.pn.pn.pn.pn, %bb.jy ], [ %.pn179, %_ZN17QArrayDataPointerIDsED2Ev.exit697 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #28
  br label %bb.ka

bb.ka:                                            ; preds = %bb.da, %bb.de, %bb.gt, %bb.jz, %bb.cv, %_ZN17QArrayDataPointerIDsED2Ev.exit441
  %.pn215.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %_ZN17QArrayDataPointerIDsED2Ev.exit441 ], [ %.pn190.pn.pn.pn.pn.pn, %bb.jz ], [ %.pn175.pn.pn, %bb.cv ], [ %.pn215.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gt ], [ %i.hf, %bb.de ], [ %i.gv, %bb.da ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %27) #28
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %_ZN17QArrayDataPointerIDsED2Ev.exit433
  %.pn215.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn215.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ka ], [ %.pn169, %_ZN17QArrayDataPointerIDsED2Ev.exit433 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %_ZN7QStringD2Ev.exit1300

bb.kc:                                            ; preds = %bb.ha, %bb.bb
  %i.sq = invoke ptr @application_flavor_name_lower()
          to label %bb.kd unwind label %bb.kl     ; 3 uses

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %.not.i.i854 = icmp eq ptr %i.sq, null
  br i1 %.not.i.i854, label %_ZN7QStringD2Ev.exit.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.kd
  %i.sr = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sq) #28
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %.split.i.i, %bb.kd
  %.sink5.i.i = phi i64 [ %i.sr, %.split.i.i ], [ 0, %bb.kd ]
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 %.sink5.i.i, ptr %i.sq)
          to label %bb.ke unwind label %bb.kl

bb.ke:                                            ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ss = load ptr, ptr %6, align 8               ; 6 uses
  %i.st = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.sw = load i64, ptr %i.sv, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28
  store ptr null, ptr %88, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %88, i64 8
  store ptr @.str.29, ptr %i.sx, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %88, i64 16
  store i64 6, ptr %i.sy, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %87, ptr noundef nonnull align 8 dereferenceable_or_null(8) %19, ptr noundef nonnull align 8 dereferenceable(24) %88)
          to label %bb.kf unwind label %bb.km

bb.kf:                                            ; preds = %bb.ke
  invoke void @_ZNK10QJsonValue7toArrayEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonArray) align 8 %86, ptr noundef nonnull align 8 dereferenceable_or_null(24) %87)
          to label %bb.kg unwind label %bb.kn

bb.kg:                                            ; preds = %bb.kf
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %87) #28
  %i.sz = load ptr, ptr %88, align 8              ; 2 uses
  %.not.i.i.i857 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i857, label %_ZN17QArrayDataPointerIDsED2Ev.exit864, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i858

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i858:   ; preds = %bb.kg
  %i.ta = atomicrmw add ptr %i.sz, i32 -1 acq_rel, align 4
  %.not.i.i859 = icmp eq i32 %i.ta, 1
  br i1 %.not.i.i859, label %bb.kh, label %_ZN17QArrayDataPointerIDsED2Ev.exit864

bb.kh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i858
  %i.tb = load ptr, ptr %88, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.tb, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit864

_ZN17QArrayDataPointerIDsED2Ev.exit864:           ; preds = %bb.kh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i858, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  %i.tc = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %86, i64 noundef 0)
          to label %bb.ki unwind label %bb.kq     ; 0 uses

bb.ki:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit864
  %i.td = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %86, i64 noundef 0)
          to label %.noexc871 unwind label %bb.kq ; 0 uses

.noexc871:                                        ; preds = %bb.ki
  %i.te = invoke noundef i64 @_ZNK10QJsonArray4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %86)
          to label %bb.kj unwind label %bb.kq

bb.kj:                                            ; preds = %.noexc871
  %i.tf = shl i64 %i.te, 1                        ; 2 uses
  %.not1641 = icmp eq i64 %i.tf, 0
  br i1 %.not1641, label %._crit_edge, label %.lr.ph1638

.lr.ph1638:                                       ; preds = %bb.kj
  %i.tg = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.ti = getelementptr inbounds nuw i8, ptr %94, i64 16
  %i.tj = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.tl = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %98, i64 16
  %i.tn = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %101, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %104, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %96, i64 16
  %i.ts = getelementptr inbounds nuw i8, ptr %102, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.tu = getelementptr inbounds nuw i8, ptr %107, i64 8 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %107, i64 208 ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %107, i64 232 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %107, i64 240 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %109, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %109, i64 16
  %i.ua = getelementptr inbounds nuw i8, ptr %107, i64 24 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.ud = getelementptr inbounds nuw i8, ptr %111, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %107, i64 32 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %107, i64 48 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %110, i64 16 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.ui = getelementptr inbounds nuw i8, ptr %113, i64 16
  %i.uj = getelementptr inbounds nuw i8, ptr %107, i64 56 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %107, i64 72 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %115, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %115, i64 16
  %i.uo = getelementptr inbounds nuw i8, ptr %107, i64 80 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %107, i64 96 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %114, i64 16 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %117, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %117, i64 16
  %i.ut = getelementptr inbounds nuw i8, ptr %107, i64 104 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %107, i64 120 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %119, i64 8
  %i.ux = getelementptr inbounds nuw i8, ptr %119, i64 16
  %i.uy = getelementptr inbounds nuw i8, ptr %107, i64 128 ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %107, i64 144 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %118, i64 16 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.vc = getelementptr inbounds nuw i8, ptr %121, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %107, i64 152 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %107, i64 168 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %120, i64 16 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.vi = getelementptr inbounds nuw i8, ptr %107, i64 176 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %107, i64 192 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %122, i64 16 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.vm = getelementptr inbounds nuw i8, ptr %126, i64 16
  %i.vn = getelementptr inbounds nuw i8, ptr %107, i64 200 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %128, i64 16
  %i.vq = getelementptr inbounds nuw i8, ptr %107, i64 204 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.vs = getelementptr inbounds nuw i8, ptr %135, i64 16
  %i.vt = getelementptr inbounds nuw i8, ptr %133, i64 16
  %i.vu = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %138, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %138, i64 16
  %i.vx = getelementptr inbounds nuw i8, ptr %136, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %136, i64 8
  %i.vz = getelementptr inbounds nuw i8, ptr %141, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %141, i64 16
  %i.wb = getelementptr inbounds nuw i8, ptr %107, i64 216
  %i.wc = getelementptr inbounds nuw i8, ptr %107, i64 224 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %129, i64 4
  %i.wf = getelementptr inbounds nuw i8, ptr %129, i64 24
  %i.wg = getelementptr inbounds nuw i8, ptr %130, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %105, i64 4
  %i.wi = getelementptr inbounds nuw i8, ptr %105, i64 24
  %i.wj = getelementptr inbounds nuw i8, ptr %106, i64 8
  br label %bb.kr

._crit_edge:                                      ; preds = %_ZN7QStringD2Ev.exit1280, %bb.kj
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %86) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  %.not.i.i.i876 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i876, label %_ZN7QStringD2Ev.exit879, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877:   ; preds = %._crit_edge
  %i.wk = atomicrmw add ptr %i.ss, i32 -1 acq_rel, align 4
  %.not.i.i878 = icmp eq i32 %i.wk, 1
  br i1 %.not.i.i878, label %bb.kk, label %_ZN7QStringD2Ev.exit879

bb.kk:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ss, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit879

_ZN7QStringD2Ev.exit879:                          ; preds = %._crit_edge, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i877, %bb.kk
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.rn

bb.kl:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit365, %_ZN7QStringD2Ev.exit.i, %bb.kc
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit1300

bb.km:                                            ; preds = %bb.ke
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ko

bb.kn:                                            ; preds = %bb.kf
  %i.wn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %87) #28
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km
  %.pn228 = phi { ptr, i32 } [ %i.wn, %bb.kn ], [ %i.wm, %bb.km ]
  %i.wo = load ptr, ptr %88, align 8              ; 2 uses
  %.not.i.i.i880 = icmp eq ptr %i.wo, null
  br i1 %.not.i.i.i880, label %_ZN17QArrayDataPointerIDsED2Ev.exit887, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i881

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i881:   ; preds = %bb.ko
  %i.wp = atomicrmw add ptr %i.wo, i32 -1 acq_rel, align 4
  %.not.i.i882 = icmp eq i32 %i.wp, 1
  br i1 %.not.i.i882, label %bb.kp, label %_ZN17QArrayDataPointerIDsED2Ev.exit887

bb.kp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i881
  %i.wq = load ptr, ptr %88, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.wq, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit887

_ZN17QArrayDataPointerIDsED2Ev.exit887:           ; preds = %bb.kp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i881, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #28
  br label %bb.rq

bb.kq:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit864, %.noexc871, %bb.ki
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %bb.rm

bb.kr:                                            ; preds = %.lr.ph1638, %_ZN7QStringD2Ev.exit1280
  %.sroa.6.01637 = phi i64 [ 0, %.lr.ph1638 ], [ %i.aid, %_ZN7QStringD2Ev.exit1280 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #28
  store ptr %86, ptr %90, align 8
  store i64 %.sroa.6.01637, ptr %i.tg, align 8
  invoke void @_ZNK13QJsonValueRef7toValueEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %89, ptr noundef nonnull align 8 dereferenceable_or_null(16) %90)
          to label %_ZNK13QJsonValueRefcv10QJsonValueEv.exit894 unwind label %bb.kz

_ZNK13QJsonValueRefcv10QJsonValueEv.exit894:      ; preds = %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #28
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %91, ptr noundef nonnull align 8 dereferenceable_or_null(24) %89)
          to label %bb.ks unwind label %bb.la

bb.ks:                                            ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit894
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #28
  store ptr null, ptr %94, align 8
  store ptr @.str.30, ptr %i.th, align 8
  store i64 4, ptr %i.ti, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %93, ptr noundef nonnull align 8 dereferenceable_or_null(8) %91, ptr noundef nonnull align 8 dereferenceable(24) %94)
          to label %bb.kt unwind label %bb.lb

bb.kt:                                            ; preds = %bb.ks
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %92, ptr noundef nonnull align 8 dereferenceable_or_null(24) %93)
          to label %bb.ku unwind label %bb.lc

bb.ku:                                            ; preds = %bb.kt
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %93) #28
  %i.ws = load ptr, ptr %94, align 8              ; 2 uses
  %.not.i.i.i895 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i895, label %_ZN17QArrayDataPointerIDsED2Ev.exit902, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i896

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i896:   ; preds = %bb.ku
  %i.wt = atomicrmw add ptr %i.ws, i32 -1 acq_rel, align 4
  %.not.i.i897 = icmp eq i32 %i.wt, 1
  br i1 %.not.i.i897, label %bb.kv, label %_ZN17QArrayDataPointerIDsED2Ev.exit902

bb.kv:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i896
  %i.wu = load ptr, ptr %94, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.wu, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit902

_ZN17QArrayDataPointerIDsED2Ev.exit902:           ; preds = %bb.kv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i896, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 6, ptr @.str.31)
          to label %bb.kw unwind label %bb.lf

bb.kw:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit902
  %i.wv = load <2 x ptr>, ptr %5, align 16
  store <2 x ptr> %i.wv, ptr %95, align 16
  %i.ww = load i64, ptr %i.tk, align 16
  store i64 %i.ww, ptr %i.tj, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.wx = invoke noundef i32 @_ZN16InfoBannerWidget19validTypeFromStringERK7QStringS2_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %92, ptr noundef align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %95, i1 noundef zeroext %2)
          to label %bb.kx unwind label %bb.lg     ; 2 uses

bb.kx:                                            ; preds = %bb.kw
  %i.wy = load ptr, ptr %95, align 16             ; 2 uses
  %.not.i.i.i908 = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.i908, label %_ZN7QStringD2Ev.exit911, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i909

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i909:   ; preds = %bb.kx
  %i.wz = atomicrmw add ptr %i.wy, i32 -1 acq_rel, align 4
  %.not.i.i910 = icmp eq i32 %i.wz, 1
  br i1 %.not.i.i910, label %bb.ky, label %_ZN7QStringD2Ev.exit911

bb.ky:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i909
  %i.xa = load ptr, ptr %95, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xa, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit911

_ZN7QStringD2Ev.exit911:                          ; preds = %bb.kx, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i909, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #28
  store i32 %i.wx, ptr %i.e, align 4
  %i.xb = icmp slt i32 %i.wx, 0
  br i1 %i.xb, label %bb.rc, label %bb.li

bb.kz:                                            ; preds = %bb.kr
  %i.xc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #28
  br label %bb.rm

bb.la:                                            ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit894
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %bb.rl

bb.lb:                                            ; preds = %bb.ks
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.lc:                                            ; preds = %bb.kt
  %i.xf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %93) #28
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %.pn230 = phi { ptr, i32 } [ %i.xf, %bb.lc ], [ %i.xe, %bb.lb ]
  %i.xg = load ptr, ptr %94, align 8              ; 2 uses
  %.not.i.i.i912 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i.i912, label %_ZN17QArrayDataPointerIDsED2Ev.exit919, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i913

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i913:   ; preds = %bb.ld
  %i.xh = atomicrmw add ptr %i.xg, i32 -1 acq_rel, align 4
  %.not.i.i914 = icmp eq i32 %i.xh, 1
  br i1 %.not.i.i914, label %bb.le, label %_ZN17QArrayDataPointerIDsED2Ev.exit919

bb.le:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i913
  %i.xi = load ptr, ptr %94, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xi, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit919

_ZN17QArrayDataPointerIDsED2Ev.exit919:           ; preds = %bb.le, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i913, %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #28
  br label %_ZN7QStringD2Ev.exit1296

bb.lf:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit902
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit923

bb.lg:                                            ; preds = %bb.kw
  %i.xk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.xl = load ptr, ptr %95, align 16             ; 2 uses
  %.not.i.i.i920 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.i920, label %_ZN7QStringD2Ev.exit923, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i921

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i921:   ; preds = %bb.lg
  %i.xm = atomicrmw add ptr %i.xl, i32 -1 acq_rel, align 4
  %.not.i.i922 = icmp eq i32 %i.xm, 1
  br i1 %.not.i.i922, label %bb.lh, label %_ZN7QStringD2Ev.exit923

bb.lh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i921
  %i.xn = load ptr, ptr %95, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xn, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit923

_ZN7QStringD2Ev.exit923:                          ; preds = %bb.lh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i921, %bb.lg, %bb.lf
  %.pn232 = phi { ptr, i32 } [ %i.xj, %bb.lf ], [ %i.xk, %bb.lg ], [ %i.xk, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i921 ], [ %i.xk, %bb.lh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #28
  br label %bb.rj

bb.li:                                            ; preds = %_ZN7QStringD2Ev.exit911
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #28
  store ptr null, ptr %98, align 8
  store ptr @.str.32, ptr %i.tl, align 8
  store i64 5, ptr %i.tm, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %97, ptr noundef nonnull align 8 dereferenceable_or_null(8) %91, ptr noundef nonnull align 8 dereferenceable(24) %98)
          to label %bb.lj unwind label %bb.lw

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %96, ptr noundef nonnull align 8 dereferenceable_or_null(24) %97)
          to label %bb.lk unwind label %bb.lx

bb.lk:                                            ; preds = %bb.lj
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %97) #28
  %i.xo = load ptr, ptr %98, align 8              ; 2 uses
  %.not.i.i.i924 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i.i924, label %_ZN17QArrayDataPointerIDsED2Ev.exit931, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i925

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i925:   ; preds = %bb.lk
  %i.xp = atomicrmw add ptr %i.xo, i32 -1 acq_rel, align 4
  %.not.i.i926 = icmp eq i32 %i.xp, 1
  br i1 %.not.i.i926, label %bb.ll, label %_ZN17QArrayDataPointerIDsED2Ev.exit931

bb.ll:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i925
  %i.xq = load ptr, ptr %98, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.xq, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit931

_ZN17QArrayDataPointerIDsED2Ev.exit931:           ; preds = %bb.ll, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i925, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #28
  store ptr null, ptr %101, align 8
  store ptr @.str.33, ptr %i.tn, align 8
  store i64 11, ptr %i.to, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %100, ptr noundef nonnull align 8 dereferenceable_or_null(8) %91, ptr noundef nonnull align 8 dereferenceable(24) %101)
          to label %bb.lm unwind label %bb.ma

bb.lm:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit931
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %99, ptr noundef nonnull align 8 dereferenceable_or_null(24) %100)
          to label %bb.ln unwind label %bb.mb

bb.ln:                                            ; preds = %bb.lm
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %100) #28
end_hunk_2
begin_hunk_3_@_ZN16InfoBannerWidget22loadSlidesFromResourceERK7QStringbR4QMapI15BannerSlideType15SlideTypeConfigERS3_IS4_5QListI11BannerSlideEE:bb.a
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %139, ptr noundef nonnull align 8 dereferenceable_or_null(24) %140)
          to label %bb.qn unwind label %bb.qs

bb.qn:                                            ; preds = %bb.qm
  %i.agq = load <2 x ptr>, ptr %139, align 16
  %i.agr = load <2 x ptr>, ptr %i.tv, align 8
  %i.ags = load ptr, ptr %i.tv, align 8           ; 2 uses
  store <2 x ptr> %i.agq, ptr %i.tv, align 8
  store <2 x ptr> %i.agr, ptr %139, align 16
  %i.agt = load i64, ptr %i.wc, align 8
  %i.agu = load i64, ptr %i.wd, align 16
  store i64 %i.agu, ptr %i.wc, align 8
  store i64 %i.agt, ptr %i.wd, align 16
  %.not.i.i.i1242 = icmp eq ptr %i.ags, null
  br i1 %.not.i.i.i1242, label %_ZN7QStringD2Ev.exit1245, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1243

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1243:  ; preds = %bb.qn
  %i.agv = atomicrmw add ptr %i.ags, i32 -1 acq_rel, align 4
  %.not.i.i1244 = icmp eq i32 %i.agv, 1
  br i1 %.not.i.i1244, label %bb.qo, label %_ZN7QStringD2Ev.exit1245

bb.qo:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1243
  %i.agw = load ptr, ptr %139, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.agw, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1245

_ZN7QStringD2Ev.exit1245:                         ; preds = %bb.qn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1243, %bb.qo
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %140) #28
  %i.agx = load ptr, ptr %141, align 8            ; 2 uses
  %.not.i.i.i1246 = icmp eq ptr %i.agx, null
  br i1 %.not.i.i.i1246, label %_ZN17QArrayDataPointerIDsED2Ev.exit1253, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1247

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1247:  ; preds = %_ZN7QStringD2Ev.exit1245
  %i.agy = atomicrmw add ptr %i.agx, i32 -1 acq_rel, align 4
  %.not.i.i1248 = icmp eq i32 %i.agy, 1
  br i1 %.not.i.i1248, label %bb.qp, label %_ZN17QArrayDataPointerIDsED2Ev.exit1253

bb.qp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1247
  %i.agz = load ptr, ptr %141, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.agz, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit1253

_ZN17QArrayDataPointerIDsED2Ev.exit1253:          ; preds = %bb.qp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1247, %_ZN7QStringD2Ev.exit1245
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #28
  %i.aha = load i64, ptr %i.wc, align 8           ; 2 uses
  %i.ahb = icmp eq i64 %i.aha, 0
  br i1 %i.ahb, label %bb.qw, label %bb.qq

bb.qq:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit1253
  %i.ahc = icmp eq i64 %i.aha, %i.sw
  br i1 %i.ahc, label %_ZneRK7QStringS1_.exit, label %_ZN5QListI11BannerSlideE6appendERKS0_.exit

_ZneRK7QStringS1_.exit:                           ; preds = %bb.qq
  %i.ahd = load ptr, ptr %i.wb, align 8
  %i.ahe = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.sw, ptr %i.ahd, i64 %i.sw, ptr %i.su, i32 noundef 1) #30
  %.not1635.a = icmp eq i32 %i.ahe, 0
  br i1 %.not1635.a, label %bb.qw, label %_ZN5QListI11BannerSlideE6appendERKS0_.exit

bb.qr:                                            ; preds = %bb.ql
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.qt

bb.qs:                                            ; preds = %bb.qm
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %140) #28
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.qr
  %.pn257 = phi { ptr, i32 } [ %i.ahg, %bb.qs ], [ %i.ahf, %bb.qr ]
  %i.ahh = load ptr, ptr %141, align 8            ; 2 uses
  %.not.i.i.i1254 = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i.i1254, label %_ZN17QArrayDataPointerIDsED2Ev.exit1261, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1255

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1255:  ; preds = %bb.qt
  %i.ahi = atomicrmw add ptr %i.ahh, i32 -1 acq_rel, align 4
  %.not.i.i1256 = icmp eq i32 %i.ahi, 1
  br i1 %.not.i.i1256, label %bb.qu, label %_ZN17QArrayDataPointerIDsED2Ev.exit1261

bb.qu:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1255
  %i.ahj = load ptr, ptr %141, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ahj, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit1261

_ZN17QArrayDataPointerIDsED2Ev.exit1261:          ; preds = %bb.qu, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1255, %bb.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #28
  br label %bb.re

bb.qv:                                            ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.qx, %bb.pj, %bb.pi, %bb.qw
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

bb.qw:                                            ; preds = %_ZneRK7QStringS1_.exit, %_ZN17QArrayDataPointerIDsED2Ev.exit1253
  %i.ahl = invoke noundef align 8 dereferenceable(24) ptr @_ZN4QMapI15BannerSlideType5QListI11BannerSlideEEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.qx unwind label %bb.qv     ; 4 uses

bb.qx:                                            ; preds = %bb.qw
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  %i.ahn = load i64, ptr %i.ahm, align 8
  invoke void @_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.ahl, i64 noundef %i.ahn, ptr noundef nonnull align 8 dereferenceable(248) %107)
          to label %.noexc1263 unwind label %bb.qv

.noexc1263:                                       ; preds = %bb.qx
  %i.aho = load ptr, ptr %i.ahl, align 8          ; 2 uses
  %.not.i.i.i.i.i.i1262 = icmp eq ptr %i.aho, null
  br i1 %.not.i.i.i.i.i.i1262, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc1263
  %i.ahp = load atomic i32, ptr %i.aho monotonic, align 4
  %i.ahq = icmp sgt i32 %i.ahp, 1
  br i1 %i.ahq, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI11BannerSlideE6appendERKS0_.exit

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i, %.noexc1263
  invoke void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.ahl, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI11BannerSlideE6appendERKS0_.exit unwind label %bb.qv

_ZN5QListI11BannerSlideE6appendERKS0_.exit:       ; preds = %bb.qq, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZneRK7QStringS1_.exit, %bb.pe, %.critedge293, %_ZN10QByteArrayD2Ev.exit1103
  call void @_ZN11BannerSlideD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable_or_null(248) %107) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  br label %bb.qy

bb.qy:                                            ; preds = %_ZN5QListI11BannerSlideE6appendERKS0_.exit, %_ZN10QByteArrayD2Ev.exit955
  %i.ahr = load ptr, ptr %102, align 8            ; 2 uses
  %.not.i.i.i1265 = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i.i1265, label %_ZN7QStringD2Ev.exit1268, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1266

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1266:  ; preds = %bb.qy
  %i.ahs = atomicrmw add ptr %i.ahr, i32 -1 acq_rel, align 4
  %.not.i.i1267 = icmp eq i32 %i.ahs, 1
  br i1 %.not.i.i1267, label %bb.qz, label %_ZN7QStringD2Ev.exit1268

bb.qz:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1266
  %i.aht = load ptr, ptr %102, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aht, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1268

_ZN7QStringD2Ev.exit1268:                         ; preds = %bb.qy, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1266, %bb.qz
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  %i.ahu = load ptr, ptr %99, align 8             ; 2 uses
  %.not.i.i.i1269 = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i.i1269, label %_ZN7QStringD2Ev.exit1272, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1270

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1270:  ; preds = %_ZN7QStringD2Ev.exit1268
  %i.ahv = atomicrmw add ptr %i.ahu, i32 -1 acq_rel, align 4
  %.not.i.i1271 = icmp eq i32 %i.ahv, 1
  br i1 %.not.i.i1271, label %bb.ra, label %_ZN7QStringD2Ev.exit1272

bb.ra:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1270
  %i.ahw = load ptr, ptr %99, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ahw, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1272

_ZN7QStringD2Ev.exit1272:                         ; preds = %_ZN7QStringD2Ev.exit1268, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1270, %bb.ra
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #28
  %i.ahx = load ptr, ptr %96, align 8             ; 2 uses
  %.not.i.i.i1273 = icmp eq ptr %i.ahx, null
  br i1 %.not.i.i.i1273, label %_ZN7QStringD2Ev.exit1276, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1274

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1274:  ; preds = %_ZN7QStringD2Ev.exit1272
  %i.ahy = atomicrmw add ptr %i.ahx, i32 -1 acq_rel, align 4
  %.not.i.i1275 = icmp eq i32 %i.ahy, 1
  br i1 %.not.i.i1275, label %bb.rb, label %_ZN7QStringD2Ev.exit1276

bb.rb:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1274
  %i.ahz = load ptr, ptr %96, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ahz, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1276

_ZN7QStringD2Ev.exit1276:                         ; preds = %_ZN7QStringD2Ev.exit1272, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1274, %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #28
  br label %bb.rc

bb.rc:                                            ; preds = %_ZN7QStringD2Ev.exit911, %_ZN7QStringD2Ev.exit1276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.aia = load ptr, ptr %92, align 8             ; 2 uses
  %.not.i.i.i1277 = icmp eq ptr %i.aia, null
  br i1 %.not.i.i.i1277, label %_ZN7QStringD2Ev.exit1280, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1278

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1278:  ; preds = %bb.rc
  %i.aib = atomicrmw add ptr %i.aia, i32 -1 acq_rel, align 4
  %.not.i.i1279 = icmp eq i32 %i.aib, 1
  br i1 %.not.i.i1279, label %bb.rd, label %_ZN7QStringD2Ev.exit1280

bb.rd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1278
  %i.aic = load ptr, ptr %92, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aic, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1280

_ZN7QStringD2Ev.exit1280:                         ; preds = %bb.rc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1278, %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %91) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %89) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  %i.aid = add i64 %.sroa.6.01637, 2              ; 2 uses
  %.not1642 = icmp eq i64 %i.tf, %i.aid
  br i1 %.not1642, label %._crit_edge, label %bb.kr

bb.re:                                            ; preds = %bb.qv, %_ZN17QArrayDataPointerIDsED2Ev.exit1261, %_ZN7QStringD2Ev.exit1241, %bb.ph, %_ZN10QByteArrayD2Ev.exit1187, %_ZN17QArrayDataPointerIDsED2Ev.exit1183, %_ZN17QArrayDataPointerIDsED2Ev.exit1175, %_ZN17QArrayDataPointerIDsED2Ev.exit1167, %_ZN17QArrayDataPointerIDsED2Ev.exit1159, %_ZN17QArrayDataPointerIDsED2Ev.exit1151, %_ZN17QArrayDataPointerIDsED2Ev.exit1143, %_ZN17QArrayDataPointerIDsED2Ev.exit1135, %_ZN17QArrayDataPointerIDsED2Ev.exit1127, %_ZN17QArrayDataPointerIDsED2Ev.exit1119, %_ZN17QArrayDataPointerIDsED2Ev.exit1111
  %.pn259.pn = phi { ptr, i32 } [ %.pn259, %_ZN10QByteArrayD2Ev.exit1187 ], [ %i.ahk, %bb.qv ], [ %.pn257, %_ZN17QArrayDataPointerIDsED2Ev.exit1261 ], [ %i.acz, %_ZN17QArrayDataPointerIDsED2Ev.exit1119 ], [ %i.acv, %_ZN17QArrayDataPointerIDsED2Ev.exit1111 ], [ %.pn255, %bb.ph ], [ %.pn251.pn.pn, %_ZN7QStringD2Ev.exit1241 ], [ %.pn245, %_ZN17QArrayDataPointerIDsED2Ev.exit1183 ], [ %.pn243, %_ZN17QArrayDataPointerIDsED2Ev.exit1175 ], [ %.pn241, %_ZN17QArrayDataPointerIDsED2Ev.exit1167 ], [ %i.adt, %_ZN17QArrayDataPointerIDsED2Ev.exit1159 ], [ %i.adp, %_ZN17QArrayDataPointerIDsED2Ev.exit1151 ], [ %i.adl, %_ZN17QArrayDataPointerIDsED2Ev.exit1143 ], [ %i.adh, %_ZN17QArrayDataPointerIDsED2Ev.exit1135 ], [ %i.add, %_ZN17QArrayDataPointerIDsED2Ev.exit1127 ]
  call void @_ZN11BannerSlideD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable_or_null(248) %107) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  br label %bb.rf

bb.rf:                                            ; preds = %bb.re, %_ZN10QByteArrayD2Ev.exit983
  %.pn263.pn = phi { ptr, i32 } [ %.pn263, %_ZN10QByteArrayD2Ev.exit983 ], [ %.pn259.pn, %bb.re ] ; 3 uses
  %i.aie = load ptr, ptr %102, align 8            ; 2 uses
  %.not.i.i.i1281 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i.i1281, label %_ZN7QStringD2Ev.exit1284, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1282

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1282:  ; preds = %bb.rf
  %i.aif = atomicrmw add ptr %i.aie, i32 -1 acq_rel, align 4
  %.not.i.i1283 = icmp eq i32 %i.aif, 1
  br i1 %.not.i.i1283, label %bb.rg, label %_ZN7QStringD2Ev.exit1284

bb.rg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1282
  %i.aig = load ptr, ptr %102, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aig, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1284

_ZN7QStringD2Ev.exit1284:                         ; preds = %bb.rg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1282, %bb.rf, %_ZN17QArrayDataPointerIDsED2Ev.exit979
  %.pn263.pn.pn = phi { ptr, i32 } [ %.pn238, %_ZN17QArrayDataPointerIDsED2Ev.exit979 ], [ %.pn263.pn, %bb.rf ], [ %.pn263.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1282 ], [ %.pn263.pn, %bb.rg ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #28
  %i.aih = load ptr, ptr %99, align 8             ; 2 uses
  %.not.i.i.i1285 = icmp eq ptr %i.aih, null
  br i1 %.not.i.i.i1285, label %_ZN7QStringD2Ev.exit1288, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1286

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1286:  ; preds = %_ZN7QStringD2Ev.exit1284
  %i.aii = atomicrmw add ptr %i.aih, i32 -1 acq_rel, align 4
  %.not.i.i1287 = icmp eq i32 %i.aii, 1
  br i1 %.not.i.i1287, label %bb.rh, label %_ZN7QStringD2Ev.exit1288

bb.rh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1286
  %i.aij = load ptr, ptr %99, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aij, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1288

_ZN7QStringD2Ev.exit1288:                         ; preds = %bb.rh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1286, %_ZN7QStringD2Ev.exit1284, %_ZN17QArrayDataPointerIDsED2Ev.exit971
  %.pn263.pn.pn.pn = phi { ptr, i32 } [ %.pn236, %_ZN17QArrayDataPointerIDsED2Ev.exit971 ], [ %.pn263.pn.pn, %_ZN7QStringD2Ev.exit1284 ], [ %.pn263.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1286 ], [ %.pn263.pn.pn, %bb.rh ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #28
  %i.aik = load ptr, ptr %96, align 8             ; 2 uses
  %.not.i.i.i1289 = icmp eq ptr %i.aik, null
  br i1 %.not.i.i.i1289, label %_ZN7QStringD2Ev.exit1292, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1290

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1290:  ; preds = %_ZN7QStringD2Ev.exit1288
  %i.ail = atomicrmw add ptr %i.aik, i32 -1 acq_rel, align 4
  %.not.i.i1291 = icmp eq i32 %i.ail, 1
  br i1 %.not.i.i1291, label %bb.ri, label %_ZN7QStringD2Ev.exit1292

bb.ri:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1290
  %i.aim = load ptr, ptr %96, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aim, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1292

_ZN7QStringD2Ev.exit1292:                         ; preds = %bb.ri, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1290, %_ZN7QStringD2Ev.exit1288, %_ZN17QArrayDataPointerIDsED2Ev.exit963
  %.pn263.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn234, %_ZN17QArrayDataPointerIDsED2Ev.exit963 ], [ %.pn263.pn.pn.pn, %_ZN7QStringD2Ev.exit1288 ], [ %.pn263.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1290 ], [ %.pn263.pn.pn.pn, %bb.ri ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #28
  br label %bb.rj

bb.rj:                                            ; preds = %_ZN7QStringD2Ev.exit1292, %_ZN7QStringD2Ev.exit923
  %.pn263.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn263.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit1292 ], [ %.pn232, %_ZN7QStringD2Ev.exit923 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.ain = load ptr, ptr %92, align 8             ; 2 uses
  %.not.i.i.i1293 = icmp eq ptr %i.ain, null
  br i1 %.not.i.i.i1293, label %_ZN7QStringD2Ev.exit1296, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1294

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1294:  ; preds = %bb.rj
  %i.aio = atomicrmw add ptr %i.ain, i32 -1 acq_rel, align 4
  %.not.i.i1295 = icmp eq i32 %i.aio, 1
  br i1 %.not.i.i1295, label %bb.rk, label %_ZN7QStringD2Ev.exit1296

bb.rk:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1294
  %i.aip = load ptr, ptr %92, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aip, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1296

_ZN7QStringD2Ev.exit1296:                         ; preds = %bb.rk, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1294, %bb.rj, %_ZN17QArrayDataPointerIDsED2Ev.exit919
  %.pn263.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn230, %_ZN17QArrayDataPointerIDsED2Ev.exit919 ], [ %.pn263.pn.pn.pn.pn.pn, %bb.rj ], [ %.pn263.pn.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1294 ], [ %.pn263.pn.pn.pn.pn.pn, %bb.rk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %91) #28
  br label %bb.rl

bb.rl:                                            ; preds = %_ZN7QStringD2Ev.exit1296, %bb.la
  %.pn263.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn263.pn.pn.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit1296 ], [ %i.xd, %bb.la ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #28
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %89) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #28
  br label %bb.rm

bb.rm:                                            ; preds = %bb.kq, %bb.rl, %bb.kz
  %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.xc, %bb.kz ], [ %i.wr, %bb.kq ], [ %.pn263.pn.pn.pn.pn.pn.pn.pn, %bb.rl ]
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %86) #28
  br label %bb.rq

bb.rn:                                            ; preds = %_ZN7QStringD2Ev.exit879, %_ZN10QByteArrayD2Ev.exit345
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %_ZN10QByteArrayD2Ev.exit317
  call void @_ZN13QJsonDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.rp

bb.rp:                                            ; preds = %bb.b, %bb.ro, %_ZN10QByteArrayD2Ev.exit
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void

bb.rq:                                            ; preds = %bb.rm, %_ZN17QArrayDataPointerIDsED2Ev.exit887
  %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rm ], [ %.pn228, %_ZN17QArrayDataPointerIDsED2Ev.exit887 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #28
  %.not.i.i.i1297 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i1297, label %_ZN7QStringD2Ev.exit1300, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1298

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1298:  ; preds = %bb.rq
  %i.aiq = atomicrmw add ptr %i.ss, i32 -1 acq_rel, align 4
  %.not.i.i1299 = icmp eq i32 %i.aiq, 1
  br i1 %.not.i.i1299, label %bb.rr, label %_ZN7QStringD2Ev.exit1300

bb.rr:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1298
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ss, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit1300

_ZN7QStringD2Ev.exit1300:                         ; preds = %bb.kl, %bb.rq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1298, %bb.rr, %bb.kb
  %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rr ], [ %.pn215.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.kb ], [ %i.wl, %bb.kl ], [ %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rq ], [ %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i1298 ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %24) #28
  br label %bb.rs

bb.rs:                                            ; preds = %_ZN7QStringD2Ev.exit1300, %_ZN17QArrayDataPointerIDsED2Ev.exit425
  %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN7QStringD2Ev.exit1300 ], [ %.pn167, %_ZN17QArrayDataPointerIDsED2Ev.exit425 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %_ZN10QByteArrayD2Ev.exit357, %_ZN17QArrayDataPointerIDsED2Ev.exit353
  %.pn279.pn = phi { ptr, i32 } [ %.pn279, %_ZN10QByteArrayD2Ev.exit357 ], [ %.pn263.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rs ], [ %.pn165, %_ZN17QArrayDataPointerIDsED2Ev.exit353 ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %19) #28
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.ap
  %.pn279.pn.pn = phi { ptr, i32 } [ %.pn279.pn, %bb.rt ], [ %i.bv, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %_ZN10QByteArrayD2Ev.exit333, %bb.z
  %.pn283.pn.pn.pn = phi { ptr, i32 } [ %.pn283.pn.pn, %_ZN10QByteArrayD2Ev.exit333 ], [ %.pn279.pn.pn, %bb.ru ], [ %i.at, %bb.z ]
  call void @_ZN13QJsonDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #28
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %_ZN10QByteArrayD2Ev.exit321
  %.pn283.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn283.pn.pn.pn, %bb.rv ], [ %.pn163, %_ZN10QByteArrayD2Ev.exit321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rw, %_ZN10QByteArrayD2Ev.exit298, %bb.c
  %.pn283.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn283.pn.pn.pn.pn, %bb.rw ], [ %.pn, %_ZN10QByteArrayD2Ev.exit298 ], [ %i.g, %bb.c ]
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn283.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef align 8 dereferenceable(72) ptr @_ZN4QMapI15BannerSlideType15SlideTypeConfigEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %0, ptr noundef align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QMap.0, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit.thread, label %_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit

_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit.thread, label %_ZN4QMapI15BannerSlideType15SlideTypeConfigEC2ERKS2_.exit

_ZN4QMapI15BannerSlideType15SlideTypeConfigEC2ERKS2_.exit: ; preds = %_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit
  store ptr %i.a, ptr %2, align 8
  %i.c = atomicrmw add ptr %i.a, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.b

_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit.thread: ; preds = %bb.a, %_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit
  store ptr null, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9QtPrivate30QExplicitlySharedDataPointerV2I8QMapDataISt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS3_ESaISt4pairIKS3_S4_EEEEE8isSharedEv.exit.thread, %_ZN4QMapI15BannerSlideType15SlideTypeConfigEC2ERKS2_.exit
  invoke void @_ZN4QMapI15BannerSlideType15SlideTypeConfigE6detachEv(ptr noundef align 8 dereferenceable_or_null(8) %0)
          to label %bb.c unwind label %_ZN15SlideTypeConfigD2Ev.exit18

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 16       ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.f, null
end_hunk_3
