Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipUpdate?download=true
inline.NumInlined: 523
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN8NArchive4NZip15CCacheOutStream5WriteEPKvjPj:bb.a
  %.pre41.i.i124 = load i64, ptr %i.d, align 8, !tbaa !90
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i122, %bb.ak
  %i.fq = phi i64 [ %.pre41.i.i124, %._crit_edge.i.i122 ], [ %i.fi, %bb.ak ]
  %i.fr = phi i64 [ %.pre40.i.i123, %._crit_edge.i.i122 ], [ %i.fj, %bb.ak ]
  %i.fs = and i64 %i.fr, 4194303                  ; 2 uses
  %i.ft = sub nuw nsw i64 4194304, %i.fs
  %i.fu = tail call noundef i64 @llvm.umin.i64(i64 %i.ft, i64 %i.fq)
  %i.fv = tail call noundef i64 @llvm.umin.i64(i64 %i.fu, i64 %.01933.i.i117) ; 5 uses
  %i.fw = load ptr, ptr %i.fe, align 8, !tbaa !60
  %i.fx = load ptr, ptr %i.fg, align 8, !tbaa !87
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fs
  %i.fz = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %i.fw, ptr noundef %i.fy, i64 noundef %i.fv) ; 2 uses
  %.not30.not.i.i125 = icmp eq i32 %i.fz, 0
  br i1 %.not30.not.i.i125, label %bb.an, label %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit

bb.an:                                            ; preds = %bb.am
  %i.ga = load i64, ptr %i.ff, align 8, !tbaa !88
  %i.gb = add i64 %i.ga, %i.fv                    ; 3 uses
  store i64 %i.gb, ptr %i.ff, align 8, !tbaa !88
  %i.gc = load i64, ptr %i.fh, align 8, !tbaa !92
  %i.gd = icmp ult i64 %i.gc, %i.gb
  br i1 %i.gd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 %i.gb, ptr %i.fh, align 8, !tbaa !92
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ge = load i64, ptr %i.ex, align 8, !tbaa !91
  %i.gf = add i64 %i.ge, %i.fv                    ; 3 uses
  store i64 %i.gf, ptr %i.ex, align 8, !tbaa !91
  %i.gg = load i64, ptr %i.d, align 8, !tbaa !90
  %i.gh = sub i64 %i.gg, %i.fv                    ; 3 uses
  store i64 %i.gh, ptr %i.d, align 8, !tbaa !90
  %i.gi = sub nuw nsw i64 %.01933.i.i117, %i.fv   ; 2 uses
  %.not.i.i126 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i126, label %_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread, label %bb.aj

_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread: ; preds = %bb.aj, %bb.ap, %bb.ah
  %i.gj = phi i64 [ %i.ep, %bb.ah ], [ 0, %bb.aj ], [ %i.gh, %bb.ap ]
  %i.gk = phi i64 [ %i.es, %bb.ah ], [ %i.fj, %bb.aj ], [ %i.gf, %bb.ap ]
  %i.gl = and i64 %i.gk, 4194303                  ; 2 uses
  %i.gm = icmp samesign ugt i64 %i.gl, %i.et
  %i.gn = sub nuw nsw i64 %i.gl, %i.et
  %i.go = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 %i.gn)
  %.065.in = select i1 %i.gm, i64 %i.go, i64 %i.ew ; 2 uses
  %i.gp = add i64 %.065.in, %i.gj
  store i64 %i.gp, ptr %i.d, align 8, !tbaa !90
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread, %bb.ag
  %.166.in = phi i64 [ %i.fa, %bb.ag ], [ %.065.in, %_ZN8NArchive4NZip15CCacheOutStream12MyWriteBlockEv.exit127.thread ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !87
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %1, i64 %.166.in, i1 false)
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.166 = trunc nuw nsw i64 %.166.in to i32
  store i32 %.166, ptr %3, align 4, !tbaa !15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gt = load i64, ptr %i.b, align 8, !tbaa !89
  %i.gu = add i64 %i.gt, %.166.in                 ; 3 uses
  store i64 %i.gu, ptr %i.b, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !93
  %i.gx = icmp ult i64 %i.gw, %i.gu
  br i1 %i.gx, label %bb.at, label %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit

bb.at:                                            ; preds = %bb.as
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !93
  br label %_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit

_ZN8NArchive4NZip15CCacheOutStream10FlushCacheEv.exit: ; preds = %bb.q, %bb.r, %bb.i, %bb.h, %bb.z, %bb.aa, %bb.am, %bb.al, %bb.as, %bb.at, %bb.c
  %.13 = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.i ], [ %i.fz, %bb.am ], [ 0, %bb.as ], [ %i.df, %bb.z ], [ 0, %bb.at ], [ %i.fp, %bb.al ], [ %i.dp, %bb.aa ], [ %i.t, %bb.h ], [ %i.bc, %bb.q ], [ %i.bm, %bb.r ]
  ret i32 %.13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147287039, 1) i32 @_ZN8NArchive4NZip15CCacheOutStream4SeekExjPy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #9 align 2 {
bb.a:
  switch i32 %2, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8, !tbaa !89
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %i.d = add i64 %i.c, %1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !89
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93
  %i.g = add i64 %i.f, %1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %i.h, align 8, !tbaa !89
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.i = phi i64 [ %i.g, %bb.d ], [ %i.d, %bb.c ], [ %1, %bb.b ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.i, ptr %3, align 8, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.0 = phi i32 [ -2147287039, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip15CCacheOutStream7SetSizeEy(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((40, 48)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.a, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !92
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %1) ; 2 uses
  %.not.not = icmp eq i32 %i.j, 0
  br i1 %.not.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.b, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !91   ; 2 uses
  %.not15 = icmp ugt i64 %1, %i.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %.not15, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !90
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %.phi.trans.insert, align 8, !tbaa !90
  store i64 %1, ptr %i.k, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.m = phi i64 [ 0, %bb.e ], [ %.pre, %._crit_edge ]
  %i.n = phi i64 [ %1, %bb.e ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.o = add i64 %i.m, %i.n
  %i.p = icmp ult i64 %1, %i.o
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = sub i64 %1, %i.n
  store i64 %i.r, ptr %i.q, align 8, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.g
  %.1 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.NArchive::NZip::CAddCommon", align 8 ; 7 uses
  %7 = alloca %class.CObjectVector.10, align 8    ; 14 uses
  %8 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 30 uses
  %9 = alloca %class.CMyComPtr.1, align 8         ; 10 uses
  %10 = alloca %"struct.NArchive::NZip::CCompressingResult", align 8 ; 6 uses
  %11 = alloca %class.CMyComPtr.0, align 8        ; 10 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %12 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 16 uses
  %13 = alloca %"class.NArchive::NZip::CAddCommon", align 8 ; 6 uses
  %14 = alloca %"struct.NArchive::NZip::CCompressionMethodMode", align 8 ; 12 uses
  %15 = alloca %"class.NWindows::NSynchronization::CSynchro", align 8 ; 9 uses
  %16 = alloca %"class.NWindows::NSynchronization::CSynchro", align 8 ; 11 uses
  %17 = alloca %class.CObjectVector.10, align 8   ; 14 uses
  %18 = alloca %class.CMtCompressProgressMixer, align 8 ; 16 uses
  %19 = alloca %class.CMemBlockManagerMt, align 8 ; 17 uses
  %20 = alloca %"class.NArchive::NZip::CMemRefs", align 8 ; 12 uses
  %21 = alloca %"class.NArchive::NZip::CThreads", align 8 ; 12 uses
  %22 = alloca %class.CRecordVector.14, align 8   ; 12 uses
  %23 = alloca %class.CRecordVector.15, align 8   ; 12 uses
  %24 = alloca %"struct.NArchive::NZip::CMemBlocks2", align 8 ; 13 uses
  %25 = alloca %"struct.NArchive::NZip::CThreadInfo", align 8 ; 7 uses
  %26 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 20 uses
  %27 = alloca %class.CMyComPtr.1, align 8        ; 10 uses
  %28 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 32 uses
  %29 = alloca %class.CMyComPtr.0, align 8        ; 8 uses
  %30 = alloca %class.CMyComPtr.0, align 8        ; 8 uses
  %31 = alloca %class.CMyComPtr.0, align 8        ; 10 uses
  %32 = alloca %"class.NArchive::NZip::COutArchive", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #14
  store ptr null, ptr %31, align 8, !tbaa !60
  %i.c = load ptr, ptr %2, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = invoke noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) @IID_IOutStream, ptr noundef nonnull %31)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %31, align 8, !tbaa !60
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.ld, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15
          to label %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit unwind label %bb.e ; 14 uses

_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit:          ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN8NArchive4NZip15CCacheOutStreamE, i64 16), ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.j, align 8, !tbaa !80
  %i.l = invoke ptr @MidAlloc(i64 noundef 4194304)
          to label %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit unwind label %bb.e ; 2 uses

_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit: ; preds = %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !87
  %.not126 = icmp eq ptr %i.l, null
  br i1 %.not126, label %bb.l, label %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread

bb.e:                                             ; preds = %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit, %bb.d
  %.sroa.078.0 = phi ptr [ %i.i, %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit ], [ null, %bb.d ]
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread: ; preds = %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit
  %i.o = load ptr, ptr %31, align 8, !tbaa !60    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  store i64 0, ptr %i.q, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.noexc49, label %bb.f

bb.f:                                             ; preds = %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc49 unwind label %bb.k, !inline_history !205 ; 0 uses

.noexc49:                                         ; preds = %bb.f, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit.thread
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %.not6.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i, label %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i, label %bb.g

bb.g:                                             ; preds = %.noexc49
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i unwind label %bb.k, !inline_history !205 ; 0 uses

_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i:        ; preds = %bb.g, %.noexc49
  store ptr %i.o, ptr %i.k, align 8, !tbaa !60
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.q)
          to label %.noexc51 unwind label %bb.k, !inline_history !205 ; 2 uses

.noexc51:                                         ; preds = %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i
  %.not.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.not.i, label %bb.h, label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

bb.h:                                             ; preds = %.noexc51
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.af)
          to label %.noexc52 unwind label %bb.k, !inline_history !205 ; 2 uses

.noexc52:                                         ; preds = %bb.h
  %.not16.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not16.not.i, label %bb.i, label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

bb.i:                                             ; preds = %.noexc52
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !60  ; 2 uses
  %i.al = load i64, ptr %i.q, align 8, !tbaa !89
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef %i.al, i32 noundef 0, ptr noundef nonnull %i.q)
          to label %.noexc53 unwind label %bb.k, !inline_history !205 ; 2 uses

.noexc53:                                         ; preds = %bb.i
  %.not17.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not17.not.i, label %bb.j, label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

bb.j:                                             ; preds = %.noexc53
  %i.aq = load <2 x i64>, ptr %i.q, align 8, !tbaa !78
  store <2 x i64> %i.aq, ptr %i.p, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit

_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit: ; preds = %bb.j, %.noexc53, %.noexc52, %.noexc51
  %.3.i = phi i32 [ 0, %bb.j ], [ %i.ap, %.noexc53 ], [ %i.aj, %.noexc52 ], [ %i.ad, %.noexc51 ] ; 2 uses
  %.not = icmp eq i32 %.3.i, 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h, %_ZN9CMyComPtrI10IOutStreamEaSEPS0_.exit.i, %bb.g, %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit
  %.234.ph = phi i32 [ -2147024882, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit ], [ %.3.i, %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit ]
  %.2.ph = phi i1 [ false, %_ZN8NArchive4NZip15CCacheOutStream8AllocateEv.exit ], [ %.not, %_ZN8NArchive4NZip15CCacheOutStream4InitEP10IOutStream.exit ]
  %.pr = load ptr, ptr %31, align 8, !tbaa !60    ; 3 uses
  %.not.i54 = icmp eq ptr %.pr, null
  br i1 %.not.i54, label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %.pr, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %_ZN9CMyComPtrI10IOutStreamED2Ev.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #16
  unreachable

