inline.NumInlined: 6127
inline.NumDeleted: 2467
begin_hunk_0_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
  %26 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 5 uses
  %i.s = alloca i8, align 1                       ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 32 uses
  %29 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
  %34 = alloca %"class.duckdb::LinesPerBoundary", align 8 ; 5 uses
  %i.t = alloca i8, align 1                       ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 32 uses
  %37 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.au = getelementptr i8, ptr %i.as, i64 -24    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %28, i64 72
end_hunk_2
begin_hunk_3_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %36, i64 336
  %i.cc = getelementptr inbounds nuw i8, ptr %36, i64 337
  %i.cd = getelementptr inbounds nuw i8, ptr %36, i64 344
  %i.ce = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %36, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %36, i64 72
end_hunk_3
begin_hunk_4_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
bb.bx:                                            ; preds = %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.an) #34
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 16, !tbaa !18
  store ptr null, ptr %i.ao, align 8, !tbaa !893
  store i8 0, ptr %i.ap, align 16, !tbaa !900
  store i8 0, ptr %i.aq, align 1, !tbaa !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  store ptr %i.as, ptr %28, align 16, !tbaa !18
  %i.lu = load i64, ptr %i.au, align 8
  %i.lv = getelementptr inbounds i8, ptr %28, i64 %i.lu
  store ptr %i.at, ptr %i.lv, align 8, !tbaa !18
  %i.lw = load ptr, ptr %28, align 16, !tbaa !18
  %i.lx = getelementptr i8, ptr %i.lw, i64 -24
  %i.ly = load i64, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds i8, ptr %28, i64 %i.ly
end_hunk_4
begin_hunk_5_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.an, align 16, !tbaa !18
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %28, align 16, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aw, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ax) #34
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8, !tbaa !18
  store i32 16, ptr %i.ay, align 8, !tbaa !902
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !82
  store i64 0, ptr %i.bb, align 8, !tbaa !83
  store i8 0, ptr %i.ba, align 16, !tbaa !62
  %i.ma = load ptr, ptr %28, align 16, !tbaa !18
  %i.mb = getelementptr i8, ptr %i.ma, i64 -24
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = getelementptr inbounds i8, ptr %28, i64 %i.mc
end_hunk_5
begin_hunk_6_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
  store ptr %i.bg, ptr %31, align 8, !tbaa !82, !alias.scope !911
  store i64 0, ptr %i.bh, align 8, !tbaa !83, !alias.scope !911
  store i8 0, ptr %i.bg, align 8, !tbaa !62, !alias.scope !911
  %i.mw = load ptr, ptr %i.bi, align 16, !tbaa !367, !noalias !911 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.mw, null
  %i.mx = load ptr, ptr %i.bj, align 16, !noalias !911 ; 2 uses
  %i.my = icmp ugt ptr %i.mw, %i.mx
  %.08.i.i.i = select i1 %i.my, ptr %i.mw, ptr %i.mx ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
end_hunk_6
begin_hunk_7_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362: ; preds = %_ZN6duckdb8CSVErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #34
  store ptr %i.br, ptr %28, align 16, !tbaa !18
  %i.sr = load i64, ptr %i.bt, align 8
  %i.ss = getelementptr inbounds i8, ptr %28, i64 %i.sr
  store ptr %i.bs, ptr %i.ss, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8, !tbaa !18
  %i.st = load ptr, ptr %i.az, align 16, !tbaa !74 ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.ba
  br i1 %i.su, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i363

end_hunk_7
begin_hunk_8_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
bb.fe:                                            ; preds = %_ZNK6duckdb17StringValueResult14PrintErrorLineEv.exit409
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #34
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bz) #34
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bz, align 16, !tbaa !18
  store ptr null, ptr %i.ca, align 8, !tbaa !893
  store i8 0, ptr %i.cb, align 16, !tbaa !900
  store i8 0, ptr %i.cc, align 1, !tbaa !901
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i8 0, i64 32, i1 false)
  store ptr %i.as, ptr %36, align 16, !tbaa !18
  %i.yn = load i64, ptr %i.au, align 8
  %i.yo = getelementptr inbounds i8, ptr %36, i64 %i.yn
  store ptr %i.at, ptr %i.yo, align 8, !tbaa !18
  %i.yp = load ptr, ptr %36, align 16, !tbaa !18
  %i.yq = getelementptr i8, ptr %i.yp, i64 -24
  %i.yr = load i64, ptr %i.yq, align 8
  %i.ys = getelementptr inbounds i8, ptr %36, i64 %i.yr
end_hunk_8
begin_hunk_9_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
          to label %bb.ff unwind label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bz, align 16, !tbaa !18
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %36, align 16, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cf, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cg) #34
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !18
  store i32 16, ptr %i.ch, align 8, !tbaa !902
  store ptr %i.cj, ptr %i.ci, align 16, !tbaa !82
  store i64 0, ptr %i.ck, align 8, !tbaa !83
  store i8 0, ptr %i.cj, align 16, !tbaa !62
  %i.yt = load ptr, ptr %36, align 16, !tbaa !18
  %i.yu = getelementptr i8, ptr %i.yt, i64 -24
  %i.yv = load i64, ptr %i.yu, align 8
  %i.yw = getelementptr inbounds i8, ptr %36, i64 %i.yv
end_hunk_9
begin_hunk_10_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a
  store ptr %i.cp, ptr %39, align 8, !tbaa !82, !alias.scope !922
  store i64 0, ptr %i.cq, align 8, !tbaa !83, !alias.scope !922
  store i8 0, ptr %i.cp, align 8, !tbaa !62, !alias.scope !922
  %i.zq = load ptr, ptr %i.cr, align 16, !tbaa !367, !noalias !922 ; 3 uses
  %.not.i.not.i.i436 = icmp eq ptr %i.zq, null
  %i.zr = load ptr, ptr %i.cs, align 16, !noalias !922 ; 2 uses
  %i.zs = icmp ugt ptr %i.zq, %i.zr
  %.08.i.i.i437 = select i1 %i.zs, ptr %i.zq, ptr %i.zr ; 2 uses
  %.not5.i.i438 = icmp eq ptr %.08.i.i.i437, null
end_hunk_10
begin_hunk_11_@_ZN6duckdb18StringValueScanner5FlushERNS_9DataChunkE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502: ; preds = %_ZN6duckdb8CSVErrorD2Ev.exit499, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #34
  store ptr %i.br, ptr %36, align 16, !tbaa !18
  %i.adb = load i64, ptr %i.bt, align 8
  %i.adc = getelementptr inbounds i8, ptr %36, i64 %i.adb
  store ptr %i.bs, ptr %i.adc, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ce, align 8, !tbaa !18
  %i.add = load ptr, ptr %i.ci, align 16, !tbaa !74 ; 2 uses
  %i.ade = icmp eq ptr %i.add, %i.cj
  br i1 %i.ade, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit505, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i503

end_hunk_11
