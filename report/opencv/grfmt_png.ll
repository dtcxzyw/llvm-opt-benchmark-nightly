Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grfmt_png?download=true
inline.NumInlined: 1700
inline.NumDeleted: 682
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv10PngDecoder10readHeaderEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.ac
  %.pn66 = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.ba, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.ab
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.ay, %bb.ab ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %.pn66.pn.pn = phi { ptr, i32 } [ %.pn66.pn, %bb.ae ], [ %i.ax, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.cr

bb.ag:                                            ; preds = %bb.p
  %i.bg = invoke noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv()
          to label %bb.ai unwind label %bb.ah     ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.ai:                                            ; preds = %bb.ag
  %.not59 = icmp eq ptr %i.bg, null               ; 2 uses
  br i1 %.not59, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !131
  %i.bk = icmp slt i32 %i.bj, 2
  br i1 %i.bk, label %.loopexit97, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.7, i64 noundef 64)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %bb.al
  br i1 %.not59, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !132
  br label %bb.an

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81, %bb.am
  %i.bo = phi ptr [ %i.bn, %bb.am ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.bp = load ptr, ptr %5, align 8, !tbaa !116
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 2, ptr noundef %i.bo, ptr noundef nonnull @.str.3, i32 noundef 297, ptr noundef nonnull @__func__._ZN2cv10PngDecoder10readHeaderEv, ptr noundef %i.bp)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.bq = load ptr, ptr %5, align 8, !tbaa !116   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ap
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !117
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %.loopexit97

bb.aq:                                            ; preds = %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %bb.al
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.an
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.at:                                            ; preds = %bb.ao
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !116   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.at
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !117
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.as
  %.pn60 = phi { ptr, i32 } [ %i.bx, %bb.as ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.by, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.ar
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %i.bw, %bb.ar ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.aq
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.au ], [ %i.bv, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cr

bb.aw:                                            ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4536 ; 3 uses
  store i8 0, ptr %i.ce, align 8, !tbaa !133
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4508 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4512 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4516 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4520
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4524
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4528 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4532 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit.backedge, %bb.aw
  %i.ct = invoke noundef i32 @_ZN2cv10PngDecoder10read_chunkERNS_5ChunkE(ptr noundef nonnull align 8 dereferenceable(4544) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ax unwind label %.loopexit ; 2 uses

bb.ax:                                            ; preds = %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit
  %.not52 = icmp eq i32 %i.ct, 0
  br i1 %.not52, label %.loopexit97, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cu = load ptr, ptr %i.cf, align 8, !tbaa !99 ; 2 uses
  %.not53 = icmp eq ptr %i.cu, null
  br i1 %.not53, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cv = call i32 @feof(ptr noundef nonnull %i.cu) #29
  %.not54 = icmp eq i32 %i.cv, 0
  br i1 %.not54, label %bb.ba, label %.loopexit97

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.cw = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.x)
          to label %bb.bb unwind label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.cw, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cx = load i64, ptr %i.w, align 8, !tbaa !100
  %i.cy = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.x)
          to label %bb.bd unwind label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.cz = icmp ugt i64 %i.cx, %i.cy
  br i1 %i.cz, label %.loopexit97, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  switch i32 %i.ct, label %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit.backedge [
    i32 1229209940, label %bb.bf
    i32 1633899596, label %bb.bi
    i32 1717785676, label %bb.bj
    i32 1951551059, label %bb.bk
    i32 1347179589, label %bb.bk
  ]

bb.bf:                                            ; preds = %bb.be
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !99 ; 2 uses
  %.not55 = icmp eq ptr %i.da, null
  br i1 %.not55, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.db = call i32 @fseek(ptr noundef nonnull %i.da, i64 noundef 0, i32 noundef 0) ; 0 uses
  br label %bb.br

bb.bh:                                            ; preds = %bb.bf
  store i64 0, ptr %i.w, align 8, !tbaa !100
  br label %bb.br

bb.bi:                                            ; preds = %bb.be
  %i.dc = load ptr, ptr %1, align 8, !tbaa !103   ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %7 = load i8, ptr %6, align 1, !tbaa !117
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr inbounds nuw i8, ptr %i.dc, i64 13
  %11 = load i8, ptr %10, align 1, !tbaa !117
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %13, %9
  %15 = getelementptr inbounds nuw i8, ptr %i.dc, i64 14
  %16 = load i8, ptr %15, align 1, !tbaa !117
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or disjoint i32 %14, %18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 15
  %20 = load i8, ptr %i.dd, align 1, !tbaa !117
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %19, %21
  store i32 %22, ptr %i.cs, align 8, !tbaa !262
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i32, ptr %i.de, align 1            ; 2 uses
  %i.dg = call i32 @llvm.bswap.i32(i32 %i.df)
  %i.dh = zext i32 %i.dg to i64
  store i64 %i.dh, ptr %i.j, align 8, !tbaa !128
  %i.di = icmp eq i32 %i.df, 0
  br i1 %i.di, label %.loopexit97, label %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit.backedge