_ZN9CMyComPtrI10IOutStreamED2Ev.exit:             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #14
  br i1 %.2.ph, label %bb.o, label %bb.le

bb.o:                                             ; preds = %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
  %.not40 = icmp eq ptr %3, null                  ; 4 uses
  br i1 %.not40, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !211
  %.not41 = icmp eq i64 %i.ba, 0
  br i1 %.not41, label %bb.q, label %bb.le

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !212
  %.not42 = icmp eq i64 %i.bc, 0
  br i1 %.not42, label %bb.r, label %bb.le

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 137
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !213, !range !57, !noundef !58
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.v, label %bb.le

bb.s:                                             ; preds = %bb.e, %bb.k, %bb.c
  %.sroa.078.2 = phi ptr [ %i.i, %bb.k ], [ %.sroa.078.0, %bb.e ], [ null, %bb.c ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.n, %bb.e ], [ %i.h, %bb.c ] ; 2 uses
  %i.bg = load ptr, ptr %31, align 8, !tbaa !60   ; 3 uses
  %.not.i55 = icmp eq ptr %i.bg, null
  br i1 %.not.i55, label %bb.lg, label %bb.t

end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a

bb.ew:                                            ; preds = %.body473.i, %bb.eu
  %.pn428.i = phi { ptr, i32 } [ %eh.lpad-body474.i, %.body473.i ], [ %i.rw, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  br label %bb.km

bb.ex:                                            ; preds = %bb.fk
  %i.ry = add nuw i32 %.1266695.i, 1              ; 2 uses
  %exitcond822.not.i = icmp eq i32 %i.ry, %.2276563.i
  br i1 %exitcond822.not.i, label %.preheader.i, label %bb.ey, !llvm.loop !192

.preheader.i:                                     ; preds = %bb.ex, %.preheader606.i
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %26, i64 44 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.sg = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.sh = getelementptr inbounds nuw i8, ptr %26, i64 120 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.sj = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.sk = getelementptr inbounds nuw i8, ptr %26, i64 152 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %26, i64 160
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %26, i64 180
  %i.so = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %26, i64 168
  %i.sv = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 5 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %28, i64 44 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %28, i64 56
  %i.ta = getelementptr inbounds nuw i8, ptr %28, i64 72
  %i.tb = getelementptr inbounds nuw i8, ptr %28, i64 120 ; 7 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %28, i64 128
  %i.td = getelementptr inbounds nuw i8, ptr %28, i64 144
  %i.te = getelementptr inbounds nuw i8, ptr %28, i64 152 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %28, i64 160
  %i.tg = getelementptr inbounds nuw i8, ptr %28, i64 180
  %i.th = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %4, i64 105 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %28, i64 168 ; 2 uses
  br label %.outer.outer.i

bb.ey:                                            ; preds = %bb.ex, %.lr.ph696.i
  %.1266695.i = phi i32 [ 0, %.lr.ph696.i ], [ %i.ry, %bb.ex ] ; 3 uses
  %i.tm = load ptr, ptr %i.rf, align 8, !tbaa !98
  %i.tn = sext i32 %.1266695.i to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !99 ; 11 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16 ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !144
  %.not.i.i475.i = icmp eq i32 %i.tr, 0
  br i1 %.not.i.i475.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i: ; preds = %bb.ey
  %i.ts = invoke i32 @AutoResetEvent_CreateNotSignaled(ptr noundef nonnull align 8 dereferenceable(104) %i.tq)
          to label %.noexc476.i unwind label %bb.fb ; 2 uses

.noexc476.i:                                      ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %.not.not.i.i = icmp eq i32 %i.ts, 0
  br i1 %.not.not.i.i, label %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i, label %.thread575.i

_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i: ; preds = %.noexc476.i, %bb.ey
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 128 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !65
  %.not.i6.i.i = icmp eq ptr %i.tu, null
  br i1 %.not.i6.i.i, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  store ptr %15, ptr %i.tt, align 8, !tbaa !65
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tp, i64 136
  store i8 0, ptr %i.tv, align 8, !tbaa !233
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 137
  store i8 0, ptr %i.tw, align 1, !tbaa !66
  br label %bb.fc

bb.fa:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fb:                                            ; preds = %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.i.i
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fc:                                            ; preds = %bb.ez, %_ZN8NWindows16NSynchronization15CAutoResetEvent18CreateIfNotCreatedEv.exit.thread.i.i
  %i.tz = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #15
          to label %bb.fd unwind label %bb.fa     ; 20 uses

bb.fd:                                            ; preds = %bb.fc
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i32 0, ptr %i.ua, align 4, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV13COutMemStream, i64 16), ptr %i.tz, align 8, !tbaa !64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store ptr %19, ptr %i.ub, align 8, !tbaa !234
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 48
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.uc, align 8, !tbaa !64
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 72
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8NWindows16NSynchronization19CAutoResetEventWFMOE, i64 16), ptr %i.ue, align 8, !tbaa !64
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 104
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 112
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tz, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uh, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ui, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIPvE, i64 16), ptr %i.ug, align 8, !tbaa !64
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 136
  store i64 0, ptr %i.uj, align 8, !tbaa !141
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tz, i64 144
  store i8 1, ptr %i.uk, align 8, !tbaa !143
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tz, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ul, i8 0, i64 16, i1 false)
  %i.um = getelementptr inbounds nuw i8, ptr %i.tp, i64 168
  store ptr %i.tz, ptr %i.um, align 8, !tbaa !146
  store ptr %16, ptr %i.ud, align 8, !tbaa !65
  %i.un = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  store i8 0, ptr %i.un, align 8, !tbaa !233
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tz, i64 65
  store i8 0, ptr %i.uo, align 1, !tbaa !66
  store ptr %16, ptr %i.uf, align 8, !tbaa !65
  %i.up = getelementptr inbounds nuw i8, ptr %i.tz, i64 88
  store i8 0, ptr %i.up, align 8, !tbaa !233
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tz, i64 89
  store i8 0, ptr %i.uq, align 1, !tbaa !66
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tp, i64 176 ; 2 uses
  %i.us = invoke noundef i32 %i.rn(ptr noundef nonnull align 8 dereferenceable(8) %i.tz)
          to label %.noexc479.i unwind label %bb.fa, !inline_history !1 ; 0 uses

.noexc479.i:                                      ; preds = %bb.fd
  %i.ut = load ptr, ptr %i.ur, align 8, !tbaa !60 ; 3 uses
  %.not6.i.i62 = icmp eq ptr %i.ut, null
  br i1 %.not6.i.i62, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %.noexc479.i
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8
  %i.ux = invoke noundef i32 %i.uw(ptr noundef nonnull align 8 dereferenceable(8) %i.ut)
          to label %bb.ff unwind label %bb.fa, !inline_history !1 ; 0 uses

bb.ff:                                            ; preds = %bb.fe, %.noexc479.i
  store ptr %i.tz, ptr %i.ur, align 8, !tbaa !60
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tp, i64 400
  store i8 1, ptr %i.uy, align 8, !tbaa !235
  %i.uz = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
          to label %bb.fg unwind label %bb.fa     ; 5 uses

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.uz, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CMtCompressProgress, i64 16), ptr %i.uz, align 16, !tbaa !64
  %i.va = getelementptr inbounds nuw i8, ptr %i.tp, i64 152 ; 2 uses
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !236
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tp, i64 160 ; 2 uses
  %i.vc = invoke noundef i32 %i.rm(ptr noundef nonnull align 8 dereferenceable(8) %i.uz)
          to label %.noexc483.i unwind label %bb.fa, !inline_history !0 ; 0 uses

.noexc483.i:                                      ; preds = %bb.fg
  %i.vd = load ptr, ptr %i.vb, align 8, !tbaa !61 ; 3 uses
  %.not6.i482.i = icmp eq ptr %i.vd, null
  br i1 %.not6.i482.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.noexc483.i
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = invoke noundef i32 %i.vg(ptr noundef nonnull align 8 dereferenceable(8) %i.vd)
          to label %bb.fi unwind label %bb.fa, !inline_history !0 ; 0 uses

bb.fi:                                            ; preds = %bb.fh, %.noexc483.i
  store ptr %i.uz, ptr %i.vb, align 8, !tbaa !61
  %i.vi = load ptr, ptr %i.va, align 8, !tbaa !236 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store ptr %18, ptr %i.vj, align 8, !tbaa !239
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  store i32 %.1266695.i, ptr %i.vk, align 8, !tbaa !240
  %i.vl = invoke noundef i32 @Thread_Create(ptr noundef nonnull align 8 dereferenceable(408) %i.tp, ptr noundef nonnull @_ZN8NArchive4NZipL11CoderThreadEPv, ptr noundef nonnull align 8 dereferenceable(408) %i.tp)
          to label %bb.fk unwind label %bb.fj     ; 2 uses

bb.fj:                                            ; preds = %bb.fi
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fk:                                            ; preds = %bb.fi
  %.not396.i = icmp eq i32 %i.vl, 0
  br i1 %.not396.i, label %bb.ex, label %.thread575.i

bb.fl:                                            ; preds = %bb.hf, %.lr.ph698.split.split.i
  %indvars.iv828.i = phi i64 [ %33, %.lr.ph698.split.split.i ], [ %indvars.iv.next829.i, %bb.hf ] ; 5 uses
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %indvars.iv828.i
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !99
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 73
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !232, !range !57, !noundef !58
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.hf, label %bb.hg

.lr.ph.a:                                         ; preds = %.lr.ph.preheader, %.outer598.i
  %indvars.iv823.i1062 = phi i64 [ %34, %.lr.ph.preheader ], [ %indvars.iv.next824.i, %.outer598.i ] ; 4 uses
  %indvars.iv.next824.i = add nsw i64 %indvars.iv823.i1062, 1 ; 3 uses
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.akq, i64 %indvars.iv823.i1062
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !99 ; 6 uses
  %i.vu = load i8, ptr %i.vt, align 8, !tbaa !215, !range !57, !noundef !58
  %i.vv = trunc nuw i8 %i.vu to i1
  br i1 %i.vv, label %bb.fn, label %.outer598.i, !llvm.loop !193

.outer598.i:                                      ; preds = %.lr.ph.a
  %exitcond826.not.i = icmp eq i64 %indvars.iv.next824.i, %wide.trip.count.i
  br i1 %exitcond826.not.i, label %.lr.ph698.split.split.i, label %.lr.ph.a, !llvm.loop !193

.lr.ph698.split.split.i:                          ; preds = %.outer.split.i, %.outer598.preheader.i, %.outer598.i
  %.0264.ph599.lcssa706.split.i = phi i32 [ %smax.i, %.outer598.i ], [ %.0264.ph.i, %.outer.split.i ], [ %smax.i, %.outer598.preheader.i ]
  store i64 %i.akl, ptr %i.b, align 8
  %i.vw = load ptr, ptr %i.st, align 8
  %33 = sext i32 %.0262.ph.ph.i to i64
  %i.vx = sext i32 %i.akm to i64
  br label %bb.fl

bb.fm:                                            ; preds = %.outer598._crit_edge.i
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.fn:                                            ; preds = %.lr.ph.a
  %i.vz = trunc nsw i64 %indvars.iv823.i1062 to i32
  %i.wa = trunc nsw i64 %indvars.iv.next824.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i8 0, i64 16, i1 false)
  %i.wb = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %.noexc487.i unwind label %bb.fq ; 10 uses

