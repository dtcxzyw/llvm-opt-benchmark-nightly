inline.NumInlined: 9031
inline.NumDeleted: 2243
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp11FBXExporter20WriteHeaderExtensionEv:.noexc.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

bb.cc:                                            ; preds = %bb.bs
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rn = load ptr, ptr %24, align 8              ; 2 uses
  %i.ro = icmp eq ptr %i.rn, %i.oi
  br i1 %i.ro, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %bb.cc
  %i.rp = load i64, ptr %i.oi, align 8
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %bb.cb
  %.pn84 = phi { ptr, i32 } [ %i.rl, %bb.cb ], [ %i.rm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %i.rm, %bb.cc ]
  %i.rr = load ptr, ptr %23, align 8              ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.of
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
  %i.rt = load i64, ptr %i.of, align 8
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit323

bb.cd:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit296
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rw = load ptr, ptr %26, align 8              ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.ph
  br i1 %i.rx, label %.body294, label %.body294.sink.split

.body294.sink.split:                              ; preds = %bb.cd, %bb.bv
  %.sink474 = phi ptr [ %i.pt, %bb.bv ], [ %i.rw, %bb.cd ]
  %.pn87.ph = phi { ptr, i32 } [ %i.ps, %bb.bv ], [ %i.rv, %bb.cd ]
  %i.ry = load i64, ptr %i.ph, align 8
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %.sink474, i64 noundef %i.rz) #32
  br label %.body294

.body294:                                         ; preds = %.body294.sink.split, %bb.cd, %bb.bv
  %.pn87 = phi { ptr, i32 } [ %i.ps, %bb.bv ], [ %i.rv, %bb.cd ], [ %.pn87.ph, %.body294.sink.split ]
  %i.sa = load ptr, ptr %25, align 8              ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.pe
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %.body294
  %i.sc = load i64, ptr %i.pe, align 8
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %.body294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit323

.thread354:                                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit323

_ZNSt6vectorIhSaIhEED2Ev.exit323:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %bb.bn, %.thread354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, %bb.bh
  %.pn87.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %i.lr, %bb.bh ], [ %i.nf, %bb.bn ], [ %i.rb, %.thread354 ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ], [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %18) #31
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit323, %bb.bg
  %.pn87.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit323 ], [ %i.lq, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %.pn87.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn, %bb.ce ], [ %i.lp, %bb.bf ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252 ], [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249 ], [ %i.la, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %i.kg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %8) #31
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %.pn87.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn, %bb.cf ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %bb.v
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn, %bb.cg ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.dr, %bb.v ]
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #31
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ch ], [ %i.bh, %_ZNSt6vectorIhSaIhEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %1) #31
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ci ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn87.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11FBXExporter19WriteGlobalSettingsEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %1 = alloca %struct.aiString, align 4           ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.aiString, align 4           ; 4 uses
  %3 = alloca %struct.aiString, align 4           ; 4 uses
  %4 = alloca %struct.aiString, align 4           ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.aiString, align 4           ; 3 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.aiString, align 4           ; 4 uses
  %7 = alloca %struct.aiString, align 4           ; 4 uses
  %8 = alloca %struct.aiString, align 4           ; 4 uses
  %9 = alloca %struct.aiString, align 4           ; 4 uses
  %10 = alloca %struct.aiString, align 4          ; 4 uses
  %11 = alloca %struct.aiString, align 4          ; 4 uses
  %12 = alloca %struct.aiString, align 4          ; 4 uses
  %13 = alloca %"class.Assimp::FBX::Node", align 8 ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.Assimp::FBX::Node", align 8 ; 32 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %class.aiVector3t, align 8         ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.f, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.f, ptr noundef nonnull align 1 dereferenceable(14) @.str.44, i64 14, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.i, i8 0, i64 49, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.j, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.j, ptr noundef nonnull align 1 dereferenceable(7) @.str.31, i64 7, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 23
  store i8 0, ptr %i.l, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i32 1000, ptr %i.e, align 4
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJiEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.a unwind label %bb.bu

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.m = load ptr, ptr %14, align 8               ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.a
  %i.o = load i64, ptr %i.j, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.q, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) @.str.45, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 12, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i8 0, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.t, i8 0, i64 49, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert613 = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %.pre614 = load ptr, ptr %.phi.trans.insert613, align 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.v, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.v, ptr noundef nonnull align 1 dereferenceable(6) @.str.46, i64 6, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 6, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i8 0, ptr %i.x, align 2
  %.not.i = icmp eq ptr %.pre614, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1018) %i.z, i8 0, i64 1018, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.y, ptr noundef nonnull align 1 dereferenceable(6) @.str.46, i64 6, i1 false)
  %i.aa = load i32, ptr %.pre614, align 8         ; 2 uses
  %.not.i3.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i3.i.i, label %.sink.split.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre614, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %wide.trip.count.i.i.i = zext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZNK8aiStringeqERKS_.exit.thread.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [1028 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 6
  br i1 %i.af, label %_ZNK8aiStringeqERKS_.exit.i.i.i, label %_ZNK8aiStringeqERKS_.exit.thread.i.i.i

_ZNK8aiStringeqERKS_.exit.i.i.i:                  ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = load i32, ptr %i.y, align 1
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = getelementptr i8, ptr %i.ag, i64 4
  %i.al = getelementptr i8, ptr %i.y, i64 4
  %i.am = load i16, ptr %i.ak, align 1
  %i.an = load i16, ptr %i.al, align 1
  %i.ao = zext i16 %i.am to i32
  %i.ap = zext i16 %i.an to i32
  %i.aq = xor i32 %i.ao, %i.ap
  %i.ar = or i32 %i.aj, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.d, label %_ZNK8aiStringeqERKS_.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.pre614, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %.not7.i.i.i.i = icmp eq i32 %i.ay, 1
  br i1 %.not7.i.i.i.i, label %bb.e, label %.sink.split.i

_ZNK8aiStringeqERKS_.exit.thread.i.i.i:           ; preds = %_ZNK8aiStringeqERKS_.exit.i.i.i, %bb.c
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.sink.split.i, label %bb.c, !llvm.loop !51

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i32, ptr %i.ba, align 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i.i, %bb.e, %bb.d, %bb.b
  %.sink.ph.i = phi i32 [ %i.bb, %bb.e ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %_ZNK8aiStringeqERKS_.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.sink.i = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.sink.ph.i, %.sink.split.i ]
  invoke void @_ZN6Assimp3FBX4Node9AddP70intERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %.sink.i)
          to label %_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit unwind label %bb.bv

_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit: ; preds = %bb.f
  %i.bc = load ptr, ptr %16, align 8              ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.v
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.bg = load ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.bh, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bh, ptr noundef nonnull align 1 dereferenceable(10) @.str.47, i64 10, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 10, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 26
  store i8 0, ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8            ; 4 uses
  %.not.i125 = icmp eq ptr %i.bl, null
  br i1 %.not.i125, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1014) %i.bn, i8 0, i64 1014, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.bm, ptr noundef nonnull align 1 dereferenceable(10) @.str.47, i64 10, i1 false)
  %i.bo = load i32, ptr %i.bl, align 8            ; 2 uses
  %.not.i3.i.i128 = icmp eq i32 %i.bo, 0
  br i1 %.not.i3.i.i128, label %.sink.split.i135, label %.lr.ph.i.i.i129

.lr.ph.i.i.i129:                                  ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %wide.trip.count.i.i.i130 = zext i32 %i.bo to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i.i132, %.lr.ph.i.i.i129
  %indvars.iv.i.i.i131 = phi i64 [ 0, %.lr.ph.i.i.i129 ], [ %indvars.iv.next.i.i.i133, %_ZNK8aiStringeqERKS_.exit.thread.i.i.i132 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [1028 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i131 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp eq i32 %i.bs, 10
  br i1 %i.bt, label %_ZNK8aiStringeqERKS_.exit.i.i.i138, label %_ZNK8aiStringeqERKS_.exit.thread.i.i.i132

_ZNK8aiStringeqERKS_.exit.i.i.i138:               ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = load i64, ptr %i.bm, align 1
  %i.bx = xor i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.bu, i64 8
  %i.bz = getelementptr i8, ptr %i.bm, i64 8
  %i.ca = load i16, ptr %i.by, align 1
  %i.cb = load i16, ptr %i.bz, align 1
  %i.cc = zext i16 %i.ca to i64
  %i.cd = zext i16 %i.cb to i64
  %i.ce = xor i64 %i.cc, %i.cd
  %i.cf = or i64 %i.bx, %i.ce
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.i, label %_ZNK8aiStringeqERKS_.exit.thread.i.i.i132

bb.i:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i.i138
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i131 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %.not7.i.i.i.i140 = icmp eq i32 %i.cm, 1
  br i1 %.not7.i.i.i.i140, label %bb.j, label %.sink.split.i135

_ZNK8aiStringeqERKS_.exit.thread.i.i.i132:        ; preds = %_ZNK8aiStringeqERKS_.exit.i.i.i138, %bb.h
  %indvars.iv.next.i.i.i133 = add nuw nsw i64 %indvars.iv.i.i.i131, 1 ; 2 uses
  %exitcond.not.i.i.i134 = icmp eq i64 %indvars.iv.next.i.i.i133, %wide.trip.count.i.i.i130
  br i1 %exitcond.not.i.i.i134, label %.sink.split.i135, label %bb.h, !llvm.loop !51

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load i32, ptr %i.co, align 4
  br label %.sink.split.i135

.sink.split.i135:                                 ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i.i132, %bb.j, %bb.i, %bb.g
  %.sink.ph.i136 = phi i32 [ %i.cp, %bb.j ], [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %_ZNK8aiStringeqERKS_.exit.thread.i.i.i132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.sink.i137 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %.sink.ph.i136, %.sink.split.i135 ]
  invoke void @_ZN6Assimp3FBX4Node9AddP70intERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %.sink.i137)
          to label %_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit142 unwind label %bb.bw

_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit142: ; preds = %bb.k
  %i.cq = load ptr, ptr %17, align 8              ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bh
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit142
  %i.cs = load i64, ptr %i.bh, align 8
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_Z12WritePropIntPK7aiSceneRN6Assimp3FBX4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.cu = load ptr, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  %i.cv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.cv, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cv, ptr noundef nonnull align 1 dereferenceable(9) @.str.48, i64 9, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 9, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 25
  store i8 0, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  %.not.i150 = icmp eq ptr %i.cz, null
  br i1 %.not.i150, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1015) %i.db, i8 0, i64 1015, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.da, ptr noundef nonnull align 1 dereferenceable(9) @.str.48, i64 9, i1 false)
  %i.dc = load i32, ptr %i.cz, align 8            ; 2 uses
  %.not.i3.i.i153 = icmp eq i32 %i.dc, 0
  br i1 %.not.i3.i.i153, label %.sink.split.i160, label %.lr.ph.i.i.i154

.lr.ph.i.i.i154:                                  ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %wide.trip.count.i.i.i155 = zext i32 %i.dc to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread.i.i.i157, %.lr.ph.i.i.i154
  %indvars.iv.i.i.i156 = phi i64 [ 0, %.lr.ph.i.i.i154 ], [ %indvars.iv.next.i.i.i158, %_ZNK8aiStringeqERKS_.exit.thread.i.i.i157 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [1028 x i8], ptr %i.de, i64 %indvars.iv.i.i.i156 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp eq i32 %i.dg, 9
  br i1 %i.dh, label %_ZNK8aiStringeqERKS_.exit.i.i.i163, label %_ZNK8aiStringeqERKS_.exit.thread.i.i.i157

_ZNK8aiStringeqERKS_.exit.i.i.i163:               ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 1
  %i.dk = load i64, ptr %i.da, align 1
  %i.dl = xor i64 %i.dj, %i.dk
  %i.dm = getelementptr i8, ptr %i.di, i64 8
  %i.dn = getelementptr i8, ptr %i.da, i64 8
  %i.do = load i8, ptr %i.dm, align 1
  %i.dp = load i8, ptr %i.dn, align 1
  %i.dq = zext i8 %i.do to i64
  %i.dr = zext i8 %i.dp to i64
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = or i64 %i.dl, %i.ds
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.n, label %_ZNK8aiStringeqERKS_.exit.thread.i.i.i157

bb.n:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.i.i.i163
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i156 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8
  %.not7.i.i.i.i165 = icmp eq i32 %i.ea, 1
  br i1 %.not7.i.i.i.i165, label %bb.o, label %.sink.split.i160

end_hunk_0
begin_hunk_1_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %49 = alloca %"class.Assimp::FBX::Node", align 8 ; 20 uses
  %i.as = alloca i64, align 8                     ; 6 uses
  %50 = alloca %struct.aiString, align 4          ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.au = alloca i32, align 4                     ; 5 uses
  %57 = alloca %"class.Assimp::FBX::Node", align 8 ; 30 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %76 = alloca %"class.std::map.11", align 8      ; 12 uses
  %77 = alloca %struct.aiString, align 4          ; 6 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %79 = alloca %"class.std::map.75", align 8      ; 17 uses
  %80 = alloca %"class.Assimp::FBX::Node", align 8 ; 21 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %85 = alloca %"class.Assimp::FBX::Node", align 8 ; 13 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %87 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %92 = alloca %"class.std::vector.23", align 8   ; 10 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.av = alloca i32, align 4                     ; 5 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %103 = alloca %"class.std::map.81", align 8     ; 10 uses
  %104 = alloca %"class.std::map.87", align 8     ; 10 uses
  %105 = alloca [10 x %"struct.std::pair.94"], align 8 ; 52 uses
  %106 = alloca %"struct.std::less", align 1      ; 4 uses
  %107 = alloca %"class.std::allocator.96", align 1 ; 4 uses
  %i.aw = alloca i64, align 8                     ; 7 uses
  %108 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 38 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %110 = alloca %struct.aiString, align 4         ; 6 uses
  %111 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %114 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.ax = alloca i64, align 8                     ; 7 uses
  %116 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 38 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.ay = alloca i64, align 8                     ; 12 uses
  %118 = alloca %struct.aiUVTransform, align 16   ; 10 uses
  %i.az = alloca i32, align 4                     ; 5 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %120 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 38 uses
  %121 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %122 = alloca %"class.Assimp::FBX::Node", align 8 ; 18 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %128 = alloca %"class.Assimp::FBX::Node", align 8 ; 17 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %134 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %136 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.ba = alloca double, align 8                  ; 5 uses
  %i.bb = alloca double, align 8                  ; 5 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.bc = alloca double, align 8                  ; 5 uses
  %i.bd = alloca double, align 8                  ; 5 uses
  %138 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.be = alloca i64, align 8                     ; 9 uses
  %140 = alloca %"class.Assimp::FBX::Node", align 8 ; 13 uses
  %141 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %142 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.bf = alloca i32, align 4                     ; 5 uses
  %i.bg = alloca ptr, align 8                     ; 5 uses
  %144 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %145 = alloca %"class.Assimp::FBX::Node", align 8 ; 20 uses
  %i.bh = alloca i64, align 8                     ; 9 uses
  %146 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %148 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %149 = alloca %"class.std::vector.101", align 8 ; 11 uses
  %150 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %151 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %152 = alloca %"class.std::vector.106", align 8 ; 7 uses
  %153 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %154 = alloca %"class.std::vector.106", align 8 ; 7 uses
  %155 = alloca %"class.Assimp::FBX::Node", align 8 ; 16 uses
  %i.bi = alloca i64, align 8                     ; 12 uses
  %156 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %157 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %158 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %159 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %160 = alloca %"class.Assimp::FBX::Node", align 8 ; 13 uses
  %161 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %162 = alloca %"class.std::vector.111", align 8 ; 9 uses
  %163 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %164 = alloca %"class.std::unordered_set", align 8 ; 20 uses
  %165 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %166 = alloca %"class.std::map.127", align 8    ; 14 uses
  %167 = alloca %"class.std::vector.33", align 8  ; 12 uses
  %168 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %169 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %170 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %171 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.bj = alloca ptr, align 8                     ; 6 uses
  %i.bk = alloca i64, align 8                     ; 9 uses
  %172 = alloca %"class.Assimp::FBX::Node", align 8 ; 15 uses
  %173 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %174 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.bl = alloca i32, align 4                     ; 5 uses
  %175 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.bm = alloca double, align 8                  ; 5 uses
  %176 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %177 = alloca %"class.std::set", align 8        ; 10 uses
  %178 = alloca %"class.std::set.144", align 8    ; 10 uses
  %179 = alloca %class.aiMatrix4x4t, align 16     ; 8 uses
  %180 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.bn = alloca i64, align 8                     ; 12 uses
  %181 = alloca %"class.Assimp::FBX::Node", align 8 ; 17 uses
  %182 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %183 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %184 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %185 = alloca %"class.std::set.154", align 8    ; 9 uses
  %186 = alloca %"class.std::vector.101", align 8 ; 11 uses
  %187 = alloca %"class.std::vector.111", align 8 ; 11 uses
  %188 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %189 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %190 = alloca %class.aiMatrix4x4t, align 16     ; 16 uses
  %191 = alloca %class.aiMatrix4x4t, align 4      ; 6 uses
  %192 = alloca %class.aiMatrix4x4t, align 16     ; 22 uses
  %193 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %194 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %195 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %196 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.bo = alloca i64, align 8                     ; 6 uses
  %197 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %198 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %199 = alloca %"class.Assimp::FBX::Node", align 8 ; 17 uses
  %200 = alloca %"class.Assimp::FBX::Node", align 8 ; 20 uses
  %201 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %202 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %203 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %204 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %205 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %206 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %207 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %208 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %209 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %210 = alloca %"class.Assimp::FBX::FBXExportProperty", align 8 ; 7 uses
  %211 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %212 = alloca %"class.Assimp::FBX::FBXExportProperty", align 8 ; 7 uses
  %213 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.bp = alloca i64, align 8                     ; 5 uses
  %214 = alloca %"class.Assimp::FBX::Node", align 8 ; 16 uses
  %215 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %216 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %217 = alloca %"class.Assimp::FBX::Node", align 8 ; 16 uses
  %218 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %219 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %220 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %221 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.bq = alloca i64, align 8                     ; 6 uses
  %222 = alloca %"class.Assimp::FBX::Node", align 8 ; 13 uses
  %223 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %224 = alloca %"class.std::vector.165", align 8 ; 18 uses
  %225 = alloca %"class.std::vector.170", align 8 ; 13 uses
  %226 = alloca %class.aiMatrix4x4t, align 16     ; 15 uses
  %227 = alloca %class.aiVector3t, align 8        ; 7 uses
  %228 = alloca %class.aiVector3t, align 8        ; 7 uses
  %229 = alloca %class.aiVector3t, align 8        ; 7 uses
  %230 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %231 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %232 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %233 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %234 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %235 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %236 = alloca %class.aiMatrix4x4t, align 16     ; 15 uses
  %237 = alloca %class.aiVector3t, align 8        ; 8 uses
  %238 = alloca %class.aiVector3t, align 8        ; 8 uses
  %239 = alloca %class.aiVector3t, align 8        ; 8 uses
  %240 = alloca %"class.std::vector.6", align 8   ; 25 uses
  %241 = alloca %"class.std::vector.106", align 8 ; 19 uses
  %242 = alloca %"class.std::vector.106", align 8 ; 19 uses
  %243 = alloca %"class.std::vector.106", align 8 ; 19 uses
  %244 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %245 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %246 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %247 = alloca %class.aiMatrix4x4t, align 4      ; 11 uses
  %248 = alloca %class.aiVector3t, align 8        ; 6 uses
  %249 = alloca %class.aiVector3t, align 8        ; 9 uses
  %250 = alloca %class.aiVector3t, align 8        ; 6 uses
  %251 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %252 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %253 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %254 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %255 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %256 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.br = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.e, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.bt = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  store ptr %i.bt, ptr %42, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #31
  store i64 17, ptr %i.ao, align 8
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bu, ptr %42, align 8
  %i.bv = load i64, ptr %i.ao, align 8            ; 3 uses
  store i64 %i.bv, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bu, ptr noundef nonnull align 1 dereferenceable(17) @.str.262, i64 17, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %42, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #31
  invoke void @_ZN6Assimp11FBXExporter23WriteAsciiSectionHeaderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.bz = load ptr, ptr %42, align 8              ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bt
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.cb = load i64, ptr %i.bt, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %bb.e

bb.c:                                             ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145

bb.d:                                             ; preds = %.noexc
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %42, align 8              ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bt
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143: ; preds = %bb.d
  %i.ch = load i64, ptr %i.bt, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143, %bb.c
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.c ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1143 ], [ %i.ce, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %bb.azh

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  store ptr %i.ck, ptr %44, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8            ; 5 uses
  store ptr %i.cn, ptr %i.cl, align 8
  %.not.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, label %bb.f

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread: ; preds = %bb.e
  store ptr %i.ck, ptr %43, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr null, ptr %i.co, align 8
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %.thread21801

.thread21801:                                     ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.cs = load i32, ptr %i.cp, align 4
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cp, align 4
  store ptr %i.ck, ptr %43, align 16
  store ptr %i.cn, ptr %i.cr, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %bb.h

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.f
  %i.cv = atomicrmw volatile add ptr %i.cp, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.cl, align 8         ; 2 uses
  %i.cw = load <2 x ptr>, ptr %44, align 16
  store <2 x ptr> %i.cw, ptr %43, align 16
  %.not.i.i.i.i1146 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i1146, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %.pre20595 = load i8, ptr @__libc_single_threaded, align 1
  %i.cx = icmp eq i8 %.pre20595, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.pr.pre, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread21801, %bb.g
  %i.cz = phi ptr [ %i.cu, %.thread21801 ], [ %i.cy, %bb.g ] ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.dc = atomicrmw volatile add ptr %i.cy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i: ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.thread, %bb.i, %bb.h, %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i8 0, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, i8 0, i64 32, i1 false)
  %i.df = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #34
          to label %bb.j unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.i ; 3 uses

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %43) #31
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %44) #31
  br label %bb.azg

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr %i.df, ptr %i.de, align 8
  store ptr %i.df, ptr %i.dh, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 1024
  store ptr %i.dj, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.cl, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.dl, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4
  %i.dq = load ptr, ptr %i.dk, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #31, !inline_history !9
  %i.dt = load ptr, ptr %i.dk, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  %i.alk = getelementptr inbounds nuw i8, ptr %105, i64 136
  store i64 13, ptr %i.alk, align 8
  %i.all = getelementptr inbounds nuw i8, ptr %105, i64 157
  store i8 0, ptr %i.all, align 1
  %i.alm = getelementptr inbounds nuw i8, ptr %105, i64 160
  store i32 5, ptr %i.alm, align 8
  %i.aln = getelementptr inbounds nuw i8, ptr %105, i64 168 ; 3 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %105, i64 184 ; 6 uses
  store ptr %i.alo, ptr %i.aln, align 8
  store i32 1886221634, ptr %i.alo, align 8
  %i.alp = getelementptr inbounds nuw i8, ptr %105, i64 176
  store i64 4, ptr %i.alp, align 8
  %i.alq = getelementptr inbounds nuw i8, ptr %105, i64 188
  store i8 0, ptr %i.alq, align 4
  %i.alr = getelementptr inbounds nuw i8, ptr %105, i64 200
  store i32 6, ptr %i.alr, align 8
  %i.als = getelementptr inbounds nuw i8, ptr %105, i64 208 ; 3 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %105, i64 224 ; 6 uses
  store ptr %i.alt, ptr %i.als, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.alt, ptr noundef nonnull align 1 dereferenceable(9) @.str.204, i64 9, i1 false)
  %i.alu = getelementptr inbounds nuw i8, ptr %105, i64 216
  store i64 9, ptr %i.alu, align 8
  %i.alv = getelementptr inbounds nuw i8, ptr %105, i64 233
  store i8 0, ptr %i.alv, align 1
  %i.alw = getelementptr inbounds nuw i8, ptr %105, i64 240 ; 2 uses
  store i32 7, ptr %i.alw, align 8
  %i.alx = getelementptr inbounds nuw i8, ptr %105, i64 248 ; 6 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %105, i64 264 ; 6 uses
  store ptr %i.aly, ptr %i.alx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #31
  store i64 17, ptr %i.ac, align 8
  %i.alz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.alx, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 0)
          to label %.noexc1827 unwind label %bb.ik ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1521: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1780, %._crit_edge.i.i1511.lr.ph
  %.sroa.05629.013803 = phi ptr [ %.pre15395, %._crit_edge.i.i1511.lr.ph ], [ %i.azb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1780 ] ; 4 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.05629.013803, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #31
  store ptr %i.acx, ptr %80, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.acx, ptr noundef nonnull align 1 dereferenceable(5) @.str.217, i64 5, i1 false)
  store i64 5, ptr %i.acy, align 8
  store i8 0, ptr %i.afk, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.acz, i8 0, i64 49, i1 false)
  %.pre15396 = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !75
  %.pre15397 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !75 ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %.sroa.05629.013803, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #31
  store ptr %i.ada, ptr %81, align 8
  store i64 0, ptr %i.adb, align 8
  store i8 0, ptr %i.ada, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  store ptr %i.adc, ptr %83, align 8, !alias.scope !78
  store i64 0, ptr %i.add, align 8, !alias.scope !78
  store i8 0, ptr %i.adc, align 8, !alias.scope !78
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %83, i64 noundef %.pre15397)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i1529 unwind label %.loopexit6050

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i1529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1521
  %i.amc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull %i.ada, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i1530 unwind label %.loopexit6050 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i1530: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i1529
  %i.amd = load i64, ptr %i.add, align 8, !alias.scope !78
  %i.ame = sub i64 4611686018427387903, %i.amd
  %i.amf = icmp ult i64 %i.ame, %.pre15397
  br i1 %i.amf, label %.invoke.i.i1532, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i1531

