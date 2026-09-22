Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/xml_serializer?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_executor_globals = type { %struct._zval_struct, %struct._zval_struct, [32 x ptr], ptr, ptr, %struct._zend_array, %struct._zend_array, ptr, i32, i8, %struct._zval_struct, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, i8, i8, %struct.zend_atomic_bool_s, %struct.zend_atomic_bool_s, ptr, i64, ptr, ptr, %struct._zend_array, %struct._zend_array, i32, i8, %struct._zval_struct, %struct._zval_struct, %struct._zend_stack, %struct._zend_stack, %struct._zend_stack, ptr, i32, i32, i64, ptr, ptr, ptr, %struct._zend_objects_store, %struct._zend_lazy_objects_store, ptr, ptr, ptr, [3 x %struct._zend_op], ptr, i8, i8, i64, i32, i32, ptr, [16 x %struct._HashTableIterator], ptr, %union._zend_function, %struct._zend_op, %struct._zend_array, i64, %struct.zend_get_gc_buffer, ptr, ptr, ptr, i64, i8, i32, ptr, ptr, i64, %struct._zend_call_stack, i64, i64, %struct._zend_strtod_state, [6 x ptr] }
%struct.zend_atomic_bool_s = type { i8 }
%struct._zval_struct = type { %union._zend_value, %union.anon.3, %union.anon.6 }
%union._zend_value = type { i64 }
%union.anon.3 = type { i32 }
%union.anon.6 = type { i32 }
%struct._zend_stack = type { i32, i32, i32, ptr }
%struct._zend_objects_store = type { ptr, i32, i32, i32 }
%struct._zend_lazy_objects_store = type { %struct._zend_array }
%struct._HashTableIterator = type { ptr, i32, i32 }
%union._zend_function = type { %struct._zend_op_array }
%struct._zend_op_array = type { i8, [3 x i8], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [6 x ptr] }
%struct._zend_op = type { ptr, %union._znode_op, %union._znode_op, %union._znode_op, i32, i32, i8, i8, i8, i8 }
%union._znode_op = type { i32 }
%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.0, i32, %union.anon.1, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { ptr }
%struct.zend_get_gc_buffer = type { ptr, ptr, ptr }
%struct._zend_call_stack = type { ptr, i64 }
%struct._zend_strtod_state = type { [8 x ptr], ptr, ptr }
%struct.dom_xml_ns_prefix_map = type { ptr }
%struct.dom_xml_serialize_ctx = type { ptr, ptr, ptr }
%struct.dom_xml_local_prefix_map = type { %struct._zend_array }