.noexc487.i:                                      ; preds = %bb.fn
  %i.wc = ptrtoaddr ptr %i.wb to i64
  %i.wd = load i32, ptr %i.sd, align 4, !tbaa !122
  %i.we = icmp sgt i32 %i.wd, 0
  %.pre1.i.i.i.i.i = load i32, ptr %i.sc, align 8, !tbaa !123 ; 6 uses
  br i1 %i.we, label %.preheader.i.i.i.i.i.i, label %bb.fo

.preheader.i.i.i.i.i.i:                           ; preds = %.noexc487.i
  %i.wf = icmp sgt i32 %.pre1.i.i.i.i.i, 0
  %.pre.i.i.i.i.i486.i = load ptr, ptr %i.sb, align 8, !tbaa !117 ; 10 uses
  br i1 %i.wf, label %iter.check1123, label %._crit_edge.i.i.i.i.i.i

iter.check1123:                                   ; preds = %.preheader.i.i.i.i.i.i
  %.pre.i.i.i.i.i486.i1108 = ptrtoaddr ptr %.pre.i.i.i.i.i486.i to i64
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.pre1.i.i.i.i.i to i64 ; 8 uses
  %min.iters.check1110 = icmp ult i32 %.pre1.i.i.i.i.i, 4
  %i.wg = sub i64 %.pre.i.i.i.i.i486.i1108, %i.wc
  %diff.check1109 = icmp ugt i64 %i.wg, -32
  %or.cond1136 = select i1 %min.iters.check1110, i1 true, i1 %diff.check1109
  br i1 %or.cond1136, label %vec.epilog.scalar.ph1124.preheader, label %vector.main.loop.iter.check1111

vector.main.loop.iter.check1111:                  ; preds = %iter.check1123
  %min.iters.check1112 = icmp ult i32 %.pre1.i.i.i.i.i, 32
  br i1 %min.iters.check1112, label %vec.epilog.ph1127, label %vector.ph1113

vector.ph1113:                                    ; preds = %vector.main.loop.iter.check1111
  %i.wh = and i64 %wide.trip.count.i.i.i.i.i.i, 28
  %n.vec1114 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483616 ; 4 uses
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.ph1113, %vector.body1115
  %index1116 = phi i64 [ 0, %vector.ph1113 ], [ %index.next1119, %vector.body1115 ] ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %index1116 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %wide.load1117 = load <16 x i8>, ptr %i.wi, align 1, !tbaa !119
  %wide.load1118 = load <16 x i8>, ptr %i.wj, align 1, !tbaa !119
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wb, i64 %index1116 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store <16 x i8> %wide.load1117, ptr %i.wk, align 1, !tbaa !119
  store <16 x i8> %wide.load1118, ptr %i.wl, align 1, !tbaa !119
  %index.next1119 = add nuw i64 %index1116, 32    ; 2 uses
  %i.wm = icmp eq i64 %index.next1119, %n.vec1114
  br i1 %i.wm, label %middle.block1120, label %vector.body1115, !llvm.loop !194

middle.block1120:                                 ; preds = %vector.body1115
  %cmp.n1121 = icmp eq i64 %n.vec1114, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n1121, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.iter.check1125

vec.epilog.iter.check1125:                        ; preds = %middle.block1120
  %min.epilog.iters.check1126 = icmp eq i64 %i.wh, 0
  br i1 %min.epilog.iters.check1126, label %vec.epilog.scalar.ph1124.preheader, label %vec.epilog.ph1127, !prof !126

vec.epilog.ph1127:                                ; preds = %vector.main.loop.iter.check1111, %vec.epilog.iter.check1125
  %vec.epilog.resume.val1122 = phi i64 [ %n.vec1114, %vec.epilog.iter.check1125 ], [ 0, %vector.main.loop.iter.check1111 ]
  %n.vec1128 = and i64 %wide.trip.count.i.i.i.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1129

vec.epilog.vector.body1129:                       ; preds = %vec.epilog.vector.body1129, %vec.epilog.ph1127
  %index1130 = phi i64 [ %vec.epilog.resume.val1122, %vec.epilog.ph1127 ], [ %index.next1132, %vec.epilog.vector.body1129 ] ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %index1130
  %wide.load1131 = load <4 x i8>, ptr %i.wn, align 1, !tbaa !119
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wb, i64 %index1130
  store <4 x i8> %wide.load1131, ptr %i.wo, align 1, !tbaa !119
  %index.next1132 = add nuw i64 %index1130, 4     ; 2 uses
  %i.wp = icmp eq i64 %index.next1132, %n.vec1128
  br i1 %i.wp, label %vec.epilog.middle.block1133, label %vec.epilog.vector.body1129, !llvm.loop !195

vec.epilog.middle.block1133:                      ; preds = %vec.epilog.vector.body1129
  %cmp.n1134 = icmp eq i64 %n.vec1128, %wide.trip.count.i.i.i.i.i.i
  br i1 %cmp.n1134, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1124.preheader

vec.epilog.scalar.ph1124.preheader:               ; preds = %iter.check1123, %vec.epilog.iter.check1125, %vec.epilog.middle.block1133
  %indvars.iv.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check1123 ], [ %n.vec1114, %vec.epilog.iter.check1125 ], [ %n.vec1128, %vec.epilog.middle.block1133 ] ; 3 uses
  %xtraiter1248 = and i64 %wide.trip.count.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod1249.not = icmp eq i64 %xtraiter1248, 0
  br i1 %lcmp.mod1249.not, label %vec.epilog.scalar.ph1124.prol.loopexit, label %vec.epilog.scalar.ph1124.prol

vec.epilog.scalar.ph1124.prol:                    ; preds = %vec.epilog.scalar.ph1124.preheader, %vec.epilog.scalar.ph1124.prol
  %indvars.iv.i.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph1124.prol ], [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph1124.preheader ] ; 3 uses
  %prol.iter1250 = phi i64 [ %prol.iter1250.next, %vec.epilog.scalar.ph1124.prol ], [ 0, %vec.epilog.scalar.ph1124.preheader ]
  %i.wq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.i.i.i.i.i.i.prol
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !119
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wb, i64 %indvars.iv.i.i.i.i.i.i.prol
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter1250.next = add i64 %prol.iter1250, 1 ; 2 uses
  %prol.iter1250.cmp.not = icmp eq i64 %prol.iter1250.next, %xtraiter1248
  br i1 %prol.iter1250.cmp.not, label %vec.epilog.scalar.ph1124.prol.loopexit, label %vec.epilog.scalar.ph1124.prol, !llvm.loop !196

vec.epilog.scalar.ph1124.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1124.prol, %vec.epilog.scalar.ph1124.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph1124.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %vec.epilog.scalar.ph1124.prol ]
  %i.wt = sub nsw i64 %indvars.iv.i.i.i.i.i.i.ph, %wide.trip.count.i.i.i.i.i.i
  %i.wu = icmp ugt i64 %i.wt, -4
  br i1 %i.wu, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1124

._crit_edge.i.i.i.i.i.i:                          ; preds = %.preheader.i.i.i.i.i.i
  %i.wv = icmp eq ptr %.pre.i.i.i.i.i486.i, null
  br i1 %i.wv, label %bb.fo, label %._crit_edge.thread.i.i.i.i.i.i

vec.epilog.scalar.ph1124:                         ; preds = %vec.epilog.scalar.ph1124.prol.loopexit, %vec.epilog.scalar.ph1124
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %vec.epilog.scalar.ph1124 ], [ %indvars.iv.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph1124.prol.loopexit ] ; 6 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !119
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wb, i64 %indvars.iv.i.i.i.i.i.i
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.next.i.i.i.i.i.i
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !119
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wb, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 2 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.next.i.i.i.i.i.i.1
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !119
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wb, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 3 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i486.i, i64 %indvars.iv.next.i.i.i.i.i.i.2
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !119
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wb, i64 %indvars.iv.next.i.i.i.i.i.i.2
  store i8 %i.xg, ptr %i.xh, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %._crit_edge.thread.i.i.i.i.i.i, label %vec.epilog.scalar.ph1124, !llvm.loop !197

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %vec.epilog.scalar.ph1124.prol.loopexit, %vec.epilog.scalar.ph1124, %middle.block1120, %vec.epilog.middle.block1133, %._crit_edge.i.i.i.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i486.i) #17
  %.pre.i.i.i.i.i = load i32, ptr %i.sc, align 8, !tbaa !123
  br label %bb.fo

bb.fo:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %.noexc487.i
  %i.xi = phi i32 [ %.pre1.i.i.i.i.i, %.noexc487.i ], [ %.pre1.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i ]
  store ptr %i.wb, ptr %i.sb, align 8, !tbaa !117
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.wb, i64 %i.xj
  store i8 0, ptr %i.xk, align 1, !tbaa !119
  store i32 4, ptr %i.sd, align 4, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sf, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.sg, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.se, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.si, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.sj, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sh, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.sk, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.sl, i8 0, i64 19, i1 false)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.vt, i64 1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !128, !range !57, !noundef !58
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.xo = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  %i.xp = load i8, ptr %i.xo, align 2, !tbaa !129, !range !57, !noundef !58
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %bb.gy, label %bb.fx, !llvm.loop !193

bb.fq:                                            ; preds = %bb.fn
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.fr:                                            ; preds = %bb.fo
  %i.xs = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !216
  %i.xu = load ptr, ptr %i.sm, align 8, !tbaa !98
  %i.xv = sext i32 %i.xt to i64
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.xu, i64 %i.xv
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !99 ; 2 uses
  %i.xy = invoke noundef nonnull align 8 dereferenceable(179) ptr @_ZN8NArchive4NZip5CItemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %26, ptr noundef nonnull align 8 dereferenceable(186) %i.xx)
          to label %bb.fs unwind label %bb.fu     ; 0 uses

bb.fs:                                            ; preds = %bb.fr
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.sn, ptr noundef nonnull align 4 dereferenceable(6) %i.xz, i64 6, i1 false)
  %i.ya = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %3, ptr noundef nonnull align 8 dereferenceable(186) %26)
          to label %bb.ft unwind label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %.not415.i = icmp eq i32 %i.ya, 0
  br i1 %.not415.i, label %bb.fv, label %bb.gy

bb.fu:                                            ; preds = %bb.fv, %bb.fs, %bb.fr
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

end_hunk_1
begin_hunk_2_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !64
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aai = load ptr, ptr %i.aah, align 8
  %i.aaj = invoke noundef i32 %i.aai(ptr noundef nonnull align 8 dereferenceable(8) %i.aaf)
          to label %bb.gn unwind label %bb.gr, !inline_history !198 ; 0 uses

bb.gn:                                            ; preds = %bb.gm, %.noexc490.i
  store ptr %i.aaa, ptr %i.zz, align 8, !tbaa !59
  %i.aak = load ptr, ptr %27, align 8, !tbaa !59  ; 3 uses
  %.not.i492.i = icmp eq ptr %i.aak, null
  br i1 %.not.i492.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %i.aan = load ptr, ptr %i.aam, align 8
  %i.aao = invoke noundef i32 %i.aan(ptr noundef nonnull align 8 dereferenceable(8) %i.aak)
          to label %.noexc493.i unwind label %bb.gr, !inline_history !199 ; 0 uses

.noexc493.i:                                      ; preds = %bb.go
  store ptr null, ptr %27, align 8, !tbaa !59
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i: ; preds = %.noexc493.i, %bb.gn
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zu, i64 168
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !146
  invoke void @_ZN13COutMemStream4InitEv(ptr noundef nonnull align 8 dereferenceable(168) %i.aaq)
          to label %bb.gp unwind label %bb.gr

bb.gp:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zu, i64 152
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !236 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !239
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !240
  invoke void @_ZN24CMtCompressProgressMixer6ReinitEi(ptr noundef nonnull align 8 dereferenceable(128) %i.aau, i32 noundef %i.aaw)
          to label %_ZN19CMtCompressProgress6ReinitEv.exit.i unwind label %bb.gr