.invoke.i.i1532:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i1530
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i1533 unwind label %.loopexit.split-lp6051

.cont.i.i1533:                                    ; preds = %.invoke.i.i1532
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i1531: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i1530
  %i.amg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef %.pre15396, i64 noundef %.pre15397)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit6050 ; 0 uses

.loopexit6050:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1521, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i1529, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i1531
  %lpad.loopexit6052 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp6051:                           ; preds = %.invoke.i.i1532
  %lpad.loopexit.split-lp6053 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ew:                                            ; preds = %.loopexit.split-lp6051, %.loopexit6050
  %lpad.phi6054 = phi { ptr, i32 } [ %lpad.loopexit6052, %.loopexit6050 ], [ %lpad.loopexit.split-lp6053, %.loopexit.split-lp6051 ] ; 2 uses
  %i.amh = load ptr, ptr %83, align 8, !alias.scope !78 ; 2 uses
  %i.ami = icmp eq ptr %i.amh, %i.adc
  br i1 %i.ami, label %.body1534, label %.body1534.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i1531
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.amj = load i64, ptr %i.add, align 8, !noalias !81
  %i.amk = add i64 %i.amj, -4611686018427387899
  %i.aml = icmp ult i64 %i.amk, 5
  br i1 %i.aml, label %bb.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1536

bb.ex:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.noexc1540 unwind label %.loopexit.split-lp6056

.noexc1540:                                       ; preds = %bb.ex
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1536: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.amm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull @.str.217, i64 noundef 5)
          to label %.noexc1541 unwind label %.loopexit6055 ; 6 uses

.noexc1541:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1536
  store ptr %i.ade, ptr %82, align 8, !alias.scope !81
  %i.amn = load ptr, ptr %i.amm, align 8          ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 16 ; 5 uses
  %i.amp = icmp eq ptr %i.amn, %i.amo
  br i1 %i.amp, label %bb.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1537

bb.ey:                                            ; preds = %.noexc1541
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  %i.amr = load i64, ptr %i.amq, align 8          ; 3 uses
  %i.ams = icmp ult i64 %i.amr, 16
  call void @llvm.assume(i1 %i.ams)
  %i.amt = add nuw nsw i64 %i.amr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ade, ptr noundef nonnull align 8 dereferenceable(1) %i.amo, i64 %i.amt, i1 false)
  br label %bb.ez

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1537: ; preds = %.noexc1541
  store ptr %i.amn, ptr %82, align 8, !alias.scope !81
  %i.amu = load i64, ptr %i.amo, align 8
  store i64 %i.amu, ptr %i.ade, align 8, !alias.scope !81
  %.phi.trans.insert.i1538 = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  %.pre.i1539 = load i64, ptr %.phi.trans.insert.i1538, align 8
  br label %bb.ez

bb.ez:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1537, %bb.ey
  %i.amv = phi i64 [ %i.amr, %bb.ey ], [ %.pre.i1539, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1537 ]
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  store i64 %i.amv, ptr %i.adf, align 8, !alias.scope !81
  store ptr %i.amo, ptr %i.amm, align 8
  store i64 0, ptr %i.amw, align 8
  store i8 0, ptr %i.amo, align 8
  invoke void @_ZN6Assimp3FBX4Node13AddPropertiesIRKlJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %80, ptr noundef nonnull align 8 dereferenceable(8) %i.amb, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 1 dereferenceable(5) @.str.287)
          to label %bb.fa unwind label %bb.fo

bb.fa:                                            ; preds = %bb.ez
  %i.amx = load ptr, ptr %82, align 8             ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.ade
  br i1 %i.amy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1543: ; preds = %bb.fa
  %i.amz = load i64, ptr %i.ade, align 8
  %i.ana = add i64 %i.amz, 1
  call void @_ZdlPvm(ptr noundef %i.amx, i64 noundef %i.ana) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1545: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1543
  %i.anb = load ptr, ptr %83, align 8             ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.adc
  br i1 %i.anc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1546: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1545
  %i.and = load i64, ptr %i.adc, align 8
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1548: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1545, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1546
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #31
  store ptr %i.adg, ptr %84, align 8
  store i32 1701869908, ptr %i.adg, align 8
  store i64 4, ptr %i.adh, align 8
  store i8 0, ptr %i.afl, align 4
  invoke void @_ZN6Assimp3FBX4Node8AddChildIJRA5_KcEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %80, ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 1 dereferenceable(5) @.str.287)
          to label %bb.fb unwind label %bb.fp

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1548
  %i.anf = load ptr, ptr %84, align 8             ; 2 uses
  %i.ang = icmp eq ptr %i.anf, %i.adg
  br i1 %i.ang, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1566, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1553

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1553: ; preds = %bb.fb
  %i.anh = load i64, ptr %i.adg, align 8
  %i.ani = add i64 %i.anh, 1
  call void @_ZdlPvm(ptr noundef %i.anf, i64 noundef %i.ani) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1566

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1566: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1553
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #31
  store ptr %i.adi, ptr %85, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.adi, ptr noundef nonnull align 1 dereferenceable(12) @.str.45, i64 12, i1 false)
  store i64 12, ptr %i.adj, align 8
  store i8 0, ptr %i.afm, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.adk, i8 0, i64 49, i1 false)
  %.pre15398.a = load ptr, ptr %i.ama, align 8    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.05629.013803, i64 40
  %.pre15399.a = load i64, ptr %.phi.trans.insert, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #31
  store ptr %i.adl, ptr %86, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #31
  store i64 %.pre15399.a, ptr %i.ag, align 8
  %i.anj = icmp ugt i64 %.pre15399.a, 15
  br i1 %i.anj, label %.noexc.i1568, label %._crit_edge.i.i1567

.noexc.i1568:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1566
  %i.ank = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i64 noundef 0)
          to label %.noexc1569 unwind label %bb.fq ; 2 uses

.noexc1569:                                       ; preds = %.noexc.i1568
  store ptr %i.ank, ptr %86, align 8
  %i.anl = load i64, ptr %i.ag, align 8
  store i64 %i.anl, ptr %i.adl, align 8
  br label %._crit_edge.i.i1567

._crit_edge.i.i1567:                              ; preds = %.noexc1569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1566
  %i.anm = phi ptr [ %i.ank, %.noexc1569 ], [ %i.adl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1566 ] ; 2 uses
  switch i64 %.pre15399.a, label %bb.fd [
    i64 1, label %bb.fc
    i64 0, label %bb.fe
  ]

bb.fc:                                            ; preds = %._crit_edge.i.i1567
  %i.ann = load i8, ptr %.pre15398.a, align 1
  store i8 %i.ann, ptr %i.anm, align 1
  br label %bb.fe

bb.fd:                                            ; preds = %._crit_edge.i.i1567
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anm, ptr align 1 %.pre15398.a, i64 %.pre15399.a, i1 false)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %._crit_edge.i.i1567
  %i.ano = load i64, ptr %i.ag, align 8           ; 2 uses
  store i64 %i.ano, ptr %i.adm, align 8
  %i.anp = load ptr, ptr %86, align 8
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 %i.ano
  store i8 0, ptr %i.anq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #31
  %i.anr = load ptr, ptr %i.ep, align 8
  %i.ans = load ptr, ptr %i.ama, align 8
  %i.ant = invoke { ptr, i32 } @_ZNK7aiScene26GetEmbeddedTextureAndIndexEPKc(ptr noundef nonnull align 8 dereferenceable(1168) %i.anr, ptr noundef %i.ans)
          to label %bb.ff unwind label %bb.fr

bb.ff:                                            ; preds = %bb.fe
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ant, 0 ; 9 uses
  %.not1029 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not1029, label %._crit_edge.i.i1722, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %87)
          to label %bb.fh unwind label %bb.fs

bb.fh:                                            ; preds = %bb.fg
  %i.anu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 32
  %i.anv = load i32, ptr %i.anu, align 8
  %.not1030 = icmp eq i32 %i.anv, 0
  br i1 %.not1030, label %bb.fv, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.anw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 36 ; 2 uses
  %i.anx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.anw) #31
  %i.any = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adn, ptr noundef nonnull %i.anw, i64 noundef %i.anx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ft ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  store ptr %i.ado, ptr %88, align 8, !alias.scope !90
  store i64 0, ptr %i.adp, align 8, !alias.scope !90
  store i8 0, ptr %i.ado, align 8, !alias.scope !90
  %i.anz = load ptr, ptr %i.adq, align 8, !noalias !90 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.anz, null
  %i.aoa = load ptr, ptr %i.adr, align 8, !noalias !90 ; 2 uses
  %i.aob = icmp ugt ptr %i.anz, %i.aoa
  %.08.i.i.i = select i1 %i.aob, ptr %i.anz, ptr %i.aoa ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i1573 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i1573, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aoc = load ptr, ptr %i.ads, align 8, !noalias !90 ; 2 uses
  %i.aod = ptrtoint ptr %.08.i.i.i to i64
  %i.aoe = ptrtoint ptr %i.aoc to i64
  %i.aof = sub i64 %i.aod, %i.aoe
  %i.aog = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %88, i64 noundef 0, i64 noundef 0, ptr noundef %i.aoc, i64 noundef %i.aof)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.fk ; 0 uses

bb.fk:                                            ; preds = %bb.fl, %bb.fj
  %i.aoh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aoi = load ptr, ptr %88, align 8, !alias.scope !90 ; 2 uses
  %i.aoj = icmp eq ptr %i.aoi, %i.ado
  br i1 %i.aoj, label %.body1576, label %.body1576.sink.split

bb.fl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(32) %i.adt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.fk

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.fl, %bb.fj
  %i.aok = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %88, i8 noundef signext 46, i64 noundef -1) #31 ; 2 uses
  %i.aol = icmp eq i64 %i.aok, -1
  br i1 %i.aol, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aom = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @.str.289, i64 noundef -1, i64 noundef 2) #31
  %i.aon = icmp ult i64 %i.aok, %i.aom
  br i1 %i.aon, label %bb.fn, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1582

bb.fn:                                            ; preds = %bb.fm, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aoo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adn, ptr noundef nonnull @.str.40, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1579 unwind label %bb.fu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1579: ; preds = %bb.fn
  %i.aop = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.aoq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aop) #31
  %i.aor = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adn, ptr noundef nonnull %i.aop, i64 noundef %i.aoq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1582 unwind label %bb.fu ; 0 uses

.loopexit6055:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1536
  %lpad.loopexit6057 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588

.loopexit.split-lp6056:                           ; preds = %bb.ex
  %lpad.loopexit.split-lp6058 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588

bb.fo:                                            ; preds = %bb.ez
  %i.aos = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aot = load ptr, ptr %82, align 8             ; 2 uses
  %i.aou = icmp eq ptr %i.aot, %i.ade
  br i1 %i.aou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1586: ; preds = %bb.fo
  %i.aov = load i64, ptr %i.ade, align 8
  %i.aow = add i64 %i.aov, 1
  call void @_ZdlPvm(ptr noundef %i.aot, i64 noundef %i.aow) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588: ; preds = %bb.fo, %.loopexit6055, %.loopexit.split-lp6056, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1586
  %.pn1022 = phi { ptr, i32 } [ %i.aos, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1586 ], [ %lpad.loopexit.split-lp6058, %.loopexit.split-lp6056 ], [ %lpad.loopexit6057, %.loopexit6055 ], [ %i.aos, %bb.fo ] ; 2 uses
  %i.aox = load ptr, ptr %83, align 8             ; 2 uses
  %i.aoy = icmp eq ptr %i.aox, %i.adc
  br i1 %i.aoy, label %.body1534, label %.body1534.sink.split

.body1534.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588, %bb.ew
  %.sink24197.a = phi ptr [ %i.amh, %bb.ew ], [ %i.aox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588 ]
  %.pn1022.pn.ph = phi { ptr, i32 } [ %lpad.phi6054, %bb.ew ], [ %.pn1022, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588 ]
  %i.aoz = load i64, ptr %i.adc, align 8
  %i.apa = add i64 %i.aoz, 1
  call void @_ZdlPvm(ptr noundef %.sink24197.a, i64 noundef %i.apa) #32
  br label %.body1534

