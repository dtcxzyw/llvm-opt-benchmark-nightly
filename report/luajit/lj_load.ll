Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_load?download=true
inline.NumInlined: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LexState = type { ptr, ptr, %union.TValue, %union.TValue, ptr, ptr, i32, i32, i32, %struct.SBuf, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, [32 x i16] }
%union.TValue = type { i64 }
%struct.SBuf = type { ptr, ptr, ptr, %struct.MRef }
%struct.MRef = type { i64 }
%struct.FileReaderCtx = type { ptr, [8192 x i8] }
%struct.StringReaderCtx = type { ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cannot open %s: %s\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"cannot read %s: %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @lua_loadx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.LexState, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %2, ptr %i.b, align 8, !tbaa !21
  %.not = icmp eq ptr %3, null
  %i.c = select i1 %.not, ptr @.str, ptr %3
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr %i.c, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr %4, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %i.g, ptr %i.h, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.i = call i32 @lj_vm_cpcall(ptr noundef %0, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull @cpparser) #12
  call void @lj_lex_cleanup(ptr noundef %0, ptr noundef nonnull %5) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38
  %.not11 = icmp ult i64 %i.n, %i.p
  br i1 %.not11, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.q = call i32 @lj_gc_step(ptr noundef nonnull %0) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden i32 @lj_vm_cpcall(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @cpparser(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 -1, ptr %i.c, align 4, !tbaa !40
  %i.d = tail call i32 @lj_lex_setup(ptr noundef %0, ptr noundef %2) #12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !41    ; 2 uses
  %.not3135 = icmp eq i8 %i.g, 0
  br i1 %.not3135, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not34 = icmp eq i32 %i.d, 0
  %i.h = select i1 %.not34, i32 116, i32 98
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 180
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i8 [ %i.g, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %.pn = phi ptr [ %i.f, %.lr.ph ], [ %i.k, %bb.d ]
  %.02836 = phi i32 [ 1, %.lr.ph ], [ %spec.select, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.l = sext i8 %i.j to i32
  %3 = icmp eq i32 %i.h, %i.l
  %spec.select = select i1 %3, i32 0, i32 %.02836 ; 2 uses
  %i.m = icmp eq i8 %i.j, 87
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load i8, ptr %i.k, align 1, !tbaa !41    ; 2 uses
  %.not31 = icmp eq i8 %i.n, 0
  br i1 %.not31, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.d
  %4 = icmp eq i32 %spec.select, 0
  br i1 %4, label %bb.e, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = tail call ptr @lj_err_str(ptr noundef %0, i32 noundef 2140) #12
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = or i64 %i.s, -703687441776640
  store i64 %i.t, ptr %i.p, align 8, !tbaa !41
  tail call void @lj_err_throw(ptr noundef %0, i32 noundef 3) #13
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.a
  %.not33 = icmp eq i32 %i.d, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @lj_bcread(ptr noundef %2) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call ptr @lj_parse(ptr noundef %2) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = phi ptr [ %i.u, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.y = load i32, ptr %i.x, align 4, !tbaa !52
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call ptr @lj_func_newL_empty(ptr noundef %0, ptr noundef %i.w, ptr noundef %i.ac) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.ad, %bb.i ], [ %i.w, %bb.h ]
  %.sink42 = phi i64 [ -1266637395197952, %bb.i ], [ -1125899906842624, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !42
  %i.ah = ptrtoint ptr %.sink to i64
  %i.ai = or i64 %.sink42, %i.ah
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !41
  ret ptr null
}

declare hidden void @lj_lex_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_gc_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lua_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.LexState, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %2, ptr %i.b, align 8, !tbaa !21
  %.not.i = icmp eq ptr %3, null
  %i.c = select i1 %.not.i, ptr @.str, ptr %3
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr %i.c, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr null, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.g, ptr %i.h, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.i = call i32 @lj_vm_cpcall(ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @cpparser) #12
  call void @lj_lex_cleanup(ptr noundef %0, ptr noundef nonnull %4) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38
  %.not11.i = icmp ult i64 %i.n, %i.p
  br i1 %.not11.i, label %lua_loadx.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.q = call i32 @lj_gc_step(ptr noundef nonnull %0) #12 ; 0 uses
  br label %lua_loadx.exit

lua_loadx.exit:                                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @luaL_loadfilex(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.LexState, align 8           ; 10 uses
  %4 = alloca %struct.FileReaderCtx, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #12
  %i.b = tail call noalias ptr @fopen64(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !45
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  store ptr %i.f, ptr %i.d, align 8, !tbaa !42
  %i.g = tail call ptr @__errno_location() #14
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #12
  %i.j = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %1, ptr noundef %i.i) #12 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stdin, align 8, !tbaa !55
  store ptr %i.k, ptr %4, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.024 = phi ptr [ %i.a, %bb.b ], [ @.str.4, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr @reader_file, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %4, ptr %i.m, align 8, !tbaa !21
  %.not.i = icmp eq ptr %.024, null
  %i.n = select i1 %.not.i, ptr @.str, ptr %.024
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr %i.n, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr %2, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = ptrtoint ptr %0 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.r, ptr %i.s, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.t = call i32 @lj_vm_cpcall(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @cpparser) #12
  call void @lj_lex_cleanup(ptr noundef %0, ptr noundef nonnull %3) #12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !28
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !38
  %.not11.i = icmp ult i64 %i.y, %i.aa
  br i1 %.not11.i, label %lua_loadx.exit, label %bb.f, !prof !39

bb.f:                                             ; preds = %bb.e
  %i.ab = call i32 @lj_gc_step(ptr noundef nonnull %0) #12 ; 0 uses
  br label %lua_loadx.exit

lua_loadx.exit:                                   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ac = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ad = call i32 @ferror(ptr noundef %i.ac) #12
  %.not26 = icmp eq i32 %i.ad, 0
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %lua_loadx.exit
  %i.ae = tail call ptr @__errno_location() #14
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %lua_loadx.exit
  %.023 = phi i32 [ %i.af, %bb.g ], [ 0, %lua_loadx.exit ] ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 @fclose(ptr noundef %i.ac)     ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !42
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !41
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not27 = icmp eq i32 %.023, 0
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = select i1 %.not, ptr @.str.5, ptr %1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
end_hunk_0