_ZN19CMtCompressProgress6ReinitEv.exit.i:         ; preds = %bb.gp
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.aay = invoke noundef i32 @Event_Set(ptr noundef nonnull align 8 dereferenceable(104) %i.aax)
          to label %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i unwind label %bb.gr ; 0 uses

_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i: ; preds = %_ZN19CMtCompressProgress6ReinitEv.exit.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.zu, i64 404
  store i32 %i.vz, ptr %i.aaz, align 4, !tbaa !241
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zu, i64 120
  %i.abb = load ptr, ptr %i.sq, align 8, !tbaa !98
  %i.abc = load i32, ptr %i.sr, align 4, !tbaa !97 ; 2 uses
  %i.abd = sext i32 %i.abc to i64
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.abd
  store ptr %i.aba, ptr %i.abe, align 8, !tbaa !243
  %i.abf = add nsw i32 %i.abc, 1
  store i32 %i.abf, ptr %i.sr, align 4, !tbaa !97
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.gs unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %_ZN8NWindows16NSynchronization10CBaseEvent3SetEv.exit.i, %_ZN19CMtCompressProgress6ReinitEv.exit.i, %bb.gp, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i, %bb.go, %bb.gm, %bb.gl
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gs:                                            ; preds = %bb.gq
  %i.abh = load ptr, ptr %i.ss, align 8, !tbaa !98
  %i.abi = load i32, ptr %i.rz, align 4, !tbaa !97
  %i.abj = sext i32 %i.abi to i64
  %i.abk = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %i.abj
  store i32 %.0721.i, ptr %i.abk, align 4, !tbaa !15
  %i.abl = load i32, ptr %i.rz, align 4, !tbaa !97
  %i.abm = add nsw i32 %i.abl, 1
  store i32 %i.abm, ptr %i.rz, align 4, !tbaa !97
  br label %.loopexit.i, !llvm.loop !193

.critedge455.i:                                   ; preds = %bb.gj
  %i.abn = add nuw i32 %.0721.i, 1                ; 2 uses
  %exitcond827.not.i = icmp eq i32 %i.abn, %.2276563.i
  br i1 %exitcond827.not.i, label %..loopexit_crit_edge.i, label %bb.gj, !llvm.loop !200

..loopexit_crit_edge.i:                           ; preds = %.critedge455.i
  br label %.loopexit.i, !llvm.loop !193

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %bb.gs, %bb.gh, %.thread578.i
  %i.abo = phi i64 [ %i.zm, %.thread578.i ], [ %i.akl, %bb.gs ], [ %i.akl, %..loopexit_crit_edge.i ], [ %i.akl, %bb.gh ]
  %.15362582.i = phi i32 [ %.15362.ph.i, %.thread578.i ], [ %.11358.452..i, %bb.gs ], [ %.11358.452..i, %..loopexit_crit_edge.i ], [ %.11358.ph.i, %bb.gh ]
  %.13.i = phi i1 [ %i.zn, %.thread578.i ], [ true, %bb.gs ], [ true, %..loopexit_crit_edge.i ], [ true, %bb.gh ]
  %i.abp = load ptr, ptr %27, align 8, !tbaa !59  ; 3 uses
  %.not.i498.i = icmp eq ptr %i.abp, null
  br i1 %.not.i498.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, label %bb.gt

bb.gt:                                            ; preds = %.loopexit.i
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8
  %i.abt = invoke noundef i32 %i.abs(ptr noundef nonnull align 8 dereferenceable(8) %i.abp)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i unwind label %bb.gu ; 0 uses

bb.gu:                                            ; preds = %bb.gt
  %i.abu = landingpad { ptr, i32 }
          catch ptr null
  %i.abv = extractvalue { ptr, i32 } %i.abu, 0
  call void @__clang_call_terminate(ptr %i.abv) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i:  ; preds = %bb.gt, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.gy

bb.gv:                                            ; preds = %bb.gr, %bb.gi
  %.pn422.i = phi { ptr, i32 } [ %i.abg, %bb.gr ], [ %.pn418.i, %bb.gi ]
  %i.abw = load ptr, ptr %27, align 8, !tbaa !59  ; 3 uses
  %.not.i499.i = icmp eq ptr %i.abw, null
  br i1 %.not.i499.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !64
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %i.abz = load ptr, ptr %i.aby, align 8
  %i.aca = invoke noundef i32 %i.abz(ptr noundef nonnull align 8 dereferenceable(8) %i.abw)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i unwind label %bb.gx ; 0 uses

bb.gx:                                            ; preds = %bb.gw
  %i.acb = landingpad { ptr, i32 }
          catch ptr null
  %i.acc = extractvalue { ptr, i32 } %i.acb, 0
  call void @__clang_call_terminate(ptr %i.acc) #16
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i: ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #14
  br label %bb.hd

bb.gy:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i, %bb.fw, %bb.ft, %bb.fp
  %i.acd = phi i64 [ %i.akl, %bb.ft ], [ %i.abo, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %i.akl, %bb.fp ], [ %i.akl, %bb.fw ]
  %.16363.i = phi i32 [ -2147467263, %bb.ft ], [ %.15362582.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ %.11358.ph.i, %bb.fp ], [ %.11358.ph.i, %bb.fw ] ; 2 uses
  %.14.i = phi i1 [ false, %bb.ft ], [ %.13.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.i ], [ true, %bb.fp ], [ true, %bb.fw ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.sk, align 8, !tbaa !64
  %i.ace = load ptr, ptr %i.su, align 8, !tbaa !114 ; 2 uses
  %i.acf = icmp eq ptr %i.ace, null
  br i1 %i.acf, label %_ZN7CBufferIhED2Ev.exit.i501.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZdaPv(ptr noundef nonnull %i.ace) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i501.i

_ZN7CBufferIhED2Ev.exit.i501.i:                   ; preds = %bb.gz, %bb.gy
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sh, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sh)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i unwind label %bb.ha, !inline_history !116

bb.ha:                                            ; preds = %_ZN7CBufferIhED2Ev.exit.i501.i
  %i.acg = landingpad { ptr, i32 }
          catch ptr null
  %i.ach = extractvalue { ptr, i32 } %i.acg, 0
  call void @__clang_call_terminate(ptr %i.ach) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i:   ; preds = %_ZN7CBufferIhED2Ev.exit.i501.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sh) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.se, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.se)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i unwind label %bb.hb, !inline_history !116

bb.hb:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i
  %i.aci = landingpad { ptr, i32 }
          catch ptr null
  %i.acj = extractvalue { ptr, i32 } %i.aci, 0
  call void @__clang_call_terminate(ptr %i.acj) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i502.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.se) #14, !inline_history !116
  %i.ack = load ptr, ptr %i.sb, align 8, !tbaa !117 ; 2 uses
  %i.acl = icmp eq ptr %i.ack, null
  br i1 %i.acl, label %_ZN8NArchive4NZip5CItemD2Ev.exit504.i, label %bb.hc

bb.hc:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i
  call void @_ZdaPv(ptr noundef nonnull %i.ack) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit504.i

_ZN8NArchive4NZip5CItemD2Ev.exit504.i:            ; preds = %bb.hc, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i503.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br i1 %.14.i, label %.outer.i, label %.thread575.i

bb.hd:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i, %bb.fu
  %.pn422.pn.i = phi { ptr, i32 } [ %.pn422.i, %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit500.i ], [ %i.yb, %bb.fu ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %26) #14
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.fq
  %.pn422.pn.pn.i = phi { ptr, i32 } [ %.pn422.pn.i, %bb.hd ], [ %i.xr, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %bb.km

bb.hf:                                            ; preds = %bb.fl
  %indvars.iv.next829.i = add nsw i64 %indvars.iv828.i, 1 ; 2 uses
  %i.acm = icmp slt i64 %indvars.iv.next829.i, %i.vx
  br i1 %i.acm, label %bb.fl, label %.outer598._crit_edge.i, !llvm.loop !193

bb.hg:                                            ; preds = %bb.fl
  %i.acn = trunc nsw i64 %indvars.iv828.i to i32  ; 4 uses
  %i.aco = load ptr, ptr %i.sa, align 8, !tbaa !98
  %i.acp = getelementptr inbounds [8 x i8], ptr %i.aco, i64 %indvars.iv828.i
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !99 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sv, i8 0, i64 16, i1 false)
  %i.acr = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #15
          to label %.noexc516.i unwind label %bb.hm ; 10 uses

.noexc516.i:                                      ; preds = %bb.hg
  %i.acs = ptrtoaddr ptr %i.acr to i64
  %i.act = load i32, ptr %i.sx, align 4, !tbaa !122
  %i.acu = icmp sgt i32 %i.act, 0
  %.pre1.i.i.i.i505.i = load i32, ptr %i.sw, align 8, !tbaa !123 ; 6 uses
  br i1 %i.acu, label %.preheader.i.i.i.i.i506.i, label %bb.hh

.preheader.i.i.i.i.i506.i:                        ; preds = %.noexc516.i
  %i.acv = icmp sgt i32 %.pre1.i.i.i.i505.i, 0
  %.pre.i.i.i.i.i507.i = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 10 uses
  br i1 %i.acv, label %iter.check1094, label %._crit_edge.i.i.i.i.i508.i

iter.check1094:                                   ; preds = %.preheader.i.i.i.i.i506.i
  %.pre.i.i.i.i.i507.i1079 = ptrtoaddr ptr %.pre.i.i.i.i.i507.i to i64
  %wide.trip.count.i.i.i.i.i512.i = zext nneg i32 %.pre1.i.i.i.i505.i to i64 ; 8 uses
  %min.iters.check1081 = icmp ult i32 %.pre1.i.i.i.i505.i, 4
  %i.acw = sub i64 %.pre.i.i.i.i.i507.i1079, %i.acs
  %diff.check1080 = icmp ugt i64 %i.acw, -32
  %or.cond1137 = select i1 %min.iters.check1081, i1 true, i1 %diff.check1080
  br i1 %or.cond1137, label %vec.epilog.scalar.ph1095.preheader, label %vector.main.loop.iter.check1082

vector.main.loop.iter.check1082:                  ; preds = %iter.check1094
  %min.iters.check1083 = icmp ult i32 %.pre1.i.i.i.i505.i, 32
  br i1 %min.iters.check1083, label %vec.epilog.ph1098, label %vector.ph1084

vector.ph1084:                                    ; preds = %vector.main.loop.iter.check1082
  %i.acx = and i64 %wide.trip.count.i.i.i.i.i512.i, 28
  %n.vec1085 = and i64 %wide.trip.count.i.i.i.i.i512.i, 2147483616 ; 4 uses
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.ph1084, %vector.body1086
  %index1087 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1090, %vector.body1086 ] ; 3 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %index1087 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  %wide.load1088 = load <16 x i8>, ptr %i.acy, align 1, !tbaa !119
  %wide.load1089 = load <16 x i8>, ptr %i.acz, align 1, !tbaa !119
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acr, i64 %index1087 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  store <16 x i8> %wide.load1088, ptr %i.ada, align 1, !tbaa !119
  store <16 x i8> %wide.load1089, ptr %i.adb, align 1, !tbaa !119
  %index.next1090 = add nuw i64 %index1087, 32    ; 2 uses
  %i.adc = icmp eq i64 %index.next1090, %n.vec1085
  br i1 %i.adc, label %middle.block1091, label %vector.body1086, !llvm.loop !201

middle.block1091:                                 ; preds = %vector.body1086
  %cmp.n1092 = icmp eq i64 %n.vec1085, %wide.trip.count.i.i.i.i.i512.i
  br i1 %cmp.n1092, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.iter.check1096