.body1534:                                        ; preds = %.body1534.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588, %bb.ew
  %.pn1022.pn = phi { ptr, i32 } [ %lpad.phi6054, %bb.ew ], [ %.pn1022, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1588 ], [ %.pn1022.pn.ph, %.body1534.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #31
  br label %bb.ii

bb.fp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1548
  %i.apb = landingpad { ptr, i32 }
          cleanup
  %i.apc = load ptr, ptr %84, align 8             ; 2 uses
  %i.apd = icmp eq ptr %i.apc, %i.adg
  br i1 %i.apd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1592: ; preds = %bb.fp
  %i.ape = load i64, ptr %i.adg, align 8
  %i.apf = add i64 %i.ape, 1
  call void @_ZdlPvm(ptr noundef %i.apc, i64 noundef %i.apf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1594: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1592
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #31
  br label %bb.ii

bb.fq:                                            ; preds = %.noexc.i1568
  %i.apg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1803

bb.fr:                                            ; preds = %bb.hx, %bb.hw, %bb.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1774
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.fs:                                            ; preds = %bb.fg
  %i.api = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.ft:                                            ; preds = %bb.fi
  %i.apj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

end_hunk_2
begin_hunk_3_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp11FBXExporter15WriteModelNodesERNS_12StreamWriterILb0ELb0EEEPK6aiNodelRKSt13unordered_setIS6_St4hashIS6_ESt8equal_toIS6_ESaIS6_EERSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaISQ_EE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, ptr noundef %i.hog, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %164, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.anz unwind label %bb.aob, !inline_history !293

bb.anz:                                           ; preds = %._crit_edge13943
  %i.hoh = load ptr, ptr %4, align 8              ; 3 uses
  %i.hoi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hoj = load ptr, ptr %i.hoi, align 8          ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hoh, %i.hoj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i3468

.lr.ph.i.i.i.i3468:                               ; preds = %bb.anz, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hop, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i.i ], [ %i.hoh, %bb.anz ] ; 3 uses
  %i.hok = load ptr, ptr %.05.i.i.i.i, align 8    ; 2 uses
  %i.hol = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.hom = icmp eq ptr %i.hok, %i.hol
  br i1 %i.hom, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i3468
  %i.hon = load i64, ptr %i.hol, align 8
  %i.hoo = add i64 %i.hon, 1
  call void @_ZdlPvm(ptr noundef %i.hok, i64 noundef %i.hoo) #32, !inline_history !293
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i3468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hop = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i3469 = icmp eq ptr %i.hop, %i.hoj
  br i1 %.not.i.i.i.i3469, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i3468, !llvm.loop !294

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i, %bb.anz
  %i.hoq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.hoh, %bb.anz ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hoq, null
  br i1 %.not.i.i1.i.i, label %bb.apy, label %bb.aoa

bb.aoa:                                           ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEES9_EvT_SB_RSaIT0_E.exit.i.i
  %i.hor = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hos = load ptr, ptr %i.hor, align 8
  %i.hot = ptrtoint ptr %i.hos to i64
  %i.hou = ptrtoint ptr %i.hoq to i64
  %i.hov = sub i64 %i.hot, %i.hou
  call void @_ZdlPvm(ptr noundef nonnull %i.hoq, i64 noundef %i.hov) #32, !inline_history !293
  br label %bb.apy

bb.aob:                                           ; preds = %._crit_edge13943
  %i.how = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #31, !inline_history !293
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.body3032

bb.aoc:                                           ; preds = %.lr.ph13942, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3633
  %i.hox = phi ptr [ %i.gac, %.lr.ph13942 ], [ %i.hvj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3633 ]
  %.067113941 = phi i64 [ 0, %.lr.ph13942 ], [ %i.hvi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3633 ] ; 2 uses
  %i.hoy = getelementptr inbounds nuw i8, ptr %i.hox, i64 88
  %i.hoz = load ptr, ptr %i.hoy, align 8
  %i.hpa = getelementptr inbounds nuw [8 x i8], ptr %i.hoz, i64 %.067113941
  %i.hpb = load ptr, ptr %i.hpa, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo) #31
  %i.hpc = load i64, ptr %i.gaf, align 8
  %i.hpd = add nsw i64 %i.hpc, 1                  ; 2 uses
  store i64 %i.hpd, ptr %i.gaf, align 8
  store i64 %i.hpd, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #31
  %i.hpe = getelementptr inbounds nuw i8, ptr %i.hpb, i64 4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.hpf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hpe) #31, !noalias !295 ; 3 uses
  %i.hpg = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !295
  %i.hph = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !295 ; 3 uses
  store ptr %i.gag, ptr %198, align 8, !alias.scope !298
  store i64 0, ptr %i.gah, align 8, !alias.scope !298
  store i8 0, ptr %i.gag, align 8, !alias.scope !298
  %i.hpi = add i64 %i.hph, %i.hpf
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %198, i64 noundef %i.hpi)
          to label %bb.aod unwind label %.loopexit5888

bb.aod:                                           ; preds = %bb.aoc
  %i.hpj = load i64, ptr %i.gah, align 8, !alias.scope !298
  %i.hpk = sub i64 4611686018427387903, %i.hpj
  %i.hpl = icmp ult i64 %i.hpk, %i.hpf
  br i1 %i.hpl, label %.invoke.i.i3478, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3475: ; preds = %bb.aod
  %i.hpm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %198, ptr noundef nonnull %i.hpe, i64 noundef %i.hpf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3476 unwind label %.loopexit5888 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3476: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3475
  %i.hpn = load i64, ptr %i.gah, align 8, !alias.scope !298
  %i.hpo = sub i64 4611686018427387903, %i.hpn
  %i.hpp = icmp ult i64 %i.hpo, %i.hph
  br i1 %i.hpp, label %.invoke.i.i3478, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3477

.invoke.i.i3478:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3476, %bb.aod
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i3479 unwind label %.loopexit.split-lp5889

.cont.i.i3479:                                    ; preds = %.invoke.i.i3478
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3477: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3476
  %i.hpq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %198, ptr noundef %i.hpg, i64 noundef %i.hph)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit3482 unwind label %.loopexit5888 ; 0 uses

.loopexit5888:                                    ; preds = %bb.aoc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3477
  %lpad.loopexit5890 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aoe

.loopexit.split-lp5889:                           ; preds = %.invoke.i.i3478
  %lpad.loopexit.split-lp5891 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aoe

bb.aoe:                                           ; preds = %.loopexit.split-lp5889, %.loopexit5888
  %lpad.phi5892 = phi { ptr, i32 } [ %lpad.loopexit5890, %.loopexit5888 ], [ %lpad.loopexit.split-lp5891, %.loopexit.split-lp5889 ] ; 2 uses
  %i.hpr = load ptr, ptr %198, align 8, !alias.scope !298 ; 2 uses
  %i.hps = icmp eq ptr %i.hpr, %i.gag
  br i1 %i.hps, label %.body3480, label %.body3480.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit3482: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3477
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.hpt = load i64, ptr %i.gah, align 8, !noalias !301
  %i.hpu = add i64 %i.hpt, -4611686018427387891
  %i.hpv = icmp ult i64 %i.hpu, 13
  br i1 %i.hpv, label %bb.aof, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3483

bb.aof:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit3482
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.noexc3487 unwind label %.loopexit.split-lp5894

.noexc3487:                                       ; preds = %bb.aof
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3483: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit3482
  %i.hpw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %198, ptr noundef nonnull @.str.105, i64 noundef 13)
          to label %.noexc3488 unwind label %.loopexit5893 ; 6 uses

.noexc3488:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3483
  store ptr %i.gai, ptr %197, align 8, !alias.scope !301
  %i.hpx = load ptr, ptr %i.hpw, align 8          ; 2 uses
  %i.hpy = getelementptr inbounds nuw i8, ptr %i.hpw, i64 16 ; 5 uses
  %i.hpz = icmp eq ptr %i.hpx, %i.hpy
  br i1 %i.hpz, label %bb.aog, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3484

bb.aog:                                           ; preds = %.noexc3488
  %i.hqa = getelementptr inbounds nuw i8, ptr %i.hpw, i64 8
  %i.hqb = load i64, ptr %i.hqa, align 8          ; 3 uses
  %i.hqc = icmp ult i64 %i.hqb, 16
  call void @llvm.assume(i1 %i.hqc)
  %i.hqd = add nuw nsw i64 %i.hqb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gai, ptr noundef nonnull align 8 dereferenceable(1) %i.hpy, i64 %i.hqd, i1 false)
  br label %bb.aoh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3484: ; preds = %.noexc3488
  store ptr %i.hpx, ptr %197, align 8, !alias.scope !301
  %i.hqe = load i64, ptr %i.hpy, align 8
  store i64 %i.hqe, ptr %i.gai, align 8, !alias.scope !301
  %.phi.trans.insert.i3485 = getelementptr inbounds nuw i8, ptr %i.hpw, i64 8
  %.pre.i3486 = load i64, ptr %.phi.trans.insert.i3485, align 8
  br label %bb.aoh

bb.aoh:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3484, %bb.aog
  %i.hqf = phi i64 [ %i.hqb, %bb.aog ], [ %.pre.i3486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3484 ]
  %i.hqg = getelementptr inbounds nuw i8, ptr %i.hpw, i64 8
  store i64 %i.hqf, ptr %i.gaj, align 8, !alias.scope !301
  store ptr %i.hpy, ptr %i.hpw, align 8
  store i64 0, ptr %i.hqg, align 8
  store i8 0, ptr %i.hpy, align 8
  %i.hqh = load ptr, ptr %198, align 8            ; 2 uses
  %i.hqi = icmp eq ptr %i.hqh, %i.gag
  br i1 %i.hqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3490: ; preds = %bb.aoh
  %i.hqj = load i64, ptr %i.gag, align 8
  %i.hqk = add i64 %i.hqj, 1
  call void @_ZdlPvm(ptr noundef %i.hqh, i64 noundef %i.hqk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3503

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3503: ; preds = %bb.aoh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3490
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #31
  store ptr %i.gak, ptr %199, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.gak, ptr noundef nonnull align 1 dereferenceable(13) @.str.105, i64 13, i1 false)
  store i64 13, ptr %i.gal, align 8
  store i8 0, ptr %i.gbt, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.gam, i8 0, i64 49, i1 false)
  invoke void @_ZN6Assimp3FBX4Node13AddPropertiesIRlJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %199, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %197, ptr noundef nonnull align 1 dereferenceable(6) @.str.350)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3514 unwind label %bb.aol

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3514: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3503
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #31
  store ptr %i.gan, ptr %200, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gan, ptr noundef nonnull align 1 dereferenceable(12) @.str.45, i64 12, i1 false)
  store i64 12, ptr %i.gao, align 8
  store i8 0, ptr %i.gbu, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.gap, i8 0, i64 49, i1 false)
  %.phi.trans.insert15466 = getelementptr inbounds nuw i8, ptr %i.hpb, i64 1088
  %.pre15467 = load float, ptr %.phi.trans.insert15466, align 4
  %.phi.trans.insert15464 = getelementptr inbounds nuw i8, ptr %i.hpb, i64 1084
  %.pre15465 = load float, ptr %.phi.trans.insert15464, align 4
  %.phi.trans.insert15462 = getelementptr inbounds nuw i8, ptr %i.hpb, i64 1080
  %.pre15463.a = load float, ptr %.phi.trans.insert15462, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #31
  store ptr %i.gaq, ptr %201, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.gaq, ptr noundef nonnull align 1 dereferenceable(5) @.str.98, i64 5, i1 false)
  store i64 5, ptr %i.gar, align 8
  store i8 0, ptr %i.gbv, align 1
  %257 = fpext float %.pre15463.a to double
  %258 = fpext float %.pre15465 to double
  %i.hql = fpext float %.pre15467 to double
  invoke void @_ZN6Assimp3FBX4Node12AddP70colorAERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddd(ptr noundef nonnull align 8 dereferenceable(112) %200, ptr noundef nonnull align 8 dereferenceable(32) %201, double noundef %257, double noundef %258, double noundef %i.hql)
          to label %bb.aoi unwind label %bb.aom

bb.aoi:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3514
  %i.hqm = load ptr, ptr %201, align 8            ; 2 uses
  %i.hqn = icmp eq ptr %i.hqm, %i.gaq
  br i1 %i.hqn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3519: ; preds = %bb.aoi
  %i.hqo = load i64, ptr %i.gaq, align 8
  %i.hqp = add i64 %i.hqo, 1
  call void @_ZdlPvm(ptr noundef %i.hqm, i64 noundef %i.hqp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3521: ; preds = %bb.aoi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3519
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #31
  store ptr %i.gas, ptr %202, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gas, ptr noundef nonnull align 1 dereferenceable(9) @.str.351, i64 9, i1 false)
  store i64 9, ptr %i.gat, align 8
  store i8 0, ptr %i.gbw, align 1
  invoke void @_ZN6Assimp3FBX4Node13AddP70numberAERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(112) %200, ptr noundef nonnull align 8 dereferenceable(32) %202, double noundef 1.000000e+03)
          to label %bb.aoj unwind label %bb.aon

bb.aoj:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3521
  %i.hqq = load ptr, ptr %202, align 8            ; 2 uses
  %i.hqr = icmp eq ptr %i.hqq, %i.gas
  br i1 %i.hqr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3528, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3526

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3526: ; preds = %bb.aoj
  %i.hqs = load i64, ptr %i.gas, align 8
  %i.hqt = add i64 %i.hqs, 1
  call void @_ZdlPvm(ptr noundef %i.hqq, i64 noundef %i.hqt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3528

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3528: ; preds = %bb.aoj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3526
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #31
  %i.hqu = getelementptr inbounds nuw i8, ptr %i.hpb, i64 1028
  %i.hqv = load i32, ptr %i.hqu, align 4
  switch i32 %i.hqv, label %._crit_edge.i.i3594 [
    i32 2, label %._crit_edge.i.i3544
    i32 1, label %._crit_edge.i.i3554
    i32 3, label %._crit_edge.i.i3564
  ]

.loopexit5893:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3483
  %lpad.loopexit5895 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aok

.loopexit.split-lp5894:                           ; preds = %bb.aof
  %lpad.loopexit.split-lp5896 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aok

bb.aok:                                           ; preds = %.loopexit.split-lp5894, %.loopexit5893
  %lpad.phi5897 = phi { ptr, i32 } [ %lpad.loopexit5895, %.loopexit5893 ], [ %lpad.loopexit.split-lp5896, %.loopexit.split-lp5894 ] ; 2 uses
  %i.hqw = load ptr, ptr %198, align 8            ; 2 uses
  %i.hqx = icmp eq ptr %i.hqw, %i.gag
  br i1 %i.hqx, label %.body3480, label %.body3480.sink.split

.body3480.sink.split:                             ; preds = %bb.aok, %bb.aoe
  %.sink24237 = phi ptr [ %i.hpr, %bb.aoe ], [ %i.hqw, %bb.aok ]
  %.pn775.ph = phi { ptr, i32 } [ %lpad.phi5892, %bb.aoe ], [ %lpad.phi5897, %bb.aok ]
  %i.hqy = load i64, ptr %i.gag, align 8
  %i.hqz = add i64 %i.hqy, 1
  call void @_ZdlPvm(ptr noundef %.sink24237, i64 noundef %i.hqz) #32
  br label %.body3480

.body3480:                                        ; preds = %.body3480.sink.split, %bb.aok, %bb.aoe
  %.pn775 = phi { ptr, i32 } [ %lpad.phi5892, %bb.aoe ], [ %lpad.phi5897, %bb.aok ], [ %.pn775.ph, %.body3480.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3654

bb.aol:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3503
  %i.hra = landingpad { ptr, i32 }
          cleanup
  br label %bb.apx

bb.aom:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3514
  %i.hrb = landingpad { ptr, i32 }
          cleanup
  %i.hrc = load ptr, ptr %201, align 8            ; 2 uses
  %i.hrd = icmp eq ptr %i.hrc, %i.gaq
  br i1 %i.hrd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3538: ; preds = %bb.aom
  %i.hre = load i64, ptr %i.gaq, align 8
  %i.hrf = add i64 %i.hre, 1
  call void @_ZdlPvm(ptr noundef %i.hrc, i64 noundef %i.hrf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3540

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3540: ; preds = %bb.aom, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3538
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #31
  br label %bb.apw

bb.aon:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3521
  %i.hrg = landingpad { ptr, i32 }
          cleanup
  %i.hrh = load ptr, ptr %202, align 8            ; 2 uses
  %i.hri = icmp eq ptr %i.hrh, %i.gas
  br i1 %i.hri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3543, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3541: ; preds = %bb.aon
  %i.hrj = load i64, ptr %i.gas, align 8
  %i.hrk = add i64 %i.hrj, 1
  call void @_ZdlPvm(ptr noundef %i.hrh, i64 noundef %i.hrk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3543: ; preds = %bb.aon, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3541
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #31
  br label %bb.apw

._crit_edge.i.i3544:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3528
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #31
  store ptr %i.gbc, ptr %203, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gbc, ptr noundef nonnull align 1 dereferenceable(9) @.str.352, i64 9, i1 false)
  store i64 9, ptr %i.gbd, align 8
  store i8 0, ptr %i.gcb, align 1
  invoke void @_ZN6Assimp3FBX4Node10AddP70enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112) %200, ptr noundef nonnull align 8 dereferenceable(32) %203, i32 noundef 0)
          to label %bb.aoo unwind label %bb.aop

bb.aoo:                                           ; preds = %._crit_edge.i.i3544
  %i.hrl = load ptr, ptr %203, align 8            ; 2 uses
  %i.hrm = icmp eq ptr %i.hrl, %i.gbc
  br i1 %i.hrm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3550, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3548

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3548: ; preds = %bb.aoo
  %i.hrn = load i64, ptr %i.gbc, align 8
  %i.hro = add i64 %i.hrn, 1
  call void @_ZdlPvm(ptr noundef %i.hrl, i64 noundef %i.hro) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3550

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3550: ; preds = %bb.aoo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3548
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #31
  br label %._crit_edge.i.i3594

bb.aop:                                           ; preds = %._crit_edge.i.i3544
  %i.hrp = landingpad { ptr, i32 }
          cleanup
  %i.hrq = load ptr, ptr %203, align 8            ; 2 uses
  %i.hrr = icmp eq ptr %i.hrq, %i.gbc
  br i1 %i.hrr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3551

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3551: ; preds = %bb.aop
  %i.hrs = load i64, ptr %i.gbc, align 8
  %i.hrt = add i64 %i.hrs, 1
  call void @_ZdlPvm(ptr noundef %i.hrq, i64 noundef %i.hrt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3553

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3553: ; preds = %bb.aop, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3551
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #31
  br label %bb.apw

._crit_edge.i.i3554:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3528
  call void @llvm.lifetime.start.p0(ptr nonnull %204) #31
  store ptr %i.gba, ptr %204, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gba, ptr noundef nonnull align 1 dereferenceable(9) @.str.352, i64 9, i1 false)
  store i64 9, ptr %i.gbb, align 8
  store i8 0, ptr %i.gca, align 1
  invoke void @_ZN6Assimp3FBX4Node10AddP70enumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(112) %200, ptr noundef nonnull align 8 dereferenceable(32) %204, i32 noundef 1)
          to label %bb.aoq unwind label %bb.aor

bb.aoq:                                           ; preds = %._crit_edge.i.i3554
  %i.hru = load ptr, ptr %204, align 8            ; 2 uses
  %i.hrv = icmp eq ptr %i.hru, %i.gba
  br i1 %i.hrv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3560, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3558

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3558: ; preds = %bb.aoq
  %i.hrw = load i64, ptr %i.gba, align 8
  %i.hrx = add i64 %i.hrw, 1
  call void @_ZdlPvm(ptr noundef %i.hru, i64 noundef %i.hrx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3560

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3560: ; preds = %bb.aoq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3558
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #31
  br label %._crit_edge.i.i3594

bb.aor:                                           ; preds = %._crit_edge.i.i3554
  %i.hry = landingpad { ptr, i32 }
          cleanup
  %i.hrz = load ptr, ptr %204, align 8            ; 2 uses
  %i.hsa = icmp eq ptr %i.hrz, %i.gba
  br i1 %i.hsa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3563, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3561

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3561: ; preds = %bb.aor
  %i.hsb = load i64, ptr %i.gba, align 8
  %i.hsc = add i64 %i.hsb, 1
  call void @_ZdlPvm(ptr noundef %i.hrz, i64 noundef %i.hsc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3563

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3563: ; preds = %bb.aor, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3561
  call void @llvm.lifetime.end.p0(ptr nonnull %204) #31
  br label %bb.apw

._crit_edge.i.i3564:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3528
  call void @llvm.lifetime.start.p0(ptr nonnull %205) #31
  store ptr %i.gau, ptr %205, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gau, ptr noundef nonnull align 1 dereferenceable(9) @.str.352, i64 9, i1 false)
  store i64 9, ptr %i.gav, align 8
  store i8 0, ptr %i.gbx, align 1
end_hunk_3
begin_hunk_4_@_ZN6Assimp11FBXExporter12WriteObjectsEv:bb.a
bb.aqq:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit3735
  %i.ibp = load ptr, ptr %221, align 8            ; 2 uses
  %i.ibq = icmp eq ptr %i.ibp, %i.hya
  br i1 %i.ibq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3738, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3736

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3736: ; preds = %bb.aqq
  %i.ibr = load i64, ptr %i.hya, align 8
  %i.ibs = add i64 %i.ibr, 1
  call void @_ZdlPvm(ptr noundef %i.ibp, i64 noundef %i.ibs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3738

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3738: ; preds = %bb.aqq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3736
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #31
  %i.ibt = load ptr, ptr %i.hyc, align 8          ; 3 uses
  %i.ibu = load ptr, ptr %i.hyd, align 8
  %.not.i.i3739 = icmp eq ptr %i.ibt, %i.ibu
  br i1 %.not.i.i3739, label %bb.aqs, label %bb.aqr

bb.aqr:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3738
  invoke void @_ZN6Assimp3FBX4NodeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.ibt, ptr noundef nonnull align 8 dereferenceable(112) %217)
          to label %.noexc3740 unwind label %bb.ara

.noexc3740:                                       ; preds = %bb.aqr
  %i.ibv = load ptr, ptr %i.hyc, align 8
  %i.ibw = getelementptr inbounds nuw i8, ptr %i.ibv, i64 112
  store ptr %i.ibw, ptr %i.hyc, align 8
  br label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3742

bb.aqs:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3738
  invoke void @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hye, ptr %i.ibt, ptr noundef nonnull align 8 dereferenceable(112) %217)
          to label %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3742 unwind label %bb.ara