@.str = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Maximum call stack size reached. Infinite recursion?\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@executor_globals = external local_unnamed_addr global %struct._zend_executor_globals, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@php_dom_ns_is_xml_magic_token = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"xmlns\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" xmlns:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" xmlns=\22\00", align 1
@php_dom_ns_is_html_magic_token = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [3 x i8] c" /\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"</\00", align 1
@php_dom_ns_is_xmlns_magic_token = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"&<>\22\09\0A\0D\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"&<>\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"&#9;\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"&#10;\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"&#13;\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"http://www.w3.org/2000/xmlns/\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"?>\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"<![CDATA[\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"]]>\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @dom_xml_serialize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.dom_xml_ns_prefix_map, align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.dom_xml_serialize_ctx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.b = tail call noalias ptr @_emalloc_56() #8  ; 2 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !16
  tail call void @_zend_hash_init(ptr noundef %i.b, i32 noundef 8, ptr noundef null, i1 noundef zeroext false) #8
  call fastcc void @dom_xml_ns_prefix_map_add(ptr noundef %6, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i64 noundef 36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 1, ptr %i.a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !22
  store ptr %0, ptr %7, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %i.d, align 8, !tbaa !24
  %not. = xor i1 %3, true
  %i.e = sext i1 %not. to i32
  %i.f = call fastcc i32 @dom_xml_serialization_algorithm(ptr noundef %7, ptr noundef %6, ptr noundef %2, ptr noundef null, ptr noundef %i.a, i32 noundef %i.e, i1 noundef zeroext %4)
  %i.g = load ptr, ptr %6, align 8, !tbaa !16     ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26   ; 2 uses
  %i.i = icmp ne i32 %i.h, 0
  call void @llvm.assume(i1 %i.i)
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !26
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %dom_xml_ns_prefix_map_dtor.exit

bb.b:                                             ; preds = %bb.a
  call fastcc void @dom_xml_ns_prefix_map_destroy(ptr noundef nonnull %6)
  br label %dom_xml_ns_prefix_map_dtor.exit

dom_xml_ns_prefix_map_dtor.exit:                  ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i32 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dom_xml_ns_prefix_map_add(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %7 = alloca %struct._zval_struct, align 8       ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %8 = load ptr, ptr %0, align 8, !tbaa !16, !nonnull !27, !noundef !27 ; 4 uses
  %i.a = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.a, ptr @.str.2, ptr %3 ; 3 uses
  %i.b = load i32, ptr %8, align 4, !tbaa !26     ; 2 uses
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -1
  store i32 %i.d, ptr %8, align 4, !tbaa !26
  %i.e = tail call ptr @zend_array_dup(ptr noundef nonnull %8) #8 ; 6 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 5                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not4044 = icmp eq i32 %i.i, 0
  br i1 %.not4044, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = add nsw i64 %.idx, -32                   ; 2 uses
  %i.m = and i64 %i.l, 32
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !28
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.c, !prof !32

bb.c:                                             ; preds = %.lr.ph.prol
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !26
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.c, %.lr.ph.prol
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03845.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.u = icmp eq i64 %i.l, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.f
  %.03845 = phi ptr [ %i.ai, %bb.f ], [ %.03845.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03845, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.lr.ph.1, label %bb.d, !prof !32

bb.d:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %.03845, align 8, !tbaa !28 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !26
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.03845, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !28
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.e, !prof !32

bb.e:                                             ; preds = %.lr.ph.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.03845, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !26
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.1
  %i.ai = getelementptr inbounds nuw i8, ptr %.03845, i64 64 ; 2 uses
  %.not40.1 = icmp eq ptr %i.ai, %i.k
  br i1 %.not40.1, label %.loopexit, label %.lr.ph, !llvm.loop !47

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %bb.f, %bb.b, %bb.a
  %i.aj = phi ptr [ %8, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.f ], [ %i.e, %.lr.ph.prol.loopexit ]
  %i.ak = tail call ptr @zend_hash_str_find(ptr noundef %i.aj, ptr noundef nonnull %spec.store.select, i64 noundef %4) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %zend_hash_str_add_new_ptr.exit, label %bb.g

zend_hash_str_add_new_ptr.exit:                   ; preds = %.loopexit
  %i.al = tail call noalias ptr @_emalloc_56() #8 ; 3 uses
  tail call void @_zend_hash_init(ptr noundef %i.al, i32 noundef 8, ptr noundef null, i1 noundef zeroext false) #8
  %i.am = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr %i.al, ptr %6, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 13, ptr %i.an, align 8, !tbaa !28
  %i.ao = call ptr @zend_hash_str_add_new(ptr noundef %i.am, ptr noundef nonnull %spec.store.select, i64 noundef %4, ptr noundef nonnull %6) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !28, !nonnull !27, !noundef !27 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26 ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = add i32 %i.aq, -1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !26
  %i.at = tail call ptr @zend_array_dup(ptr noundef nonnull %i.ap) #8 ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %i.at, ptr %5, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 13, ptr %i.av, align 8, !tbaa !28
  %i.aw = call ptr @zend_hash_str_update(ptr noundef %i.au, ptr noundef nonnull %spec.store.select, i64 noundef %4, ptr noundef nonnull %5) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %zend_hash_str_add_new_ptr.exit
  %.0 = phi ptr [ %i.al, %zend_hash_str_add_new_ptr.exit ], [ %i.at, %bb.h ], [ %i.ap, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %spec.select = select i1 %2, i32 13, i32 12
  store ptr %1, ptr %7, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %spec.select, ptr %i.ax, align 8, !tbaa !28
  %i.ay = call ptr @zend_hash_next_index_insert_new(ptr noundef %.0, ptr noundef nonnull %7) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dom_xml_serialization_algorithm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._zval_struct, align 8       ; 5 uses
  %8 = alloca %struct._zval_struct, align 8       ; 5 uses
  %9 = alloca %struct._zend_array, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %10 = alloca %struct._zval_struct, align 8      ; 5 uses
  %11 = alloca %struct.dom_xml_ns_prefix_map, align 8 ; 17 uses
  %12 = alloca %struct.dom_xml_local_prefix_map, align 8 ; 16 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !88
  %i.e = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not = icmp ugt ptr %i.e, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.3) #8
  br label %dom_xml_serialize_element_node.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  switch i32 %i.g, label %bb.fi [
    i32 1, label %bb.d
    i32 11, label %bb.dk
    i32 13, label %bb.dm
    i32 9, label %bb.dm
    i32 3, label %bb.dr
    i32 8, label %bb.dy
    i32 7, label %bb.ek
    i32 4, label %bb.ez
    i32 2, label %bb.fd
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = tail call i32 @xmlValidateNCName(ptr noundef %i.i, i32 noundef 0) #8, !inline_history !48
  %.not.i42 = icmp eq i32 %i.j, 0
  br i1 %.not.i42, label %bb.f, label %dom_xml_serialize_element_node.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = icmp sgt i32 %5, -1                      ; 2 uses
  br i1 %i.k, label %bb.g, label %dom_xml_should_format_element.exit

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  %.not198.i = icmp eq ptr %i.m, null
  br i1 %.not198.i, label %dom_xml_should_format_element.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.h
  %.0.i103 = phi ptr [ %i.r, %bb.h ], [ %i.m, %bb.g ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i103, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41
  %i.p = add i32 %i.o, -6
  %switch.i = icmp ult i32 %i.p, -3               ; 3 uses
  br i1 %switch.i, label %bb.h, label %dom_xml_should_format_element.exit

bb.h:                                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i103, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91   ; 2 uses
  %.not.i104 = icmp eq ptr %i.r, null
  br i1 %.not.i104, label %dom_xml_should_format_element.exit, label %.preheader, !llvm.loop !49
end_hunk_0
begin_hunk_1_@dom_xml_serialization_algorithm:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.fm = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.fn = call fastcc i32 @dom_xml_common_text_serialization(ptr noundef %i.fm, ptr noundef %i.cd, i1 noundef zeroext true), !inline_history !48
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %dom_xml_output_qname.exit.thread, label %bb.ay, !prof !32

bb.ay:                                            ; preds = %bb.ax
  %i.fp = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.fq = call i32 @xmlOutputBufferWrite(ptr noundef %i.fp, i32 noundef 1, ptr noundef nonnull @.str.9) #8, !inline_history !48
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %dom_xml_output_qname.exit.thread, label %bb.az, !prof !32

dom_xml_str_equals_treat_nulls_as_empty.exit.thread: ; preds = %dom_xml_str_equals_treat_nulls_as_empty.exit370, %.thread126.thread, %.split, %dom_xml_str_equals_treat_nulls_as_empty.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !42 ; 2 uses
  %i.fu = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.fv = call i32 @xmlOutputBufferWriteString(ptr noundef %i.fu, ptr noundef %i.ft) #8
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %dom_xml_output_qname.exit.thread, label %bb.az, !prof !32

bb.az:                                            ; preds = %bb.at, %bb.au, %dom_xml_str_equals_treat_nulls_as_empty.exit.thread, %bb.ay, %bb.ai, %dom_xml_output_qname.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.3111, %dom_xml_output_qname.exit ], [ null, %bb.ay ], [ null, %dom_xml_str_equals_treat_nulls_as_empty.exit.thread ], [ %.1165.i299, %bb.ai ], [ %.0166.i, %bb.au ], [ %.0166.i, %bb.at ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %i.cm, %dom_xml_output_qname.exit ], [ %i.ff, %bb.ay ], [ %i.ft, %dom_xml_str_equals_treat_nulls_as_empty.exit.thread ], [ %i.dp, %bb.ai ], [ %i.ee, %bb.au ], [ %i.ee, %bb.at ]
  %.3172.i = phi i1 [ %.not204.i, %dom_xml_output_qname.exit ], [ true, %bb.ay ], [ false, %dom_xml_str_equals_treat_nulls_as_empty.exit.thread ], [ false, %bb.ai ], [ false, %bb.au ], [ false, %bb.at ]
  %.5.i = phi ptr [ %3, %dom_xml_output_qname.exit ], [ %i.cd, %bb.ay ], [ %i.cd, %dom_xml_str_equals_treat_nulls_as_empty.exit.thread ], [ %.0167.i, %bb.ai ], [ %.209.i, %bb.au ], [ %3, %bb.at ]
  %i.fx = load ptr, ptr %i.t, align 8, !tbaa !22  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @_zend_hash_init(ptr noundef nonnull %9, i32 noundef 8, ptr noundef null, i1 noundef zeroext false) #8
  %.087152.i = load ptr, ptr %i.aa, align 8, !tbaa !92 ; 2 uses
  %.not153.i = icmp eq ptr %.087152.i, null
  br i1 %.not153.i, label %.loopexit, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %.thread140.i, %.lr.ph157.i
  %.087154.i = phi ptr [ %.087152.i, %.lr.ph157.i ], [ %.087.i, %.thread140.i ] ; 10 uses
  br i1 %6, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.fz = getelementptr inbounds nuw i8, ptr %.087154.i, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !95 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %zend_string_alloc.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !100 ; 3 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %zend_string_alloc.exit.i.i, label %bb.bd

zend_string_alloc.exit.i.i:                       ; preds = %bb.bc, %bb.bb
  %i.gf = getelementptr inbounds nuw i8, ptr %.087154.i, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !45 ; 2 uses
  %i.gh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gg) #9 ; 4 uses
  %i.gi = and i64 %i.gh, -8
  %i.gj = add i64 %i.gi, 32
  %i.gk = call noalias ptr @_emalloc(i64 noundef %i.gj) #10 ; 6 uses
  store i32 1, ptr %i.gk, align 4, !tbaa !26
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 22, ptr %i.gl, align 4, !tbaa !28
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 0, ptr %i.gm, align 8, !tbaa !103
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i64 %i.gh, ptr %i.gn, align 8, !tbaa !104
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.go, ptr nonnull align 1 %i.gg, i64 %i.gh, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gh
  store i8 0, ptr %i.gp, align 1, !tbaa !28
  br label %dom_xml_create_localname_set_key.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.gq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gd) #9
  %i.gr = getelementptr inbounds nuw i8, ptr %.087154.i, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !45 ; 2 uses
  %i.gt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gs) #9
  %i.gu = call ptr @zend_string_concat3(ptr noundef nonnull %i.gd, i64 noundef %i.gq, ptr noundef nonnull @.str.2, i64 noundef 1, ptr noundef nonnull %i.gs, i64 noundef %i.gt) #8
  br label %dom_xml_create_localname_set_key.exit.i

dom_xml_create_localname_set_key.exit.i:          ; preds = %bb.bd, %zend_string_alloc.exit.i.i
  %.0.i116.i = phi ptr [ %i.gk, %zend_string_alloc.exit.i.i ], [ %i.gu, %bb.bd ] ; 5 uses
  %i.gv = call ptr @zend_hash_add_empty_element(ptr noundef nonnull %9, ptr noundef %.0.i116.i) #8
  %.not95.i = icmp eq ptr %i.gv, null
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i116.i, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !28
  %i.gy = and i32 %i.gx, 64
  %.not.i111.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i111.i, label %bb.be, label %zend_string_release_ex.exit.i

bb.be:                                            ; preds = %dom_xml_create_localname_set_key.exit.i
  %i.gz = load i32, ptr %.0.i116.i, align 4, !tbaa !26 ; 2 uses
  %i.ha = icmp ne i32 %i.gz, 0
  call void @llvm.assume(i1 %i.ha)
  %i.hb = add i32 %i.gz, -1                       ; 2 uses
  store i32 %i.hb, ptr %.0.i116.i, align 4, !tbaa !26
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.bf, label %zend_string_release_ex.exit.i

bb.bf:                                            ; preds = %bb.be
  call void @_efree(ptr noundef nonnull %.0.i116.i) #8
  br label %zend_string_release_ex.exit.i

zend_string_release_ex.exit.i:                    ; preds = %bb.bf, %bb.be, %dom_xml_create_localname_set_key.exit.i
  br i1 %.not95.i, label %dom_xml_serialize_attributes.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %zend_string_release_ex.exit.i, %bb.ba
  %i.hd = getelementptr inbounds nuw i8, ptr %.087154.i, i64 72 ; 6 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !95 ; 3 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %dom_prefix_in_candidate_list.exit.i, label %dom_xml_attribute_namespace.exit112.i

dom_xml_attribute_namespace.exit112.i:            ; preds = %bb.bg
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !100 ; 9 uses
  %.not96.i = icmp eq ptr %i.hh, null
  br i1 %.not96.i, label %dom_prefix_in_candidate_list.exit.i, label %bb.bh

bb.bh:                                            ; preds = %dom_xml_attribute_namespace.exit112.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !97
  %i.hk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hh) #9
  %.val.i75 = load ptr, ptr %11, align 8, !tbaa !16, !nonnull !27, !noundef !27 ; 2 uses
  %i.hl = call fastcc ptr @dom_retrieve_a_preferred_prefix_string(ptr nonnull %.val.i75, ptr noundef nonnull %12, ptr noundef %i.hj, ptr noundef nonnull %i.hh, i64 noundef %i.hk) ; 4 uses
  %i.hm = load ptr, ptr @php_dom_ns_is_xmlns_magic_token, align 8, !tbaa !94
  %i.hn = call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %.087154.i, ptr noundef %i.hm) #8
  br i1 %i.hn, label %bb.bi, label %bb.bz