vec.epilog.iter.check1096:                        ; preds = %middle.block1091
  %min.epilog.iters.check1097 = icmp eq i64 %i.acx, 0
  br i1 %min.epilog.iters.check1097, label %vec.epilog.scalar.ph1095.preheader, label %vec.epilog.ph1098, !prof !126

vec.epilog.ph1098:                                ; preds = %vector.main.loop.iter.check1082, %vec.epilog.iter.check1096
  %vec.epilog.resume.val1093 = phi i64 [ %n.vec1085, %vec.epilog.iter.check1096 ], [ 0, %vector.main.loop.iter.check1082 ]
  %n.vec1099 = and i64 %wide.trip.count.i.i.i.i.i512.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1100

vec.epilog.vector.body1100:                       ; preds = %vec.epilog.vector.body1100, %vec.epilog.ph1098
  %index1101 = phi i64 [ %vec.epilog.resume.val1093, %vec.epilog.ph1098 ], [ %index.next1103, %vec.epilog.vector.body1100 ] ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %index1101
  %wide.load1102 = load <4 x i8>, ptr %i.add, align 1, !tbaa !119
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acr, i64 %index1101
  store <4 x i8> %wide.load1102, ptr %i.ade, align 1, !tbaa !119
  %index.next1103 = add nuw i64 %index1101, 4     ; 2 uses
  %i.adf = icmp eq i64 %index.next1103, %n.vec1099
  br i1 %i.adf, label %vec.epilog.middle.block1104, label %vec.epilog.vector.body1100, !llvm.loop !202

vec.epilog.middle.block1104:                      ; preds = %vec.epilog.vector.body1100
  %cmp.n1105 = icmp eq i64 %n.vec1099, %wide.trip.count.i.i.i.i.i512.i
  br i1 %cmp.n1105, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.scalar.ph1095.preheader

vec.epilog.scalar.ph1095.preheader:               ; preds = %iter.check1094, %vec.epilog.iter.check1096, %vec.epilog.middle.block1104
  %indvars.iv.i.i.i.i.i513.i.ph = phi i64 [ 0, %iter.check1094 ], [ %n.vec1085, %vec.epilog.iter.check1096 ], [ %n.vec1099, %vec.epilog.middle.block1104 ] ; 3 uses
  %xtraiter1251 = and i64 %wide.trip.count.i.i.i.i.i512.i, 3 ; 2 uses
  %lcmp.mod1252.not = icmp eq i64 %xtraiter1251, 0
  br i1 %lcmp.mod1252.not, label %vec.epilog.scalar.ph1095.prol.loopexit, label %vec.epilog.scalar.ph1095.prol

vec.epilog.scalar.ph1095.prol:                    ; preds = %vec.epilog.scalar.ph1095.preheader, %vec.epilog.scalar.ph1095.prol
  %indvars.iv.i.i.i.i.i513.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i514.i.prol, %vec.epilog.scalar.ph1095.prol ], [ %indvars.iv.i.i.i.i.i513.i.ph, %vec.epilog.scalar.ph1095.preheader ] ; 3 uses
  %prol.iter1253 = phi i64 [ %prol.iter1253.next, %vec.epilog.scalar.ph1095.prol ], [ 0, %vec.epilog.scalar.ph1095.preheader ]
  %i.adg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.i.i.i.i.i513.i.prol
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !119
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acr, i64 %indvars.iv.i.i.i.i.i513.i.prol
  store i8 %i.adh, ptr %i.adi, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i.prol, 1 ; 2 uses
  %prol.iter1253.next = add i64 %prol.iter1253, 1 ; 2 uses
  %prol.iter1253.cmp.not = icmp eq i64 %prol.iter1253.next, %xtraiter1251
  br i1 %prol.iter1253.cmp.not, label %vec.epilog.scalar.ph1095.prol.loopexit, label %vec.epilog.scalar.ph1095.prol, !llvm.loop !203

vec.epilog.scalar.ph1095.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1095.prol, %vec.epilog.scalar.ph1095.preheader
  %indvars.iv.i.i.i.i.i513.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i513.i.ph, %vec.epilog.scalar.ph1095.preheader ], [ %indvars.iv.next.i.i.i.i.i514.i.prol, %vec.epilog.scalar.ph1095.prol ]
  %i.adj = sub nsw i64 %indvars.iv.i.i.i.i.i513.i.ph, %wide.trip.count.i.i.i.i.i512.i
  %i.adk = icmp ugt i64 %i.adj, -4
  br i1 %i.adk, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.scalar.ph1095

._crit_edge.i.i.i.i.i508.i:                       ; preds = %.preheader.i.i.i.i.i506.i
  %i.adl = icmp eq ptr %.pre.i.i.i.i.i507.i, null
  br i1 %i.adl, label %bb.hh, label %._crit_edge.thread.i.i.i.i.i509.i

vec.epilog.scalar.ph1095:                         ; preds = %vec.epilog.scalar.ph1095.prol.loopexit, %vec.epilog.scalar.ph1095
  %indvars.iv.i.i.i.i.i513.i = phi i64 [ %indvars.iv.next.i.i.i.i.i514.i.3, %vec.epilog.scalar.ph1095 ], [ %indvars.iv.i.i.i.i.i513.i.unr, %vec.epilog.scalar.ph1095.prol.loopexit ] ; 6 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.i.i.i.i.i513.i
  %i.adn = load i8, ptr %i.adm, align 1, !tbaa !119
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acr, i64 %indvars.iv.i.i.i.i.i513.i
  store i8 %i.adn, ptr %i.ado, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 1 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.next.i.i.i.i.i514.i
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !119
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acr, i64 %indvars.iv.next.i.i.i.i.i514.i
  store i8 %i.adq, ptr %i.adr, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 2 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.next.i.i.i.i.i514.i.1
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !119
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acr, i64 %indvars.iv.next.i.i.i.i.i514.i.1
  store i8 %i.adt, ptr %i.adu, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 3 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i507.i, i64 %indvars.iv.next.i.i.i.i.i514.i.2
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !119
  %i.adx = getelementptr inbounds nuw i8, ptr %i.acr, i64 %indvars.iv.next.i.i.i.i.i514.i.2
  store i8 %i.adw, ptr %i.adx, align 1, !tbaa !119
  %indvars.iv.next.i.i.i.i.i514.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i513.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i515.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i514.i.3, %wide.trip.count.i.i.i.i.i512.i
  br i1 %exitcond.not.i.i.i.i.i515.i.3, label %._crit_edge.thread.i.i.i.i.i509.i, label %vec.epilog.scalar.ph1095, !llvm.loop !204

._crit_edge.thread.i.i.i.i.i509.i:                ; preds = %vec.epilog.scalar.ph1095.prol.loopexit, %vec.epilog.scalar.ph1095, %middle.block1091, %vec.epilog.middle.block1104, %._crit_edge.i.i.i.i.i508.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i507.i) #17
  %.pre.i.i.i.i510.i = load i32, ptr %i.sw, align 8, !tbaa !123
  br label %bb.hh

bb.hh:                                            ; preds = %._crit_edge.thread.i.i.i.i.i509.i, %._crit_edge.i.i.i.i.i508.i, %.noexc516.i
  %i.ady = phi i32 [ %.pre1.i.i.i.i505.i, %.noexc516.i ], [ %.pre1.i.i.i.i505.i, %._crit_edge.i.i.i.i.i508.i ], [ %.pre.i.i.i.i510.i, %._crit_edge.thread.i.i.i.i.i509.i ]
  store ptr %i.acr, ptr %i.sv, align 8, !tbaa !117
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr inbounds i8, ptr %i.acr, i64 %i.adz
  store i8 0, ptr %i.aea, align 1, !tbaa !119
  store i32 4, ptr %i.sx, align 4, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sz, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ta, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tc, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.td, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.tf, i8 0, i64 19, i1 false)
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acq, i64 1 ; 2 uses
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !128, !range !57, !noundef !58
  %i.aed = trunc nuw i8 %i.aec to i1
  br i1 %i.aed, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aee = load i8, ptr %i.acq, align 8, !tbaa !215, !range !57, !noundef !58
  %i.aef = trunc nuw i8 %i.aee to i1
  br i1 %i.aef, label %.split.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !216
  %i.aei = load ptr, ptr %i.sm, align 8, !tbaa !98
  %i.aej = sext i32 %i.aeh to i64
  %i.aek = getelementptr inbounds [8 x i8], ptr %i.aei, i64 %i.aej
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !99 ; 2 uses
  %i.aem = invoke noundef nonnull align 8 dereferenceable(179) ptr @_ZN8NArchive4NZip5CItemaSERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %28, ptr noundef nonnull align 8 dereferenceable(186) %i.ael)
          to label %bb.hk unwind label %bb.hn     ; 0 uses

bb.hk:                                            ; preds = %bb.hj
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ael, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.tg, ptr noundef nonnull align 4 dereferenceable(6) %i.aen, i64 6, i1 false)
  %i.aeo = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %3, ptr noundef nonnull align 8 dereferenceable(186) %28)
          to label %bb.hl unwind label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  %.not398.i = icmp eq i32 %i.aeo, 0
  br i1 %.not398.i, label %bb.ho, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i

bb.hm:                                            ; preds = %bb.hg
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %bb.jx

bb.hn:                                            ; preds = %bb.jo, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i, %bb.hk, %bb.hj
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

bb.ho:                                            ; preds = %bb.hl
  %.pre833.i = load i8, ptr %i.acq, align 8, !tbaa !215, !range !57
  %i.aer = trunc nuw i8 %.pre833.i to i1
  br i1 %i.aer, label %.thread891.i, label %bb.jl
end_hunk_2
begin_hunk_3_@_ZN8NArchive4NZip6UpdateERK13CObjectVectorINS0_7CItemExEERKS1_INS0_11CUpdateItemEEP20ISequentialOutStreamPNS0_10CInArchiveEPNS0_22CCompressionMethodModeEP22IArchiveUpdateCallback:bb.a
bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN8NArchive4NZip11COutArchive16WriteLocalHeaderERKNS0_10CLocalItemE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(80) %28)
          to label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i unwind label %bb.ix

bb.ji:                                            ; preds = %bb.ja
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aia, i64 404
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !241
  %i.aiy = load ptr, ptr %i.st, align 8, !tbaa !98
  %i.aiz = sext i32 %i.aix to i64
  %i.aja = getelementptr inbounds [8 x i8], ptr %i.aiy, i64 %i.aiz
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !99 ; 3 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aia, i64 168
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !146
  invoke void @_ZN13COutMemStream10DetachDataER14CMemLockBlocks(ptr noundef nonnull align 8 dereferenceable(168) %i.ajd, ptr noundef nonnull align 8 dereferenceable(41) %i.ajb)
          to label %bb.jj unwind label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aia, i64 376
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajb, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajf, ptr noundef nonnull align 8 dereferenceable(24) %i.aje, i64 24, i1 false), !tbaa.struct !245
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajb, i64 72
  store i8 1, ptr %i.ajg, align 8, !tbaa !231
  br label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i

bb.jk:                                            ; preds = %bb.ji
  %i.ajh = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

bb.jl:                                            ; preds = %bb.ho
  %i.aji = invoke fastcc noundef i32 @_ZN8NArchive4NZipL17UpdateItemOldDataERNS0_11COutArchiveEP9IInStreamRKNS0_11CUpdateItemERNS0_7CItemExEP21ICompressProgressInfoRy(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(72) %i.acq, ptr noundef nonnull align 8 dereferenceable(186) %28, ptr noundef nonnull %i.pe, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.jm unwind label %bb.jn     ; 2 uses

bb.jm:                                            ; preds = %bb.jl
  %.not399.i = icmp eq i32 %i.aji, 0
  br i1 %.not399.i, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i, label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i

bb.jn:                                            ; preds = %bb.jl
  %i.ajj = landingpad { ptr, i32 }
          cleanup
  br label %.body535.i

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i: ; preds = %bb.jm, %bb.jh, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i, %.noexc521.i
  %.4.i = phi i32 [ %.0261.ph.ph.i, %.noexc521.i ], [ %.0261.ph.ph.i, %bb.jm ], [ %.1.i, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit.i ], [ %.1.i, %bb.jh ]
  %i.ajk = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #15
          to label %.noexc533.i unwind label %bb.hn ; 3 uses

.noexc533.i:                                      ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.thread.i
  invoke void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %i.ajk, ptr noundef nonnull align 8 dereferenceable(179) %28)
          to label %bb.jo unwind label %bb.jp