_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3742:      ; preds = %.noexc3740, %bb.aqs
  store i8 1, ptr %i.hyf, align 8
  %i.ibx = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.iby = trunc nuw i8 %i.ibx to i1
  %i.ibz = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %214, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.iby, i32 noundef %i.ibz)
          to label %bb.aqt unwind label %bb.ara

bb.aqt:                                           ; preds = %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3742
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %217) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #31
  %i.ica = load ptr, ptr %215, align 8            ; 2 uses
  %i.icb = icmp eq ptr %i.ica, %i.hxp
  br i1 %i.icb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3745, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3743

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3743: ; preds = %bb.aqt
  %i.icc = load i64, ptr %i.hxp, align 8
  %i.icd = add i64 %i.icc, 1
  call void @_ZdlPvm(ptr noundef %i.ica, i64 noundef %i.icd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3745

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3745: ; preds = %bb.aqt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3743
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %214) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #31
  %i.ice = add nuw nsw i64 %.066713945, 1         ; 2 uses
  %i.icf = load ptr, ptr %i.ep, align 8           ; 5 uses
  %i.icg = getelementptr inbounds nuw i8, ptr %i.icf, i64 48
  %i.ich = load i32, ptr %i.icg, align 8          ; 2 uses
  %i.ici = zext i32 %i.ich to i64                 ; 4 uses
  %i.icj = icmp samesign ult i64 %i.ice, %i.ici
  br i1 %i.icj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3675, label %._crit_edge13946, !llvm.loop !314

.loopexit5883:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i3687
  %lpad.loopexit5885 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqu

.loopexit.split-lp5884:                           ; preds = %bb.aqe
  %lpad.loopexit.split-lp5886 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqu

bb.aqu:                                           ; preds = %.loopexit.split-lp5884, %.loopexit5883
  %lpad.phi5887 = phi { ptr, i32 } [ %lpad.loopexit5885, %.loopexit5883 ], [ %lpad.loopexit.split-lp5886, %.loopexit.split-lp5884 ] ; 2 uses
  %i.ick = load ptr, ptr %216, align 8            ; 2 uses
  %i.icl = icmp eq ptr %i.ick, %i.hxn
  br i1 %i.icl, label %.body3684, label %.body3684.sink.split

.body3684.sink.split:                             ; preds = %bb.aqu, %bb.aqd
  %.sink24240 = phi ptr [ %i.hzn, %bb.aqd ], [ %i.ick, %bb.aqu ]
  %.pn755.ph = phi { ptr, i32 } [ %lpad.phi5882, %bb.aqd ], [ %lpad.phi5887, %bb.aqu ]
  %i.icm = load i64, ptr %i.hxn, align 8
  %i.icn = add i64 %i.icm, 1
  call void @_ZdlPvm(ptr noundef %.sink24240, i64 noundef %i.icn) #32
  br label %.body3684

.body3684:                                        ; preds = %.body3684.sink.split, %bb.aqu, %bb.aqd
  %.pn755 = phi { ptr, i32 } [ %lpad.phi5882, %bb.aqd ], [ %lpad.phi5887, %bb.aqu ], [ %.pn755.ph, %.body3684.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit4324.thread

bb.aqv:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3696
  %i.ico = landingpad { ptr, i32 }
          cleanup
  br label %bb.arc

bb.aqw:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3707
  %i.icp = landingpad { ptr, i32 }
          cleanup
  %i.icq = load ptr, ptr %218, align 8            ; 2 uses
  %i.icr = icmp eq ptr %i.icq, %i.hxu
  br i1 %i.icr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3757, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3755

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3755: ; preds = %bb.aqw
  %i.ics = load i64, ptr %i.hxu, align 8
  %i.ict = add i64 %i.ics, 1
  call void @_ZdlPvm(ptr noundef %i.icq, i64 noundef %i.ict) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3757

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3757: ; preds = %bb.aqw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3755
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #31
  br label %bb.arb

bb.aqx:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit
  %i.icu = landingpad { ptr, i32 }
          cleanup
  %i.icv = load ptr, ptr %219, align 8            ; 2 uses
  %i.icw = icmp eq ptr %i.icv, %i.hxw
  br i1 %i.icw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3760, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3758

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3758: ; preds = %bb.aqx
  %i.icx = load i64, ptr %i.hxw, align 8
  %i.icy = add i64 %i.icx, 1
  call void @_ZdlPvm(ptr noundef %i.icv, i64 noundef %i.icy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3760

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3760: ; preds = %bb.aqx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3758
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #31
  br label %bb.arb

bb.aqy:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3721
  %i.icz = landingpad { ptr, i32 }
          cleanup
  %i.ida = load ptr, ptr %220, align 8            ; 2 uses
  %i.idb = icmp eq ptr %i.ida, %i.hxy
  br i1 %i.idb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3763, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3761

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3761: ; preds = %bb.aqy
  %i.idc = load i64, ptr %i.hxy, align 8
  %i.idd = add i64 %i.idc, 1
  call void @_ZdlPvm(ptr noundef %i.ida, i64 noundef %i.idd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3763

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3763: ; preds = %bb.aqy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3761
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #31
  br label %bb.arb

bb.aqz:                                           ; preds = %_Z8to_ktimedPK11aiAnimation.exit3735
  %i.ide = landingpad { ptr, i32 }
          cleanup
  %i.idf = load ptr, ptr %221, align 8            ; 2 uses
  %i.idg = icmp eq ptr %i.idf, %i.hya
  br i1 %i.idg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3766, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3764: ; preds = %bb.aqz
  %i.idh = load i64, ptr %i.hya, align 8
  %i.idi = add i64 %i.idh, 1
  call void @_ZdlPvm(ptr noundef %i.idf, i64 noundef %i.idi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3766

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3766: ; preds = %bb.aqz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3764
  call void @llvm.lifetime.end.p0(ptr nonnull %221) #31
  br label %bb.arb

bb.ara:                                           ; preds = %bb.aqs, %bb.aqr, %_ZN6Assimp3FBX4Node8AddChildERKS1_.exit3742
  %i.idj = landingpad { ptr, i32 }
          cleanup
  br label %bb.arb

bb.arb:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3757, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3760, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3763, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3766, %bb.ara
  %.pn767 = phi { ptr, i32 } [ %i.idj, %bb.ara ], [ %i.ide, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3766 ], [ %i.icz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3763 ], [ %i.icu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3760 ], [ %i.icp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3757 ]
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %217) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #31
  br label %bb.arc

bb.arc:                                           ; preds = %bb.arb, %bb.aqv
  %.pn767.pn.pn = phi { ptr, i32 } [ %.pn767, %bb.arb ], [ %i.ico, %bb.aqv ] ; 2 uses
  %i.idk = load ptr, ptr %215, align 8            ; 2 uses
  %i.idl = icmp eq ptr %i.idk, %i.hxp
  br i1 %i.idl, label %_ZNSt6vectorIlSaIlEED2Ev.exit4324.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3767: ; preds = %bb.arc
  %i.idm = load i64, ptr %i.hxp, align 8
  %i.idn = add i64 %i.idm, 1
  call void @_ZdlPvm(ptr noundef %i.idk, i64 noundef %i.idn) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit4324.thread

_ZNSt6vectorIlSaIlEED2Ev.exit4324.thread:         ; preds = %bb.arc, %.body3684, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3767
  %.pn767.pn.pn.pn = phi { ptr, i32 } [ %.pn755, %.body3684 ], [ %.pn767.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3767 ], [ %.pn767.pn.pn, %bb.arc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #31
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %214) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp) #31
  br label %bb.ayk

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit3664:           ; preds = %bb.apy, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i3659, %.noexc3663, %._crit_edge13946
  %i.ido = phi ptr [ %i.icf, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i3659 ], [ %i.icf, %.noexc3663 ], [ %i.icf, %._crit_edge13946 ], [ %i.hwz, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ %i.hwz, %bb.apy ]
  %.sroa.115346.01675516770 = phi ptr [ %i.hxf, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i3659 ], [ %i.hxf, %.noexc3663 ], [ %i.hxf, %._crit_edge13946 ], [ %i.hxf, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ null, %bb.apy ] ; 2 uses
  %.sroa.05341.01675716768 = phi ptr [ %i.hxe, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i3659 ], [ %i.hxe, %.noexc3663 ], [ %i.hxe, %._crit_edge13946 ], [ %i.hxe, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ null, %bb.apy ] ; 6 uses
  %.sroa.11.0 = phi ptr [ %i.hyp, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i3659 ], [ %i.hyp, %.noexc3663 ], [ null, %._crit_edge13946 ], [ null, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ null, %bb.apy ] ; 2 uses
  %.sroa.05328.0 = phi ptr [ %i.hyo, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i3659 ], [ %i.hyo, %.noexc3663 ], [ null, %._crit_edge13946 ], [ null, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit ], [ null, %bb.apy ] ; 8 uses
  %i.idp = getelementptr inbounds nuw i8, ptr %i.ido, i64 48
  %i.idq = load i32, ptr %i.idp, align 8
  %.not14031 = icmp eq i32 %i.idq, 0
  br i1 %.not14031, label %._crit_edge13950.thread, label %._crit_edge.i.i3770.lr.ph

._crit_edge13950.thread:                          ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit3664
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  br label %._crit_edge14013

._crit_edge.i.i3770.lr.ph:                        ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit3664
  %i.idr = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.ids = getelementptr inbounds nuw i8, ptr %222, i64 16 ; 2 uses
  %i.idt = getelementptr inbounds nuw i8, ptr %222, i64 8
  %i.idu = getelementptr inbounds nuw i8, ptr %222, i64 32
  %i.idv = getelementptr inbounds nuw i8, ptr %223, i64 16 ; 7 uses
  %i.idw = getelementptr inbounds nuw i8, ptr %223, i64 8 ; 3 uses
  %i.idx = getelementptr inbounds nuw i8, ptr %222, i64 80
  %i.idy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.idz = getelementptr inbounds nuw i8, ptr %222, i64 30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3780

._crit_edge13950:                                 ; preds = %bb.arh
  %259 = icmp eq i32 %i.ign, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %224) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %224, i8 0, i64 24, i1 false)
  br i1 %259, label %._crit_edge14013, label %.lr.ph13978

.lr.ph13978:                                      ; preds = %._crit_edge13950
  %i.iea = getelementptr inbounds nuw i8, ptr %226, i64 4
  %i.ieb = getelementptr inbounds nuw i8, ptr %226, i64 20
  %i.iec = getelementptr inbounds nuw i8, ptr %226, i64 24
  %i.ied = getelementptr inbounds nuw i8, ptr %226, i64 40
  %i.iee = getelementptr inbounds nuw i8, ptr %226, i64 44
  %i.ief = getelementptr inbounds nuw i8, ptr %226, i64 60
  %i.ieg = getelementptr inbounds nuw i8, ptr %226, i64 16
  %i.ieh = getelementptr inbounds nuw i8, ptr %226, i64 32
  %i.iei = getelementptr inbounds nuw i8, ptr %226, i64 48
  %i.iej = getelementptr inbounds nuw i8, ptr %227, i64 8 ; 2 uses
  %i.iek = getelementptr inbounds nuw i8, ptr %228, i64 8 ; 2 uses
  %i.iel = getelementptr inbounds nuw i8, ptr %229, i64 8 ; 2 uses
  %i.iem = getelementptr inbounds nuw i8, ptr %230, i64 16 ; 6 uses
  %i.ien = getelementptr inbounds nuw i8, ptr %230, i64 8
  %i.ieo = getelementptr inbounds nuw i8, ptr %231, i64 16 ; 6 uses
  %i.iep = getelementptr inbounds nuw i8, ptr %231, i64 8
  %i.ieq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ier = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ies = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 15 uses
  %i.iet = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.ieu = getelementptr inbounds nuw i8, ptr %232, i64 16 ; 6 uses
  %i.iev = getelementptr inbounds nuw i8, ptr %232, i64 8
  %i.iew = getelementptr inbounds nuw i8, ptr %233, i64 16 ; 6 uses
  %i.iex = getelementptr inbounds nuw i8, ptr %233, i64 8
  %i.iey = getelementptr inbounds nuw i8, ptr %234, i64 16 ; 6 uses
  %i.iez = getelementptr inbounds nuw i8, ptr %234, i64 8
  %i.ifa = getelementptr inbounds nuw i8, ptr %235, i64 16 ; 6 uses
  %i.ifb = getelementptr inbounds nuw i8, ptr %235, i64 8
  %i.ifc = getelementptr inbounds nuw i8, ptr %225, i64 8 ; 5 uses
  %i.ifd = getelementptr inbounds nuw i8, ptr %225, i64 16 ; 4 uses
  %i.ife = getelementptr inbounds nuw i8, ptr %224, i64 8 ; 3 uses
  %i.iff = getelementptr inbounds nuw i8, ptr %224, i64 16
  %i.ifg = getelementptr inbounds nuw i8, ptr %230, i64 17
  %i.ifh = getelementptr inbounds nuw i8, ptr %231, i64 31
  %i.ifi = getelementptr inbounds nuw i8, ptr %232, i64 17
  %i.ifj = getelementptr inbounds nuw i8, ptr %233, i64 28
  %i.ifk = getelementptr inbounds nuw i8, ptr %234, i64 17
  %i.ifl = getelementptr inbounds nuw i8, ptr %235, i64 25
  br label %bb.ark

_ZNSt6vectorIlSaIlEED2Ev.exit4324.thread16774:    ; preds = %bb.aqa
  %i.ifm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ayk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3780: ; preds = %bb.arh, %._crit_edge.i.i3770.lr.ph
  %.066513949 = phi i64 [ 0, %._crit_edge.i.i3770.lr.ph ], [ %i.igk, %bb.arh ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq) #31
  %i.ifn = load i64, ptr %i.idr, align 8
  %i.ifo = add nsw i64 %i.ifn, 1                  ; 3 uses
  store i64 %i.ifo, ptr %i.idr, align 8
  store i64 %i.ifo, ptr %i.bq, align 8
  %i.ifp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05328.0, i64 %.066513949
  store i64 %i.ifo, ptr %i.ifp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %222) #31
  store ptr %i.ids, ptr %222, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ids, ptr noundef nonnull align 1 dereferenceable(14) @.str.90, i64 14, i1 false)
  store i64 14, ptr %i.idt, align 8
  store i8 0, ptr %i.idz, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.idu, i8 0, i64 49, i1 false)
  %.pre15471 = load ptr, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, align 8, !noalias !315
  %.pre15472 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Assimp3FBXL9SEPARATORB5cxx11E, i64 8), align 8, !noalias !315 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %223) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  store ptr %i.idv, ptr %223, align 8, !alias.scope !318
  store i64 0, ptr %i.idw, align 8, !alias.scope !318
  store i8 0, ptr %i.idv, align 8, !alias.scope !318
  %i.ifq = add i64 %.pre15472, 9
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %223, i64 noundef %i.ifq)
          to label %bb.ard unwind label %.loopexit5873

bb.ard:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3780
  %i.ifr = load i64, ptr %i.idw, align 8, !alias.scope !318
  %i.ifs = sub i64 4611686018427387903, %i.ifr
  %i.ift = icmp ult i64 %i.ifs, %.pre15472
  br i1 %i.ift, label %.invoke.i.i3787, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3784

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3784: ; preds = %bb.ard
  %i.ifu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %223, ptr noundef %.pre15471, i64 noundef %.pre15472)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3785 unwind label %.loopexit5873 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3785: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3784
  %i.ifv = load i64, ptr %i.idw, align 8, !alias.scope !318
  %i.ifw = add i64 %i.ifv, -4611686018427387895
  %i.ifx = icmp ult i64 %i.ifw, 9
  br i1 %i.ifx, label %.invoke.i.i3787, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3786

.invoke.i.i3787:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3785, %bb.ard
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.405) #30
          to label %.cont.i.i3788 unwind label %.loopexit.split-lp5874

.cont.i.i3788:                                    ; preds = %.invoke.i.i3787
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3786: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i3785
  %i.ify = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %223, ptr noundef nonnull @.str.359, i64 noundef 9)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3791 unwind label %.loopexit5873 ; 0 uses

.loopexit5873:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3780, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i3784, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3786
  %lpad.loopexit5875 = landingpad { ptr, i32 }
          cleanup
  br label %bb.are

.loopexit.split-lp5874:                           ; preds = %.invoke.i.i3787
  %lpad.loopexit.split-lp5876 = landingpad { ptr, i32 }
          cleanup
  br label %bb.are

bb.are:                                           ; preds = %.loopexit.split-lp5874, %.loopexit5873
  %lpad.phi5877 = phi { ptr, i32 } [ %lpad.loopexit5875, %.loopexit5873 ], [ %lpad.loopexit.split-lp5876, %.loopexit.split-lp5874 ] ; 2 uses
  %i.ifz = load ptr, ptr %223, align 8, !alias.scope !318 ; 2 uses
  %i.iga = icmp eq ptr %i.ifz, %i.idv
  br i1 %i.iga, label %.body3789, label %.body3789.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3791: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i3786
  invoke void @_ZN6Assimp3FBX4Node13AddPropertiesIRlJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA1_KcEEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(112) %222, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %223, ptr noundef nonnull align 1 dereferenceable(1) @.str.67)
          to label %bb.arf unwind label %bb.ari

bb.arf:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3791
  %i.igb = load ptr, ptr %223, align 8            ; 2 uses
  %i.igc = icmp eq ptr %i.igb, %i.idv
  br i1 %i.igc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3794, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3792

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3792: ; preds = %bb.arf
  %i.igd = load i64, ptr %i.idv, align 8
  %i.ige = add i64 %i.igd, 1
  call void @_ZdlPvm(ptr noundef %i.igb, i64 noundef %i.ige) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3794

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3794: ; preds = %bb.arf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3792
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #31
  store i8 1, ptr %i.idx, align 8
  %i.igf = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.igg = trunc nuw i8 %i.igf to i1
  %i.igh = load i32, ptr %i.ap, align 4
  invoke void @_ZN6Assimp3FBX4Node4DumpERNS_12StreamWriterILb0ELb0EEEbi(ptr noundef nonnull align 8 dereferenceable(112) %222, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.igg, i32 noundef %i.igh)
          to label %bb.arg unwind label %bb.arj

bb.arg:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3794
  %i.igi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05341.01675716768, i64 %.066513949
  %i.igj = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNSt6vectorIN6Assimp3FBX4NodeESaIS2_EE12emplace_backIJRA2_KcRA3_S6_RlSB_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.idy, ptr noundef nonnull align 1 dereferenceable(2) @.str.306, ptr noundef nonnull align 1 dereferenceable(3) @.str.308, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.igi)
          to label %bb.arh unwind label %bb.arj   ; 0 uses

bb.arh:                                           ; preds = %bb.arg
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #31
  %i.igk = add nuw nsw i64 %.066513949, 1         ; 2 uses
  %i.igl = load ptr, ptr %i.ep, align 8           ; 2 uses
  %i.igm = getelementptr inbounds nuw i8, ptr %i.igl, i64 48
  %i.ign = load i32, ptr %i.igm, align 8          ; 2 uses
  %i.igo = zext i32 %i.ign to i64
  %i.igp = icmp samesign ult i64 %i.igk, %i.igo
  br i1 %i.igp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3780, label %._crit_edge13950, !llvm.loop !321