bb.bj:                                            ; preds = %bb.be
  store i8 1, ptr %i.ce, align 8, !tbaa !133
  %i.dj = load ptr, ptr %1, align 8, !tbaa !103   ; 22 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %24 = load i8, ptr %23, align 1, !tbaa !117
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = getelementptr inbounds nuw i8, ptr %i.dj, i64 13
  %28 = load i8, ptr %27, align 1, !tbaa !117
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or disjoint i32 %30, %26
  %32 = getelementptr inbounds nuw i8, ptr %i.dj, i64 14
  %33 = load i8, ptr %32, align 1, !tbaa !117
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or disjoint i32 %31, %35
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %37 = load i8, ptr %i.dk, align 1, !tbaa !117
  %38 = zext i8 %37 to i32
  %39 = or disjoint i32 %36, %38
  store i32 %39, ptr %i.ck, align 8, !tbaa !134
  %40 = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %41 = load i8, ptr %40, align 1, !tbaa !117
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = getelementptr inbounds nuw i8, ptr %i.dj, i64 17
  %45 = load i8, ptr %44, align 1, !tbaa !117
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 16
  %48 = or disjoint i32 %47, %43
  %49 = getelementptr inbounds nuw i8, ptr %i.dj, i64 18
  %50 = load i8, ptr %49, align 1, !tbaa !117
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = or disjoint i32 %48, %52
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 19
  %54 = load i8, ptr %i.dl, align 1, !tbaa !117
  %55 = zext i8 %54 to i32
  %56 = or disjoint i32 %53, %55
  store i32 %56, ptr %i.cl, align 4, !tbaa !135
  %57 = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %58 = load i8, ptr %57, align 1, !tbaa !117
  %59 = zext i8 %58 to i32
  %60 = shl nuw i32 %59, 24
  %61 = getelementptr inbounds nuw i8, ptr %i.dj, i64 21
  %62 = load i8, ptr %61, align 1, !tbaa !117
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 16
  %65 = or disjoint i32 %64, %60
  %66 = getelementptr inbounds nuw i8, ptr %i.dj, i64 22
  %67 = load i8, ptr %66, align 1, !tbaa !117
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 8
  %70 = or disjoint i32 %65, %69
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 23
  %71 = load i8, ptr %i.dm, align 1, !tbaa !117
  %72 = zext i8 %71 to i32
  %73 = or disjoint i32 %70, %72
  store i32 %73, ptr %i.cm, align 8, !tbaa !136
  %74 = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %75 = load i8, ptr %74, align 1, !tbaa !117
  %76 = zext i8 %75 to i32
  %77 = shl nuw i32 %76, 24
  %78 = getelementptr inbounds nuw i8, ptr %i.dj, i64 25
  %79 = load i8, ptr %78, align 1, !tbaa !117
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 16
  %82 = or disjoint i32 %81, %77
  %83 = getelementptr inbounds nuw i8, ptr %i.dj, i64 26
  %84 = load i8, ptr %83, align 1, !tbaa !117
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = or disjoint i32 %82, %86
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 27
  %88 = load i8, ptr %i.dn, align 1, !tbaa !117
  %89 = zext i8 %88 to i32
  %90 = or disjoint i32 %87, %89
  store i32 %90, ptr %i.cn, align 4, !tbaa !137
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !117
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 29
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !117
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du
  store i32 %i.dv, ptr %i.co, align 8, !tbaa !138
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 30
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !117
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 31
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !117
  %i.ec = zext i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.dz, %i.ec
  store i32 %i.ed, ptr %i.cp, align 4, !tbaa !139
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !117 ; 2 uses
  %i.eg = zext i8 %i.ef to i32
  store i32 %i.eg, ptr %i.cq, align 8, !tbaa !140
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 33
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !117 ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  store i32 %i.ej, ptr %i.cr, align 4, !tbaa !141
  %i.ek = icmp ugt i8 %i.ef, 2
  %i.el = icmp ugt i8 %i.ei, 1
  %or.cond73 = select i1 %i.ek, i1 true, i1 %i.el
  br i1 %or.cond73, label %.loopexit97, label %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit.backedge

bb.bk:                                            ; preds = %bb.be, %bb.be
  %i.em = load ptr, ptr %i.cg, align 8, !tbaa !106 ; 6 uses
  %i.en = load ptr, ptr %i.ch, align 8, !tbaa !107
  %.not.i88 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i88, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eo = load ptr, ptr %i.ci, align 8, !tbaa !142 ; 2 uses
  %i.ep = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i.i.i.i.i, label %.noexc90, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.et = icmp slt i64 %i.es, 0
  br i1 %i.et, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !143

.noexc.i.i.i.i:                                   ; preds = %bb.bm
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc89 unwind label %.loopexit.split-lp

.noexc89:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.bm
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #31
          to label %.noexc90 unwind label %.loopexit

.noexc90:                                         ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.bl
  %i.ev = phi ptr [ null, %bb.bl ], [ %i.eu, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.ev, ptr %i.em, align 8, !tbaa !103
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !142
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !104
  %i.ez = load ptr, ptr %1, align 8, !tbaa !43    ; 3 uses
  %i.fa = load ptr, ptr %i.ci, align 8, !tbaa !43
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %i.fe = icmp sgt i64 %i.fd, 1
  br i1 %i.fe, label %bb.bn, label %bb.bo, !prof !144

bb.bn:                                            ; preds = %.noexc90
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ev, ptr align 1 %i.ez, i64 %i.fd, i1 false)
  br label %_ZN2cv5ChunkC2ERKS0_.exit.i

bb.bo:                                            ; preds = %.noexc90
  %i.ff = icmp eq i64 %i.fd, 1
  br i1 %i.ff, label %bb.bp, label %_ZN2cv5ChunkC2ERKS0_.exit.i

bb.bp:                                            ; preds = %bb.bo
  %i.fg = load i8, ptr %i.ez, align 1, !tbaa !117
  store i8 %i.fg, ptr %i.ev, align 1, !tbaa !117
  br label %_ZN2cv5ChunkC2ERKS0_.exit.i

_ZN2cv5ChunkC2ERKS0_.exit.i:                      ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.fh = getelementptr inbounds i8, ptr %i.ev, i64 %i.fd
  store ptr %i.fh, ptr %i.ew, align 8, !tbaa !142
  %i.fi = load ptr, ptr %i.cg, align 8, !tbaa !106
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %i.fj, ptr %i.cg, align 8, !tbaa !106
  br label %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit.backedge

_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit.backedge: ; preds = %_ZN2cv5ChunkC2ERKS0_.exit.i, %bb.bq, %bb.bj, %bb.bi, %bb.be
  br label %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit, !llvm.loop !261

bb.bq:                                            ; preds = %bb.bk
  invoke void @_ZNSt6vectorIN2cv5ChunkESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr %i.em, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIN2cv5ChunkESaIS1_EE9push_backERKS1_.exit.backedge unwind label %.loopexit