bb.jo:                                            ; preds = %.noexc533.i
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.jq unwind label %bb.hn

bb.jp:                                            ; preds = %.noexc533.i
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ajk, i64 noundef 184) #17
  br label %.body535.i

bb.jq:                                            ; preds = %bb.jo
  %i.ajm = load ptr, ptr %i.tj, align 8, !tbaa !98
  %i.ajn = load i32, ptr %i.tk, align 4, !tbaa !97 ; 2 uses
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds [8 x i8], ptr %i.ajm, i64 %i.ajo
  store ptr %i.ajk, ptr %i.ajp, align 8, !tbaa !99
  %i.ajq = add nsw i32 %i.ajn, 1
  store i32 %i.ajq, ptr %i.tk, align 4, !tbaa !97
  %i.ajr = load i64, ptr %i.b, align 8, !tbaa !78
  %i.ajs = add i64 %i.ajr, 26                     ; 3 uses
  store i64 %i.ajs, ptr %i.b, align 8, !tbaa !78
  %i.ajt = load ptr, ptr %i.so, align 8, !tbaa !83 ; 4 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 80 ; 2 uses
  %i.ajv = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aju) #14 ; 0 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 48
  store i64 0, ptr %i.ajw, align 8, !tbaa !78
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 32
  store i64 0, ptr %i.ajx, align 8, !tbaa !78
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  store i64 %i.ajs, ptr %i.ajy, align 8, !tbaa !79
  %i.ajz = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aju) #14 ; 0 uses
  %i.aka = add nsw i32 %i.acn, 1
  br label %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i: ; preds = %bb.jm, %bb.jc, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit532.i, %bb.hl
  %.27374.jt1.i = phi i32 [ %i.aij, %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit532.i ], [ -2147467263, %bb.hl ], [ %i.aji, %bb.jm ], [ %i.aip, %bb.jc ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  %i.akb = load ptr, ptr %i.tl, align 8, !tbaa !114 ; 2 uses
  %i.akc = icmp eq ptr %i.akb, null
  br i1 %i.akc, label %_ZN7CBufferIhED2Ev.exit.i537.jt1.i, label %bb.jr

_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i: ; preds = %bb.jq, %bb.jj
  %.promoted1249.i = phi i64 [ %i.ajs, %bb.jq ], [ %i.akl, %bb.jj ]
  %.1263.jt0.i = phi i32 [ %i.aka, %bb.jq ], [ %i.acn, %bb.jj ]
  %.5.jt0.i = phi i32 [ %.4.i, %bb.jq ], [ %.1.i, %bb.jj ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.te, align 8, !tbaa !64
  %i.akd = load ptr, ptr %i.tl, align 8, !tbaa !114 ; 2 uses
  %i.ake = icmp eq ptr %i.akd, null
  br i1 %i.ake, label %_ZN7CBufferIhED2Ev.exit.i537.jt0.i, label %bb.js

bb.jr:                                            ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i
  call void @_ZdaPv(ptr noundef nonnull %i.akb) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i537.jt1.i

bb.js:                                            ; preds = %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i
  call void @_ZdaPv(ptr noundef nonnull %i.akd) #17, !inline_history !115
  br label %_ZN7CBufferIhED2Ev.exit.i537.jt0.i

_ZN7CBufferIhED2Ev.exit.i537.jt1.i:               ; preds = %bb.jr, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt1.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.tb)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i unwind label %.loopexit.split-lp.i, !inline_history !116

_ZN7CBufferIhED2Ev.exit.i537.jt0.i:               ; preds = %bb.js, %_ZN8NArchive4NZipL14WriteDirHeaderERNS0_11COutArchiveEPKNS0_22CCompressionMethodModeERKNS0_11CUpdateItemERNS0_7CItemExE.exit.jt0.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.tb, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.tb)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i unwind label %.loopexit893.i, !inline_history !116

.loopexit893.i:                                   ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt0.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jt

.loopexit.split-lp.i:                             ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt1.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.jt

bb.jt:                                            ; preds = %.loopexit.split-lp.i, %.loopexit893.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit893.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.akf = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.akf) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt1.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.tb) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sy)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i unwind label %.loopexit.split-lp895.i, !inline_history !116

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i: ; preds = %_ZN7CBufferIhED2Ev.exit.i537.jt0.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.tb) #14, !inline_history !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.sy, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.sy)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i unwind label %.loopexit894.i, !inline_history !116

.loopexit894.i:                                   ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i
  %lpad.loopexit896.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ju

.loopexit.split-lp895.i:                          ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i
  %lpad.loopexit.split-lp897.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ju

bb.ju:                                            ; preds = %.loopexit.split-lp895.i, %.loopexit894.i
  %lpad.phi898.i = phi { ptr, i32 } [ %lpad.loopexit896.i, %.loopexit894.i ], [ %lpad.loopexit.split-lp897.i, %.loopexit.split-lp895.i ]
  %i.akg = extractvalue { ptr, i32 } %lpad.phi898.i, 0
  call void @__clang_call_terminate(ptr %i.akg) #16, !inline_history !116
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt1.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #14, !inline_history !116
  %i.akh = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 2 uses
  %i.aki = icmp eq ptr %i.akh, null
  br i1 %i.aki, label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i, label %bb.jv

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i: ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i538.jt0.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #14, !inline_history !116
  %i.akj = load ptr, ptr %i.sv, align 8, !tbaa !117 ; 2 uses
  %i.akk = icmp eq ptr %i.akj, null
  br i1 %i.akk, label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i, label %bb.jw

bb.jv:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i
  call void @_ZdaPv(ptr noundef nonnull %i.akh) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i

bb.jw:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i
  call void @_ZdaPv(ptr noundef nonnull %i.akj) #17
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i

_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i:        ; preds = %bb.jv, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %.thread575.i

_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i:        ; preds = %bb.jw, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i539.jt0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %.outer.outer.i, !llvm.loop !193

.outer.outer.i:                                   ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i, %.preheader.i
  %.promoted.i = phi i64 [ 0, %.preheader.i ], [ %.promoted1249.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.11358.ph.ph.i = phi i32 [ %..i, %.preheader.i ], [ %.11358.ph.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.0264.ph.ph.i = phi i32 [ 0, %.preheader.i ], [ %.0264.ph599.lcssa706.split.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ]
  %.0262.ph.ph.i = phi i32 [ 0, %.preheader.i ], [ %.1263.jt0.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ] ; 2 uses
  %.0261.ph.ph.i = phi i32 [ -1, %.preheader.i ], [ %.5.jt0.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt0.i ] ; 4 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.outer.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i
  %i.akl = phi i64 [ %i.acd, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.promoted.i, %.outer.outer.i ] ; 11 uses
  %.11358.ph.i = phi i32 [ %.16363.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.11358.ph.ph.i, %.outer.outer.i ] ; 6 uses
  %.0264.ph.i = phi i32 [ %i.wa, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.0264.ph.ph.i, %.outer.outer.i ] ; 4 uses
  %i.akm = load i32, ptr %i.bz, align 4, !tbaa !97 ; 4 uses
  %i.akn = icmp slt i32 %.0262.ph.ph.i, %i.akm
  br i1 %i.akn, label %.outer.split.i, label %.outer598._crit_edge.i

.outer.split.i:                                   ; preds = %.outer.i
  %i.ako = load i32, ptr %i.rz, align 4
  %i.akp = icmp ult i32 %i.ako, %.2276563.i
  %.fr.i = freeze i1 %i.akp
  br i1 %.fr.i, label %.outer598.preheader.i, label %.lr.ph698.split.split.i

.outer598.preheader.i:                            ; preds = %.outer.split.i
  %smax.i = call i32 @llvm.smax.i32(i32 %.0264.ph.i, i32 %i.akm) ; 3 uses
  %wide.trip.count.i = sext i32 %smax.i to i64
  %exitcond826.not.i1061.not = icmp slt i32 %.0264.ph.i, %i.akm
  br i1 %exitcond826.not.i1061.not, label %.lr.ph.preheader, label %.lr.ph698.split.split.i

.lr.ph.preheader:                                 ; preds = %.outer598.preheader.i
  %34 = sext i32 %.0264.ph.i to i64
  %i.akq = load ptr, ptr %i.sa, align 8, !tbaa !98
  br label %.lr.ph.a

.body535.i:                                       ; preds = %bb.jp, %bb.jn, %bb.jk, %bb.jd, %bb.ix, %bb.iw, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit529.i, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit525.i, %bb.hs, %bb.hn
  %.pn411.i = phi { ptr, i32 } [ %i.ajh, %bb.jk ], [ %i.ajj, %bb.jn ], [ %i.afd, %bb.hs ], [ %i.agf, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit525.i ], [ %i.ajl, %bb.jp ], [ %i.ahi, %_ZN9CMyComPtrI10IOutStreamED2Ev.exit529.i ], [ %i.aik, %bb.iw ], [ %i.ail, %bb.ix ], [ %i.aiq, %bb.jd ], [ %i.aeq, %bb.hn ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %28) #14
  br label %bb.jx

bb.jx:                                            ; preds = %.body535.i, %bb.hm
  %.pn411.pn.i = phi { ptr, i32 } [ %.pn411.i, %.body535.i ], [ %i.aep, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #14
  br label %bb.km

.outer598._crit_edge.i:                           ; preds = %.outer.i, %bb.hf
  invoke void @_ZN8NArchive4NZip11COutArchive15WriteCentralDirERK13CObjectVectorINS0_5CItemEEPK7CBufferIhE(ptr noundef nonnull align 8 dereferenceable(81) %32, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %i.by)
          to label %.thread575.i unwind label %bb.fm

.thread575.i:                                     ; preds = %bb.fk, %.noexc476.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i, %.outer598._crit_edge.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i, %bb.eh
  %.29376.i = phi i32 [ %i.qs, %bb.eh ], [ 0, %.outer598._crit_edge.i ], [ %.16363.i, %_ZN8NArchive4NZip5CItemD2Ev.exit504.i ], [ %.27374.jt1.i, %_ZN8NArchive4NZip5CItemD2Ev.exit540.jt1.i ], [ %i.vl, %bb.fk ], [ %i.ts, %.noexc476.i ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @_ZN8NArchive4NZip8CThreadsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.akr = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !97
  %i.akt = icmp sgt i32 %i.aks, 0
  br i1 %i.akt, label %.lr.ph.i542.i, label %._crit_edge.i541.i

.lr.ph.i542.i:                                    ; preds = %.thread575.i
  %i.aku = getelementptr inbounds nuw i8, ptr %20, i64 24
  br label %bb.jz

._crit_edge.i541.i:                               ; preds = %bb.ka, %.thread575.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE, i64 16), ptr %i.qh, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.qh)
          to label %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i unwind label %bb.jy, !inline_history !148

bb.jy:                                            ; preds = %._crit_edge.i541.i
  %i.akv = landingpad { ptr, i32 }
          catch ptr null
  %i.akw = extractvalue { ptr, i32 } %i.akv, 0
  call void @__clang_call_terminate(ptr %i.akw) #16, !inline_history !148
  unreachable

bb.jz:                                            ; preds = %bb.ka, %.lr.ph.i542.i
  %indvars.iv.i543.i = phi i64 [ 0, %.lr.ph.i542.i ], [ %indvars.iv.next.i544.i, %bb.ka ] ; 2 uses
  %i.akx = load ptr, ptr %i.aku, align 8, !tbaa !98
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.akx, i64 %indvars.iv.i543.i
  %i.akz = load ptr, ptr %i.aky, align 8, !tbaa !99
  %i.ala = load ptr, ptr %20, align 8, !tbaa !139
  invoke void @_ZN10CMemBlocks7FreeOptEP18CMemBlockManagerMt(ptr noundef nonnull align 8 dereferenceable(40) %i.akz, ptr noundef %i.ala)
          to label %bb.ka unwind label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %indvars.iv.next.i544.i = add nuw nsw i64 %indvars.iv.i543.i, 1 ; 2 uses
  %i.alb = load i32, ptr %i.akr, align 4, !tbaa !97
  %i.alc = sext i32 %i.alb to i64
  %i.ald = icmp slt i64 %indvars.iv.next.i544.i, %i.alc
  br i1 %i.ald, label %bb.jz, label %._crit_edge.i541.i, !llvm.loop !2

bb.kb:                                            ; preds = %bb.jz
  %i.ale = landingpad { ptr, i32 }
          catch ptr null
  %i.alf = extractvalue { ptr, i32 } %i.ale, 0
  call void @__clang_call_terminate(ptr %i.alf) #16
  unreachable

_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i:            ; preds = %._crit_edge.i541.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.qh) #14, !inline_history !148
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  invoke void @_ZN18CMemBlockManagerMt9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %bb.kc unwind label %bb.ke

bb.kc:                                            ; preds = %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i
  %i.alg = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.qa) #14 ; 0 uses
  invoke void @_ZN16CMemBlockManager9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88) %19)
          to label %_ZN18CMemBlockManagerMtD2Ev.exit.i unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.alh = landingpad { ptr, i32 }
          catch ptr null
  %i.ali = extractvalue { ptr, i32 } %i.alh, 0
  call void @__clang_call_terminate(ptr %i.ali) #16
  unreachable