bb.ari:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit3791
  %i.igq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.igr = load ptr, ptr %223, align 8            ; 2 uses
  %i.igs = icmp eq ptr %i.igr, %i.idv
  br i1 %i.igs, label %.body3789, label %.body3789.sink.split

.body3789.sink.split:                             ; preds = %bb.ari, %bb.are
  %.sink24243 = phi ptr [ %i.ifz, %bb.are ], [ %i.igr, %bb.ari ]
  %.pn746.ph = phi { ptr, i32 } [ %lpad.phi5877, %bb.are ], [ %i.igq, %bb.ari ]
  %i.igt = load i64, ptr %i.idv, align 8
  %i.igu = add i64 %i.igt, 1
  call void @_ZdlPvm(ptr noundef %.sink24243, i64 noundef %i.igu) #32
  br label %.body3789

.body3789:                                        ; preds = %.body3789.sink.split, %bb.ari, %bb.are
  %.pn746 = phi { ptr, i32 } [ %lpad.phi5877, %bb.are ], [ %i.igq, %bb.ari ], [ %.pn746.ph, %.body3789.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %223) #31
  br label %.thread5809

bb.arj:                                           ; preds = %bb.arg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3794
  %i.igv = landingpad { ptr, i32 }
          cleanup
  br label %.thread5809

.thread5809:                                      ; preds = %.body3789, %bb.arj
  %.pn748 = phi { ptr, i32 } [ %i.igv, %bb.arj ], [ %.pn746, %.body3789 ]
  call void @_ZN6Assimp3FBX4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %222) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #31
  br label %bb.ayj

.preheader:                                       ; preds = %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit
  %i.igw = icmp eq i32 %i.iud, 0
  br i1 %i.igw, label %._crit_edge14013, label %.lr.ph14012

.lr.ph14012:                                      ; preds = %.preheader
  %i.igx = getelementptr inbounds nuw i8, ptr %236, i64 4
  %i.igy = getelementptr inbounds nuw i8, ptr %236, i64 20
  %i.igz = getelementptr inbounds nuw i8, ptr %236, i64 24
  %i.iha = getelementptr inbounds nuw i8, ptr %236, i64 40
  %i.ihb = getelementptr inbounds nuw i8, ptr %236, i64 44
  %i.ihc = getelementptr inbounds nuw i8, ptr %236, i64 60
  %i.ihd = getelementptr inbounds nuw i8, ptr %236, i64 16
  %i.ihe = getelementptr inbounds nuw i8, ptr %236, i64 32
  %i.ihf = getelementptr inbounds nuw i8, ptr %236, i64 48
  %i.ihg = getelementptr inbounds nuw i8, ptr %237, i64 4
  %i.ihh = getelementptr inbounds nuw i8, ptr %237, i64 8 ; 2 uses
  %i.ihi = getelementptr inbounds nuw i8, ptr %238, i64 4
  %i.ihj = getelementptr inbounds nuw i8, ptr %238, i64 8 ; 2 uses
  %i.ihk = getelementptr inbounds nuw i8, ptr %239, i64 4
  %i.ihl = getelementptr inbounds nuw i8, ptr %239, i64 8 ; 2 uses
  %i.ihm = getelementptr inbounds nuw i8, ptr %240, i64 8 ; 16 uses
  %i.ihn = getelementptr inbounds nuw i8, ptr %240, i64 16 ; 8 uses
  %i.iho = getelementptr inbounds nuw i8, ptr %241, i64 8 ; 16 uses
  %i.ihp = getelementptr inbounds nuw i8, ptr %241, i64 16 ; 8 uses
  %i.ihq = getelementptr inbounds nuw i8, ptr %242, i64 8 ; 16 uses
  %i.ihr = getelementptr inbounds nuw i8, ptr %242, i64 16 ; 8 uses
  %i.ihs = getelementptr inbounds nuw i8, ptr %243, i64 8 ; 16 uses
  %i.iht = getelementptr inbounds nuw i8, ptr %243, i64 16 ; 8 uses
  %i.ihu = getelementptr inbounds nuw i8, ptr %244, i64 16 ; 6 uses
  %i.ihv = getelementptr inbounds nuw i8, ptr %244, i64 8
  %i.ihw = getelementptr inbounds nuw i8, ptr %245, i64 16 ; 6 uses
  %i.ihx = getelementptr inbounds nuw i8, ptr %245, i64 8
  %i.ihy = getelementptr inbounds nuw i8, ptr %246, i64 16 ; 6 uses
  %i.ihz = getelementptr inbounds nuw i8, ptr %246, i64 8
  %i.iia = getelementptr inbounds nuw i8, ptr %247, i64 4
  %i.iib = getelementptr inbounds nuw i8, ptr %247, i64 20
  %i.iic = getelementptr inbounds nuw i8, ptr %247, i64 24
  %i.iid = getelementptr inbounds nuw i8, ptr %247, i64 40
  %i.iie = getelementptr inbounds nuw i8, ptr %247, i64 44
  %i.iif = getelementptr inbounds nuw i8, ptr %247, i64 60
  %i.iig = getelementptr inbounds nuw i8, ptr %248, i64 8
  %i.iih = getelementptr inbounds nuw i8, ptr %249, i64 4 ; 2 uses
  %i.iii = getelementptr inbounds nuw i8, ptr %249, i64 8 ; 5 uses
  %i.iij = getelementptr inbounds nuw i8, ptr %250, i64 8
  %i.iik = getelementptr inbounds nuw i8, ptr %251, i64 16 ; 6 uses
  %i.iil = getelementptr inbounds nuw i8, ptr %251, i64 8
  %i.iim = getelementptr inbounds nuw i8, ptr %252, i64 16 ; 6 uses
  %i.iin = getelementptr inbounds nuw i8, ptr %252, i64 8
  %i.iio = getelementptr inbounds nuw i8, ptr %253, i64 16 ; 6 uses
  %i.iip = getelementptr inbounds nuw i8, ptr %253, i64 8
  %i.iiq = getelementptr inbounds nuw i8, ptr %254, i64 16 ; 6 uses
  %i.iir = getelementptr inbounds nuw i8, ptr %254, i64 8
  %i.iis = getelementptr inbounds nuw i8, ptr %255, i64 16 ; 6 uses
  %i.iit = getelementptr inbounds nuw i8, ptr %255, i64 8
  %i.iiu = getelementptr inbounds nuw i8, ptr %256, i64 16 ; 6 uses
  %i.iiv = getelementptr inbounds nuw i8, ptr %256, i64 8
  %i.iiw = getelementptr inbounds nuw i8, ptr %244, i64 19
  %i.iix = getelementptr inbounds nuw i8, ptr %245, i64 19
  %i.iiy = getelementptr inbounds nuw i8, ptr %246, i64 19
  %i.iiz = getelementptr inbounds nuw i8, ptr %251, i64 19
  %i.ija = getelementptr inbounds nuw i8, ptr %252, i64 19
  %i.ijb = getelementptr inbounds nuw i8, ptr %253, i64 19
  %i.ijc = getelementptr inbounds nuw i8, ptr %254, i64 19
  %i.ijd = getelementptr inbounds nuw i8, ptr %255, i64 19
  %i.ije = getelementptr inbounds nuw i8, ptr %256, i64 19
  br label %bb.atj

bb.ark:                                           ; preds = %.lr.ph13978, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit
  %i.ijf = phi ptr [ %i.igl, %.lr.ph13978 ], [ %i.iub, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit ]
  %.066413976 = phi i64 [ 0, %.lr.ph13978 ], [ %i.iua, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit ] ; 3 uses
  %i.ijg = getelementptr inbounds nuw i8, ptr %i.ijf, i64 56
  %i.ijh = load ptr, ptr %i.ijg, align 8
  %i.iji = getelementptr inbounds nuw [8 x i8], ptr %i.ijh, i64 %.066413976
  %i.ijj = load ptr, ptr %i.iji, align 8          ; 2 uses
  %i.ijk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.05328.0, i64 %.066413976
  %i.ijl = load i64, ptr %i.ijk, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %225) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %225, i8 0, i64 24, i1 false)
  %i.ijm = getelementptr inbounds nuw i8, ptr %i.ijj, i64 1048 ; 2 uses
  %i.ijn = load i32, ptr %i.ijm, align 8
  %.not14033 = icmp eq i32 %i.ijn, 0
  br i1 %.not14033, label %._crit_edge13975, label %.lr.ph13974

.lr.ph13974:                                      ; preds = %bb.ark
  %i.ijo = getelementptr inbounds nuw i8, ptr %i.ijj, i64 1056
  br label %bb.arr

._crit_edge13975:                                 ; preds = %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit, %bb.ark
  %i.ijp = phi ptr [ null, %bb.ark ], [ %i.isn, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.ijq = load ptr, ptr %i.ife, align 8          ; 6 uses
  %i.ijr = load ptr, ptr %i.iff, align 8
  %.not.i3801 = icmp eq ptr %i.ijq, %i.ijr
  br i1 %.not.i3801, label %bb.arq, label %bb.arl

bb.arl:                                           ; preds = %._crit_edge13975
  %i.ijs = load ptr, ptr %225, align 8            ; 2 uses
  %i.ijt = ptrtoint ptr %i.ijp to i64
  %i.iju = ptrtoint ptr %i.ijs to i64
  %i.ijv = sub i64 %i.ijt, %i.iju                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ijq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3802 = icmp eq ptr %i.ijp, %i.ijs
  br i1 %.not.i.i.i.i.i3802, label %.noexc3805, label %bb.arm

bb.arm:                                           ; preds = %bb.arl
  %i.ijw = sdiv exact i64 %i.ijv, 24
  %i.ijx = icmp ugt i64 %i.ijw, 384307168202282325
  br i1 %i.ijx, label %.noexc.i.i.i3803, label %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !4

.noexc.i.i.i3803:                                 ; preds = %bb.arm
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc3804 unwind label %.loopexit.split-lp5869

.noexc3804:                                       ; preds = %.noexc.i.i.i3803
  unreachable

_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.arm
  %i.ijy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ijv) #34
          to label %.noexc3805 unwind label %.loopexit5868

.noexc3805:                                       ; preds = %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i, %bb.arl
  %i.ijz = phi ptr [ null, %bb.arl ], [ %i.ijy, %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.ijz, ptr %i.ijq, align 8
  %i.ika = getelementptr inbounds nuw i8, ptr %i.ijq, i64 8 ; 2 uses
  store ptr %i.ijz, ptr %i.ika, align 8
  %i.ikb = getelementptr inbounds nuw i8, ptr %i.ijz, i64 %i.ijv
  %i.ikc = getelementptr inbounds nuw i8, ptr %i.ijq, i64 16
  store ptr %i.ikb, ptr %i.ikc, align 8
  %i.ikd = load ptr, ptr %225, align 8            ; 4 uses
  %i.ike = load ptr, ptr %i.ifc, align 8
  %i.ikf = ptrtoint ptr %i.ike to i64
  %i.ikg = ptrtoint ptr %i.ikd to i64
  %i.ikh = sub i64 %i.ikf, %i.ikg                 ; 4 uses
  %i.iki = icmp sgt i64 %i.ikh, 24
  br i1 %i.iki, label %bb.arn, label %bb.aro, !prof !181

bb.arn:                                           ; preds = %.noexc3805
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ijz, ptr align 8 %i.ikd, i64 %i.ikh, i1 false)
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i

bb.aro:                                           ; preds = %.noexc3805
  %i.ikj = icmp eq i64 %i.ikh, 24
  br i1 %i.ikj, label %bb.arp, label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i

bb.arp:                                           ; preds = %bb.aro
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ijz, ptr noundef nonnull align 8 dereferenceable(24) %i.ikd, i64 24, i1 false)
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i

_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i: ; preds = %bb.arp, %bb.aro, %bb.arn
  %i.ikk = getelementptr inbounds i8, ptr %i.ijz, i64 %i.ikh
  store ptr %i.ikk, ptr %i.ika, align 8
  %i.ikl = load ptr, ptr %i.ife, align 8
  %i.ikm = getelementptr inbounds nuw i8, ptr %i.ikl, i64 24
  store ptr %i.ikm, ptr %i.ife, align 8
  br label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.arq:                                           ; preds = %._crit_edge13975
  invoke void @_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %224, ptr %i.ijq, ptr noundef nonnull align 8 dereferenceable(24) %225)
          to label %._ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge unwind label %.loopexit5868

._ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge: ; preds = %bb.arq
  %.pre15473 = load ptr, ptr %225, align 8
  br label %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.arr:                                           ; preds = %.lr.ph13974, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit
  %.066113972 = phi i64 [ 0, %.lr.ph13974 ], [ %i.iso, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.ikn = load ptr, ptr %i.ijo, align 8
  %i.iko = getelementptr inbounds nuw [8 x i8], ptr %i.ikn, i64 %.066113972
  %i.ikp = load ptr, ptr %i.iko, align 8
  %i.ikq = load ptr, ptr %i.ep, align 8
  %i.ikr = getelementptr inbounds nuw i8, ptr %i.ikq, i64 8
  %i.iks = load ptr, ptr %i.ikr, align 8
  %i.ikt = getelementptr inbounds nuw i8, ptr %i.ikp, i64 4
  %i.iku = invoke noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144) %i.iks, ptr noundef nonnull %i.ikt)
          to label %_ZN6aiNode8FindNodeERK8aiString.exit3808 unwind label %bb.ata ; 12 uses

_ZN6aiNode8FindNodeERK8aiString.exit3808:         ; preds = %bb.arr
  call void @llvm.lifetime.start.p0(ptr nonnull %226) #31
  %i.ikv = load ptr, ptr %i.ep, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.ikw = getelementptr inbounds nuw i8, ptr %i.ikv, i64 8 ; 2 uses
  %i.ikx = load ptr, ptr %i.ikw, align 8, !noalias !322
  %i.iky = icmp ne ptr %i.iku, %i.ikx
  %i.ikz = icmp ne ptr %i.iku, null
  %i.ila = and i1 %i.ikz, %i.iky
  br i1 %i.ila, label %.lr.ph.i3821, label %._crit_edge.i3809

.lr.ph.i3821:                                     ; preds = %_ZN6aiNode8FindNodeERK8aiString.exit3808, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827
  %.036.i3822 = phi ptr [ %i.ilq, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827 ], [ %i.iku, %_ZN6aiNode8FindNodeERK8aiString.exit3808 ] ; 3 uses
  %.sroa.14.035.i3823 = phi ptr [ %.sroa.14.1.i3830, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3808 ] ; 3 uses
  %.sroa.9.034.i3824 = phi ptr [ %.sroa.9.1.i3831, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3808 ] ; 3 uses
  %.sroa.012.033.i3825 = phi ptr [ %.sroa.012.1.i3828, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3808 ] ; 7 uses
  %.not.i.i3826 = icmp eq ptr %.sroa.9.034.i3824, %.sroa.14.035.i3823
  br i1 %.not.i.i3826, label %bb.art, label %bb.ars

bb.ars:                                           ; preds = %.lr.ph.i3821
  store ptr %.036.i3822, ptr %.sroa.9.034.i3824, align 8, !noalias !322
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827

bb.art:                                           ; preds = %.lr.ph.i3821
  %i.ilb = ptrtoint ptr %.sroa.14.035.i3823 to i64
  %i.ilc = ptrtoint ptr %.sroa.012.033.i3825 to i64
  %i.ild = sub i64 %i.ilb, %i.ilc                 ; 7 uses
  %i.ile = icmp eq i64 %i.ild, 9223372036854775800
  br i1 %i.ile, label %bb.aru, label %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i3832

bb.aru:                                           ; preds = %bb.art
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc.i3843 unwind label %.loopexit.split-lp.i3841, !noalias !322

.noexc.i3843:                                     ; preds = %bb.aru
  unreachable

_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i3832: ; preds = %bb.art
  %i.ilf = ashr exact i64 %i.ild, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i3833 = call i64 @llvm.umax.i64(i64 %i.ilf, i64 1)
  %i.ilg = add nsw i64 %.sroa.speculated.i.i.i.i3833, %i.ilf ; 2 uses
  %i.ilh = icmp ult i64 %i.ilg, %i.ilf
  %i.ili = call i64 @llvm.umin.i64(i64 %i.ilg, i64 1152921504606846975)
  %i.ilj = select i1 %i.ilh, i64 1152921504606846975, i64 %i.ili ; 3 uses
  %.not.i.i.i.i3834 = icmp ne i64 %i.ilj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i3834)
  %i.ilk = shl nuw nsw i64 %i.ilj, 3
  %i.ill = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ilk) #34
          to label %.noexc7.i3837 unwind label %.loopexit.i3835, !noalias !322 ; 4 uses

.noexc7.i3837:                                    ; preds = %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i3832
  %i.ilm = getelementptr inbounds i8, ptr %i.ill, i64 %i.ild ; 2 uses
  store ptr %.036.i3822, ptr %i.ilm, align 8, !noalias !322
  %i.iln = icmp sgt i64 %i.ild, 0
  br i1 %i.iln, label %bb.arv, label %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3838

bb.arv:                                           ; preds = %.noexc7.i3837
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ill, ptr align 8 %.sroa.012.033.i3825, i64 %i.ild, i1 false), !noalias !322
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3838

_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3838: ; preds = %bb.arv, %.noexc7.i3837
  %.not.i17.i.i.i3839 = icmp eq ptr %.sroa.012.033.i3825, null
  br i1 %.not.i17.i.i.i3839, label %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i3840, label %bb.arw

bb.arw:                                           ; preds = %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3838
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.033.i3825, i64 noundef %i.ild) #32, !noalias !322
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i3840

_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i3840: ; preds = %bb.arw, %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i3838
  %i.ilo = getelementptr inbounds nuw [8 x i8], ptr %i.ill, i64 %i.ilj
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827

_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827: ; preds = %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i3840, %bb.ars
  %.sroa.012.1.i3828 = phi ptr [ %i.ill, %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i3840 ], [ %.sroa.012.033.i3825, %bb.ars ] ; 2 uses
  %.pn.i3829 = phi ptr [ %i.ilm, %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i3840 ], [ %.sroa.9.034.i3824, %bb.ars ]
  %.sroa.14.1.i3830 = phi ptr [ %i.ilo, %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i3840 ], [ %.sroa.14.035.i3823, %bb.ars ] ; 2 uses
  %.sroa.9.1.i3831 = getelementptr inbounds nuw i8, ptr %.pn.i3829, i64 8 ; 2 uses
  %i.ilp = getelementptr inbounds nuw i8, ptr %.036.i3822, i64 1096
  %i.ilq = load ptr, ptr %i.ilp, align 8, !noalias !322 ; 3 uses
  %i.ilr = load ptr, ptr %i.ikw, align 8, !noalias !322
  %i.ils = icmp ne ptr %i.ilq, %i.ilr
  %i.ilt = icmp ne ptr %i.ilq, null
  %i.ilu = and i1 %i.ilt, %i.ils
  br i1 %i.ilu, label %.lr.ph.i3821, label %._crit_edge.i3809.loopexit, !llvm.loop !291

.loopexit.i3835:                                  ; preds = %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i3832
  %lpad.loopexit.i3836 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ary

.loopexit.split-lp.i3841:                         ; preds = %bb.aru
  %lpad.loopexit.split-lp.i3842 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ary

._crit_edge.i3809.loopexit:                       ; preds = %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i3827
  %i.ilv = ptrtoint ptr %.sroa.14.1.i3830 to i64
  br label %._crit_edge.i3809