bb.br:                                            ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i32 0, ptr %i.f, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  %i.fk = load ptr, ptr %1, align 8, !tbaa !103   ; 3 uses
  %i.fl = load ptr, ptr %i.ci, align 8, !tbaa !142
  %.not.i.i92 = icmp eq ptr %i.fl, %i.fk
  br i1 %.not.i.i92, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.br
  store ptr %i.fk, ptr %i.ci, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.br, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !104
  %i.fo = icmp eq ptr %i.fn, %i.fk
  br i1 %i.fo, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.fp = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %1) #29 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit:       ; preds = %bb.bs, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.fq = load ptr, ptr %i.m, align 8, !tbaa !118
  %i.fr = load ptr, ptr %i.r, align 8, !tbaa !119
  invoke void @png_read_info(ptr noundef %i.fq, ptr noundef %i.fr)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit
  %i.fs = load ptr, ptr %i.m, align 8, !tbaa !118
  %i.ft = load ptr, ptr %i.r, align 8, !tbaa !119
  %i.fu = invoke i32 @png_get_IHDR(ptr noundef %i.fs, ptr noundef %i.ft, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.bu unwind label %bb.bz     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.fv = load i32, ptr %i.b, align 4, !tbaa !14  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !145
  %i.fx = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !146
  %i.fz = load i32, ptr %i.e, align 4, !tbaa !14
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !98
  %i.gb = load i32, ptr %i.d, align 4, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i32 %i.gb, ptr %i.gc, align 8, !tbaa !101
  %i.gd = load i8, ptr %i.ce, align 8, !tbaa !133, !range !147, !noundef !148
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.gf = load i32, ptr %i.cm, align 8, !tbaa !136
  %i.gg = zext i32 %i.gf to i64
  %i.gh = load i32, ptr %i.ck, align 8, !tbaa !134
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gi, %i.gg
  %i.gk = sext i32 %i.fv to i64
  %i.gl = icmp sgt i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.cp, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gm = load i32, ptr %i.cn, align 4, !tbaa !137
  %i.gn = zext i32 %i.gm to i64
  %i.go = load i32, ptr %i.cl, align 4, !tbaa !135
  %i.gp = zext i32 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gp, %i.gn
  %i.gr = sext i32 %i.fx to i64
  %i.gs = icmp sgt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.cp, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gt = load i32, ptr %i.cq, align 8, !tbaa !140
  %i.gu = icmp ugt i32 %i.gt, 2
  br i1 %i.gu, label %bb.cp, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gv = load i32, ptr %i.cr, align 4, !tbaa !141
  %i.gw = icmp ugt i32 %i.gv, 1
  br i1 %i.gw, label %bb.cp, label %bb.ca

bb.bz:                                            ; preds = %bb.bt, %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ca:                                            ; preds = %bb.by, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
end_hunk_0
begin_hunk_1_@_ZN2cv10PngDecoder22readFromStreamOrBufferEPvm:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = add i64 %i.f, %2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.j = load i32, ptr %i.i, align 4, !tbaa !271
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load i32, ptr %i.k, align 8, !tbaa !272
  %i.m = mul nsw i32 %i.l, %i.j
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.p = lshr i32 %i.o, 5
  %i.q = and i32 %i.p, 127
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = shl i32 %i.o, 2
  %i.t = and i32 %i.s, 124
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 1275511473185297, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 15
  %i.y = mul nuw nsw i32 %i.x, %i.r
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, %i.n
  %i.ab = icmp ugt i64 %i.g, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not21 = icmp eq ptr %i.ac, null               ; 2 uses
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !131
  %i.af = icmp slt i32 %i.ae, 3
  br i1 %i.af, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.4, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !126, !alias.scope !275
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !51, !alias.scope !275
  store i8 0, ptr %i.ak, align 8, !tbaa !117, !alias.scope !275
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !157, !noalias !275 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !275 ; 2 uses
  %i.aq = icmp ugt ptr %i.an, %i.ap
  %.08.i.i.i = select i1 %i.aq, ptr %i.an, ptr %i.ap ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !158, !noalias !275 ; 2 uses
  %i.at = ptrtoint ptr %.08.i.i.i to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.as, i64 noundef %i.av)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !116, !alias.scope !275 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ak
  br i1 %i.az, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !116
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.aj, ptr noundef nonnull @.str.3, i32 noundef 793, ptr noundef nonnull @__func__._ZN2cv10PngDecoder22readFromStreamOrBufferEPvm, ptr noundef %i.bb)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bc = load ptr, ptr %4, align 8, !tbaa !116   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ak
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.be = load i64, ptr %i.ak, align 8, !tbaa !117
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bg = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bg, ptr %3, align 8, !tbaa !47
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %3, i64 %i.bj
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !47
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bl, ptr %i.ag, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bm, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !116 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !117
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bm, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #29
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bu, ptr %3, align 8, !tbaa !47
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bw = getelementptr i8, ptr %i.bu, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %3, i64 %i.bx
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !160
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.q