bb.ke:                                            ; preds = %_ZN8NArchive4NZip8CMemRefsD2Ev.exit.i
  %i.alj = landingpad { ptr, i32 }
          catch ptr null
  %i.alk = extractvalue { ptr, i32 } %i.alj, 0
  call void @__clang_call_terminate(ptr %i.alk) #16
  unreachable

_ZN18CMemBlockManagerMtD2Ev.exit.i:               ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  %i.all = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.pn) #14 ; 0 uses
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.pk) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ph) #14
  %i.alm = load ptr, ptr %18, align 8, !tbaa !61  ; 3 uses
  %.not.i.i546.i = icmp eq ptr %i.alm, null
  br i1 %.not.i.i546.i, label %bb.kh, label %bb.kf

bb.kf:                                            ; preds = %_ZN18CMemBlockManagerMtD2Ev.exit.i
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !64
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 16
  %i.alp = load ptr, ptr %i.alo, align 8
  %i.alq = invoke noundef i32 %i.alp(ptr noundef nonnull align 8 dereferenceable(8) %i.alm)
          to label %bb.kh unwind label %bb.kg     ; 0 uses

bb.kg:                                            ; preds = %bb.kf
  %i.alr = landingpad { ptr, i32 }
          catch ptr null
  %i.als = extractvalue { ptr, i32 } %i.alr, 0
  call void @__clang_call_terminate(ptr %i.als) #16
  unreachable

bb.kh:                                            ; preds = %bb.kf, %_ZN18CMemBlockManagerMtD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %i.alt = load ptr, ptr %i.pe, align 8, !tbaa !64
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.alv = load ptr, ptr %i.alu, align 8
  %i.alw = invoke noundef i32 %i.alv(ptr noundef nonnull align 8 dereferenceable(8) %i.pe)
          to label %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i unwind label %bb.ki ; 0 uses

bb.ki:                                            ; preds = %bb.kh
  %i.alx = landingpad { ptr, i32 }
          catch ptr null
  %i.aly = extractvalue { ptr, i32 } %i.alx, 0
  call void @__clang_call_terminate(ptr %i.aly) #16
  unreachable

_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i: ; preds = %bb.kh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip5CItemEE, i64 16), ptr %17, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i unwind label %bb.kj, !inline_history !133

bb.kj:                                            ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
  %i.alz = landingpad { ptr, i32 }
          catch ptr null
  %i.ama = extractvalue { ptr, i32 } %i.alz, 0
  call void @__clang_call_terminate(ptr %i.ama) #16, !inline_history !133
  unreachable

_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i: ; preds = %_ZN9CMyComPtrI21ICompressProgressInfoED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #14, !inline_history !133
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.amb = load i8, ptr %i.oy, align 8, !tbaa !135, !range !57, !noundef !58
  %i.amc = trunc nuw i8 %i.amb to i1
  br i1 %i.amc, label %bb.kk, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

bb.kk:                                            ; preds = %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i
  %i.amd = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %16) #14 ; 0 uses
  %i.ame = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.pa) #14 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i: ; preds = %bb.kk, %_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  %i.amf = load i8, ptr %i.ou, align 8, !tbaa !135, !range !57, !noundef !58
  %i.amg = trunc nuw i8 %i.amf to i1
  br i1 %i.amg, label %bb.kl, label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i

bb.kl:                                            ; preds = %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
  %i.amh = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(89) %15) #14 ; 0 uses
  %i.ami = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ow) #14 ; 0 uses
  br label %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i

_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit549.i: ; preds = %bb.kl, %_ZN8NWindows16NSynchronization8CSynchroD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %_ZN8NArchive4NZipL9Update2StERNS0_11COutArchiveEPNS0_10CInArchiveEP9IInStreamRK13CObjectVectorINS0_7CItemExEERKS7_INS0_11CUpdateItemEEPKNS0_22CCompressionMethodModeEPK7CBufferIhEP22IArchiveUpdateCallback.exit.i

bb.km:                                            ; preds = %bb.jx, %bb.he, %bb.fm, %bb.fj, %bb.fb, %bb.fa, %bb.ew, %bb.eo, %bb.el
  %.pn431.pn.i = phi { ptr, i32 } [ %i.rl, %bb.eo ], [ %i.re, %bb.el ], [ %i.ty, %bb.fb ], [ %.pn428.i, %bb.ew ], [ %i.vm, %bb.fj ], [ %i.tx, %bb.fa ], [ %.pn411.pn.i, %bb.jx ], [ %.pn422.pn.pn.i, %bb.he ], [ %i.vy, %bb.fm ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  call void @_ZN8NArchive4NZip8CThreadsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @_ZN8NArchive4NZip8CMemRefsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  call void @_ZN18CMemBlockManagerMtD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %19) #14
  br label %.body469.i

.body469.i:                                       ; preds = %bb.km, %bb.ee
  %.pn431.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn431.pn.i, %bb.km ], [ %i.qc, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  br label %bb.kn

bb.kn:                                            ; preds = %.body469.i, %bb.ek
  %.pn431.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn431.pn.pn.pn.pn.i, %.body469.i ], [ %i.rd, %bb.ek ]
  call void @_ZN24CMtCompressProgressMixerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %18) #14
  br label %.body467.i

.body467.i:                                       ; preds = %bb.kn, %bb.eb, %bb.ea
  %.pn431.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn431.pn.pn.pn.pn.pn.i, %bb.kn ], [ %i.pp, %bb.ea ], [ %i.pp, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %bb.ko

bb.ko:                                            ; preds = %.body467.i, %bb.ej
end_hunk_3
begin_hunk_4_@_ZN8NArchive4NZipL10WriteRangeEP9IInStreamRNS0_11COutArchiveERKNS0_12CUpdateRangeEP21ICompressProgressInfo:bb.a
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %3, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.u, ptr noundef nonnull %i.u)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.l, %bb.n
  %.2 = phi i32 [ %i.aa, %bb.l ], [ %i.au, %bb.n ]
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(41) %i.g)
          to label %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #16
  unreachable

.body:                                            ; preds = %bb.m, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit5.i
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.ai, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit5.i ]
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(41) %i.g)
          to label %_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit34 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %.body
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #16
  unreachable

_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit34: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %.pn

_ZN9CMyComPtrI26CLimitedSequentialInStreamED2Ev.exit: ; preds = %bb.o, %bb.a
  %.3 = phi i32 [ %i.f, %bb.a ], [ %.2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.3
}

declare void @_ZN8NArchive4NZip11COutArchive16MoveBasePositionEy(ptr noundef nonnull align 8 dereferenceable(81), i64 noundef) local_unnamed_addr #1

declare void @_ZN8NArchive4NZip11COutArchive22CreateStreamForCopyingEPP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN9NCompress10CopyStreamEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %0, ptr noundef nonnull align 8 dereferenceable(179) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8NArchive4NZip10CLocalItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.e, align 8, !tbaa !121
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.c, align 8, !tbaa !64
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !97   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !97
  %i.j = add nsw i32 %i.i, %i.g
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef %i.j)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.noexc3.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.noexc4.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.noexc4.i.i ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.noexc4.i.i unwind label %.loopexit.i.i ; 0 uses

.noexc4.i.i:                                      ; preds = %bb.b
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit, label %bb.b, !llvm.loop !7

.loopexit.i.i:                                    ; preds = %bb.b
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i.i, %bb.a
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #14
  br label %.body

_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit:      ; preds = %.noexc4.i.i, %.noexc3.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.q, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118  ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN7CBufferIhEC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #15
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.w = load i64, ptr %i.r, align 8, !tbaa !118  ; 2 uses
  %.not10.i.i.i = icmp eq i64 %i.w, 0
  %.pr.i.i = load ptr, ptr %i.s, align 8, !tbaa !114 ; 3 uses
  br i1 %.not10.i.i.i, label %thread-pre-split.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 %i.u)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %.pr.i.i, i64 %i.x, i1 false)
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.e, %.noexc
  %i.y = icmp eq ptr %.pr.i.i, null
  br i1 %i.y, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pr.i.i) #17
  br label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i:           ; preds = %bb.f, %thread-pre-split.i.i
  store ptr %i.v, ptr %i.s, align 8, !tbaa !114
  store i64 %i.u, ptr %i.r, align 8, !tbaa !118
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !114
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !118
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZN7CBufferIhEC2ERKS0_.exit

_ZN7CBufferIhEC2ERKS0_.exit:                      ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i, %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ac, ptr noundef nonnull align 8 dereferenceable(3) %i.ad, i64 3, i1 false)
  ret void

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8NArchive4NZip11CExtraBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #14
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %lpad.phi.i.i, %bb.c ]
  tail call void @_ZN8NArchive4NZip10CLocalItemD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #14
  resume { ptr, i32 } %.pn
}

declare i32 @Thread_Wait(ptr noundef) local_unnamed_addr #1

declare void @_ZN18CMemBlockManagerMt9FreeSpaceEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #11