._crit_edge.i3809:                                ; preds = %._crit_edge.i3809.loopexit, %_ZN6aiNode8FindNodeERK8aiString.exit3808
  %.sroa.012.0.lcssa.i3810 = phi ptr [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3808 ], [ %.sroa.012.1.i3828, %._crit_edge.i3809.loopexit ] ; 5 uses
  %.sroa.9.0.lcssa.i3811 = phi ptr [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3808 ], [ %.sroa.9.1.i3831, %._crit_edge.i3809.loopexit ] ; 2 uses
  %.sroa.14.0.lcssa.i3812 = phi i64 [ 0, %_ZN6aiNode8FindNodeERK8aiString.exit3808 ], [ %i.ilv, %._crit_edge.i3809.loopexit ]
  store float 1.000000e+00, ptr %226, align 16, !alias.scope !322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iea, i8 0, i64 16, i1 false), !alias.scope !322
  store float 1.000000e+00, ptr %i.ieb, align 4, !alias.scope !322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iec, i8 0, i64 16, i1 false), !alias.scope !322
  store float 1.000000e+00, ptr %i.ied, align 8, !alias.scope !322
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.iee, i8 0, i64 16, i1 false), !alias.scope !322
  store float 1.000000e+00, ptr %i.ief, align 4
  %.not.i381413958 = icmp eq ptr %.sroa.9.0.lcssa.i3811, %.sroa.012.0.lcssa.i3810
  br i1 %.not.i381413958, label %._crit_edge13962, label %.lr.ph13961

._crit_edge13962:                                 ; preds = %.lr.ph13961, %._crit_edge.i3809
  %.not.i.i.i8.i3820 = icmp eq ptr %.sroa.012.0.lcssa.i3810, null
  br i1 %.not.i.i.i8.i3820, label %_Z19get_world_transformPK6aiNodePK7aiScene.exit3846, label %bb.arx

bb.arx:                                           ; preds = %._crit_edge13962
  %i.ilw = ptrtoint ptr %.sroa.012.0.lcssa.i3810 to i64
  %i.ilx = sub i64 %.sroa.14.0.lcssa.i3812, %i.ilw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.0.lcssa.i3810, i64 noundef %i.ilx) #32
  br label %_Z19get_world_transformPK6aiNodePK7aiScene.exit3846

.lr.ph13961:                                      ; preds = %._crit_edge.i3809, %.lr.ph13961
  %.sroa.011.0.i381313960 = phi ptr [ %i.ilz, %.lr.ph13961 ], [ %.sroa.9.0.lcssa.i3811, %._crit_edge.i3809 ]
  %i.ily = phi <16 x float> [ %i.int, %.lr.ph13961 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %._crit_edge.i3809 ] ; 16 uses
  %i.ilz = getelementptr inbounds i8, ptr %.sroa.011.0.i381313960, i64 -8 ; 3 uses
  %i.ima = load ptr, ptr %i.ilz, align 8          ; 4 uses
  %i.imb = getelementptr inbounds nuw i8, ptr %i.ima, i64 1028
  %i.imc = getelementptr inbounds nuw i8, ptr %i.ima, i64 1044
  %i.imd = getelementptr inbounds nuw i8, ptr %i.ima, i64 1060
  %i.ime = getelementptr inbounds nuw i8, ptr %i.ima, i64 1076
  %i.imf = load <4 x float>, ptr %i.imb, align 4  ; 4 uses
  %i.img = load <4 x float>, ptr %i.imc, align 4  ; 4 uses
  %i.imh = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.imi = fmul <4 x float> %i.imh, %i.img
  %i.imj = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> zeroinitializer
  %i.imk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imf, <4 x float> %i.imj, <4 x float> %i.imi)
  %i.iml = load <4 x float>, ptr %i.imd, align 4  ; 4 uses
  %i.imm = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.imn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iml, <4 x float> %i.imm, <4 x float> %i.imk)
  %i.imo = load <4 x float>, ptr %i.ime, align 4  ; 4 uses
  %i.imp = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.imq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imo, <4 x float> %i.imp, <4 x float> %i.imn) ; 2 uses
  store <4 x float> %i.imq, ptr %226, align 16
  %i.imr = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ims = fmul <4 x float> %i.imr, %i.img
  %i.imt = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.imu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imf, <4 x float> %i.imt, <4 x float> %i.ims)
  %i.imv = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.imw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iml, <4 x float> %i.imv, <4 x float> %i.imu)
  %i.imx = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.imy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imo, <4 x float> %i.imx, <4 x float> %i.imw) ; 2 uses
  store <4 x float> %i.imy, ptr %i.ieg, align 16
  %i.imz = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.ina = fmul <4 x float> %i.imz, %i.img
  %i.inb = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.inc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imf, <4 x float> %i.inb, <4 x float> %i.ina)
  %i.ind = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 10, i32 10, i32 10, i32 10>
  %i.ine = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iml, <4 x float> %i.ind, <4 x float> %i.inc)
  %i.inf = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 11, i32 11, i32 11, i32 11>
  %i.ing = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imo, <4 x float> %i.inf, <4 x float> %i.ine) ; 2 uses
  store <4 x float> %i.ing, ptr %i.ieh, align 16
  %i.inh = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 13, i32 13, i32 13, i32 13>
  %i.ini = fmul <4 x float> %i.inh, %i.img
  %i.inj = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 12, i32 12, i32 12, i32 12>
  %i.ink = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imf, <4 x float> %i.inj, <4 x float> %i.ini)
  %i.inl = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 14, i32 14, i32 14, i32 14>
  %i.inm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iml, <4 x float> %i.inl, <4 x float> %i.ink)
  %i.inn = shufflevector <16 x float> %i.ily, <16 x float> poison, <4 x i32> <i32 15, i32 15, i32 15, i32 15>
  %i.ino = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.imo, <4 x float> %i.inn, <4 x float> %i.inm) ; 2 uses
  store <4 x float> %i.ino, ptr %i.iei, align 16
  %.not.i3814 = icmp eq ptr %i.ilz, %.sroa.012.0.lcssa.i3810
  %i.inp = shufflevector <4 x float> %i.imq, <4 x float> %i.imy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.inq = shufflevector <4 x float> %i.ing, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.inr = shufflevector <16 x float> %i.inp, <16 x float> %i.inq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ins = shufflevector <4 x float> %i.ino, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.int = shufflevector <16 x float> %i.inr, <16 x float> %i.ins, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  br i1 %.not.i3814, label %._crit_edge13962, label %.lr.ph13961

bb.ary:                                           ; preds = %.loopexit.split-lp.i3841, %.loopexit.i3835
  %.pn5.i3817 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i3842, %.loopexit.split-lp.i3841 ], [ %lpad.loopexit.i3836, %.loopexit.i3835 ] ; 2 uses
  %.not.i.i.i9.i3818 = icmp eq ptr %.sroa.012.033.i3825, null
  br i1 %.not.i.i.i9.i3818, label %.body3844, label %bb.arz

bb.arz:                                           ; preds = %bb.ary
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.033.i3825, i64 noundef %i.ild) #32
  br label %.body3844

_Z19get_world_transformPK6aiNodePK7aiScene.exit3846: ; preds = %bb.arx, %._crit_edge13962
  call void @llvm.lifetime.start.p0(ptr nonnull %227) #31
  store <2 x float> zeroinitializer, ptr %227, align 8
  store float 0.000000e+00, ptr %i.iej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %228) #31
  store <2 x float> zeroinitializer, ptr %228, align 8
  store float 0.000000e+00, ptr %i.iek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %229) #31
  store <2 x float> zeroinitializer, ptr %229, align 8
  store float 0.000000e+00, ptr %i.iel, align 8
  invoke void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_(ptr noundef nonnull align 4 dereferenceable(64) %226, ptr noundef nonnull align 4 dereferenceable(12) %229, ptr noundef nonnull align 4 dereferenceable(12) %228, ptr noundef nonnull align 4 dereferenceable(12) %227)
          to label %._crit_edge.i.i3847 unwind label %bb.atb

._crit_edge.i.i3847:                              ; preds = %_Z19get_world_transformPK6aiNodePK7aiScene.exit3846
  %i.inu = load i64, ptr %i.idr, align 8          ; 3 uses
  %i.inv = add nsw i64 %i.inu, 1                  ; 3 uses
  %i.inw = add nsw i64 %i.inu, 2                  ; 3 uses
  %i.inx = add nsw i64 %i.inu, 3                  ; 4 uses
  store i64 %i.inx, ptr %i.idr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %230) #31
  store ptr %i.iem, ptr %230, align 8
  store i8 84, ptr %i.iem, align 8
  store i64 1, ptr %i.ien, align 8
  store i8 0, ptr %i.ifg, align 1
  %.sroa.064.0.copyload = load <2 x float>, ptr %227, align 8
  %.sroa.265.0.copyload = load float, ptr %i.iej, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %231) #31
  store ptr %i.ieo, ptr %231, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ieo, ptr noundef nonnull align 1 dereferenceable(15) @.str.179, i64 15, i1 false)
  store i64 15, ptr %i.iep, align 8
  store i8 0, ptr %i.ifh, align 1
  %i.iny = load ptr, ptr %i.ier, align 8          ; 2 uses
  %.not10.i.i.i.i3855 = icmp eq ptr %i.iny, null
  br i1 %.not10.i.i.i.i3855, label %.critedge.i3867, label %.lr.ph.i.i.i.i3857

.lr.ph.i.i.i.i3857:                               ; preds = %._crit_edge.i.i3847, %.lr.ph.i.i.i.i3857
  %.012.i.i.i.i3858 = phi ptr [ %.1.i.i.i.i3863, %.lr.ph.i.i.i.i3857 ], [ %i.iny, %._crit_edge.i.i3847 ] ; 3 uses
  %.0811.i.i.i.i3859 = phi ptr [ %.19.i.i.i.i3860, %.lr.ph.i.i.i.i3857 ], [ %i.ies, %._crit_edge.i.i3847 ]
  %i.inz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3858, i64 32
  %i.ioa = load ptr, ptr %i.inz, align 8
  %i.iob = icmp ult ptr %i.ioa, %i.iku            ; 2 uses
  %.19.i.i.i.i3860 = select i1 %i.iob, ptr %.0811.i.i.i.i3859, ptr %.012.i.i.i.i3858 ; 6 uses
  %.1.in.v.i.i.i.i3861 = select i1 %i.iob, i64 24, i64 16
  %.1.in.i.i.i.i3862 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3858, i64 %.1.in.v.i.i.i.i3861
  %.1.i.i.i.i3863 = load ptr, ptr %.1.in.i.i.i.i3862, align 8 ; 2 uses
  %.not.i.i.i.i3864 = icmp eq ptr %.1.i.i.i.i3863, null
  br i1 %.not.i.i.i.i3864, label %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3865, label %.lr.ph.i.i.i.i3857, !llvm.loop !255

_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3865: ; preds = %.lr.ph.i.i.i.i3857
  %i.ioc = icmp eq ptr %.19.i.i.i.i3860, %i.ies
  br i1 %i.ioc, label %.critedge.i3867, label %bb.asa

bb.asa:                                           ; preds = %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3865
  %i.iod = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i3860, i64 32
  %i.ioe = load ptr, ptr %i.iod, align 8
  %i.iof = icmp ult ptr %i.iku, %i.ioe
  br i1 %i.iof, label %.critedge.i3867, label %bb.asf

.critedge.i3867:                                  ; preds = %bb.asa, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3865, %._crit_edge.i.i3847
  %.08.lcssa.i.i.i14.i3868 = phi ptr [ %.19.i.i.i.i3860, %bb.asa ], [ %.19.i.i.i.i3860, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3865 ], [ %i.ies, %._crit_edge.i.i3847 ]
  %i.iog = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34
          to label %.noexc3874 unwind label %bb.atc ; 6 uses

.noexc3874:                                       ; preds = %.critedge.i3867
  %i.ioh = getelementptr inbounds nuw i8, ptr %i.iog, i64 32 ; 3 uses
  store ptr %i.iku, ptr %i.ioh, align 8
  %i.ioi = getelementptr inbounds nuw i8, ptr %i.iog, i64 40
  store i64 0, ptr %i.ioi, align 8
  %i.ioj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.ieq, ptr %.08.lcssa.i.i.i14.i3868, ptr noundef nonnull align 8 dereferenceable(8) %i.ioh)
          to label %bb.asb unwind label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3869 ; 2 uses

bb.asb:                                           ; preds = %.noexc3874
  %i.iok = extractvalue { ptr, ptr } %i.ioj, 0    ; 2 uses
  %i.iol = extractvalue { ptr, ptr } %i.ioj, 1    ; 4 uses
  %.not.i.i3870 = icmp eq ptr %i.iol, null
  br i1 %.not.i.i3870, label %bb.ase, label %bb.asc

bb.asc:                                           ; preds = %bb.asb
  %.not.i.i.i4.i3871 = icmp ne ptr %i.iok, null
  %i.iom = icmp eq ptr %i.iol, %i.ies
  %or.cond.i.i.i.i3872 = select i1 %.not.i.i.i4.i3871, i1 true, i1 %i.iom
  br i1 %or.cond.i.i.i.i3872, label %.thread.i.i3873, label %bb.asd

bb.asd:                                           ; preds = %bb.asc
  %i.ion = load ptr, ptr %i.ioh, align 8
  %i.ioo = getelementptr inbounds nuw i8, ptr %i.iol, i64 32
  %i.iop = load ptr, ptr %i.ioo, align 8
  %i.ioq = icmp ult ptr %i.ion, %i.iop
  br label %.thread.i.i3873

.thread.i.i3873:                                  ; preds = %bb.asd, %bb.asc
  %i.ior = phi i1 [ %i.ioq, %bb.asd ], [ true, %bb.asc ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ior, ptr noundef nonnull %i.iog, ptr noundef nonnull %i.iol, ptr noundef nonnull align 8 dereferenceable(32) %i.ies) #31
  %i.ios = load i64, ptr %i.iet, align 8
  %i.iot = add i64 %i.ios, 1
  store i64 %i.iot, ptr %i.iet, align 8
  br label %bb.asf

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3869: ; preds = %.noexc3874
  %i.iou = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.iog, i64 noundef 48) #32
  br label %.body3875

bb.ase:                                           ; preds = %bb.asb
  call void @_ZdlPvm(ptr noundef nonnull %i.iog, i64 noundef 48) #32
  br label %bb.asf

bb.asf:                                           ; preds = %bb.ase, %.thread.i.i3873, %bb.asa
  %.sroa.09.0.i3866 = phi ptr [ %.19.i.i.i.i3860, %bb.asa ], [ %i.iog, %.thread.i.i3873 ], [ %i.iok, %bb.ase ]
  %i.iov = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i3866, i64 40
  %i.iow = load i64, ptr %i.iov, align 8
  invoke void @_ZN6Assimp11FBXExporter23WriteAnimationCurveNodeERNS_12StreamWriterILb0ELb0EEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfESB_ll(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, i64 noundef %i.inv, ptr noundef nonnull align 8 dereferenceable(32) %230, <2 x float> %.sroa.064.0.copyload, float %.sroa.265.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %231, i64 noundef %i.ijl, i64 noundef %i.iow)
          to label %bb.asg unwind label %bb.atc

bb.asg:                                           ; preds = %bb.asf
  %i.iox = load ptr, ptr %231, align 8            ; 2 uses
  %i.ioy = icmp eq ptr %i.iox, %i.ieo
  br i1 %i.ioy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3880, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3878

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3878: ; preds = %bb.asg
  %i.ioz = load i64, ptr %i.ieo, align 8
  %i.ipa = add i64 %i.ioz, 1
  call void @_ZdlPvm(ptr noundef %i.iox, i64 noundef %i.ipa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3880

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3880: ; preds = %bb.asg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3878
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #31
  %i.ipb = load ptr, ptr %230, align 8            ; 2 uses
  %i.ipc = icmp eq ptr %i.ipb, %i.iem
  br i1 %i.ipc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3881

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3881: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3880
  %i.ipd = load i64, ptr %i.iem, align 8
  %i.ipe = add i64 %i.ipd, 1
  call void @_ZdlPvm(ptr noundef %i.ipb, i64 noundef %i.ipe) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3880, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3881
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %232) #31
  store ptr %i.ieu, ptr %232, align 8
  store i8 82, ptr %i.ieu, align 8
  store i64 1, ptr %i.iev, align 8
  store i8 0, ptr %i.ifi, align 1
  %.sroa.060.0.copyload = load <2 x float>, ptr %228, align 8
  %.sroa.261.0.copyload = load float, ptr %i.iek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %233) #31
  store ptr %i.iew, ptr %233, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.iew, ptr noundef nonnull align 1 dereferenceable(12) @.str.180, i64 12, i1 false)
  store i64 12, ptr %i.iex, align 8
  store i8 0, ptr %i.ifj, align 4
  %i.ipf = load ptr, ptr %i.ier, align 8          ; 2 uses
  %.not10.i.i.i.i3892 = icmp eq ptr %i.ipf, null
  br i1 %.not10.i.i.i.i3892, label %.critedge.i3904, label %.lr.ph.i.i.i.i3894

.lr.ph.i.i.i.i3894:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883, %.lr.ph.i.i.i.i3894
  %.012.i.i.i.i3895 = phi ptr [ %.1.i.i.i.i3900, %.lr.ph.i.i.i.i3894 ], [ %i.ipf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883 ] ; 3 uses
  %.0811.i.i.i.i3896 = phi ptr [ %.19.i.i.i.i3897, %.lr.ph.i.i.i.i3894 ], [ %i.ies, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883 ]
  %i.ipg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3895, i64 32
  %i.iph = load ptr, ptr %i.ipg, align 8
  %i.ipi = icmp ult ptr %i.iph, %i.iku            ; 2 uses
  %.19.i.i.i.i3897 = select i1 %i.ipi, ptr %.0811.i.i.i.i3896, ptr %.012.i.i.i.i3895 ; 6 uses
  %.1.in.v.i.i.i.i3898 = select i1 %i.ipi, i64 24, i64 16
  %.1.in.i.i.i.i3899 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3895, i64 %.1.in.v.i.i.i.i3898
  %.1.i.i.i.i3900 = load ptr, ptr %.1.in.i.i.i.i3899, align 8 ; 2 uses
  %.not.i.i.i.i3901 = icmp eq ptr %.1.i.i.i.i3900, null
  br i1 %.not.i.i.i.i3901, label %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3902, label %.lr.ph.i.i.i.i3894, !llvm.loop !255

_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3902: ; preds = %.lr.ph.i.i.i.i3894
  %i.ipj = icmp eq ptr %.19.i.i.i.i3897, %i.ies
  br i1 %i.ipj, label %.critedge.i3904, label %bb.ash

bb.ash:                                           ; preds = %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3902
  %i.ipk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i3897, i64 32
  %i.ipl = load ptr, ptr %i.ipk, align 8
  %i.ipm = icmp ult ptr %i.iku, %i.ipl
  br i1 %i.ipm, label %.critedge.i3904, label %bb.asm

.critedge.i3904:                                  ; preds = %bb.ash, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3902, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883
  %.08.lcssa.i.i.i14.i3905 = phi ptr [ %.19.i.i.i.i3897, %bb.ash ], [ %.19.i.i.i.i3897, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3902 ], [ %i.ies, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3883 ]
  %i.ipn = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34
          to label %.noexc3911 unwind label %bb.atd ; 6 uses

.noexc3911:                                       ; preds = %.critedge.i3904
  %i.ipo = getelementptr inbounds nuw i8, ptr %i.ipn, i64 32 ; 3 uses
  store ptr %i.iku, ptr %i.ipo, align 8
  %i.ipp = getelementptr inbounds nuw i8, ptr %i.ipn, i64 40
  store i64 0, ptr %i.ipp, align 8
  %i.ipq = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.ieq, ptr %.08.lcssa.i.i.i14.i3905, ptr noundef nonnull align 8 dereferenceable(8) %i.ipo)
          to label %bb.asi unwind label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3906 ; 2 uses

bb.asi:                                           ; preds = %.noexc3911
  %i.ipr = extractvalue { ptr, ptr } %i.ipq, 0    ; 2 uses
  %i.ips = extractvalue { ptr, ptr } %i.ipq, 1    ; 4 uses
  %.not.i.i3907 = icmp eq ptr %i.ips, null
  br i1 %.not.i.i3907, label %bb.asl, label %bb.asj