bb.m:                                             ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !116   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ak
  br i1 %i.ce, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.ay, %bb.j ], [ %i.cd, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %i.cc, %bb.n ]
  %i.cf = load i64, ptr %i.ak, align 8, !tbaa !117
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cg) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %i.cc, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cb, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.cj, i64 %2, i1 false)
  %i.ck = load i64, ptr %i.e, align 8, !tbaa !100
  %i.cl = add i64 %i.ck, %2
  store i64 %i.cl, ptr %i.e, align 8, !tbaa !100
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.e, %bb.p, %bb.b
  %.019 = phi i1 [ %i.d, %bb.b ], [ true, %bb.p ], [ false, %bb.e ], [ false, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  ret i1 %.019
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv10PngDecoder10read_chunkERNS_5ChunkE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4544) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = call noundef zeroext i1 @_ZN2cv10PngDecoder22readFromStreamOrBufferEPvm(ptr noundef nonnull align 8 dereferenceable(4544) %0, ptr noundef nonnull %i.a, i64 noundef 8)
  br i1 %i.b, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %4 = load i8, ptr %i.a, align 8, !tbaa !117
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 24
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !117
  %9 = zext i8 %8 to i64
  %10 = shl nuw nsw i64 %9, 16
  %11 = or disjoint i64 %10, %6
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %13 = load i8, ptr %12, align 2, !tbaa !117
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %14, 8
  %16 = or disjoint i64 %11, %15
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !117
  %i.c = zext i8 %18 to i64
  %19 = or disjoint i64 %16, %i.c
  %.fr = freeze i64 %19                           ; 3 uses
  %i.d = add nuw nsw i64 %.fr, 12                 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call i32 @llvm.bswap.i32(i32 %i.f)  ; 3 uses
  switch i32 %i.g, label %bb.g [
    i32 1229472850, label %bb.c
    i32 1633899596, label %bb.d
    i32 1717785676, label %bb.e
    i32 1649100612, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %.not57 = icmp eq i64 %i.d, 25
  br i1 %.not57, label %bb.s, label %bb.w

bb.d:                                             ; preds = %bb.b
  %.not56 = icmp eq i64 %i.d, 20
  br i1 %.not56, label %bb.s, label %bb.w

bb.e:                                             ; preds = %bb.b
  %.not55 = icmp eq i64 %i.d, 38
  br i1 %.not55, label %bb.s, label %bb.w

bb.f:                                             ; preds = %bb.b
  %20 = add nsw i64 %.fr, -3
  %or.cond = icmp ult i64 %20, -2
  %i.h = icmp ne i64 %i.d, 18
  %or.cond3 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond3, label %bb.w, label %bb.s

bb.g:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %.fr, 7999988
  br i1 %i.i, label %switch.early.test, label %bb.s

switch.early.test:                                ; preds = %bb.g
  switch i32 %i.g, label %bb.h [
    i32 1951551059, label %bb.s
    i32 1950701684, label %bb.s
    i32 1717846356, label %bb.s
    i32 1347179589, label %bb.s
    i32 1229278788, label %bb.s
    i32 1229209940, label %bb.s
  ]

bb.h:                                             ; preds = %switch.early.test
  %i.j = tail call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not = icmp eq ptr %i.j, null                  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !131
  %i.m = icmp slt i32 %i.l, 3
  br i1 %i.m, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.12, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !132
  br label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.k
  %i.q = phi ptr [ %i.p, %bb.k ], [ null, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.r = load ptr, ptr %3, align 8, !tbaa !116
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.q, ptr noundef nonnull @.str.3, i32 noundef 834, ptr noundef nonnull @__func__._ZN2cv10PngDecoder10read_chunkERNS_5ChunkE, ptr noundef %i.r)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.s = load ptr, ptr %3, align 8, !tbaa !116    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.v = load i64, ptr %i.t, align 8, !tbaa !117
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.w

bb.o:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.q:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !116   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.q
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !117
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.p
  %.pn = phi { ptr, i32 } [ %i.y, %bb.p ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.z, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.x, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.g, %bb.d, %bb.f, %bb.e, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !142 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !103   ; 5 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp ugt i64 %i.d, %i.ak
  br i1 %i.al, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.am = sub nuw nsw i64 %i.d, %i.ak
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.am)
  %.pre = load ptr, ptr %1, align 8, !tbaa !103
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.u:                                             ; preds = %bb.s
  %i.an = icmp ult i64 %i.d, %i.ak
  br i1 %i.an, label %bb.v, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ao
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.v
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !142
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.t, %bb.u, %bb.v, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.ap = phi ptr [ %.pre, %bb.t ], [ %i.ah, %bb.u ], [ %i.ah, %bb.v ], [ %i.ah, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ]
  %i.aq = load i64, ptr %i.a, align 8
  store i64 %i.aq, ptr %i.ap, align 1
  %i.ar = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !142
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %reass.sub = sub i64 %i.au, %i.av
  %i.aw = add i64 %reass.sub, -8
  %i.ax = tail call noundef zeroext i1 @_ZN2cv10PngDecoder22readFromStreamOrBufferEPvm(ptr noundef nonnull align 8 dereferenceable(4544) %0, ptr noundef nonnull %i.as, i64 noundef %i.aw)
  %. = select i1 %i.ax, i32 %i.g, i32 0
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.a
  %.151 = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ %., %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.151
}

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #9