bb.bi:                                            ; preds = %bb.bh
  %i.ho = getelementptr inbounds nuw i8, ptr %.087154.i, i64 24 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !98 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %dom_get_attribute_value.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 80
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !44 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.hs, null
  %spec.select.i.i = select i1 %.not.i.i80, ptr @.str.2, ptr %i.hs
  br label %dom_get_attribute_value.exit.i

dom_get_attribute_value.exit.i:                   ; preds = %bb.bj, %bb.bi
  %.0.i.i81 = phi ptr [ %spec.select.i.i, %bb.bj ], [ @.str.2, %bb.bi ] ; 7 uses
  %i.ht = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i81, ptr noundef nonnull dereferenceable(37) @.str.1) #9
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %.thread140.i, label %bb.bk

bb.bk:                                            ; preds = %dom_get_attribute_value.exit.i
  %.pre.i82 = load ptr, ptr %i.hd, align 8, !tbaa !95
  %i.hv = getelementptr inbounds nuw i8, ptr %.pre.i82, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !97
  %i.hx = icmp eq ptr %i.hw, null                 ; 2 uses
  br i1 %.3172.i, label %bb.bl, label %dom_xml_str_equals_treat_nulls_as_empty.exit.thread.i

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.hx, label %bb.bm, label %dom_xml_str_equals_treat_nulls_as_empty.exit.thread.thread179.i

bb.bm:                                            ; preds = %bb.bl
  %i.hy = load ptr, ptr %i.by, align 8, !tbaa !99 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %dom_xml_str_equals_treat_nulls_as_empty.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !100 ; 3 uses
  %i.ic = icmp eq ptr %i.ib, %.0.i.i81
  br i1 %i.ic, label %dom_prefix_in_candidate_list.exit.thread129.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.id = icmp eq ptr %i.ib, null
  br i1 %i.id, label %dom_xml_str_equals_treat_nulls_as_empty.exit.i, label %.split.i87

.split.i87:                                       ; preds = %bb.bo
  %i.ie = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ib, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i81) #9
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %dom_prefix_in_candidate_list.exit.thread129.i, label %.thread140.i

dom_xml_str_equals_treat_nulls_as_empty.exit.i:   ; preds = %bb.bo, %bb.bm
  %i.ig = load i8, ptr %.0.i.i81, align 1, !tbaa !28
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %dom_prefix_in_candidate_list.exit.thread129.i, label %.thread140.i

dom_xml_str_equals_treat_nulls_as_empty.exit.thread.i: ; preds = %bb.bk
  br i1 %i.hx, label %dom_prefix_in_candidate_list.exit.thread129.i, label %dom_xml_str_equals_treat_nulls_as_empty.exit.thread.thread179.i

dom_xml_str_equals_treat_nulls_as_empty.exit.thread.thread179.i: ; preds = %dom_xml_str_equals_treat_nulls_as_empty.exit.thread.i, %bb.bl
  %i.ii = getelementptr inbounds nuw i8, ptr %.087154.i, i64 16 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !45 ; 2 uses
  %i.ik = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ij) #9
  %i.il = call ptr @zend_hash_str_find(ptr noundef nonnull %12, ptr noundef nonnull %i.ij, i64 noundef %i.ik) #8 ; 2 uses
  %.not.i.i106.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i106.i, label %dom_xml_local_prefix_map_find.exit108.thread.i, label %bb.bp