declare void @_ZN10COutBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !67}
!3 = distinct !{!3, !67}
!4 = distinct !{!4, !67}
!5 = distinct !{!5, !67}
!6 = distinct !{!6, !67}
!7 = distinct !{!7, !67}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !13, i64 0}
!17 = !{!"_ZTS8_CThread", !16, i64 0, !14, i64 8}
!18 = !{!"_ZTSN8NWindows7CThreadE", !17, i64 0}
!19 = !{!"_ZTS7_CEvent", !14, i64 0, !14, i64 4, !14, i64 8, !13, i64 16, !13, i64 56}
!20 = !{!"_ZTSN8NWindows16NSynchronization10CBaseEventE", !19, i64 0}
!21 = !{!"_ZTSN8NWindows16NSynchronization15CAutoResetEventE", !20, i64 0}
!22 = !{!"any pointer", !13, i64 0}
!23 = !{!"p1 _ZTSN8NWindows16NSynchronization8CSynchroE", !22, i64 0}
!24 = !{!"_ZTSN8NWindows16NSynchronization15CBaseHandleWFMOE", !23, i64 8}
!25 = !{!"bool", !13, i64 0}
!26 = !{!"_ZTSN8NWindows16NSynchronization14CBaseEventWFMOE", !24, i64 0, !25, i64 16, !25, i64 17}
!27 = !{!"_ZTSN8NWindows16NSynchronization19CAutoResetEventWFMOE", !26, i64 0}
!28 = !{!"p1 _ZTS19CMtCompressProgress", !22, i64 0}
!29 = !{!"p1 _ZTS21ICompressProgressInfo", !22, i64 0}
!30 = !{!"_ZTS9CMyComPtrI21ICompressProgressInfoE", !29, i64 0}
!31 = !{!"p1 _ZTS13COutMemStream", !22, i64 0}
!32 = !{!"p1 _ZTS10IOutStream", !22, i64 0}
!33 = !{!"_ZTS9CMyComPtrI10IOutStreamE", !32, i64 0}
!34 = !{!"p1 _ZTS19ISequentialInStream", !22, i64 0}
!35 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !34, i64 0}
!36 = !{!"_ZTS17CBaseRecordVector", !14, i64 8, !14, i64 12, !22, i64 16, !16, i64 24}
!37 = !{!"_ZTS13CRecordVectorIhE", !36, i64 0}
!38 = !{!"p1 wchar_t", !22, i64 0}
!39 = !{!"_ZTS11CStringBaseIwE", !38, i64 0, !14, i64 8, !14, i64 12}
!40 = !{!"p1 omnipotent char", !22, i64 0}
!41 = !{!"_ZTS11CStringBaseIcE", !40, i64 0, !14, i64 8, !14, i64 12}
!42 = !{!"_ZTSN8NArchive4NZip22CCompressionMethodModeE", !37, i64 0, !39, i64 32, !14, i64 48, !14, i64 52, !14, i64 56, !25, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !25, i64 84, !41, i64 88, !25, i64 104, !13, i64 105}
!43 = !{!"p1 _ZTSN9NCompress10CCopyCoderE", !22, i64 0}
!44 = !{!"p1 _ZTS14ICompressCoder", !22, i64 0}
!45 = !{!"_ZTS9CMyComPtrI14ICompressCoderE", !44, i64 0}
!46 = !{!"p1 _ZTS12CFilterCoder", !22, i64 0}
!47 = !{!"p1 _ZTS20ISequentialOutStream", !22, i64 0}
!48 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !47, i64 0}
!49 = !{!"p1 _ZTSN7NCrypto4NZip8CEncoderE", !22, i64 0}
!50 = !{!"p1 _ZTSN7NCrypto6NWzAes8CEncoderE", !22, i64 0}
!51 = !{!"_ZTSN8NArchive4NZip10CAddCommonE", !42, i64 0, !43, i64 112, !45, i64 120, !45, i64 128, !13, i64 136, !46, i64 144, !48, i64 152, !49, i64 160, !50, i64 168}
!52 = !{!"long long", !13, i64 0}
!53 = !{!"short", !13, i64 0}
!54 = !{!"_ZTSN8NArchive4NZip18CCompressingResultE", !52, i64 0, !52, i64 8, !14, i64 16, !53, i64 20, !13, i64 22}
!55 = !{!"_ZTSN8NArchive4NZip11CThreadInfoE", !18, i64 0, !21, i64 16, !27, i64 120, !25, i64 144, !28, i64 152, !30, i64 160, !31, i64 168, !33, i64 176, !35, i64 184, !51, i64 192, !14, i64 368, !54, i64 376, !25, i64 400, !14, i64 404}
!56 = !{!55, !25, i64 144}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!35, !34, i64 0}
!60 = !{!33, !32, i64 0}
!61 = !{!30, !29, i64 0}
!62 = !{!55, !14, i64 368}
!63 = !{!"vtable pointer", !12, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!24, !23, i64 8}
!66 = !{!26, !25, i64 17}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"p1 _ZTS9IProgress", !22, i64 0}
!69 = !{!"_ZTS9CMyComPtrI9IProgressE", !68, i64 0}
!70 = !{!69, !68, i64 0}
!71 = !{!"_ZTS8IUnknown"}
!72 = !{!"_ZTS21ICompressProgressInfo", !71, i64 0}
!73 = !{!"_ZTS13CMyUnknownImp", !14, i64 0}
!74 = !{!"_ZTS16CCriticalSection", !13, i64 0}
!75 = !{!"_ZTSN8NWindows16NSynchronization16CCriticalSectionE", !74, i64 0}
!76 = !{!"_ZTSN8NArchive4NZip17CMtProgressMixer2E", !72, i64 0, !73, i64 8, !52, i64 16, !13, i64 24, !13, i64 40, !69, i64 56, !30, i64 64, !25, i64 72, !75, i64 80}
!77 = !{!76, !25, i64 72}
!78 = !{!52, !52, i64 0}
!79 = !{!76, !52, i64 16}
!80 = !{!73, !14, i64 0}
!81 = !{!"p1 _ZTSN8NArchive4NZip17CMtProgressMixer2E", !22, i64 0}
!82 = !{!"_ZTSN8NArchive4NZip16CMtProgressMixerE", !72, i64 0, !73, i64 8, !81, i64 16, !30, i64 24}
!83 = !{!82, !81, i64 16}
!84 = !{!"_ZTS20ISequentialOutStream", !71, i64 0}
!85 = !{!"_ZTS10IOutStream", !84, i64 0}
!86 = !{!"_ZTSN8NArchive4NZip15CCacheOutStreamE", !85, i64 0, !73, i64 8, !33, i64 16, !40, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !16, i64 72}
!87 = !{!86, !40, i64 24}
!88 = !{!86, !52, i64 48}
!89 = !{!86, !52, i64 32}
!90 = !{!86, !16, i64 72}
!91 = !{!86, !52, i64 64}
!92 = !{!86, !52, i64 56}
!93 = !{!86, !52, i64 40}
!94 = !{!"_ZTS7CBufferIhE", !16, i64 8, !40, i64 16}
!95 = !{!48, !47, i64 0}
!96 = !{!"_ZTS10COutBuffer", !40, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !48, i64 24, !52, i64 32, !40, i64 40, !25, i64 48}
!97 = !{!36, !14, i64 12}
!98 = !{!36, !22, i64 16}
!99 = !{!22, !22, i64 0}
!100 = !{!"_ZTS9_FILETIME", !14, i64 0, !14, i64 4}
!101 = !{!"_ZTSN8NArchive4NZip11CUpdateItemE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !25, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !52, i64 24, !41, i64 32, !100, i64 48, !100, i64 56, !100, i64 64}
!102 = !{!101, !52, i64 24}
!103 = !{!"_ZTSN8NArchive4NZip8CVersionE", !13, i64 0, !13, i64 1}
!104 = !{!"_ZTS13CRecordVectorIPvE", !36, i64 0}
!105 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE", !104, i64 0}
!106 = !{!"_ZTSN8NArchive4NZip11CExtraBlockE", !105, i64 0}
!107 = !{!"_ZTSN8NArchive4NZip10CLocalItemE", !103, i64 0, !53, i64 2, !53, i64 4, !14, i64 8, !14, i64 12, !52, i64 16, !52, i64 24, !41, i64 32, !106, i64 48}
!108 = !{!"_ZTSN8NArchive4NZip5CItemE", !107, i64 0, !103, i64 80, !53, i64 82, !14, i64 84, !52, i64 88, !100, i64 96, !100, i64 104, !100, i64 112, !106, i64 120, !94, i64 152, !25, i64 176, !25, i64 177, !25, i64 178}
!109 = !{!"_ZTSN8NArchive4NZip7CItemExE", !108, i64 0, !14, i64 180, !53, i64 184}
!110 = !{!109, !14, i64 180}
!111 = !{!109, !53, i64 184}
!112 = !{!107, !52, i64 16}
!113 = !{!107, !53, i64 2}
!114 = !{!94, !40, i64 16}
!115 = !{ptr @_ZN7CBufferIhED2Ev}
!116 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev}
!117 = !{!41, !40, i64 0}
!118 = !{!94, !16, i64 8}
!119 = !{!13, !13, i64 0}
!120 = !{!42, !25, i64 84}
!121 = !{!36, !16, i64 24}
!122 = !{!41, !14, i64 12}
!123 = !{!41, !14, i64 8}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
!126 = !{!"branch_weights", i32 4, i32 28}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!101, !25, i64 1}
!129 = !{!101, !25, i64 2}
!130 = !{!42, !25, i64 104}
!131 = !{!42, !13, i64 105}
!132 = !{!107, !52, i64 24}
!133 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip5CItemEED2Ev}
!134 = !{!"_ZTSN8NWindows16NSynchronization8CSynchroE", !13, i64 0, !13, i64 40, !25, i64 88}
!135 = !{!134, !25, i64 88}
!136 = !{!"p1 _ZTS18CMemBlockManagerMt", !22, i64 0}
!137 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip11CMemBlocks2EE", !104, i64 0}
!138 = !{!"_ZTSN8NArchive4NZip8CMemRefsE", !136, i64 0, !137, i64 8}
!139 = !{!138, !136, i64 0}
!140 = !{!"_ZTS10CMemBlocks", !104, i64 0, !52, i64 32}
!141 = !{!140, !52, i64 32}
!142 = !{!"_ZTS14CMemLockBlocks", !140, i64 0, !25, i64 40}
!143 = !{!142, !25, i64 40}
!144 = !{!20, !14, i64 0}
!145 = !{!"_ZTS13COutMemStream", !85, i64 0, !73, i64 8, !136, i64 16, !16, i64 24, !16, i64 32, !25, i64 40, !25, i64 41, !27, i64 48, !27, i64 72, !14, i64 96, !142, i64 104, !48, i64 152, !33, i64 160}
!146 = !{!55, !31, i64 168}
!147 = !{!145, !25, i64 41}
!148 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip11CMemBlocks2EED2Ev}
!149 = !{!39, !38, i64 0}
!150 = !{!39, !14, i64 12}
!151 = !{!39, !14, i64 8}
!152 = !{!"wchar_t", !13, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{!101, !25, i64 4}
!155 = !{!101, !14, i64 20}
!156 = !{!107, !14, i64 8}
!157 = !{!101, !25, i64 3}
!158 = !{!108, !25, i64 178}
!159 = !{!"_ZTSN8NArchive4NZip11COutArchiveE", !33, i64 0, !96, i64 8, !52, i64 64, !14, i64 72, !14, i64 76, !25, i64 80}
!160 = !{!159, !52, i64 64}
!161 = !{!108, !52, i64 88}
!162 = !{!107, !13, i64 0}
!163 = !{!107, !53, i64 4}
!164 = !{!107, !14, i64 12}
!165 = !{!"_ZTSN8NArchive4NZip14CExtraSubBlockE", !53, i64 0, !94, i64 8}
!166 = !{!165, !53, i64 0}
!167 = !{!"_ZTSN8NArchive4NZip12CUpdateRangeE", !52, i64 0, !52, i64 8}
!168 = !{!167, !52, i64 0}
!169 = !{!167, !52, i64 8}
!170 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip11CThreadInfoEED2Ev}
!171 = !{!45, !44, i64 0}
!172 = distinct !{!172, !67}
!173 = distinct !{null}
!174 = distinct !{null}
!175 = distinct !{ptr @_ZN8NArchive4NZip17CMtProgressMixer26CreateEP9IProgressb, null}
end_hunk_4