declare void @png_read_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_get_bKGD(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_get_tRNS(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv10PngDecoder8readDataERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(4544) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %3 = alloca %"struct.cv::Chunk", align 8        ; 15 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 29 uses
  %5 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN2cv10PngDecoder8readDataERNS_3MatE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i64 0, ptr %i.ef, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !166
  store ptr %1, ptr %i.ee, align 8, !tbaa !167
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 0, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.by

.loopexit203:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit205 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit.split-lp204:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.be:                                            ; preds = %bb.bc
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.dm

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store i64 0, ptr %i.ed, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !166
  store ptr %1, ptr %i.ec, align 8, !tbaa !167
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.by

bb.bh:                                            ; preds = %bb.bf
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.dm

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #29
  %i.hb = load i32, ptr %4, align 8, !tbaa !35
  %i.hc = and i32 %i.hb, 31
  %i.hd = icmp eq i32 %i.hc, 2
  br i1 %i.hd, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.he = load i32, ptr %1, align 8, !tbaa !35
  %i.hf = and i32 %i.he, 31
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i64 0, ptr %i.dr, align 8
  store i32 33619968, ptr %13, align 8, !tbaa !166
  store ptr %12, ptr %i.dq, align 8, !tbaa !167
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bo
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bn:                                            ; preds = %bb.bk
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bx

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  %i.hj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.bp unwind label %bb.bm     ; 0 uses

bb.bp:                                            ; preds = %bb.bo, %bb.bl
  %i.hk = load i32, ptr %1, align 8, !tbaa !35
  %i.hl = lshr i32 %i.hk, 5
  %i.hm = and i32 %i.hl, 127
  switch i32 %i.hm, label %bb.bw [
    i32 0, label %bb.bq
    i32 2, label %bb.bt
  ]

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store i32 0, ptr %i.dx, align 8, !tbaa !169
  store i32 0, ptr %i.dy, align 4, !tbaa !170
  store i32 16842752, ptr %14, align 8, !tbaa !166
  store ptr %12, ptr %i.dz, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  store i64 0, ptr %i.eb, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !166
  store ptr %1, ptr %i.ea, align 8, !tbaa !167
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 10, i32 noundef 0, i32 noundef 0)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bq
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  store i32 0, ptr %i.ds, align 8, !tbaa !169
  store i32 0, ptr %i.dt, align 4, !tbaa !170
  store i32 16842752, ptr %16, align 8, !tbaa !166
  store ptr %12, ptr %i.du, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  store i64 0, ptr %i.dw, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !166
  store ptr %1, ptr %i.dv, align 8, !tbaa !167
  invoke void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef 1, i32 noundef 0, i32 noundef 0)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bp, %bb.bu, %bb.br
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bs, %bb.bn, %bb.bm
  %.pn166.pn.pn = phi { ptr, i32 } [ %i.hn, %bb.bs ], [ %i.ho, %bb.bv ], [ %i.hi, %bb.bn ], [ %i.hh, %bb.bm ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.dm

bb.by:                                            ; preds = %bb.bd, %bb.bg, %bb.bw
  %i.hp = load i32, ptr %i.cz, align 8, !tbaa !140
  %.not174 = icmp eq i32 %i.hp, 2
  br i1 %.not174, label %.loopexit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hq = load ptr, ptr %i.da, align 8, !tbaa !41
  %i.hr = load ptr, ptr %i.cj, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.hr, i64 %i.db, i1 false)
  %i.hs = load i32, ptr %i.cz, align 8, !tbaa !140
  %i.ht = icmp eq i32 %i.hs, 1
  br i1 %i.ht, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.bz
  %i.hu = load i32, ptr %i.dg, align 4, !tbaa !135
  %.not217 = icmp eq i32 %i.hu, 0
  br i1 %.not217, label %.loopexit, label %.lr.ph215

.lr.ph215:                                        ; preds = %.preheader, %.lr.ph215
  %.081214 = phi i32 [ %i.im, %.lr.ph215 ], [ 0, %.preheader ] ; 2 uses
  %i.hv = load i32, ptr %i.df, align 4, !tbaa !137
  %i.hw = add i32 %i.hv, %.081214
  %i.hx = zext i32 %i.hw to i64
  %i.hy = load ptr, ptr %i.eg, align 8, !tbaa !19
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !43
  %i.ib = load i32, ptr %i.dc, align 8, !tbaa !136
  %i.ic = load i32, ptr %1, align 8, !tbaa !35
  %i.id = lshr i32 %i.ic, 5
  %i.ie = and i32 %i.id, 127
  %i.if = add nuw nsw i32 %i.ie, 1                ; 2 uses
  %i.ig = mul i32 %i.if, %i.ib
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ih
  %i.ij = load i32, ptr %i.dd, align 8, !tbaa !134
  %i.ik = mul i32 %i.if, %i.ij
  %i.il = zext i32 %i.ik to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ii, i8 0, i64 %i.il, i1 false)
  %i.im = add nuw i32 %.081214, 1                 ; 2 uses
  %i.in = load i32, ptr %i.dg, align 4, !tbaa !135
  %i.io = icmp ult i32 %i.im, %i.in
  br i1 %i.io, label %.lr.ph215, label %.loopexit, !llvm.loop !278

.loopexit:                                        ; preds = %.lr.ph215, %.preheader, %bb.bz, %bb.by, %bb.ak
  %i.ip = load ptr, ptr %3, align 8, !tbaa !103   ; 16 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 12 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 1
  %i.is = call i32 @llvm.bswap.i32(i32 %i.ir)     ; 2 uses
  store i32 %i.is, ptr %i.dd, align 8, !tbaa !134
  %25 = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %26 = load i8, ptr %25, align 1, !tbaa !117
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr inbounds nuw i8, ptr %i.ip, i64 17
  %30 = load i8, ptr %29, align 1, !tbaa !117
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = or disjoint i32 %32, %28
  %34 = getelementptr inbounds nuw i8, ptr %i.ip, i64 18
  %35 = load i8, ptr %34, align 1, !tbaa !117
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = or disjoint i32 %33, %37
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 19
  %39 = load i8, ptr %i.it, align 1, !tbaa !117
  %40 = zext i8 %39 to i32
  %41 = or disjoint i32 %38, %40                  ; 2 uses
  store i32 %41, ptr %i.dg, align 4, !tbaa !135
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 20
  %i.iv = load i32, ptr %i.iu, align 1
  %i.iw = call i32 @llvm.bswap.i32(i32 %i.iv)     ; 2 uses
  store i32 %i.iw, ptr %i.dc, align 8, !tbaa !136
  %42 = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %43 = load i8, ptr %42, align 1, !tbaa !117
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = getelementptr inbounds nuw i8, ptr %i.ip, i64 25
  %47 = load i8, ptr %46, align 1, !tbaa !117
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or disjoint i32 %49, %45
  %51 = getelementptr inbounds nuw i8, ptr %i.ip, i64 26
  %52 = load i8, ptr %51, align 1, !tbaa !117
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or disjoint i32 %50, %54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 27
  %56 = load i8, ptr %i.ix, align 1, !tbaa !117
  %57 = zext i8 %56 to i32
  %58 = or disjoint i32 %55, %57                  ; 2 uses
  store i32 %58, ptr %i.df, align 4, !tbaa !137
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 28
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !117
  %i.ja = zext i8 %i.iz to i32
  %i.jb = shl nuw nsw i32 %i.ja, 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 29
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !117
  %i.je = zext i8 %i.jd to i32
  %i.jf = or disjoint i32 %i.jb, %i.je
  store i32 %i.jf, ptr %i.dm, align 8, !tbaa !138
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ip, i64 30
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !117
  %i.ji = zext i8 %i.jh to i32
  %i.jj = shl nuw nsw i32 %i.ji, 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ip, i64 31
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !117
  %i.jm = zext i8 %i.jl to i32
  %i.jn = or disjoint i32 %i.jj, %i.jm
  store i32 %i.jn, ptr %i.dl, align 4, !tbaa !139
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !117 ; 2 uses
  %i.jq = zext i8 %i.jp to i32
  store i32 %i.jq, ptr %i.cz, align 8, !tbaa !140
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ip, i64 33
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !117 ; 2 uses
  %i.jt = zext i8 %i.js to i32
  store i32 %i.jt, ptr %i.dk, align 4, !tbaa !141
  %i.ju = zext i32 %i.iw to i64
  %i.jv = zext i32 %i.is to i64
  %i.jw = add nuw nsw i64 %i.ju, %i.jv
  %i.jx = load i32, ptr %i.z, align 4, !tbaa !34
  %i.jy = sext i32 %i.jx to i64
  %i.jz = icmp sgt i64 %i.jw, %i.jy
  br i1 %i.jz, label %.loopexit202, label %bb.ca