bb.bp:                                            ; preds = %dom_xml_str_equals_treat_nulls_as_empty.exit.thread.thread179.i
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !28, !nonnull !27, !noundef !27
  %i.in = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.im, ptr noundef nonnull dereferenceable(1) %.0.i.i81) #9
  %.not98.i = icmp eq i32 %i.in, 0
  br i1 %.not98.i, label %dom_prefix_in_candidate_list.exit.thread129.i, label %dom_xml_local_prefix_map_find.exit108.thread.i

dom_xml_local_prefix_map_find.exit108.thread.i:   ; preds = %bb.bp, %dom_xml_str_equals_treat_nulls_as_empty.exit.thread.thread179.i
  %i.io = load ptr, ptr %i.ii, align 8, !tbaa !45 ; 4 uses
  %i.ip = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.i81) #9
  %i.iq = call ptr @zend_hash_str_find(ptr noundef nonnull %.val.i75, ptr noundef nonnull %.0.i.i81, i64 noundef %i.ip) #8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.io) ]
  %.not.i.i.i83 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i83, label %dom_prefix_in_candidate_list.exit.thread129.i, label %bb.bq

bb.bq:                                            ; preds = %dom_xml_local_prefix_map_find.exit108.thread.i
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !28, !nonnull !27, !noundef !27 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !28 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !31 ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %.idx.i = shl nuw nsw i64 %i.iw, 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 %.idx.i
  %.not.i103.not150.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i103.not150.i, label %dom_prefix_in_candidate_list.exit.thread129.i, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.bq, %bb.bt
  %.016.i151.i = phi ptr [ %i.ji, %bb.bt ], [ %i.it, %bb.bq ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.016.i151.i, i64 8
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !28
  %i.ja = icmp eq i8 %i.iz, 0
  br i1 %i.ja, label %bb.bt, label %bb.br, !prof !32

bb.br:                                            ; preds = %.lr.ph.i84
  %i.jb = load ptr, ptr %.016.i151.i, align 8, !tbaa !28 ; 3 uses
  %i.jc = icmp eq ptr %i.jb, %i.io
  br i1 %i.jc, label %.thread140.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jd = icmp eq ptr %i.jb, null
  br i1 %i.jd, label %dom_xml_str_equals_treat_nulls_as_empty.exit119.i, label %.split126.i

.split126.i:                                      ; preds = %bb.bs
  %i.je = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.jb, ptr noundef nonnull readonly dereferenceable(1) %i.io) #9
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %.thread140.i, label %bb.bt

dom_xml_str_equals_treat_nulls_as_empty.exit119.i: ; preds = %bb.bs
  %i.jg = load i8, ptr %i.io, align 1, !tbaa !28
  %i.jh = icmp eq i8 %i.jg, 0
  br i1 %i.jh, label %.thread140.i, label %bb.bt

bb.bt:                                            ; preds = %dom_xml_str_equals_treat_nulls_as_empty.exit119.i, %.split126.i, %.lr.ph.i84
  %i.ji = getelementptr inbounds nuw i8, ptr %.016.i151.i, i64 16 ; 2 uses
  %.not.i103.not.i = icmp eq ptr %i.ji, %i.ix
  br i1 %.not.i103.not.i, label %dom_prefix_in_candidate_list.exit.thread129.i, label %.lr.ph.i84, !llvm.loop !50

dom_prefix_in_candidate_list.exit.thread129.i:    ; preds = %bb.bt, %bb.bq, %dom_xml_local_prefix_map_find.exit108.thread.i, %bb.bp, %dom_xml_str_equals_treat_nulls_as_empty.exit.thread.i, %dom_xml_str_equals_treat_nulls_as_empty.exit.i, %.split.i87, %bb.bn
  %i.jj = load ptr, ptr %i.hd, align 8, !tbaa !95
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !97 ; 2 uses
  %.not99.i = icmp eq ptr %i.jl, null
  br i1 %.not99.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %dom_prefix_in_candidate_list.exit.thread129.i
  %i.jm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jl, ptr noundef nonnull dereferenceable(6) @.str.6) #9
  %i.jn = icmp eq i32 %i.jm, 0
  %spec.select.i = select i1 %i.jn, ptr @.str.6, ptr %i.hl
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %dom_prefix_in_candidate_list.exit.thread129.i
  %.0.i85 = phi ptr [ %i.hl, %dom_prefix_in_candidate_list.exit.thread129.i ], [ %spec.select.i, %bb.bu ] ; 3 uses
  br i1 %6, label %bb.bw, label %dom_prefix_in_candidate_list.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.jo = load ptr, ptr %i.ho, align 8, !tbaa !98 ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %dom_get_attribute_value.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 80
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !44 ; 2 uses
  %.not.i.i113.i = icmp eq ptr %i.jr, null
  %spec.select.i.i.i = select i1 %.not.i.i113.i, ptr @.str.2, ptr %i.jr
  br label %dom_get_attribute_value.exit.i.i

dom_get_attribute_value.exit.i.i:                 ; preds = %bb.bx, %bb.bw
  %.0.i.i114.i = phi ptr [ %spec.select.i.i.i, %bb.bx ], [ @.str.2, %bb.bw ] ; 2 uses
  %i.js = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i114.i, ptr noundef nonnull dereferenceable(30) @.str.47) #9
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %dom_xml_serialize_attributes.exit.thread, label %bb.by

bb.by:                                            ; preds = %dom_get_attribute_value.exit.i.i
  %i.ju = load i8, ptr %.0.i.i114.i, align 1, !tbaa !28
  %i.jv = icmp eq i8 %i.ju, 0
  %i.jw = icmp ne ptr %.0.i85, null
  %or.cond.i.i86 = and i1 %i.jw, %i.jv
  br i1 %or.cond.i.i86, label %dom_xml_serialize_attributes.exit.thread, label %dom_prefix_in_candidate_list.exit.i

bb.bz:                                            ; preds = %bb.bh
  %i.jx = icmp eq ptr %i.hl, null
  br i1 %i.jx, label %bb.ca, label %dom_prefix_in_candidate_list.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.jy = load ptr, ptr %i.hd, align 8, !tbaa !95
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !97 ; 3 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %dom_xml_local_prefix_map_find.exit.thread.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ka) #9
  %i.kd = call ptr @zend_hash_str_find(ptr noundef nonnull %12, ptr noundef nonnull %i.ka, i64 noundef %i.kc) #8
  %.not.i.i104.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i104.i, label %dom_xml_local_prefix_map_find.exit.i79, label %dom_xml_local_prefix_map_find.exit.thread.i

dom_xml_local_prefix_map_find.exit.thread.i:      ; preds = %bb.cb, %bb.ca
  %i.ke = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hh) #9
  %i.kf = call fastcc ptr @dom_xml_generate_a_prefix(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %i.hh, i64 noundef %i.ke, ptr noundef nonnull %4)
  br label %bb.cc