bb.asj:                                           ; preds = %bb.asi
  %.not.i.i.i4.i3908 = icmp ne ptr %i.ipr, null
  %i.ipt = icmp eq ptr %i.ips, %i.ies
  %or.cond.i.i.i.i3909 = select i1 %.not.i.i.i4.i3908, i1 true, i1 %i.ipt
  br i1 %or.cond.i.i.i.i3909, label %.thread.i.i3910, label %bb.ask

bb.ask:                                           ; preds = %bb.asj
  %i.ipu = load ptr, ptr %i.ipo, align 8
  %i.ipv = getelementptr inbounds nuw i8, ptr %i.ips, i64 32
  %i.ipw = load ptr, ptr %i.ipv, align 8
  %i.ipx = icmp ult ptr %i.ipu, %i.ipw
  br label %.thread.i.i3910

.thread.i.i3910:                                  ; preds = %bb.ask, %bb.asj
  %i.ipy = phi i1 [ %i.ipx, %bb.ask ], [ true, %bb.asj ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ipy, ptr noundef nonnull %i.ipn, ptr noundef nonnull %i.ips, ptr noundef nonnull align 8 dereferenceable(32) %i.ies) #31
  %i.ipz = load i64, ptr %i.iet, align 8
  %i.iqa = add i64 %i.ipz, 1
  store i64 %i.iqa, ptr %i.iet, align 8
  br label %bb.asm

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3906: ; preds = %.noexc3911
  %i.iqb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ipn, i64 noundef 48) #32
  br label %.body3912

bb.asl:                                           ; preds = %bb.asi
  call void @_ZdlPvm(ptr noundef nonnull %i.ipn, i64 noundef 48) #32
  br label %bb.asm

bb.asm:                                           ; preds = %bb.asl, %.thread.i.i3910, %bb.ash
  %.sroa.09.0.i3903 = phi ptr [ %.19.i.i.i.i3897, %bb.ash ], [ %i.ipn, %.thread.i.i3910 ], [ %i.ipr, %bb.asl ]
  %i.iqc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i3903, i64 40
  %i.iqd = load i64, ptr %i.iqc, align 8
  invoke void @_ZN6Assimp11FBXExporter23WriteAnimationCurveNodeERNS_12StreamWriterILb0ELb0EEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfESB_ll(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, i64 noundef %i.inw, ptr noundef nonnull align 8 dereferenceable(32) %232, <2 x float> %.sroa.060.0.copyload, float %.sroa.261.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %233, i64 noundef %i.ijl, i64 noundef %i.iqd)
          to label %bb.asn unwind label %bb.atd

bb.asn:                                           ; preds = %bb.asm
  %i.iqe = load ptr, ptr %233, align 8            ; 2 uses
  %i.iqf = icmp eq ptr %i.iqe, %i.iew
  br i1 %i.iqf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3917, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3915

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3915: ; preds = %bb.asn
  %i.iqg = load i64, ptr %i.iew, align 8
  %i.iqh = add i64 %i.iqg, 1
  call void @_ZdlPvm(ptr noundef %i.iqe, i64 noundef %i.iqh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3917

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3917: ; preds = %bb.asn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3915
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #31
  %i.iqi = load ptr, ptr %232, align 8            ; 2 uses
  %i.iqj = icmp eq ptr %i.iqi, %i.ieu
  br i1 %i.iqj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3918

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3918: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3917
  %i.iqk = load i64, ptr %i.ieu, align 8
  %i.iql = add i64 %i.iqk, 1
  call void @_ZdlPvm(ptr noundef %i.iqi, i64 noundef %i.iql) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3917, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3918
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %234) #31
  store ptr %i.iey, ptr %234, align 8
  store i8 83, ptr %i.iey, align 8
  store i64 1, ptr %i.iez, align 8
  store i8 0, ptr %i.ifk, align 1
  %.sroa.056.0.copyload = load <2 x float>, ptr %229, align 8
  %.sroa.257.0.copyload = load float, ptr %i.iel, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %235) #31
  store ptr %i.ifa, ptr %235, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ifa, ptr noundef nonnull align 1 dereferenceable(9) @.str.363, i64 9, i1 false)
  store i64 9, ptr %i.ifb, align 8
  store i8 0, ptr %i.ifl, align 1
  %i.iqm = load ptr, ptr %i.ier, align 8          ; 2 uses
  %.not10.i.i.i.i3929 = icmp eq ptr %i.iqm, null
  br i1 %.not10.i.i.i.i3929, label %.critedge.i3941, label %.lr.ph.i.i.i.i3931

.lr.ph.i.i.i.i3931:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920, %.lr.ph.i.i.i.i3931
  %.012.i.i.i.i3932 = phi ptr [ %.1.i.i.i.i3937, %.lr.ph.i.i.i.i3931 ], [ %i.iqm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920 ] ; 3 uses
  %.0811.i.i.i.i3933 = phi ptr [ %.19.i.i.i.i3934, %.lr.ph.i.i.i.i3931 ], [ %i.ies, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920 ]
  %i.iqn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3932, i64 32
  %i.iqo = load ptr, ptr %i.iqn, align 8
  %i.iqp = icmp ult ptr %i.iqo, %i.iku            ; 2 uses
  %.19.i.i.i.i3934 = select i1 %i.iqp, ptr %.0811.i.i.i.i3933, ptr %.012.i.i.i.i3932 ; 6 uses
  %.1.in.v.i.i.i.i3935 = select i1 %i.iqp, i64 24, i64 16
  %.1.in.i.i.i.i3936 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3932, i64 %.1.in.v.i.i.i.i3935
  %.1.i.i.i.i3937 = load ptr, ptr %.1.in.i.i.i.i3936, align 8 ; 2 uses
  %.not.i.i.i.i3938 = icmp eq ptr %.1.i.i.i.i3937, null
  br i1 %.not.i.i.i.i3938, label %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3939, label %.lr.ph.i.i.i.i3931, !llvm.loop !255

_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3939: ; preds = %.lr.ph.i.i.i.i3931
  %i.iqq = icmp eq ptr %.19.i.i.i.i3934, %i.ies
  br i1 %i.iqq, label %.critedge.i3941, label %bb.aso

bb.aso:                                           ; preds = %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3939
  %i.iqr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i3934, i64 32
  %i.iqs = load ptr, ptr %i.iqr, align 8
  %i.iqt = icmp ult ptr %i.iku, %i.iqs
  br i1 %i.iqt, label %.critedge.i3941, label %bb.ast

.critedge.i3941:                                  ; preds = %bb.aso, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3939, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920
  %.08.lcssa.i.i.i14.i3942 = phi ptr [ %.19.i.i.i.i3934, %bb.aso ], [ %.19.i.i.i.i3934, %_ZNSt3mapIPK6aiNodelSt4lessIS2_ESaISt4pairIKS2_lEEE11lower_boundERS6_.exit.i3939 ], [ %i.ies, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3920 ]
  %i.iqu = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34
          to label %.noexc3948 unwind label %bb.ate ; 6 uses

.noexc3948:                                       ; preds = %.critedge.i3941
  %i.iqv = getelementptr inbounds nuw i8, ptr %i.iqu, i64 32 ; 3 uses
  store ptr %i.iku, ptr %i.iqv, align 8
  %i.iqw = getelementptr inbounds nuw i8, ptr %i.iqu, i64 40
  store i64 0, ptr %i.iqw, align 8
  %i.iqx = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.ieq, ptr %.08.lcssa.i.i.i14.i3942, ptr noundef nonnull align 8 dereferenceable(8) %i.iqv)
          to label %bb.asp unwind label %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3943 ; 2 uses

bb.asp:                                           ; preds = %.noexc3948
  %i.iqy = extractvalue { ptr, ptr } %i.iqx, 0    ; 2 uses
  %i.iqz = extractvalue { ptr, ptr } %i.iqx, 1    ; 4 uses
  %.not.i.i3944 = icmp eq ptr %i.iqz, null
  br i1 %.not.i.i3944, label %bb.ass, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %.not.i.i.i4.i3945 = icmp ne ptr %i.iqy, null
  %i.ira = icmp eq ptr %i.iqz, %i.ies
  %or.cond.i.i.i.i3946 = select i1 %.not.i.i.i4.i3945, i1 true, i1 %i.ira
  br i1 %or.cond.i.i.i.i3946, label %.thread.i.i3947, label %bb.asr

bb.asr:                                           ; preds = %bb.asq
  %i.irb = load ptr, ptr %i.iqv, align 8
  %i.irc = getelementptr inbounds nuw i8, ptr %i.iqz, i64 32
  %i.ird = load ptr, ptr %i.irc, align 8
  %i.ire = icmp ult ptr %i.irb, %i.ird
  br label %.thread.i.i3947

.thread.i.i3947:                                  ; preds = %bb.asr, %bb.asq
  %i.irf = phi i1 [ %i.ire, %bb.asr ], [ true, %bb.asq ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.irf, ptr noundef nonnull %i.iqu, ptr noundef nonnull %i.iqz, ptr noundef nonnull align 8 dereferenceable(32) %i.ies) #31
  %i.irg = load i64, ptr %i.iet, align 8
  %i.irh = add i64 %i.irg, 1
  store i64 %i.irh, ptr %i.iet, align 8
  br label %bb.ast

_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3943: ; preds = %.noexc3948
  %i.iri = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.iqu, i64 noundef 48) #32
  br label %.body3949

bb.ass:                                           ; preds = %bb.asp
  call void @_ZdlPvm(ptr noundef nonnull %i.iqu, i64 noundef 48) #32
  br label %bb.ast

bb.ast:                                           ; preds = %bb.ass, %.thread.i.i3947, %bb.aso
  %.sroa.09.0.i3940 = phi ptr [ %.19.i.i.i.i3934, %bb.aso ], [ %i.iqu, %.thread.i.i3947 ], [ %i.iqy, %bb.ass ]
  %i.irj = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i3940, i64 40
  %i.irk = load i64, ptr %i.irj, align 8
  invoke void @_ZN6Assimp11FBXExporter23WriteAnimationCurveNodeERNS_12StreamWriterILb0ELb0EEElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE10aiVector3tIfESB_ll(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(56) %43, i64 noundef %i.inx, ptr noundef nonnull align 8 dereferenceable(32) %234, <2 x float> %.sroa.056.0.copyload, float %.sroa.257.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %235, i64 noundef %i.ijl, i64 noundef %i.irk)
          to label %bb.asu unwind label %bb.ate

bb.asu:                                           ; preds = %bb.ast
  %i.irl = load ptr, ptr %235, align 8            ; 2 uses
  %i.irm = icmp eq ptr %i.irl, %i.ifa
  br i1 %i.irm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3954, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3952

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3952: ; preds = %bb.asu
  %i.irn = load i64, ptr %i.ifa, align 8
  %i.iro = add i64 %i.irn, 1
  call void @_ZdlPvm(ptr noundef %i.irl, i64 noundef %i.iro) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3954

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3954: ; preds = %bb.asu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3952
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #31
  %i.irp = load ptr, ptr %234, align 8            ; 2 uses
  %i.irq = icmp eq ptr %i.irp, %i.iey
  br i1 %i.irq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3957, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3955

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3955: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3954
  %i.irr = load i64, ptr %i.iey, align 8
  %i.irs = add i64 %i.irr, 1
  call void @_ZdlPvm(ptr noundef %i.irp, i64 noundef %i.irs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3957

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3957: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3954, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3955
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #31
  %i.irt = load ptr, ptr %i.ifc, align 8          ; 5 uses
  %i.iru = load ptr, ptr %i.ifd, align 8
  %.not.i3958 = icmp eq ptr %i.irt, %i.iru
  br i1 %.not.i3958, label %bb.asw, label %bb.asv

bb.asv:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3957
  store i64 %i.inv, ptr %i.irt, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.irt, i64 8
  store i64 %i.inw, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.irt, i64 16
  store i64 %i.inx, ptr %.sroa.9.0..sroa_idx, align 8
  %i.irv = load ptr, ptr %i.ifc, align 8
  %i.irw = getelementptr inbounds nuw i8, ptr %i.irv, i64 24 ; 2 uses
  store ptr %i.irw, ptr %i.ifc, align 8
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit

bb.asw:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3957
  %i.irx = load ptr, ptr %225, align 8            ; 4 uses
  %i.iry = ptrtoint ptr %i.irt to i64
  %i.irz = ptrtoint ptr %i.irx to i64
  %i.isa = sub i64 %i.iry, %i.irz                 ; 6 uses
  %i.isb = icmp eq i64 %i.isa, 9223372036854775800
  br i1 %i.isb, label %bb.asx, label %_ZNKSt6vectorISt5arrayIlLm3EESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.asx:                                           ; preds = %bb.asw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc3962 unwind label %.loopexit.split-lp5864

.noexc3962:                                       ; preds = %bb.asx
  unreachable

_ZNKSt6vectorISt5arrayIlLm3EESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.asw
  %i.isc = sdiv exact i64 %i.isa, 24              ; 3 uses
  %.sroa.speculated.i.i.i3959 = call i64 @llvm.umax.i64(i64 %i.isc, i64 1)
  %i.isd = add nsw i64 %.sroa.speculated.i.i.i3959, %i.isc ; 2 uses
  %i.ise = icmp ult i64 %i.isd, %i.isc
  %i.isf = call i64 @llvm.umin.i64(i64 %i.isd, i64 384307168202282325)
  %i.isg = select i1 %i.ise, i64 384307168202282325, i64 %i.isf ; 3 uses
  %.not.i.i.i3960 = icmp ne i64 %i.isg, 0
  call void @llvm.assume(i1 %.not.i.i.i3960)
  %i.ish = mul nuw nsw i64 %i.isg, 24
  %i.isi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ish) #34
          to label %.noexc3963 unwind label %.loopexit5863 ; 4 uses

.noexc3963:                                       ; preds = %_ZNKSt6vectorISt5arrayIlLm3EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.isj = getelementptr inbounds i8, ptr %i.isi, i64 %i.isa ; 4 uses
  store i64 %i.inv, ptr %i.isj, align 8
  %.sroa.7.0..sroa_idx5322 = getelementptr inbounds nuw i8, ptr %i.isj, i64 8
  store i64 %i.inw, ptr %.sroa.7.0..sroa_idx5322, align 8
  %.sroa.9.0..sroa_idx5324 = getelementptr inbounds nuw i8, ptr %i.isj, i64 16
  store i64 %i.inx, ptr %.sroa.9.0..sroa_idx5324, align 8
  %i.isk = icmp sgt i64 %i.isa, 0
  br i1 %i.isk, label %bb.asy, label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.asy:                                           ; preds = %.noexc3963
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.isi, ptr align 8 %i.irx, i64 %i.isa, i1 false)
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.asy, %.noexc3963
  %i.isl = getelementptr inbounds nuw i8, ptr %i.isj, i64 24 ; 2 uses
  %.not.i17.i.i3961 = icmp eq ptr %i.irx, null
  br i1 %.not.i17.i.i3961, label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.asz