bb.ca:                                            ; preds = %.loopexit
  %i.ka = zext i32 %58 to i64
  %i.kb = zext i32 %41 to i64
  %i.kc = add nuw nsw i64 %i.ka, %i.kb
  %i.kd = load i32, ptr %i.x, align 8, !tbaa !37
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp sgt i64 %i.kc, %i.ke
  br i1 %i.kf, label %.loopexit202, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kg = icmp ugt i8 %i.jp, 2
  %i.kh = icmp ugt i8 %i.js, 1
  %or.cond179 = select i1 %i.kg, i1 true, i1 %i.kh
  br i1 %or.cond179, label %.loopexit202, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ki = load ptr, ptr %i.eh, align 8, !tbaa !103
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i64, ptr %i.iq, align 1
  store i64 %i.kk, ptr %i.kj, align 1
  %i.kl = load i8, ptr %i.cs, align 8, !tbaa !133, !range !147, !noundef !148
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %.loopexit202, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i8 1, ptr %i.cs, align 8, !tbaa !133
  %i.kn = load ptr, ptr %i.cn, align 8, !tbaa !118
  %.not.i = icmp eq ptr %i.kn, null
  br i1 %.not.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @png_destroy_read_struct(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cu, ptr noundef null)
          to label %bb.cf unwind label %.loopexit201

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.ko = invoke noundef zeroext i1 @_ZN2cv10PngDecoder16processing_startEPvRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(4544) %0, ptr noundef nonnull %i.cl, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.cg unwind label %.loopexit201

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.ko, label %.backedge, label %.loopexit202

bb.ch:                                            ; preds = %bb.ag
  store i8 1, ptr %i.bb, align 1, !tbaa !287
  %i.kp = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.kq = load ptr, ptr %i.ct, align 8, !tbaa !142
  %i.kr = ptrtoint ptr %i.kq to i64
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = sub i64 %i.kr, %i.ks
  br label %.invoke

.invoke:                                          ; preds = %bb.dl, %bb.ck, %bb.ch
  %i.ku = phi ptr [ %i.kp, %bb.ch ], [ %i.lk, %bb.ck ], [ %i.nq, %bb.dl ]
  %i.kv = phi i64 [ %i.kt, %bb.ch ], [ %i.lo, %bb.ck ], [ %i.nu, %bb.dl ]
  %i.kw = load ptr, ptr %i.cu, align 8, !tbaa !119
  %i.kx = load ptr, ptr %i.cn, align 8, !tbaa !118
  invoke void @png_process_data(ptr noundef %i.kx, ptr noundef %i.kw, ptr noundef %i.ku, i64 noundef %i.kv)
          to label %.backedge unwind label %.loopexit201

.backedge:                                        ; preds = %.invoke, %bb.cg
  br label %bb.af, !llvm.loop !279

bb.ci:                                            ; preds = %bb.ag
  %i.ky = load i8, ptr %i.cs, align 8, !tbaa !133, !range !147, !noundef !148
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.cj, label %bb.dl

bb.cj:                                            ; preds = %bb.ci
  store i8 1, ptr %i.bb, align 1, !tbaa !287
  %i.la = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.lc = load ptr, ptr %i.ct, align 8, !tbaa !142
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.la to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = add i32 %i.lg, -16
  invoke void @png_save_uint_32(ptr noundef nonnull %i.lb, i32 noundef %i.lh)
          to label %bb.ck unwind label %.loopexit201

bb.ck:                                            ; preds = %bb.cj
  %i.li = load ptr, ptr %3, align 8, !tbaa !103   ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i32 1413563465, ptr %i.lj, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.ll = load ptr, ptr %i.ct, align 8, !tbaa !142
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.li to i64
  %reass.sub = sub i64 %i.lm, %i.ln
  %i.lo = add i64 %reass.sub, -4
  br label %.invoke

bb.cl:                                            ; preds = %bb.ag
  %i.lp = invoke noundef zeroext i1 @_ZN2cv10PngDecoder17processing_finishEv(ptr noundef nonnull align 8 dereferenceable(4544) %0)
          to label %bb.cm unwind label %.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.lp, label %bb.cn, label %.loopexit202

bb.cn:                                            ; preds = %bb.cm
  %i.lq = load i32, ptr %i.dk, align 4, !tbaa !141
  %i.lr = trunc i32 %i.lq to i8
  %i.ls = load i32, ptr %i.dc, align 8, !tbaa !136
  %i.lt = load i32, ptr %i.df, align 4, !tbaa !137
  %i.lu = load i32, ptr %i.dd, align 8, !tbaa !134
  %i.lv = load i32, ptr %i.dg, align 4, !tbaa !135
  invoke void @_ZN2cv10PngDecoder13compose_frameERSt6vectorIPhSaIS2_EERKS4_hjjjjRNS_3MatE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 noundef zeroext %i.lr, i32 noundef %i.ls, i32 noundef %i.lt, i32 noundef %i.lu, i32 noundef %i.lv, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.co unwind label %.loopexit.split-lp