dom_xml_local_prefix_map_find.exit.i79:           ; preds = %bb.cb
  %i.kg = load ptr, ptr %i.hd, align 8, !tbaa !95
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !97 ; 4 uses
  %i.kj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hh) #9
  call fastcc void @dom_xml_ns_prefix_map_add(ptr noundef nonnull %11, ptr noundef %i.ki, i1 noundef zeroext false, ptr noundef nonnull %i.hh, i64 noundef %i.kj)
  %i.kk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ki) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store ptr %i.hh, ptr %8, align 8, !tbaa !28
  store i32 13, ptr %i.fy, align 8, !tbaa !28
  %i.kl = call ptr @zend_hash_str_add(ptr noundef nonnull %12, ptr noundef nonnull %i.ki, i64 noundef %i.kk, ptr noundef nonnull %8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.cc

bb.cc:                                            ; preds = %dom_xml_local_prefix_map_find.exit.i79, %dom_xml_local_prefix_map_find.exit.thread.i
  %.2.i78 = phi ptr [ %i.kf, %dom_xml_local_prefix_map_find.exit.thread.i ], [ %i.ki, %dom_xml_local_prefix_map_find.exit.i79 ] ; 2 uses
  %i.km = call i32 @xmlOutputBufferWrite(ptr noundef %i.fx, i32 noundef 7, ptr noundef nonnull @.str.7) #8
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %dom_xml_serialize_attributes.exit.thread, label %bb.cd, !prof !32

bb.cd:                                            ; preds = %bb.cc
  %i.ko = call i32 @xmlOutputBufferWriteString(ptr noundef %i.fx, ptr noundef nonnull %.2.i78) #8
  %i.kp = icmp slt i32 %i.ko, 0
  br i1 %i.kp, label %dom_xml_serialize_attributes.exit.thread, label %bb.ce, !prof !32

bb.ce:                                            ; preds = %bb.cd
  %i.kq = call i32 @xmlOutputBufferWrite(ptr noundef %i.fx, i32 noundef 2, ptr noundef nonnull @.str.8) #8
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %dom_xml_serialize_attributes.exit.thread, label %bb.cf, !prof !32

bb.cf:                                            ; preds = %bb.ce
  %i.ks = call fastcc i32 @dom_xml_common_text_serialization(ptr noundef %i.fx, ptr noundef nonnull %i.hh, i1 noundef zeroext true)
  %i.kt = icmp slt i32 %i.ks, 0
  br i1 %i.kt, label %dom_xml_serialize_attributes.exit.thread, label %bb.cg, !prof !32

bb.cg:                                            ; preds = %bb.cf
  %i.ku = call i32 @xmlOutputBufferWrite(ptr noundef %i.fx, i32 noundef 1, ptr noundef nonnull @.str.9) #8
  %i.kv = icmp slt i32 %i.ku, 0
  br i1 %i.kv, label %dom_xml_serialize_attributes.exit.thread, label %dom_prefix_in_candidate_list.exit.i, !prof !32

dom_prefix_in_candidate_list.exit.i:              ; preds = %bb.cg, %bb.bz, %bb.by, %bb.bv, %dom_xml_attribute_namespace.exit112.i, %bb.bg
  %.3.i76 = phi ptr [ %.0.i85, %bb.by ], [ %.2.i78, %bb.cg ], [ %i.hl, %bb.bz ], [ null, %dom_xml_attribute_namespace.exit112.i ], [ %.0.i85, %bb.bv ], [ null, %bb.bg ] ; 2 uses
  %i.kw = call i32 @xmlOutputBufferWrite(ptr noundef %i.fx, i32 noundef 1, ptr noundef nonnull @.str.46) #8
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %dom_xml_serialize_attributes.exit.thread, label %bb.ch, !prof !32

bb.ch:                                            ; preds = %dom_prefix_in_candidate_list.exit.i
  %.not100.i = icmp eq ptr %.3.i76, null
  br i1 %.not100.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ky = call i32 @xmlOutputBufferWriteString(ptr noundef %i.fx, ptr noundef nonnull %.3.i76) #8
  %i.kz = icmp slt i32 %i.ky, 0
  br i1 %i.kz, label %dom_xml_serialize_attributes.exit.thread, label %bb.cj, !prof !32

bb.cj:                                            ; preds = %bb.ci
  %i.la = call i32 @xmlOutputBufferWrite(ptr noundef %i.fx, i32 noundef 1, ptr noundef nonnull @.str.35) #8
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %dom_xml_serialize_attributes.exit.thread, label %bb.ck, !prof !32

bb.ck:                                            ; preds = %bb.cj, %bb.ch
  br i1 %6, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.lc = getelementptr inbounds nuw i8, ptr %.087154.i, i64 16 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !45
  %i.le = call i32 @xmlValidateNCName(ptr noundef %i.ld, i32 noundef 0) #8
  %.not101.i = icmp eq i32 %i.le, 0
  br i1 %.not101.i, label %bb.cm, label %dom_xml_serialize_attributes.exit.thread

bb.cm:                                            ; preds = %bb.cl
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !45
  %i.lg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lf, ptr noundef nonnull dereferenceable(6) @.str.6) #9
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.li = load ptr, ptr %i.hd, align 8, !tbaa !95 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %dom_xml_serialize_attributes.exit.thread, label %dom_xml_attribute_namespace.exit.i

dom_xml_attribute_namespace.exit.i:               ; preds = %bb.cn
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !100
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %dom_xml_serialize_attributes.exit.thread, label %bb.co

bb.co:                                            ; preds = %dom_xml_attribute_namespace.exit.i, %bb.cm, %bb.ck
  %i.ln = call fastcc i32 @dom_xml_serialize_attribute_node_value(ptr noundef %i.fx, ptr noundef nonnull %.087154.i)
  %i.lo = icmp slt i32 %i.ln, 0
  br i1 %i.lo, label %dom_xml_serialize_attributes.exit.thread, label %.thread140.i, !prof !32

.thread140.i:                                     ; preds = %dom_xml_str_equals_treat_nulls_as_empty.exit119.i, %.split126.i, %bb.br, %bb.co, %dom_xml_str_equals_treat_nulls_as_empty.exit.i, %.split.i87, %dom_get_attribute_value.exit.i
  %i.lp = getelementptr inbounds nuw i8, ptr %.087154.i, i64 48
  %.087.i = load ptr, ptr %i.lp, align 8, !tbaa !92 ; 2 uses
  %.not.i77 = icmp eq ptr %.087.i, null
  br i1 %.not.i77, label %.loopexit, label %bb.ba, !llvm.loop !52

dom_xml_serialize_attributes.exit.thread:         ; preds = %zend_string_release_ex.exit.i, %bb.co, %bb.cn, %dom_xml_attribute_namespace.exit.i, %bb.ce, %bb.cd, %bb.cc, %bb.cf, %bb.cl, %bb.cj, %bb.ci, %dom_prefix_in_candidate_list.exit.i, %bb.cg, %bb.by, %dom_get_attribute_value.exit.i.i
  call void @zend_hash_destroy(ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %dom_xml_output_qname.exit.thread

.loopexit:                                        ; preds = %.thread140.i, %bb.az
  call void @zend_hash_destroy(ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !90
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.cp, label %.thread206

bb.cp:                                            ; preds = %.loopexit
  %i.lt = call ptr @__xmlSaveNoEmptyTags() #8, !inline_history !48
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !17
  %.not205.i = icmp eq i32 %i.lu, 0
  br i1 %.not205.i, label %bb.cq, label %.thread203

bb.cq:                                            ; preds = %bb.cp
  %i.lv = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !94
  %i.lw = call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %2, ptr noundef %i.lv) #8, !inline_history !48
  br i1 %i.lw, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !42 ; 35 uses
  %i.lz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ly) #9, !inline_history !48
  switch i64 %i.lz, label %.thread203 [
    i64 4, label %dom_local_name_compare_ex.exit251.i
    i64 8, label %dom_local_name_compare_ex.exit247.i
    i64 7, label %dom_local_name_compare_ex.exit245.i
    i64 2, label %dom_local_name_compare_ex.exit243.i
    i64 3, label %dom_local_name_compare_ex.exit241.i
    i64 5, label %dom_local_name_compare_ex.exit239.i
    i64 6, label %dom_local_name_compare_ex.exit229.i
  ]