bb.asz:                                           ; preds = %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.irx, i64 noundef %i.isa) #32
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.asz, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.isi, ptr %225, align 8
  store ptr %i.isl, ptr %i.ifc, align 8
  %i.ism = getelementptr inbounds nuw [24 x i8], ptr %i.isi, i64 %i.isg
  store ptr %i.ism, ptr %i.ifd, align 8
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.asv
  %i.isn = phi ptr [ %i.isl, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.irw, %bb.asv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #31
  %i.iso = add nuw nsw i64 %.066113972, 1         ; 2 uses
  %i.isp = load i32, ptr %i.ijm, align 8
  %i.isq = zext i32 %i.isp to i64
  %i.isr = icmp samesign ult i64 %i.iso, %i.isq
  br i1 %i.isr, label %bb.arr, label %._crit_edge13975, !llvm.loop !325

bb.ata:                                           ; preds = %bb.arr
  %i.iss = landingpad { ptr, i32 }
          cleanup
  br label %bb.ath

bb.atb:                                           ; preds = %_Z19get_world_transformPK6aiNodePK7aiScene.exit3846
  %i.ist = landingpad { ptr, i32 }
          cleanup
  br label %bb.atf

.loopexit5863:                                    ; preds = %_ZNKSt6vectorISt5arrayIlLm3EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit5865 = landingpad { ptr, i32 }
          cleanup
  br label %bb.atf

.loopexit.split-lp5864:                           ; preds = %bb.asx
  %lpad.loopexit.split-lp5866 = landingpad { ptr, i32 }
          cleanup
  br label %bb.atf

bb.atc:                                           ; preds = %.critedge.i3867, %bb.asf
  %i.isu = landingpad { ptr, i32 }
          cleanup
  br label %.body3875

.body3875:                                        ; preds = %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3869, %bb.atc
  %eh.lpad-body3876 = phi { ptr, i32 } [ %i.isu, %bb.atc ], [ %i.iou, %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3869 ]
  %i.isv = load ptr, ptr %231, align 8            ; 2 uses
  %i.isw = icmp eq ptr %i.isv, %i.ieo
  br i1 %i.isw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3966, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3964

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3964: ; preds = %.body3875
  %i.isx = load i64, ptr %i.ieo, align 8
  %i.isy = add i64 %i.isx, 1
  call void @_ZdlPvm(ptr noundef %i.isv, i64 noundef %i.isy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3966

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3966: ; preds = %.body3875, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3964
  call void @llvm.lifetime.end.p0(ptr nonnull %231) #31
  %i.isz = load ptr, ptr %230, align 8            ; 2 uses
  %i.ita = icmp eq ptr %i.isz, %i.iem
  br i1 %i.ita, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3969, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3967

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3967: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3966
  %i.itb = load i64, ptr %i.iem, align 8
  %i.itc = add i64 %i.itb, 1
  call void @_ZdlPvm(ptr noundef %i.isz, i64 noundef %i.itc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3969

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3969: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3966, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3967
  call void @llvm.lifetime.end.p0(ptr nonnull %230) #31
  br label %bb.atf

bb.atd:                                           ; preds = %.critedge.i3904, %bb.asm
  %i.itd = landingpad { ptr, i32 }
          cleanup
  br label %.body3912

.body3912:                                        ; preds = %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3906, %bb.atd
  %eh.lpad-body3913 = phi { ptr, i32 } [ %i.itd, %bb.atd ], [ %i.iqb, %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3906 ]
  %i.ite = load ptr, ptr %233, align 8            ; 2 uses
  %i.itf = icmp eq ptr %i.ite, %i.iew
  br i1 %i.itf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3972, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3970: ; preds = %.body3912
  %i.itg = load i64, ptr %i.iew, align 8
  %i.ith = add i64 %i.itg, 1
  call void @_ZdlPvm(ptr noundef %i.ite, i64 noundef %i.ith) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3972

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3972: ; preds = %.body3912, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3970
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #31
  %i.iti = load ptr, ptr %232, align 8            ; 2 uses
  %i.itj = icmp eq ptr %i.iti, %i.ieu
  br i1 %i.itj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3975, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3973

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3973: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3972
  %i.itk = load i64, ptr %i.ieu, align 8
  %i.itl = add i64 %i.itk, 1
  call void @_ZdlPvm(ptr noundef %i.iti, i64 noundef %i.itl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3975

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3975: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3972, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3973
  call void @llvm.lifetime.end.p0(ptr nonnull %232) #31
  br label %bb.atf

bb.ate:                                           ; preds = %.critedge.i3941, %bb.ast
  %i.itm = landingpad { ptr, i32 }
          cleanup
  br label %.body3949

.body3949:                                        ; preds = %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3943, %bb.ate
  %eh.lpad-body3950 = phi { ptr, i32 } [ %i.itm, %bb.ate ], [ %i.iri, %_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i3943 ]
  %i.itn = load ptr, ptr %235, align 8            ; 2 uses
  %i.ito = icmp eq ptr %i.itn, %i.ifa
  br i1 %i.ito, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3978, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3976

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3976: ; preds = %.body3949
  %i.itp = load i64, ptr %i.ifa, align 8
  %i.itq = add i64 %i.itp, 1
  call void @_ZdlPvm(ptr noundef %i.itn, i64 noundef %i.itq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3978

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3978: ; preds = %.body3949, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3976
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #31
  %i.itr = load ptr, ptr %234, align 8            ; 2 uses
  %i.its = icmp eq ptr %i.itr, %i.iey
  br i1 %i.its, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3981, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3979

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3979: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3978
  %i.itt = load i64, ptr %i.iey, align 8
  %i.itu = add i64 %i.itt, 1
  call void @_ZdlPvm(ptr noundef %i.itr, i64 noundef %i.itu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3981

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3981: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3978, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3979
  call void @llvm.lifetime.end.p0(ptr nonnull %234) #31
  br label %bb.atf

bb.atf:                                           ; preds = %.loopexit5863, %.loopexit.split-lp5864, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3969, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3975, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3981, %bb.atb
  %.pn737.pn = phi { ptr, i32 } [ %i.ist, %bb.atb ], [ %eh.lpad-body3876, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3969 ], [ %eh.lpad-body3950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3981 ], [ %eh.lpad-body3913, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3975 ], [ %lpad.loopexit5865, %.loopexit5863 ], [ %lpad.loopexit.split-lp5866, %.loopexit.split-lp5864 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %229) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %228) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %227) #31
  br label %.body3844

.body3844:                                        ; preds = %bb.arz, %bb.ary, %bb.atf
  %.pn737.pn.pn = phi { ptr, i32 } [ %.pn737.pn, %bb.atf ], [ %.pn5.i3817, %bb.ary ], [ %.pn5.i3817, %bb.arz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %226) #31
  br label %bb.ath

_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit: ; preds = %._ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i
  %i.itv = phi ptr [ %.pre15473, %._ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit_crit_edge ], [ %i.ikd, %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EEC2ERKS3_.exit.i ] ; 3 uses
  %.not.i.i.i3982 = icmp eq ptr %i.itv, null
  br i1 %.not.i.i.i3982, label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit, label %bb.atg

bb.atg:                                           ; preds = %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit
  %i.itw = load ptr, ptr %i.ifd, align 8
  %i.itx = ptrtoint ptr %i.itw to i64
  %i.ity = ptrtoint ptr %i.itv to i64
  %i.itz = sub i64 %i.itx, %i.ity
  call void @_ZdlPvm(ptr noundef nonnull %i.itv, i64 noundef %i.itz) #32
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit

_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIS_ISt5arrayIlLm3EESaIS1_EESaIS3_EE9push_backERKS3_.exit, %bb.atg
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #31
  %i.iua = add nuw nsw i64 %.066413976, 1         ; 2 uses
  %i.iub = load ptr, ptr %i.ep, align 8           ; 3 uses
  %i.iuc = getelementptr inbounds nuw i8, ptr %i.iub, i64 48
  %i.iud = load i32, ptr %i.iuc, align 8          ; 2 uses
  %i.iue = zext i32 %i.iud to i64
  %i.iuf = icmp samesign ult i64 %i.iua, %i.iue
  br i1 %i.iuf, label %bb.ark, label %.preheader, !llvm.loop !326

.loopexit5868:                                    ; preds = %_ZNSt15__new_allocatorISt5arrayIlLm3EEE8allocateEmPKv.exit.i.i.i.i.i, %bb.arq
  %lpad.loopexit5870 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ath

.loopexit.split-lp5869:                           ; preds = %.noexc.i.i.i3803
  %lpad.loopexit.split-lp5871 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ath

bb.ath:                                           ; preds = %.loopexit5868, %.loopexit.split-lp5869, %bb.ata, %.body3844
  %.pn737.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iss, %bb.ata ], [ %.pn737.pn.pn, %.body3844 ], [ %lpad.loopexit5870, %.loopexit5868 ], [ %lpad.loopexit.split-lp5871, %.loopexit.split-lp5869 ]
  %i.iug = load ptr, ptr %225, align 8            ; 3 uses
  %.not.i.i.i3983 = icmp eq ptr %i.iug, null
  br i1 %.not.i.i.i3983, label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit3984, label %bb.ati

bb.ati:                                           ; preds = %bb.ath
  %i.iuh = load ptr, ptr %i.ifd, align 8
  %i.iui = ptrtoint ptr %i.iuh to i64
  %i.iuj = ptrtoint ptr %i.iug to i64
  %i.iuk = sub i64 %i.iui, %i.iuj
  call void @_ZdlPvm(ptr noundef nonnull %i.iug, i64 noundef %i.iuk) #32
  br label %_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit3984

_ZNSt6vectorISt5arrayIlLm3EESaIS1_EED2Ev.exit3984: ; preds = %bb.ath, %bb.ati
  call void @llvm.lifetime.end.p0(ptr nonnull %225) #31
  br label %bb.ayf

._crit_edge14013:                                 ; preds = %._crit_edge14010, %._crit_edge13950.thread, %._crit_edge13950, %.preheader
  store i32 0, ptr %i.ap, align 4
  %i.iul = load i8, ptr %0, align 8, !range !27, !noundef !28
  %i.ium = trunc nuw i8 %i.iul to i1
  invoke void @_ZN6Assimp3FBX4Node3EndERNS_12StreamWriterILb0ELb0EEEbib(ptr noundef nonnull align 8 dereferenceable(112) %45, ptr noundef nonnull align 8 dereferenceable(56) %43, i1 noundef zeroext %i.ium, i32 noundef 0, i1 noundef zeroext true)
          to label %bb.axl unwind label %bb.aye

bb.atj:                                           ; preds = %.lr.ph14012, %._crit_edge14010
  %i.iun = phi ptr [ %i.iub, %.lr.ph14012 ], [ %i.iuw, %._crit_edge14010 ] ; 2 uses
  %.064214011 = phi i64 [ 0, %.lr.ph14012 ], [ %i.iux, %._crit_edge14010 ] ; 3 uses
  %i.iuo = getelementptr inbounds nuw i8, ptr %i.iun, i64 56
  %i.iup = load ptr, ptr %i.iuo, align 8
  %i.iuq = getelementptr inbounds nuw [8 x i8], ptr %i.iup, i64 %.064214011
  %i.iur = load ptr, ptr %i.iuq, align 8          ; 3 uses
  %i.ius = getelementptr inbounds nuw i8, ptr %i.iur, i64 1048 ; 2 uses
  %i.iut = load i32, ptr %i.ius, align 8
  %.not14035 = icmp eq i32 %i.iut, 0
  br i1 %.not14035, label %._crit_edge14010, label %.lr.ph14009

.lr.ph14009:                                      ; preds = %bb.atj
  %i.iuu = getelementptr inbounds nuw i8, ptr %i.iur, i64 1056
  %i.iuv = getelementptr inbounds nuw i8, ptr %i.iur, i64 1040 ; 3 uses
  br label %bb.atk

._crit_edge14010.loopexit:                        ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %.pre15474 = load ptr, ptr %i.ep, align 8
  br label %._crit_edge14010

._crit_edge14010:                                 ; preds = %._crit_edge14010.loopexit, %bb.atj
  %i.iuw = phi ptr [ %.pre15474, %._crit_edge14010.loopexit ], [ %i.iun, %bb.atj ] ; 2 uses
  %i.iux = add nuw nsw i64 %.064214011, 1         ; 2 uses
  %i.iuy = getelementptr inbounds nuw i8, ptr %i.iuw, i64 48
  %i.iuz = load i32, ptr %i.iuy, align 8
  %i.iva = zext i32 %i.iuz to i64
  %i.ivb = icmp samesign ult i64 %i.iux, %i.iva
  br i1 %i.ivb, label %bb.atj, label %._crit_edge14013, !llvm.loop !327

bb.atk:                                           ; preds = %.lr.ph14009, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %.064014007 = phi i64 [ 0, %.lr.ph14009 ], [ %i.jrt, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 3 uses
  %i.ivc = load ptr, ptr %i.iuu, align 8
  %i.ivd = getelementptr inbounds nuw [8 x i8], ptr %i.ivc, i64 %.064014007
  %i.ive = load ptr, ptr %i.ivd, align 8          ; 7 uses
  %i.ivf = load ptr, ptr %i.ep, align 8
  %i.ivg = getelementptr inbounds nuw i8, ptr %i.ivf, i64 8
  %i.ivh = load ptr, ptr %i.ivg, align 8
  %i.ivi = getelementptr inbounds nuw i8, ptr %i.ive, i64 4
  %i.ivj = invoke noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144) %i.ivh, ptr noundef nonnull %i.ivi)
          to label %_ZN6aiNode8FindNodeERK8aiString.exit3986 unwind label %bb.atu ; 3 uses

_ZN6aiNode8FindNodeERK8aiString.exit3986:         ; preds = %bb.atk
  call void @llvm.lifetime.start.p0(ptr nonnull %236) #31
  %i.ivk = load ptr, ptr %i.ep, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.ivl = getelementptr inbounds nuw i8, ptr %i.ivk, i64 8 ; 2 uses
  %i.ivm = load ptr, ptr %i.ivl, align 8, !noalias !328
  %i.ivn = icmp ne ptr %i.ivj, %i.ivm
  %i.ivo = icmp ne ptr %i.ivj, null
  %i.ivp = and i1 %i.ivo, %i.ivn
  br i1 %i.ivp, label %.lr.ph.i3999, label %._crit_edge.i3987

.lr.ph.i3999:                                     ; preds = %_ZN6aiNode8FindNodeERK8aiString.exit3986, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005
  %.036.i4000 = phi ptr [ %i.iwf, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005 ], [ %i.ivj, %_ZN6aiNode8FindNodeERK8aiString.exit3986 ] ; 3 uses
  %.sroa.14.035.i4001 = phi ptr [ %.sroa.14.1.i4008, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3986 ] ; 3 uses
  %.sroa.9.034.i4002 = phi ptr [ %.sroa.9.1.i4009, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3986 ] ; 3 uses
  %.sroa.012.033.i4003 = phi ptr [ %.sroa.012.1.i4006, %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005 ], [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3986 ] ; 7 uses
  %.not.i.i4004 = icmp eq ptr %.sroa.9.034.i4002, %.sroa.14.035.i4001
  br i1 %.not.i.i4004, label %bb.atm, label %bb.atl

bb.atl:                                           ; preds = %.lr.ph.i3999
  store ptr %.036.i4000, ptr %.sroa.9.034.i4002, align 8, !noalias !328
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005

bb.atm:                                           ; preds = %.lr.ph.i3999
  %i.ivq = ptrtoint ptr %.sroa.14.035.i4001 to i64
  %i.ivr = ptrtoint ptr %.sroa.012.033.i4003 to i64
  %i.ivs = sub i64 %i.ivq, %i.ivr                 ; 7 uses
  %i.ivt = icmp eq i64 %i.ivs, 9223372036854775800
  br i1 %i.ivt, label %bb.atn, label %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i4010

bb.atn:                                           ; preds = %bb.atm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc.i4021 unwind label %.loopexit.split-lp.i4019, !noalias !328

.noexc.i4021:                                     ; preds = %bb.atn
  unreachable

_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i4010: ; preds = %bb.atm
  %i.ivu = ashr exact i64 %i.ivs, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i4011 = call i64 @llvm.umax.i64(i64 %i.ivu, i64 1)
  %i.ivv = add nsw i64 %.sroa.speculated.i.i.i.i4011, %i.ivu ; 2 uses
  %i.ivw = icmp ult i64 %i.ivv, %i.ivu
  %i.ivx = call i64 @llvm.umin.i64(i64 %i.ivv, i64 1152921504606846975)
  %i.ivy = select i1 %i.ivw, i64 1152921504606846975, i64 %i.ivx ; 3 uses
  %.not.i.i.i.i4012 = icmp ne i64 %i.ivy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4012)
  %i.ivz = shl nuw nsw i64 %i.ivy, 3
  %i.iwa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ivz) #34
          to label %.noexc7.i4015 unwind label %.loopexit.i4013, !noalias !328 ; 4 uses

.noexc7.i4015:                                    ; preds = %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i4010
  %i.iwb = getelementptr inbounds i8, ptr %i.iwa, i64 %i.ivs ; 2 uses
  store ptr %.036.i4000, ptr %i.iwb, align 8, !noalias !328
  %i.iwc = icmp sgt i64 %i.ivs, 0
  br i1 %i.iwc, label %bb.ato, label %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i4016

bb.ato:                                           ; preds = %.noexc7.i4015
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iwa, ptr align 8 %.sroa.012.033.i4003, i64 %i.ivs, i1 false), !noalias !328
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i4016

_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i4016: ; preds = %bb.ato, %.noexc7.i4015
  %.not.i17.i.i.i4017 = icmp eq ptr %.sroa.012.033.i4003, null
  br i1 %.not.i17.i.i.i4017, label %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i4018, label %bb.atp

bb.atp:                                           ; preds = %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i4016
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.033.i4003, i64 noundef %i.ivs) #32, !noalias !328
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i4018

_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i4018: ; preds = %bb.atp, %_ZNSt6vectorIPK6aiNodeSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i4016
  %i.iwd = getelementptr inbounds nuw [8 x i8], ptr %i.iwa, i64 %i.ivy
  br label %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005

_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005: ; preds = %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i4018, %bb.atl
  %.sroa.012.1.i4006 = phi ptr [ %i.iwa, %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i4018 ], [ %.sroa.012.033.i4003, %bb.atl ] ; 2 uses
  %.pn.i4007 = phi ptr [ %i.iwb, %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i4018 ], [ %.sroa.9.034.i4002, %bb.atl ]
  %.sroa.14.1.i4008 = phi ptr [ %i.iwd, %_ZNSt6vectorIPK6aiNodeSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i4018 ], [ %.sroa.14.035.i4001, %bb.atl ] ; 2 uses
  %.sroa.9.1.i4009 = getelementptr inbounds nuw i8, ptr %.pn.i4007, i64 8 ; 2 uses
  %i.iwe = getelementptr inbounds nuw i8, ptr %.036.i4000, i64 1096
  %i.iwf = load ptr, ptr %i.iwe, align 8, !noalias !328 ; 3 uses
  %i.iwg = load ptr, ptr %i.ivl, align 8, !noalias !328
  %i.iwh = icmp ne ptr %i.iwf, %i.iwg
  %i.iwi = icmp ne ptr %i.iwf, null
  %i.iwj = and i1 %i.iwi, %i.iwh
  br i1 %i.iwj, label %.lr.ph.i3999, label %._crit_edge.i3987.loopexit, !llvm.loop !291

.loopexit.i4013:                                  ; preds = %_ZNKSt6vectorIPK6aiNodeSaIS2_EE12_M_check_lenEmPKc.exit.i.i.i4010
  %lpad.loopexit.i4014 = landingpad { ptr, i32 }
          cleanup
  br label %bb.atr

.loopexit.split-lp.i4019:                         ; preds = %bb.atn
  %lpad.loopexit.split-lp.i4020 = landingpad { ptr, i32 }
          cleanup
  br label %bb.atr

._crit_edge.i3987.loopexit:                       ; preds = %_ZNSt6vectorIPK6aiNodeSaIS2_EE9push_backERKS2_.exit.i4005
  %i.iwk = ptrtoint ptr %.sroa.14.1.i4008 to i64
  br label %._crit_edge.i3987

._crit_edge.i3987:                                ; preds = %._crit_edge.i3987.loopexit, %_ZN6aiNode8FindNodeERK8aiString.exit3986
  %.sroa.012.0.lcssa.i3988 = phi ptr [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3986 ], [ %.sroa.012.1.i4006, %._crit_edge.i3987.loopexit ] ; 5 uses
  %.sroa.9.0.lcssa.i3989 = phi ptr [ null, %_ZN6aiNode8FindNodeERK8aiString.exit3986 ], [ %.sroa.9.1.i4009, %._crit_edge.i3987.loopexit ] ; 2 uses
  %.sroa.14.0.lcssa.i3990 = phi i64 [ 0, %_ZN6aiNode8FindNodeERK8aiString.exit3986 ], [ %i.iwk, %._crit_edge.i3987.loopexit ]
  store float 1.000000e+00, ptr %236, align 16, !alias.scope !328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.igx, i8 0, i64 16, i1 false), !alias.scope !328
  store float 1.000000e+00, ptr %i.igy, align 4, !alias.scope !328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.igz, i8 0, i64 16, i1 false), !alias.scope !328
  store float 1.000000e+00, ptr %i.iha, align 8, !alias.scope !328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ihb, i8 0, i64 16, i1 false), !alias.scope !328
  store float 1.000000e+00, ptr %i.ihc, align 4
  %.not.i399213986 = icmp eq ptr %.sroa.9.0.lcssa.i3989, %.sroa.012.0.lcssa.i3988
  br i1 %.not.i399213986, label %._crit_edge13990, label %.lr.ph13989

._crit_edge13990:                                 ; preds = %.lr.ph13989, %._crit_edge.i3987
  %.not.i.i.i8.i3998 = icmp eq ptr %.sroa.012.0.lcssa.i3988, null
  br i1 %.not.i.i.i8.i3998, label %_Z19get_world_transformPK6aiNodePK7aiScene.exit4024, label %bb.atq

bb.atq:                                           ; preds = %._crit_edge13990
  %i.iwl = ptrtoint ptr %.sroa.012.0.lcssa.i3988 to i64
  %i.iwm = sub i64 %.sroa.14.0.lcssa.i3990, %i.iwl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.0.lcssa.i3988, i64 noundef %i.iwm) #32
  br label %_Z19get_world_transformPK6aiNodePK7aiScene.exit4024

.lr.ph13989:                                      ; preds = %._crit_edge.i3987, %.lr.ph13989
  %.sroa.011.0.i399113988 = phi ptr [ %i.iwo, %.lr.ph13989 ], [ %.sroa.9.0.lcssa.i3989, %._crit_edge.i3987 ]
  %i.iwn = phi <16 x float> [ %i.iyi, %.lr.ph13989 ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %._crit_edge.i3987 ] ; 16 uses
  %i.iwo = getelementptr inbounds i8, ptr %.sroa.011.0.i399113988, i64 -8 ; 3 uses
  %i.iwp = load ptr, ptr %i.iwo, align 8          ; 4 uses
  %i.iwq = getelementptr inbounds nuw i8, ptr %i.iwp, i64 1028
  %i.iwr = getelementptr inbounds nuw i8, ptr %i.iwp, i64 1044
  %i.iws = getelementptr inbounds nuw i8, ptr %i.iwp, i64 1060
  %i.iwt = getelementptr inbounds nuw i8, ptr %i.iwp, i64 1076
  %i.iwu = load <4 x float>, ptr %i.iwq, align 4  ; 4 uses
  %i.iwv = load <4 x float>, ptr %i.iwr, align 4  ; 4 uses
  %i.iww = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iwx = fmul <4 x float> %i.iww, %i.iwv
  %i.iwy = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> zeroinitializer
  %i.iwz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iwu, <4 x float> %i.iwy, <4 x float> %i.iwx)
  %i.ixa = load <4 x float>, ptr %i.iws, align 4  ; 4 uses
  %i.ixb = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ixc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixa, <4 x float> %i.ixb, <4 x float> %i.iwz)
  %i.ixd = load <4 x float>, ptr %i.iwt, align 4  ; 4 uses
  %i.ixe = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ixf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixd, <4 x float> %i.ixe, <4 x float> %i.ixc) ; 2 uses
  store <4 x float> %i.ixf, ptr %236, align 16
  %i.ixg = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.ixh = fmul <4 x float> %i.ixg, %i.iwv
  %i.ixi = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ixj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iwu, <4 x float> %i.ixi, <4 x float> %i.ixh)
  %i.ixk = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.ixl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ixa, <4 x float> %i.ixk, <4 x float> %i.ixj)
  %i.ixm = shufflevector <16 x float> %i.iwn, <16 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
end_hunk_4