bb.co:                                            ; preds = %bb.cn
  %i.lw = load i32, ptr %i.dl, align 4, !tbaa !139 ; 2 uses
  %.not145 = icmp eq i32 %i.lw, 0
  br i1 %.not145, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 100, ptr %i.dl, align 4, !tbaa !139
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.lx = phi i32 [ %i.lw, %bb.co ], [ 100, %bb.cp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ly = load i32, ptr %i.dm, align 8, !tbaa !138
  %i.lz = uitofp i32 %i.ly to double
  %i.ma = fmul nnan double %i.lz, 1.000000e+03
  %i.mb = uitofp i32 %i.lx to double
  %i.mc = fdiv double %i.ma, %i.mb
  %i.md = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.me = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.md)
  store i32 %i.me, ptr %i.a, align 4, !tbaa !14
  invoke void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.cr unwind label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.mf = load i32, ptr %4, align 8, !tbaa !35    ; 3 uses
  %i.mg = and i32 %i.mf, 31
  %i.mh = icmp eq i32 %i.mg, 2
  %.pre228 = load i32, ptr %1, align 8, !tbaa !35 ; 3 uses
  %i.mi = and i32 %.pre228, 31
  %i.mj = icmp eq i32 %i.mi, 0
  %or.cond = select i1 %i.mh, i1 %i.mj, i1 false
  br i1 %or.cond, label %bb.cs, label %bb.da

bb.cs:                                            ; preds = %bb.cr
  %i.mk = xor i32 %.pre228, %i.mf
  %i.ml = and i32 %i.mk, 4064
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.mn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.mo, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !166
  store ptr %1, ptr %i.mn, align 8, !tbaa !167
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef 0, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %.loopexit202

bb.cv:                                            ; preds = %bb.cq
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.dm

bb.cw:                                            ; preds = %bb.ct
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.dm

bb.cx:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.mr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.ms, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !166
  store ptr %4, ptr %i.mr, align 8, !tbaa !167
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %19, i32 noundef 0, double noundef f0x3F70101010101010, double noundef 0.000000e+00)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  %.pre226 = load i32, ptr %4, align 8, !tbaa !35
  %.pre227 = load i32, ptr %1, align 8, !tbaa !35
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.dm

bb.da:                                            ; preds = %bb.cr, %bb.cy
  %i.mu = phi i32 [ %.pre228, %bb.cr ], [ %.pre227, %bb.cy ]
  %i.mv = phi i32 [ %i.mf, %bb.cr ], [ %.pre226, %bb.cy ]
  %i.mw = lshr i32 %i.mv, 5
  %i.mx = and i32 %i.mw, 127
  %i.my = lshr i32 %i.mu, 5
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN2cv9APNGFrameESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a