dom_local_name_compare_ex.exit251.i:              ; preds = %bb.cr
end_hunk_1
begin_hunk_2_@dom_xml_serialization_algorithm:bb.a
  br i1 %.not.i.i65, label %.loopexit.loopexit.i, label %.lr.ph.i.i57, !llvm.loop !58

dom_xml_check_char_production.exit.i64:           ; preds = %bb.er, %switch.early.test.i.i67, %.lr.ph.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %dom_xml_serialize_element_node.exit

.loopexit.loopexit.i:                             ; preds = %bb.es
  %.pre.i = load ptr, ptr %i.xd, align 8, !tbaa !44
  br label %.loopexit.i66

.loopexit.i66:                                    ; preds = %.loopexit.loopexit.i, %bb.eo
  %i.xr = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.xe, %bb.eo ]
  %i.xs = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.xr, ptr noundef nonnull dereferenceable(1) @.str.54) #9
  %.not17.i = icmp eq ptr %i.xs, null
  br i1 %.not17.i, label %bb.et, label %dom_xml_serialize_element_node.exit

bb.et:                                            ; preds = %.loopexit.i66, %bb.en, %bb.ek
  %i.xt = call i32 @xmlOutputBufferWrite(ptr noundef %i.wx, i32 noundef 2, ptr noundef nonnull @.str.55) #8
  %i.xu = icmp slt i32 %i.xt, 0
  br i1 %i.xu, label %dom_xml_serialize_element_node.exit, label %bb.eu, !prof !32

bb.eu:                                            ; preds = %bb.et
  %i.xv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !42
  %i.xx = call i32 @xmlOutputBufferWriteString(ptr noundef %i.wx, ptr noundef %i.xw) #8
  %i.xy = icmp slt i32 %i.xx, 0
  br i1 %i.xy, label %dom_xml_serialize_element_node.exit, label %bb.ev, !prof !32

bb.ev:                                            ; preds = %bb.eu
  %i.xz = call i32 @xmlOutputBufferWrite(ptr noundef %i.wx, i32 noundef 1, ptr noundef nonnull @.str.46) #8
  %i.ya = icmp slt i32 %i.xz, 0
  br i1 %i.ya, label %dom_xml_serialize_element_node.exit, label %bb.ew, !prof !32

bb.ew:                                            ; preds = %bb.ev
  %i.yb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !44 ; 2 uses
  %.not18.i = icmp eq ptr %i.yc, null
  br i1 %.not18.i, label %bb.ey, label %bb.ex, !prof !32

bb.ex:                                            ; preds = %bb.ew
  %i.yd = call i32 @xmlOutputBufferWriteString(ptr noundef %i.wx, ptr noundef nonnull %i.yc) #8
  %i.ye = icmp slt i32 %i.yd, 0
  br i1 %i.ye, label %dom_xml_serialize_element_node.exit, label %bb.ey, !prof !32

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.yf = call i32 @xmlOutputBufferWrite(ptr noundef %i.wx, i32 noundef 2, ptr noundef nonnull @.str.54) #8
  br label %dom_xml_serialize_element_node.exit

bb.ez:                                            ; preds = %bb.c
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !22 ; 3 uses
  %i.yi = tail call i32 @xmlOutputBufferWrite(ptr noundef %i.yh, i32 noundef 9, ptr noundef nonnull @.str.56) #8
  %i.yj = icmp slt i32 %i.yi, 0
  br i1 %i.yj, label %dom_xml_serialize_element_node.exit, label %bb.fa, !prof !32

bb.fa:                                            ; preds = %bb.ez
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !44 ; 2 uses
  %.not.i68 = icmp eq ptr %i.yl, null
  br i1 %.not.i68, label %bb.fc, label %bb.fb, !prof !32

bb.fb:                                            ; preds = %bb.fa
  %i.ym = tail call i32 @xmlOutputBufferWriteString(ptr noundef %i.yh, ptr noundef nonnull %i.yl) #8
  %i.yn = icmp slt i32 %i.ym, 0
  br i1 %i.yn, label %dom_xml_serialize_element_node.exit, label %bb.fc, !prof !32

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %i.yo = tail call i32 @xmlOutputBufferWrite(ptr noundef %i.yh, i32 noundef 3, ptr noundef nonnull @.str.57) #8
  br label %dom_xml_serialize_element_node.exit

bb.fd:                                            ; preds = %bb.c
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !22 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !99 ; 2 uses
  %.not.i70 = icmp eq ptr %i.ys, null
  br i1 %.not.i70, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !97 ; 2 uses
  %.not9.i = icmp eq ptr %i.yu, null
  br i1 %.not9.i, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.yv = tail call i32 @xmlOutputBufferWriteString(ptr noundef %i.yq, ptr noundef nonnull %i.yu) #8
  %i.yw = icmp slt i32 %i.yv, 0
  br i1 %i.yw, label %dom_xml_serialize_element_node.exit, label %bb.fg, !prof !32

bb.fg:                                            ; preds = %bb.ff
  %i.yx = tail call i32 @xmlOutputBufferWrite(ptr noundef %i.yq, i32 noundef 1, ptr noundef nonnull @.str.35) #8
  %i.yy = icmp slt i32 %i.yx, 0
  br i1 %i.yy, label %dom_xml_serialize_element_node.exit, label %bb.fh, !prof !32

bb.fh:                                            ; preds = %bb.fg, %bb.fe, %bb.fd
  %i.yz = tail call fastcc i32 @dom_xml_serialize_attribute_node_value(ptr noundef %i.yq, ptr noundef nonnull readonly %2)
  br label %dom_xml_serialize_element_node.exit

bb.fi:                                            ; preds = %bb.c
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !22
  %i.zc = tail call i32 @xmlOutputBufferFlush(ptr noundef %i.zb) #8
  %i.zd = icmp slt i32 %i.zc, 0
  br i1 %i.zd, label %dom_xml_serialize_element_node.exit, label %bb.fj, !prof !32

bb.fj:                                            ; preds = %bb.fi
  %i.ze = load ptr, ptr %0, align 8, !tbaa !23
  %i.zf = tail call i64 @xmlSaveTree(ptr noundef %i.ze, ptr noundef nonnull %2) #8
  %i.zg = icmp slt i64 %i.zf, 0
  br i1 %i.zg, label %dom_xml_serialize_element_node.exit, label %bb.fk, !prof !32

bb.fk:                                            ; preds = %bb.fj
  %i.zh = load ptr, ptr %0, align 8, !tbaa !23
  %i.zi = tail call i32 @xmlSaveFlush(ptr noundef %i.zh) #8
  %i.zj = icmp slt i32 %i.zi, 0
  br i1 %i.zj, label %dom_xml_serialize_element_node.exit, label %bb.fl, !prof !32

bb.fl:                                            ; preds = %bb.fk
  %i.zk = load i32, ptr %i.f, align 8, !tbaa !41
  %i.zl = icmp eq i32 %i.zk, 14
  br i1 %i.zl, label %bb.fm, label %dom_xml_serialize_element_node.exit

bb.fm:                                            ; preds = %bb.fl
  %i.zm = load ptr, ptr %i.za, align 8, !tbaa !22
  %i.zn = tail call i32 @xmlOutputBufferWrite(ptr noundef %i.zm, i32 noundef 1, ptr noundef nonnull @.str.4) #8
  br label %dom_xml_serialize_element_node.exit

dom_xml_serialize_element_node.exit:              ; preds = %bb.dq, %.lr.ph, %bb.dl, %.lr.ph239, %bb.dp, %bb.dk, %bb.fh, %bb.fg, %bb.ff, %bb.fc, %bb.fb, %bb.ez, %bb.ey, %bb.ex, %bb.ev, %bb.eu, %bb.et, %.loopexit.i66, %dom_xml_check_char_production.exit.i64, %bb.em, %bb.el, %bb.ej, %bb.ei, %.critedge.i49, %bb.eg, %.loopexit.i, %dom_xml_check_char_production.exit.i, %dom_xml_check_char_production.exit.thread, %dom_xml_check_char_production.exit, %bb.do, %bb.dn, %bb.dm, %dom_xml_ns_prefix_map_dtor.exit215.i, %dom_xml_should_format_element.exit, %bb.e, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fm, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.fb ], [ -1, %bb.fi ], [ -1, %bb.fj ], [ %i.zn, %bb.fm ], [ -1, %bb.fk ], [ 0, %bb.fl ], [ -1, %dom_xml_should_format_element.exit ], [ -1, %bb.ff ], [ %i.yz, %bb.fh ], [ -1, %dom_xml_check_char_production.exit ], [ -1, %bb.eg ], [ -1, %bb.ex ], [ -1, %bb.e ], [ %.0183.i, %dom_xml_ns_prefix_map_dtor.exit215.i ], [ -1, %bb.fg ], [ 0, %bb.dp ], [ -1, %bb.dm ], [ -1, %bb.dn ], [ -1, %bb.do ], [ %i.vs, %dom_xml_check_char_production.exit.thread ], [ -1, %bb.ei ], [ -1, %.critedge.i49 ], [ %i.wv, %bb.ej ], [ -1, %.loopexit.i ], [ -1, %dom_xml_check_char_production.exit.i ], [ %i.yf, %bb.ey ], [ -1, %bb.el ], [ -1, %dom_xml_check_char_production.exit.i64 ], [ -1, %.loopexit.i66 ], [ -1, %bb.et ], [ -1, %bb.eu ], [ -1, %bb.ev ], [ -1, %bb.em ], [ %i.yo, %bb.fc ], [ -1, %bb.ez ], [ -1, %.lr.ph239 ], [ 0, %bb.dk ], [ 0, %bb.dl ], [ 0, %bb.dq ], [ -1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noalias ptr @_emalloc_56() local_unnamed_addr #2

declare void @_zend_hash_init(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

declare ptr @zend_array_dup(ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_next_index_insert_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_add_new(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @xmlOutputBufferFlush(ptr noundef) local_unnamed_addr #2

declare i64 @xmlSaveTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xmlSaveFlush(ptr noundef) local_unnamed_addr #2

declare i32 @xmlOutputBufferWrite(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

declare i32 @xmlValidateNCName(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @php_dom_ns_is_fast(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dom_xml_output_qname(ptr noundef %0, ptr %.0.val, ptr %.8.val) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @xmlOutputBufferWriteString(ptr noundef %0, ptr noundef nonnull %.0.val) #8
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @xmlOutputBufferWrite(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.35) #8
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.e = tail call i32 @xmlOutputBufferWriteString(ptr noundef %0, ptr noundef %.8.val) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dom_retrieve_a_preferred_prefix_string(ptr %.0.val, ptr noundef nonnull %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.a, ptr @.str.2, ptr %2 ; 5 uses
  %i.b = tail call ptr @zend_hash_str_find(ptr noundef nonnull %.0.val, ptr noundef nonnull %spec.store.select, i64 noundef %3) #8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %dom_get_candidates_list.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28, !nonnull !27, !noundef !27 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.j = icmp eq ptr %1, null
  %.not.us6268 = icmp eq i32 %i.e, 0              ; 2 uses
  br i1 %i.j, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %bb.b
  br i1 %.not.us6268, label %dom_get_candidates_list.exit.thread, label %.lr.ph

.outer.us.preheader:                              ; preds = %bb.b
  br i1 %.not.us6268, label %dom_get_candidates_list.exit.thread, label %.lr.ph65

.lr.ph65:                                         ; preds = %.outer.us.preheader, %.outer.us
  %.0.ph.us71 = phi ptr [ %i.k, %.outer.us ], [ %i.i, %.outer.us.preheader ]
  %.028.ph.us70 = phi i64 [ %i.l, %.outer.us ], [ %i.f, %.outer.us.preheader ]
  %.029.ph.us69 = phi ptr [ %.1.us, %.outer.us ], [ null, %.outer.us.preheader ] ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph65, %bb.g
  %.0.us64 = phi ptr [ %.0.ph.us71, %.lr.ph65 ], [ %i.k, %bb.g ] ; 2 uses
  %.028.us63 = phi i64 [ %.028.ph.us70, %.lr.ph65 ], [ %i.l, %bb.g ]
  %i.k = getelementptr inbounds i8, ptr %.0.us64, i64 -16 ; 3 uses
  %i.l = add nsw i64 %.028.us63, -1               ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.0.us64, i64 -8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.d, !prof !32, !llvm.loop !106

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !28, !nonnull !27, !noundef !27 ; 5 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #9
  %i.r = tail call ptr @zend_hash_str_find(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef %i.q) #8 ; 2 uses
  %.not.i.i35.us = icmp eq ptr %i.r, null
  br i1 %.not.i.i35.us, label %dom_xml_str_equals_treat_nulls_as_empty.exit39.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28, !nonnull !27, !noundef !27 ; 2 uses
  %i.t = icmp eq ptr %i.s, %spec.store.select
  br i1 %i.t, label %dom_xml_str_equals_treat_nulls_as_empty.exit39.us, label %dom_xml_local_prefix_map_conflicts.exit.us

dom_xml_local_prefix_map_conflicts.exit.us:       ; preds = %bb.e
  %i.u = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.s, ptr noundef nonnull readonly dereferenceable(1) %spec.store.select) #9
  %.not7.us = icmp eq i32 %i.u, 0
  br i1 %.not7.us, label %dom_xml_str_equals_treat_nulls_as_empty.exit39.us, label %.outer.us

dom_xml_str_equals_treat_nulls_as_empty.exit39.us: ; preds = %bb.d, %bb.e, %dom_xml_local_prefix_map_conflicts.exit.us
  %i.v = load i8, ptr %i.p, align 1, !tbaa !28
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %dom_get_candidates_list.exit.thread, label %bb.f

bb.f:                                             ; preds = %dom_xml_str_equals_treat_nulls_as_empty.exit39.us
  %i.x = icmp eq ptr %.029.ph.us69, null
  %spec.select.us = select i1 %i.x, ptr %i.p, ptr %.029.ph.us69
  br label %.outer.us

.outer.us:                                        ; preds = %bb.f, %dom_xml_local_prefix_map_conflicts.exit.us
  %.1.us = phi ptr [ %.029.ph.us69, %dom_xml_local_prefix_map_conflicts.exit.us ], [ %spec.select.us, %bb.f ] ; 2 uses
  %.not.us62 = icmp eq i64 %i.l, 0
  br i1 %.not.us62, label %dom_get_candidates_list.exit.thread, label %.lr.ph65, !llvm.loop !106

bb.g:                                             ; preds = %bb.c
  %.not.us = icmp eq i64 %i.l, 0
  br i1 %.not.us, label %dom_get_candidates_list.exit.thread, label %bb.c, !llvm.loop !106

.lr.ph:                                           ; preds = %.outer.preheader, %.outer
  %.0.ph60 = phi ptr [ %i.y, %.outer ], [ %i.i, %.outer.preheader ]
  %.028.ph59 = phi i64 [ %i.z, %.outer ], [ %i.f, %.outer.preheader ]
  %.029.ph58 = phi ptr [ %.1, %.outer ], [ null, %.outer.preheader ] ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %dom_get_candidates_list.exit.thread, label %bb.i, !llvm.loop !106

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.055 = phi ptr [ %.0.ph60, %.lr.ph ], [ %i.y, %bb.h ] ; 2 uses
  %.02854 = phi i64 [ %.028.ph59, %.lr.ph ], [ %i.z, %bb.h ]
  %i.y = getelementptr inbounds i8, ptr %.055, i64 -16 ; 3 uses
  %i.z = add nsw i64 %.02854, -1                  ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %.055, i64 -8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !28
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.j, !prof !32, !llvm.loop !106

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !28, !nonnull !27, !noundef !27 ; 7 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #9
  %i.af = tail call ptr @zend_hash_str_find(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i64 noundef %i.ae) #8 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.af, null
  br i1 %.not.i.i35, label %dom_xml_local_prefix_map_conflicts.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28, !nonnull !27, !noundef !27 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %spec.store.select
  br i1 %i.ah, label %dom_xml_local_prefix_map_conflicts.exit.thread, label %dom_xml_local_prefix_map_conflicts.exit

dom_xml_local_prefix_map_conflicts.exit:          ; preds = %bb.k
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ag, ptr noundef nonnull readonly dereferenceable(1) %spec.store.select) #9
  %.not7 = icmp eq i32 %i.ai, 0
  br i1 %.not7, label %dom_xml_local_prefix_map_conflicts.exit.thread, label %.outer

dom_xml_local_prefix_map_conflicts.exit.thread:   ; preds = %bb.k, %bb.j, %dom_xml_local_prefix_map_conflicts.exit
  %i.aj = icmp eq ptr %1, %i.ad
  br i1 %i.aj, label %dom_get_candidates_list.exit.thread, label %.split

.split:                                           ; preds = %dom_xml_local_prefix_map_conflicts.exit.thread
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.ad) #9
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %dom_get_candidates_list.exit.thread, label %bb.l

bb.l:                                             ; preds = %.split
  %i.am = icmp eq ptr %.029.ph58, null
  %spec.select = select i1 %i.am, ptr %i.ad, ptr %.029.ph58
  br label %.outer

.outer:                                           ; preds = %bb.l, %dom_xml_local_prefix_map_conflicts.exit
  %.1 = phi ptr [ %.029.ph58, %dom_xml_local_prefix_map_conflicts.exit ], [ %spec.select, %bb.l ] ; 2 uses
  %.not53 = icmp eq i64 %i.z, 0
  br i1 %.not53, label %dom_get_candidates_list.exit.thread, label %.lr.ph, !llvm.loop !106

dom_get_candidates_list.exit.thread:              ; preds = %dom_xml_local_prefix_map_conflicts.exit.thread, %.split, %.outer, %bb.h, %dom_xml_str_equals_treat_nulls_as_empty.exit39.us, %.outer.us, %bb.g, %.outer.preheader, %.outer.us.preheader, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.029.ph.us69, %bb.g ], [ %i.p, %dom_xml_str_equals_treat_nulls_as_empty.exit39.us ], [ null, %.outer.preheader ], [ %.029.ph58, %bb.h ], [ null, %.outer.us.preheader ], [ %.1.us, %.outer.us ], [ %.1, %.outer ], [ %i.ad, %dom_xml_local_prefix_map_conflicts.exit.thread ], [ %i.ad, %.split ]
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @dom_xml_generate_a_prefix(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 110, ptr %i.a, align 16, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 115, ptr %i.b, align 1, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %dom_xml_local_prefix_map_find.exit

dom_xml_local_prefix_map_find.exit:               ; preds = %dom_xml_local_prefix_map_find.exit, %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !17
  %i.e = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.c, i64 noundef 30, ptr noundef nonnull @.str.36, i32 noundef %i.d) #8
  %i.f = add nsw i32 %i.e, 2
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = load i32, ptr %4, align 4, !tbaa !17
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %4, align 4, !tbaa !17
  %i.j = call ptr @zend_hash_str_find(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.g) #8
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %zend_hash_str_add_ptr.exit, label %dom_xml_local_prefix_map_find.exit, !llvm.loop !107

zend_hash_str_add_ptr.exit:                       ; preds = %dom_xml_local_prefix_map_find.exit
  %i.k = add nsw i64 %i.g, 1                      ; 2 uses
  %i.l = call noalias ptr @_emalloc(i64 noundef %i.k) #10 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 16 %i.a, i64 %i.k, i1 false)
  call fastcc void @dom_xml_ns_prefix_map_add(ptr noundef %0, ptr noundef %i.l, i1 noundef zeroext true, ptr noundef %2, i64 noundef %3)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %2, ptr %5, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 13, ptr %i.m, align 8, !tbaa !28
  %i.n = call ptr @zend_hash_str_add(ptr noundef nonnull %1, ptr noundef nonnull %i.l, i64 noundef %i.g, ptr noundef nonnull %5) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %i.l
}

declare i32 @xmlOutputBufferWriteString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dom_xml_common_text_serialization(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = select i1 %2, ptr @.str.37, ptr @.str.38 ; 2 uses
  %i.c = tail call i64 @strcspn(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.k
  %i.g = phi ptr [ %i.ac, %bb.k ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = phi i64 [ %i.ab, %bb.k ], [ %i.c, %bb.b ]
  %.03044 = phi ptr [ %i.aa, %bb.k ], [ %1, %bb.b ]
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @xmlOutputBufferWrite(ptr noundef %0, i32 noundef %i.i, ptr noundef nonnull %.03044) #8
end_hunk_2