_ZNSt12_Vector_baseIN2cv9APNGFrameESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN2cv9APNGFrameEEvT_S3_.exit, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !237
  store ptr %i.an, ptr %i.a, align 8, !tbaa !234
  %i.ba = getelementptr inbounds nuw [1088 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !235
  ret void

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #29 ; 0 uses
  %i.bd = load ptr, ptr %i.r, align 8, !tbaa !19  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #28
  br label %bb.n

bb.l:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv9APNGFrameES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZNSt15__new_allocatorIPhE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %.0.ph = phi ptr [ %i.p, %.noexc.i.i.i ], [ %i.p, %_ZNSt15__new_allocatorIPhE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.am, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv9APNGFrameES2_SaIS1_EET0_T_S5_S4_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPN2cv9APNGFrameEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.ph)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #32
          to label %bb.q unwind label %bb.m

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.bk

bb.p:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #30
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN2cv9APNGFrameEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.y, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.01218 = phi ptr [ %i.x, %bb.f ], [ %0, %bb.a ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1088) %.019, ptr noundef nonnull align 8 dereferenceable(1088) %.01218, i64 1060, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 1064 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01218, i64 1064 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01218, i64 1072 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIPhE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !143

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIPhE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #31
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIPhE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.j, %_ZNSt15__new_allocatorIPhE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 1072 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 1080
  store ptr %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !236  ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !236
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !144

bb.c:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc13
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !43
  store ptr %i.v, ptr %i.k, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %.01218, i64 1088 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 1088 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !487

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIPhE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPN2cv9APNGFrameEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #32
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #30
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { nounwind returns_twice }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !44}
!1 = distinct !{!1, !44}
!2 = distinct !{!2, !44}
!3 = distinct !{!3, !44}
!4 = distinct !{!4, !44}
!5 = distinct !{!5, !44}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"any p2 pointer", !15, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !17, i64 16}
!21 = !{!"p1 omnipotent char", !15, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPhSaIS0_EE12_Vector_implE", !18, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIPhSaIS0_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIPhSaIS0_EE", !23, i64 0}
!25 = !{!"_ZTSN2cv9APNGFrameE", !21, i64 0, !11, i64 8, !11, i64 12, !10, i64 16, !10, i64 17, !10, i64 785, !11, i64 1044, !11, i64 1048, !11, i64 1052, !11, i64 1056, !24, i64 1064}
!26 = !{!25, !11, i64 1052}
!27 = !{!25, !11, i64 1056}
!28 = !{!"p1 _ZTSN2cv12MatAllocatorE", !15, i64 0}
!29 = !{!"p1 _ZTSN2cv8UMatDataE", !15, i64 0}
!30 = !{!"_ZTSN2cv10DataLayoutE", !10, i64 0}
!31 = !{!"_ZTSN2cv8MatShapeE", !11, i64 0, !30, i64 4, !11, i64 8, !10, i64 12}
!32 = !{!"_ZTSN2cv7MatStepE", !10, i64 0}
!33 = !{!"_ZTSN2cv3MatE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !28, i64 56, !29, i64 64, !31, i64 72, !32, i64 128}
!34 = !{!33, !11, i64 12}
!35 = !{!33, !11, i64 0}
!36 = !{!25, !11, i64 8}
!37 = !{!33, !11, i64 8}
!38 = !{!25, !11, i64 12}
!39 = !{!25, !10, i64 16}
!40 = !{!33, !21, i64 24}
!41 = !{!25, !21, i64 0}
!42 = !{!18, !17, i64 8}
!43 = !{!21, !21, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!"vtable pointer", !9, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!49 = !{!"long", !10, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !49, i64 8, !10, i64 16}
!51 = !{!50, !49, i64 8}
!52 = !{!"bool", !10, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIhSaIhEE", !55, i64 0}
!57 = !{!"_ZTSSt4lessIiE"}
!58 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !57, i64 0}
!59 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!60 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!61 = !{!"_ZTSSt18_Rb_tree_node_base", !59, i64 0, !60, i64 8, !60, i64 16, !60, i64 24}
!62 = !{!"_ZTSSt15_Rb_tree_header", !61, i64 0, !49, i64 32}
!63 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !58, i64 0, !62, i64 8}
!64 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiN2cv11ExifEntry_tEESt10_Select1stIS4_ESt4lessIiESaIS4_EE", !63, i64 0}
!65 = !{!"_ZTSSt3mapIiN2cv11ExifEntry_tESt4lessIiESaISt4pairIKiS1_EEE", !64, i64 0}
!66 = !{!"_ZTSN2cv12Endianness_tE", !10, i64 0}
!67 = !{!"_ZTSN2cv10ExifReaderE", !56, i64 0, !65, i64 24, !66, i64 72}
!68 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !10, i64 0}
!69 = !{!"_ZTSN2cv3VecIdLi4EEE", !68, i64 0}
!70 = !{!"_ZTSN2cv7Scalar_IdEE", !69, i64 0}
!71 = !{!"p1 int", !15, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIiSaIiEE", !74, i64 0}
!76 = !{!"p1 _ZTSN2cv3MatE", !15, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !77, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !79, i64 0}
!81 = !{!"_ZTSN2cv9AnimationE", !11, i64 0, !70, i64 8, !75, i64 40, !80, i64 64, !33, i64 88}
!82 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !15, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !85, i64 0}
!87 = !{!"_ZTSN2cv16BaseImageDecoderE", !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !50, i64 24, !50, i64 56, !33, i64 88, !52, i64 296, !52, i64 297, !67, i64 304, !49, i64 384, !81, i64 392, !11, i64 688, !86, i64 696}
!88 = !{!"p1 _ZTS14png_struct_def", !15, i64 0}
!89 = !{!"p1 _ZTS12png_info_def", !15, i64 0}
!90 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!91 = !{!"_ZTSN2cv5ChunkE", !56, i64 0}
!92 = !{!"p1 _ZTSN2cv5ChunkE", !15, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN2cv5ChunkESaIS1_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIN2cv5ChunkESaIS1_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN2cv5ChunkESaIS1_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIN2cv5ChunkESaIS1_EE", !95, i64 0}
!97 = !{!"_ZTSN2cv10PngDecoderE", !87, i64 0, !88, i64 720, !89, i64 728, !11, i64 736, !90, i64 744, !11, i64 752, !91, i64 760, !11, i64 784, !49, i64 792, !96, i64 800, !25, i64 824, !25, i64 1912, !25, i64 3000, !33, i64 4088, !33, i64 4296, !11, i64 4504, !11, i64 4508, !11, i64 4512, !11, i64 4516, !11, i64 4520, !11, i64 4524, !11, i64 4528, !11, i64 4532, !52, i64 4536, !52, i64 4537}
!98 = !{!97, !11, i64 752}
!99 = !{!97, !90, i64 744}
!100 = !{!97, !49, i64 792}
!101 = !{!97, !11, i64 736}
!102 = !{!97, !11, i64 784}
!103 = !{!53, !21, i64 0}
!104 = !{!53, !21, i64 16}
!105 = !{!93, !92, i64 0}
!106 = !{!93, !92, i64 8}
!107 = !{!93, !92, i64 16}
!108 = !{!83, !82, i64 0}
!109 = !{!83, !82, i64 8}
!110 = !{!83, !82, i64 16}
!111 = !{!77, !76, i64 0}
!112 = !{!77, !76, i64 8}
!113 = !{!77, !76, i64 16}
!114 = !{!72, !71, i64 0}
!115 = !{!72, !71, i64 16}
!116 = !{!50, !21, i64 0}
!117 = !{!10, !10, i64 0}
!118 = !{!97, !88, i64 720}
!119 = !{!97, !89, i64 728}
!120 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!121 = !{!120, !11, i64 8}
!122 = !{!120, !11, i64 12}
!123 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!124 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !123, i64 0}
!125 = !{!124, !123, i64 0}
!126 = !{!48, !21, i64 0}
!127 = !{!49, !49, i64 0}
!128 = !{!87, !49, i64 384}
!129 = !{!"_ZTSN2cv5utils7logging8LogLevelE", !10, i64 0}
!130 = !{!"_ZTSN2cv5utils7logging6LogTagE", !21, i64 0, !129, i64 8}
!131 = !{!130, !129, i64 8}
!132 = !{!130, !21, i64 0}
!133 = !{!97, !52, i64 4536}
!134 = !{!97, !11, i64 4504}
!135 = !{!97, !11, i64 4508}
!136 = !{!97, !11, i64 4512}
!137 = !{!97, !11, i64 4516}
!138 = !{!97, !11, i64 4520}
!139 = !{!97, !11, i64 4524}
!140 = !{!97, !11, i64 4528}
!141 = !{!97, !11, i64 4532}
!142 = !{!53, !21, i64 8}
!143 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_3
